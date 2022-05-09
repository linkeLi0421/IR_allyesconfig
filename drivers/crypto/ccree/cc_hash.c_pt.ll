; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_hash.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cc_hash_template = type { [128 x i8], [128 x i8], [128 x i8], [128 x i8], i32, i8, i8, [122 x i8], %struct.ahash_alg, i32, i32, i32, ptr, i32, i32, [104 x i8] }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cc_hw_desc = type { %union.anon.75 }
%union.anon.75 = type { [6 x i32] }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cc_hash_handle = type { i32, i32, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cc_hash_alg = type { %struct.list_head, i32, i32, i32, ptr, [104 x i8], %struct.ahash_alg }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.cc_crypto_req = type { ptr, ptr, %struct.completion, %struct.cc_cpp_req }
%struct.cc_cpp_req = type { i8, i32, i8 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ahash_req_ctx = type { [2 x [128 x i8]], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [16 x i8], [112 x i8], %struct.async_gen_req_ctx, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [2 x %struct.scatterlist], ptr, i32, i32, %struct.mlli_params, [12 x i8] }
%struct.async_gen_req_ctx = type { i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mlli_params = type { ptr, ptr, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.cc_hash_ctx = type { ptr, [124 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, %struct.hash_key_req_ctx, i32, i32, i32, i32, %struct.completion, i8, [35 x i8] }
%struct.hash_key_req_ctx = type { i32, i32, ptr }

@cc_digest_len_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@cc_digest_len_sha512_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@cc_md5_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 271733878, i32 -1732584194, i32 -271733879, i32 1732584193], [16 x i8] zeroinitializer }, align 32
@cc_sha1_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1009589776, i32 271733878, i32 -1732584194, i32 -271733879, i32 1732584193], [44 x i8] zeroinitializer }, align 32
@cc_sha224_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1090891868, i32 1694076839, i32 1750603025, i32 -4191439, i32 -150054599, i32 812702999, i32 914150663, i32 -1056596264], [32 x i8] zeroinitializer }, align 32
@cc_sha256_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1541459225, i32 528734635, i32 -1694144372, i32 1359893119, i32 -1521486534, i32 1013904242, i32 -1150833019, i32 1779033703], [32 x i8] zeroinitializer }, align 32
@cc_sm3_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1325724082, i32 -477237683, i32 372324522, i32 -1452330820, i32 -628488704, i32 388252375, i32 1226093241, i32 1937774191], [32 x i8] zeroinitializer }, align 32
@cc_sha384_init = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1203062813, i32 -1090891868, i32 -619958771, i32 1694076839, i32 -1900787065, i32 1750603025, i32 1731405415, i32 -4191439, i32 355462360, i32 -150054599, i32 -1856437926, i32 812702999, i32 1654270250, i32 914150663, i32 -876896931, i32 -1056596264], [32 x i8] zeroinitializer }, align 32
@cc_sha512_init = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1541459225, i32 327033209, i32 528734635, i32 -79577749, i32 -1694144372, i32 725511199, i32 1359893119, i32 -1377402159, i32 -1521486534, i32 1595750129, i32 1013904242, i32 -23791573, i32 -1150833019, i32 -2067093701, i32 1779033703, i32 -205731576], [32 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1993, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Init digest CONST failed (rc=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_hash_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/crypto/ccree/cc_hash.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry_ptr = internal global ptr @cc_hash_alloc._entry, section ".printk_index", align 4
@driver_hash = internal global [9 x %struct.cc_hash_template] [%struct.cc_hash_template { [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 172, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 1, i32 20, ptr null, i32 630, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 184, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 2, i32 32, ptr null, i32 630, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 184, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 2, i32 32, ptr null, i32 630, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4, i32 4, i32 64, ptr null, i32 712, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 3, i32 4, i32 64, ptr null, i32 712, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-md5-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 168, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 5, i32 0, i32 16, ptr null, i32 630, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] c"sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sm3-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, i32 64, i8 0, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_hash_update, ptr @cc_hash_final, ptr @cc_hash_finup, ptr @cc_hash_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 184, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 9, i32 14, i32 32, ptr null, i32 713, i32 2, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xcbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_mac_update, ptr @cc_mac_final, ptr @cc_mac_finup, ptr @cc_mac_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_xcbc_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 168, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 -1, i32 5, i32 16, ptr null, i32 630, i32 1, [104 x i8] undef }, %struct.cc_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cmac-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, i8 1, i8 0, [122 x i8] undef, %struct.ahash_alg { ptr @cc_hash_init, ptr @cc_mac_update, ptr @cc_mac_final, ptr @cc_mac_finup, ptr @cc_mac_digest, ptr @cc_hash_export, ptr @cc_hash_import, ptr @cc_cmac_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 168, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 -1, i32 7, i32 16, ptr null, i32 630, i32 1, [104 x i8] undef }], align 128
@cc_hash_alloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2013, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s alg allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry_ptr.7 = internal global ptr @cc_hash_alloc._entry.5, section ".printk_index", align 4
@cc_hash_alloc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s alg registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry_ptr.10 = internal global ptr @cc_hash_alloc._entry.8, section ".printk_index", align 4
@cc_hash_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry_ptr.12 = internal global ptr @cc_hash_alloc._entry.11, section ".printk_index", align 4
@cc_hash_alloc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2044, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_alloc._entry_ptr.14 = internal global ptr @cc_hash_alloc._entry.13, section ".printk_index", align 4
@cc_larval_digest_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid hash mode (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_larval_digest_addr\00", [42 x i8] zeroinitializer }, align 32
@cc_larval_digest_addr._entry_ptr = internal global ptr @cc_larval_digest_addr._entry, section ".printk_index", align 4
@cc_hash_init.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_hash_init\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"===== init (%d) ====\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_larval_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.2, i32 2224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_larval_digest\00", [47 x i8] zeroinitializer }, align 32
@cc_larval_digest._entry_ptr = internal global ptr @cc_larval_digest._entry, section ".printk_index", align 4
@cc_hash_update.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_hash_update\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"===== %s-update (%d) ====\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hmac\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hash\00", [27 x i8] zeroinitializer }, align 32
@cc_hash_update.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c" data size not require HW update %x\0A\00", [59 x i8] zeroinitializer }, align 32
@cc_hash_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"map_ahash_request_update() failed\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_hash_update._entry_ptr = internal global ptr @cc_hash_update._entry, section ".printk_index", align 4
@cc_hash_update._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"map_ahash_source() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_hash_update._entry_ptr.29 = internal global ptr @cc_hash_update._entry.27, section ".printk_index", align 4
@cc_hash_update._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"send_request() failed (rc=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cc_hash_update._entry_ptr.32 = internal global ptr @cc_hash_update._entry.30, section ".printk_index", align 4
@cc_map_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mapping digest len %d B at va=%pK for DMA failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cc_map_req\00", [21 x i8] zeroinitializer }, align 32
@cc_map_req._entry_ptr = internal global ptr @cc_map_req._entry, section ".printk_index", align 4
@cc_map_req.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mapped digest %d B at va=%pK to dma=%pad\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_map_req._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mapping digest len %u B at va=%pK for DMA failed\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_map_req._entry_ptr.38 = internal global ptr @cc_map_req._entry.36, section ".printk_index", align 4
@cc_map_req.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Mapped digest len %u B at va=%pK to dma=%pad\0A\00", [50 x i8] zeroinitializer }, align 32
@cc_map_req._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mapping opad digest %d B at va=%pK for DMA failed\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_map_req._entry_ptr.42 = internal global ptr @cc_map_req._entry.40, section ".printk_index", align 4
@cc_map_req.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.43, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Mapped opad digest %d B at va=%pK to dma=%pad\0A\00", [49 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cc_update_complete.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_update_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"req=%pK\0A\00", [23 x i8] zeroinitializer }, align 32
@cc_set_desc.__UNIQUE_ID_ddebug452 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 2, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cc_set_desc\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" NULL mode\0A\00", [20 x i8] zeroinitializer }, align 32
@cc_unmap_req.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_unmap_req\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unmapped digest-buffer: digest_buff_dma_addr=%pad\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_unmap_req.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Unmapped digest-bytes-len buffer: digest_bytes_len_dma_addr=%pad\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_unmap_req.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unmapped opad-digest: opad_digest_dma_addr=%pad\0A\00", [47 x i8] zeroinitializer }, align 32
@cc_do_finup.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cc_do_finup\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"===== %s-%s (%d) ====\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"finup\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"final\00", [26 x i8] zeroinitializer }, align 32
@cc_do_finup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.54, ptr @.str.2, i32 653, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_do_finup._entry_ptr = internal global ptr @cc_do_finup._entry, section ".printk_index", align 4
@cc_do_finup._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 659, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"map_ahash_request_final() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_do_finup._entry_ptr.60 = internal global ptr @cc_do_finup._entry.58, section ".printk_index", align 4
@cc_do_finup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"map_ahash_digest() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_do_finup._entry_ptr.63 = internal global ptr @cc_do_finup._entry.61, section ".printk_index", align 4
@cc_do_finup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.54, ptr @.str.2, i32 693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_do_finup._entry_ptr.65 = internal global ptr @cc_do_finup._entry.64, section ".printk_index", align 4
@cc_map_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mapping digest result buffer %u B for DMA failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_map_result\00", [18 x i8] zeroinitializer }, align 32
@cc_map_result._entry_ptr = internal global ptr @cc_map_result._entry, section ".printk_index", align 4
@cc_map_result.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Mapped digest result buffer %u B at va=%pK to dma=%pad\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_hash_complete.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.69, ptr @.str.2, ptr @.str.47, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_hash_complete\00", [47 x i8] zeroinitializer }, align 32
@cc_unmap_result.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_unmap_result\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unmpa digest result buffer va (%pK) pa (%pad) len %u\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_hash_digest.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_hash_digest\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"===== %s-digest (%d) ====\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_hash_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.72, ptr @.str.2, i32 442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_digest._entry_ptr = internal global ptr @cc_hash_digest._entry, section ".printk_index", align 4
@cc_hash_digest._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.72, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_digest._entry_ptr.75 = internal global ptr @cc_hash_digest._entry.74, section ".printk_index", align 4
@cc_hash_digest._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.72, ptr @.str.2, i32 454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_digest._entry_ptr.77 = internal global ptr @cc_hash_digest._entry.76, section ".printk_index", align 4
@cc_hash_digest._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.72, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_digest._entry_ptr.79 = internal global ptr @cc_hash_digest._entry.78, section ".printk_index", align 4
@cc_digest_complete.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.80, ptr @.str.2, ptr @.str.47, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_digest_complete\00", [45 x i8] zeroinitializer }, align 32
@cc_hash_setkey.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_hash_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start keylen: %d\00", [47 x i8] zeroinitializer }, align 32
@cc_hash_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mapping key va=0x%p len=%u for DMA failed\0A\00", [53 x i8] zeroinitializer }, align 32
@cc_hash_setkey._entry_ptr = internal global ptr @cc_hash_setkey._entry, section ".printk_index", align 4
@cc_hash_setkey.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.81, ptr @.str.2, ptr @.str.84, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mapping key-buffer: key_dma_addr=%pad keylen=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@cc_hash_setkey._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.81, ptr @.str.2, i32 851, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_hash_setkey._entry_ptr.86 = internal global ptr @cc_hash_setkey._entry.85, section ".printk_index", align 4
@cc_hash_setkey.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.81, ptr @.str.2, ptr @.str.87, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unmapped key-buffer: key_dma_addr=%pad keylen=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_mac_update.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.88, ptr @.str.2, ptr @.str.25, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_mac_update\00", [18 x i8] zeroinitializer }, align 32
@cc_mac_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.88, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_update._entry_ptr = internal global ptr @cc_mac_update._entry, section ".printk_index", align 4
@cc_mac_update._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.88, ptr @.str.2, i32 1184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_update._entry_ptr.90 = internal global ptr @cc_mac_update._entry.89, section ".printk_index", align 4
@cc_mac_update._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.88, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_update._entry_ptr.92 = internal global ptr @cc_mac_update._entry.91, section ".printk_index", align 4
@cc_mac_final.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_mac_final\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"===== final  xcbc reminder (%d) ====\0A\00", [58 x i8] zeroinitializer }, align 32
@cc_mac_final._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.93, ptr @.str.2, i32 1245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_final._entry_ptr = internal global ptr @cc_mac_final._entry, section ".printk_index", align 4
@cc_mac_final._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.93, ptr @.str.2, i32 1251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_final._entry_ptr.96 = internal global ptr @cc_mac_final._entry.95, section ".printk_index", align 4
@cc_mac_final._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.93, ptr @.str.2, i32 1257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_final._entry_ptr.98 = internal global ptr @cc_mac_final._entry.97, section ".printk_index", align 4
@cc_mac_final._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.93, ptr @.str.2, i32 1331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_final._entry_ptr.100 = internal global ptr @cc_mac_final._entry.99, section ".printk_index", align 4
@cc_mac_finup.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_mac_finup\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"===== finup xcbc(%d) ====\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_mac_finup.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.101, ptr @.str.2, ptr @.str.103, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No data to update. Call to fdx_mac_final\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_mac_finup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.101, ptr @.str.2, i32 1360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_finup._entry_ptr = internal global ptr @cc_mac_finup._entry, section ".printk_index", align 4
@cc_mac_finup._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.101, ptr @.str.2, i32 1366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_finup._entry_ptr.105 = internal global ptr @cc_mac_finup._entry.104, section ".printk_index", align 4
@cc_mac_finup._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.101, ptr @.str.2, i32 1371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_finup._entry_ptr.107 = internal global ptr @cc_mac_finup._entry.106, section ".printk_index", align 4
@cc_mac_finup._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.101, ptr @.str.2, i32 1412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_finup._entry_ptr.109 = internal global ptr @cc_mac_finup._entry.108, section ".printk_index", align 4
@cc_mac_digest.__UNIQUE_ID_ddebug451 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_mac_digest\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"===== -digest mac (%d) ====\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_mac_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.110, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_digest._entry_ptr = internal global ptr @cc_mac_digest._entry, section ".printk_index", align 4
@cc_mac_digest._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.110, ptr @.str.2, i32 1443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_digest._entry_ptr.113 = internal global ptr @cc_mac_digest._entry.112, section ".printk_index", align 4
@cc_mac_digest._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.110, ptr @.str.2, i32 1450, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_digest._entry_ptr.115 = internal global ptr @cc_mac_digest._entry.114, section ".printk_index", align 4
@cc_mac_digest._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.110, ptr @.str.2, i32 1491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_mac_digest._entry_ptr.117 = internal global ptr @cc_mac_digest._entry.116, section ".printk_index", align 4
@cc_xcbc_setkey.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_xcbc_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"===== setkey (%d) ====\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_xcbc_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.118, ptr @.str.2, i32 952, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_xcbc_setkey._entry_ptr = internal global ptr @cc_xcbc_setkey._entry, section ".printk_index", align 4
@cc_xcbc_setkey.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.118, ptr @.str.2, ptr @.str.84, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cc_xcbc_setkey.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.118, ptr @.str.2, ptr @.str.87, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cc_cmac_setkey.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.120, ptr @.str.2, ptr @.str.119, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_cmac_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cc_cra_exit.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.122, ptr @.str.2, ptr @.str.122, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cc_cra_exit\00", [20 x i8] zeroinitializer }, align 32
@cc_free_ctx.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.123, ptr @.str.2, ptr @.str.51, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cc_free_ctx\00", [20 x i8] zeroinitializer }, align 32
@cc_free_ctx.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unmapped opad-digest: opad_tmp_keys_dma_addr=%pad\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_alloc_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mapping digest len %zu B at va=%pK for DMA failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_alloc_ctx\00", [19 x i8] zeroinitializer }, align 32
@cc_alloc_ctx._entry_ptr = internal global ptr @cc_alloc_ctx._entry, section ".printk_index", align 4
@cc_alloc_ctx.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.126, ptr @.str.2, ptr @.str.127, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mapped digest %zu B at va=%pK to dma=%pad\0A\00", [53 x i8] zeroinitializer }, align 32
@cc_alloc_ctx._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.126, ptr @.str.2, i32 1095, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Mapping opad digest %zu B at va=%pK for DMA failed\0A\00", [44 x i8] zeroinitializer }, align 32
@cc_alloc_ctx._entry_ptr.130 = internal global ptr @cc_alloc_ctx._entry.128, section ".printk_index", align 4
@cc_alloc_ctx.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.126, ptr @.str.2, ptr @.str.131, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Mapped opad_tmp_keys %zu B at va=%pK to dma=%pad\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.cc_init_req = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @cc_sha1_init, ptr @cc_sha256_init, ptr @cc_sha224_init, ptr @cc_sha512_init, ptr @cc_sha384_init, ptr @cc_md5_init, ptr @cc_md5_init, ptr @cc_md5_init, ptr @cc_md5_init, ptr @cc_sm3_init], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.132 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 4294967295]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 4294967295]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.137 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 4294967295]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"cc_digest_len_init\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 28, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"cc_digest_len_sha512_init\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 40, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"cc_md5_init\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 30, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"cc_sha1_init\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 32, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"cc_sha224_init\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 34, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"cc_sha256_init\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 37, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"cc_sm3_init\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 55, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"cc_sha384_init\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 48, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"cc_sha512_init\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 51, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1993, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2012, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2020, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2035, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2043, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2290, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 719, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2224, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 571, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 583, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 588, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 593, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 625, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 187, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 191, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 200, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 204, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 215, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 220, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 326, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 290, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 2179, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 249, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 256, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 263, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 649, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 653, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 659, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 664, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 693, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 124, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 128, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 329, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 275, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 436, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 442, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 447, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 454, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 521, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 309, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 741, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 765, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 770, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 851, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 912, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1174, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1179, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1184, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1211, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1242, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1245, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1251, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1257, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1331, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1353, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1355, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1360, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1366, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1371, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1412, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1434, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1439, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1443, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1450, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1491, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 931, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 951, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1013, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1837, i32 48 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1146, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1054, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1062, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1080, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1084, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1093, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.533 = private constant [34 x i8] c"../drivers/crypto/ccree/cc_hash.c\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 1098, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [25 x i8] c"switch.table.cc_init_req\00", align 1
@llvm.compiler.used = appending global [172 x ptr] [ptr @cc_alloc_ctx._entry, ptr @cc_alloc_ctx._entry.128, ptr @cc_alloc_ctx._entry_ptr, ptr @cc_alloc_ctx._entry_ptr.130, ptr @cc_do_finup._entry, ptr @cc_do_finup._entry.58, ptr @cc_do_finup._entry.61, ptr @cc_do_finup._entry.64, ptr @cc_do_finup._entry_ptr, ptr @cc_do_finup._entry_ptr.60, ptr @cc_do_finup._entry_ptr.63, ptr @cc_do_finup._entry_ptr.65, ptr @cc_hash_alloc._entry, ptr @cc_hash_alloc._entry.11, ptr @cc_hash_alloc._entry.13, ptr @cc_hash_alloc._entry.5, ptr @cc_hash_alloc._entry.8, ptr @cc_hash_alloc._entry_ptr, ptr @cc_hash_alloc._entry_ptr.10, ptr @cc_hash_alloc._entry_ptr.12, ptr @cc_hash_alloc._entry_ptr.14, ptr @cc_hash_alloc._entry_ptr.7, ptr @cc_hash_digest._entry, ptr @cc_hash_digest._entry.74, ptr @cc_hash_digest._entry.76, ptr @cc_hash_digest._entry.78, ptr @cc_hash_digest._entry_ptr, ptr @cc_hash_digest._entry_ptr.75, ptr @cc_hash_digest._entry_ptr.77, ptr @cc_hash_digest._entry_ptr.79, ptr @cc_hash_setkey._entry, ptr @cc_hash_setkey._entry.85, ptr @cc_hash_setkey._entry_ptr, ptr @cc_hash_setkey._entry_ptr.86, ptr @cc_hash_update._entry, ptr @cc_hash_update._entry.27, ptr @cc_hash_update._entry.30, ptr @cc_hash_update._entry_ptr, ptr @cc_hash_update._entry_ptr.29, ptr @cc_hash_update._entry_ptr.32, ptr @cc_larval_digest._entry, ptr @cc_larval_digest._entry_ptr, ptr @cc_larval_digest_addr._entry, ptr @cc_larval_digest_addr._entry_ptr, ptr @cc_mac_digest._entry, ptr @cc_mac_digest._entry.112, ptr @cc_mac_digest._entry.114, ptr @cc_mac_digest._entry.116, ptr @cc_mac_digest._entry_ptr, ptr @cc_mac_digest._entry_ptr.113, ptr @cc_mac_digest._entry_ptr.115, ptr @cc_mac_digest._entry_ptr.117, ptr @cc_mac_final._entry, ptr @cc_mac_final._entry.95, ptr @cc_mac_final._entry.97, ptr @cc_mac_final._entry.99, ptr @cc_mac_final._entry_ptr, ptr @cc_mac_final._entry_ptr.100, ptr @cc_mac_final._entry_ptr.96, ptr @cc_mac_final._entry_ptr.98, ptr @cc_mac_finup._entry, ptr @cc_mac_finup._entry.104, ptr @cc_mac_finup._entry.106, ptr @cc_mac_finup._entry.108, ptr @cc_mac_finup._entry_ptr, ptr @cc_mac_finup._entry_ptr.105, ptr @cc_mac_finup._entry_ptr.107, ptr @cc_mac_finup._entry_ptr.109, ptr @cc_mac_update._entry, ptr @cc_mac_update._entry.89, ptr @cc_mac_update._entry.91, ptr @cc_mac_update._entry_ptr, ptr @cc_mac_update._entry_ptr.90, ptr @cc_mac_update._entry_ptr.92, ptr @cc_map_req._entry, ptr @cc_map_req._entry.36, ptr @cc_map_req._entry.40, ptr @cc_map_req._entry_ptr, ptr @cc_map_req._entry_ptr.38, ptr @cc_map_req._entry_ptr.42, ptr @cc_map_result._entry, ptr @cc_map_result._entry_ptr, ptr @cc_xcbc_setkey._entry, ptr @cc_xcbc_setkey._entry_ptr, ptr @cc_digest_len_init, ptr @cc_digest_len_sha512_init, ptr @cc_md5_init, ptr @cc_sha1_init, ptr @cc_sha224_init, ptr @cc_sha256_init, ptr @cc_sm3_init, ptr @cc_sha384_init, ptr @cc_sha512_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.93, ptr @.str.94, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.110, ptr @.str.111, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @switch.table.cc_init_req], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_digest_len_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_digest_len_sha512_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_md5_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sha1_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sha224_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sha256_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sm3_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sha384_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_sha512_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_alloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_alloc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_alloc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_larval_digest_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_larval_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_update._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_update._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_req._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_req._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_do_finup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_do_finup._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_do_finup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_do_finup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_digest._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_digest._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_digest._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_hash_setkey._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_update._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_update._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_final._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_final._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_final._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_final._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_finup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_finup._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_finup._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_finup._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_digest._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_digest._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_mac_digest._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_xcbc_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_alloc_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_alloc_ctx._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_init_req to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_init_hash_sram(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  %larval_seq.i88 = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len.i89 = alloca i32, align 4
  %larval_seq.i81 = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len.i82 = alloca i32, align 4
  %larval_seq.i74 = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len.i75 = alloca i32, align 4
  %larval_seq.i67 = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len.i68 = alloca i32, align 4
  %larval_seq.i = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len.i = alloca i32, align 4
  %sram_buff_ofs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 7
  %0 = ptrtoint ptr %hash_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_handle1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sram_buff_ofs) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sram_buff_ofs, align 4
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %5 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %6)
  %cmp = icmp ugt i32 %6, 711
  call void @__sanitizer_cov_trace_const_cmp4(i32 712, i32 %6)
  %cmp3 = icmp ugt i32 %6, 712
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq.i) #7
  %7 = call ptr @memset(ptr %larval_seq.i, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len.i) #7
  %8 = ptrtoint ptr %larval_seq_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %larval_seq_len.i, align 4
  call void @cc_set_sram_desc(ptr noundef nonnull @cc_digest_len_init, i32 noundef %3, i32 noundef 4, ptr noundef nonnull %larval_seq.i, ptr noundef nonnull %larval_seq_len.i) #7
  %9 = ptrtoint ptr %larval_seq_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %larval_seq_len.i, align 4
  %call.i = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq.i, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %cc_init_copy_sram.exit

cc_init_copy_sram.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i) #7
  br label %init_digest_const_err

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sram_buff_ofs, align 4
  %add.i = add i32 %12, 16
  store i32 %add.i, ptr %sram_buff_ofs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i) #7
  br i1 %cmp, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq.i67) #7
  %13 = call ptr @memset(ptr %larval_seq.i67, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len.i68) #7
  %14 = ptrtoint ptr %larval_seq_len.i68 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %larval_seq_len.i68, align 4
  %15 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sram_buff_ofs, align 4
  call void @cc_set_sram_desc(ptr noundef nonnull @cc_digest_len_sha512_init, i32 noundef %16, i32 noundef 4, ptr noundef nonnull %larval_seq.i67, ptr noundef nonnull %larval_seq_len.i68) #7
  %17 = ptrtoint ptr %larval_seq_len.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %larval_seq_len.i68, align 4
  %call.i69 = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq.i67, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %cc_init_copy_sram.exit73.thread, label %cc_init_copy_sram.exit73

cc_init_copy_sram.exit73.thread:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sram_buff_ofs, align 4
  %add.i71 = add i32 %20, 16
  store i32 %add.i71, ptr %sram_buff_ofs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i68) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i67) #7
  br label %if.end11

cc_init_copy_sram.exit73:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i68) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i67) #7
  br label %init_digest_const_err

if.end11:                                         ; preds = %cc_init_copy_sram.exit73.thread, %if.end.if.end11_crit_edge
  %21 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sram_buff_ofs, align 4
  %larval_digest_sram_addr = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %larval_digest_sram_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %larval_digest_sram_addr, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq.i74) #7
  %24 = call ptr @memset(ptr %larval_seq.i74, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len.i75) #7
  %25 = ptrtoint ptr %larval_seq_len.i75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %larval_seq_len.i75, align 4
  call void @cc_set_sram_desc(ptr noundef nonnull @cc_md5_init, i32 noundef %22, i32 noundef 4, ptr noundef nonnull %larval_seq.i74, ptr noundef nonnull %larval_seq_len.i75) #7
  %26 = ptrtoint ptr %larval_seq_len.i75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %larval_seq_len.i75, align 4
  %call.i76 = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq.i74, i32 noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end15, label %cc_init_copy_sram.exit80

cc_init_copy_sram.exit80:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i75) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i74) #7
  br label %init_digest_const_err

if.end15:                                         ; preds = %if.end11
  %28 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sram_buff_ofs, align 4
  %add.i78 = add i32 %29, 16
  store i32 %add.i78, ptr %sram_buff_ofs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i75) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i74) #7
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq.i81) #7
  %30 = call ptr @memset(ptr %larval_seq.i81, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len.i82) #7
  %31 = ptrtoint ptr %larval_seq_len.i82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %larval_seq_len.i82, align 4
  call void @cc_set_sram_desc(ptr noundef nonnull @cc_sha1_init, i32 noundef %add.i78, i32 noundef 5, ptr noundef nonnull %larval_seq.i81, ptr noundef nonnull %larval_seq_len.i82) #7
  %32 = ptrtoint ptr %larval_seq_len.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %larval_seq_len.i82, align 4
  %call.i83 = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq.i81, i32 noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end19, label %cc_init_copy_sram.exit87

cc_init_copy_sram.exit87:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i82) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i81) #7
  br label %init_digest_const_err

if.end19:                                         ; preds = %if.end15
  %34 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sram_buff_ofs, align 4
  %add.i85 = add i32 %35, 20
  store i32 %add.i85, ptr %sram_buff_ofs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i82) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i81) #7
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq.i88) #7
  %36 = call ptr @memset(ptr %larval_seq.i88, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len.i89) #7
  %37 = ptrtoint ptr %larval_seq_len.i89 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %larval_seq_len.i89, align 4
  call void @cc_set_sram_desc(ptr noundef nonnull @cc_sha224_init, i32 noundef %add.i85, i32 noundef 8, ptr noundef nonnull %larval_seq.i88, ptr noundef nonnull %larval_seq_len.i89) #7
  %38 = ptrtoint ptr %larval_seq_len.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %larval_seq_len.i89, align 4
  %call.i90 = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq.i88, i32 noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %if.end23, label %cc_init_copy_sram.exit94

cc_init_copy_sram.exit94:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i89) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i88) #7
  br label %init_digest_const_err

if.end23:                                         ; preds = %if.end19
  %40 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sram_buff_ofs, align 4
  %add.i92 = add i32 %41, 32
  store i32 %add.i92, ptr %sram_buff_ofs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len.i89) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq.i88) #7
  %call24 = call fastcc i32 @cc_init_copy_sram(ptr noundef %drvdata, ptr noundef nonnull @cc_sha256_init, i32 noundef 32, ptr noundef nonnull %sram_buff_ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.init_digest_const_err_crit_edge

if.end23.init_digest_const_err_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_digest_const_err

if.end27:                                         ; preds = %if.end23
  br i1 %cmp3, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = call fastcc i32 @cc_init_copy_sram(ptr noundef %drvdata, ptr noundef nonnull @cc_sm3_init, i32 noundef 32, ptr noundef nonnull %sram_buff_ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp ne i32 %call30, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool31.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.then29.init_digest_const_err_crit_edge, label %if.then29.if.then36_crit_edge

if.then29.if.then36_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then29.init_digest_const_err_crit_edge:        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_digest_const_err

if.end34:                                         ; preds = %if.end27
  br i1 %cmp, label %if.end34.if.then36_crit_edge, label %if.end34.init_digest_const_err_crit_edge

if.end34.init_digest_const_err_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_digest_const_err

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.then29.if.then36_crit_edge
  %call37 = call fastcc i32 @cc_init_copy_sram(ptr noundef %drvdata, ptr noundef nonnull @cc_sha384_init, i32 noundef 64, ptr noundef nonnull %sram_buff_ofs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then36.init_digest_const_err_crit_edge

if.then36.init_digest_const_err_crit_edge:        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_digest_const_err

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call fastcc i32 @cc_init_copy_sram(ptr noundef %drvdata, ptr noundef nonnull @cc_sha512_init, i32 noundef 64, ptr noundef nonnull %sram_buff_ofs)
  br label %init_digest_const_err

init_digest_const_err:                            ; preds = %if.end40, %if.then36.init_digest_const_err_crit_edge, %if.end34.init_digest_const_err_crit_edge, %if.then29.init_digest_const_err_crit_edge, %if.end23.init_digest_const_err_crit_edge, %cc_init_copy_sram.exit94, %cc_init_copy_sram.exit87, %cc_init_copy_sram.exit80, %cc_init_copy_sram.exit73, %cc_init_copy_sram.exit
  %rc.1 = phi i32 [ %call.i, %cc_init_copy_sram.exit ], [ %call.i69, %cc_init_copy_sram.exit73 ], [ %call.i76, %cc_init_copy_sram.exit80 ], [ %call.i83, %cc_init_copy_sram.exit87 ], [ %call.i90, %cc_init_copy_sram.exit94 ], [ %call24, %if.end23.init_digest_const_err_crit_edge ], [ %call30, %if.then29.init_digest_const_err_crit_edge ], [ %call37, %if.then36.init_digest_const_err_crit_edge ], [ %call41, %if.end40 ], [ 0, %if.end34.init_digest_const_err_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sram_buff_ofs) #7
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_init_copy_sram(ptr noundef %drvdata, ptr noundef %data, i32 noundef %size, ptr nocapture noundef %sram_buff_ofs) unnamed_addr #0 align 64 {
entry:
  %larval_seq = alloca [16 x %struct.cc_hw_desc], align 4
  %larval_seq_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %larval_seq) #7
  %0 = call ptr @memset(ptr %larval_seq, i32 255, i32 384)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %larval_seq_len) #7
  %1 = ptrtoint ptr %larval_seq_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %larval_seq_len, align 4
  %2 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sram_buff_ofs, align 4
  %div7 = lshr i32 %size, 2
  call void @cc_set_sram_desc(ptr noundef %data, i32 noundef %3, i32 noundef %div7, ptr noundef nonnull %larval_seq, ptr noundef nonnull %larval_seq_len) #7
  %4 = ptrtoint ptr %larval_seq_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %larval_seq_len, align 4
  %call = call i32 @send_request_init(ptr noundef %drvdata, ptr noundef nonnull %larval_seq, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %sram_buff_ofs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sram_buff_ofs, align 4
  %add = add i32 %7, %size
  store i32 %add, ptr %sram_buff_ofs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %larval_seq_len) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %larval_seq) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_hash_alloc(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup87_crit_edge, label %if.end

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

if.end:                                           ; preds = %entry
  %hash_list = getelementptr inbounds %struct.cc_hash_handle, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i = getelementptr inbounds %struct.cc_hash_handle, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hash_list, ptr %prev.i, align 4
  %hash_handle2 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 7
  %4 = ptrtoint ptr %hash_handle2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %hash_handle2, align 4
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %5 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 712, i32 %6)
  %cmp = icmp ugt i32 %6, 712
  %spec.select = select i1 %cmp, i32 148, i32 116
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %6)
  %cmp6 = icmp ugt i32 %6, 711
  %add8 = add nuw nsw i32 %spec.select, 144
  %sram_size_to_alloc.1 = select i1 %cmp6, i32 %add8, i32 %spec.select
  %call10 = tail call i32 @cc_sram_alloc(ptr noundef %drvdata, i32 noundef %sram_size_to_alloc.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.end.fail_crit_edge, label %if.end13

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end13:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %call.i, align 4
  %call14 = tail call i32 @cc_init_hash_sram(ptr noundef %drvdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end13
  %std_bodies = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 20
  br label %for.body

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call14) #10
  br label %fail

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %alg.0188 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188
  %hw_mode19 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 10
  %8 = ptrtoint ptr %hw_mode19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_mode19, align 4
  %min_hw_rev = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 13
  %10 = ptrtoint ptr %min_hw_rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_hw_rev, align 16
  %12 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp22 = icmp ugt i32 %11, %13
  br i1 %cmp22, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %14 = ptrtoint ptr %std_bodies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %std_bodies, align 4
  %std_body = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 14
  %16 = ptrtoint ptr %std_body to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %std_body, align 4
  %and = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end26

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false
  %is_mac = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 5
  %18 = ptrtoint ptr %is_mac to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_mac, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  br i1 %tobool28.not, label %if.end26.if.end53_crit_edge, label %if.then29

if.end26.if.end53_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then29:                                        ; preds = %if.end26
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 896, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then29.if.then33_crit_edge, label %cc_alloc_hash_alg.exit

if.then29.if.then33_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

cc_alloc_hash_alg.exit:                           ; preds = %if.then29
  %ahash_alg.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6
  %template_ahash.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 8
  %20 = call ptr @memcpy(ptr %ahash_alg.i, ptr %template_ahash.i, i32 768)
  %cra_name.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 8
  %mac_name.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 2
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i, i32 noundef 128, ptr noundef nonnull @.str.121, ptr noundef %mac_name.i) #7
  %cra_driver_name.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 9
  %mac_driver_name.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 3
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i, i32 noundef 128, ptr noundef nonnull @.str.121, ptr noundef %mac_driver_name.i) #7
  %cra_module.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 15
  %21 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cra_module.i, align 4
  %cra_ctxsize.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 4
  %22 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %cra_ctxsize.i, align 8
  %cra_priority.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 6
  %23 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 400, ptr %cra_priority.i, align 32
  %blocksize.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 4
  %24 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blocksize.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 3
  %26 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cra_blocksize.i, align 4
  %cra_alignmask.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 5
  %27 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cra_alignmask.i, align 4
  %cra_exit.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 13
  %28 = ptrtoint ptr %cra_exit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cc_cra_exit, ptr %cra_exit.i, align 4
  %cra_init.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 12
  %29 = ptrtoint ptr %cra_init.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cc_cra_init, ptr %cra_init.i, align 64
  %cra_flags.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3, i32 2
  %30 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4224, ptr %cra_flags.i, align 16
  %hash_mode.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 9
  %31 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hash_mode.i, align 128
  %hash_mode20.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %hash_mode20.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hash_mode20.i, align 8
  %34 = ptrtoint ptr %hw_mode19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_mode19, align 4
  %hw_mode21.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %hw_mode21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %hw_mode21.i, align 4
  %inter_digestsize.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 11
  %37 = ptrtoint ptr %inter_digestsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inter_digestsize.i, align 8
  %inter_digestsize22.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %inter_digestsize22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %inter_digestsize22.i, align 16
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cc_alloc_hash_alg.exit.if.then33_crit_edge, label %if.end39

cc_alloc_hash_alg.exit.if.then33_crit_edge:       ; preds = %cc_alloc_hash_alg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %cc_alloc_hash_alg.exit.if.then33_crit_edge, %if.then29.if.then33_crit_edge
  %retval.0.i176 = phi ptr [ %call.i.i, %cc_alloc_hash_alg.exit.if.then33_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then29.if.then33_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i176 to i32
  %driver_name = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %driver_name) #10
  br label %fail

if.end39:                                         ; preds = %cc_alloc_hash_alg.exit
  %drvdata40 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %drvdata40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %drvdata, ptr %drvdata40, align 4
  %call41 = tail call i32 @crypto_register_ahash(ptr noundef %ahash_alg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %driver_name48 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef %driver_name48) #10
  br label %fail

if.end50:                                         ; preds = %if.end39
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i144 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %43, ptr noundef %hash_list) #7
  br i1 %call.i.i144, label %if.end.i.i, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %prev.i, align 4
  %45 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hash_list, ptr %call.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call.i.i, ptr %43, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end.i.i, %if.end50.if.end53_crit_edge, %if.end26.if.end53_crit_edge
  %48 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end58 [
    i32 5, label %if.end53.for.inc_crit_edge
    i32 7, label %if.end53.for.inc_crit_edge214
  ]

if.end53.for.inc_crit_edge214:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end58:                                         ; preds = %if.end53
  %call.i.i145 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 896, i32 noundef 3520) #7
  %tobool.not.i146 = icmp eq ptr %call.i.i145, null
  br i1 %tobool.not.i146, label %if.end58.if.then62_crit_edge, label %cc_alloc_hash_alg.exit166

if.end58.if.then62_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

cc_alloc_hash_alg.exit166:                        ; preds = %if.end58
  %ahash_alg.i147 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6
  %template_ahash.i148 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 8
  %49 = call ptr @memcpy(ptr %ahash_alg.i147, ptr %template_ahash.i148, i32 768)
  %setkey.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 7
  %50 = ptrtoint ptr %setkey.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %setkey.i, align 4
  %cra_name11.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 8
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name11.i, i32 noundef 128, ptr noundef nonnull @.str.121, ptr noundef %arrayidx) #7
  %cra_driver_name15.i = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 9
  %driver_name.i = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 1
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name15.i, i32 noundef 128, ptr noundef nonnull @.str.121, ptr noundef %driver_name.i) #7
  %cra_module.i150 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 15
  %51 = ptrtoint ptr %cra_module.i150 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %cra_module.i150, align 4
  %cra_ctxsize.i151 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 4
  %52 = ptrtoint ptr %cra_ctxsize.i151 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 512, ptr %cra_ctxsize.i151, align 8
  %cra_priority.i152 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 6
  %53 = ptrtoint ptr %cra_priority.i152 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 400, ptr %cra_priority.i152, align 32
  %blocksize.i153 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 4
  %54 = ptrtoint ptr %blocksize.i153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blocksize.i153, align 128
  %cra_blocksize.i154 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 3
  %56 = ptrtoint ptr %cra_blocksize.i154 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %cra_blocksize.i154, align 4
  %cra_alignmask.i155 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 5
  %57 = ptrtoint ptr %cra_alignmask.i155 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cra_alignmask.i155, align 4
  %cra_exit.i156 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 13
  %58 = ptrtoint ptr %cra_exit.i156 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cc_cra_exit, ptr %cra_exit.i156, align 4
  %cra_init.i157 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 12
  %59 = ptrtoint ptr %cra_init.i157 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @cc_cra_init, ptr %cra_init.i157, align 64
  %cra_flags.i158 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 6, i32 11, i32 3, i32 2
  %60 = ptrtoint ptr %cra_flags.i158 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4224, ptr %cra_flags.i158, align 16
  %hash_mode.i159 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 9
  %61 = ptrtoint ptr %hash_mode.i159 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hash_mode.i159, align 128
  %hash_mode20.i160 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 1
  %63 = ptrtoint ptr %hash_mode20.i160 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hash_mode20.i160, align 8
  %64 = ptrtoint ptr %hw_mode19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_mode19, align 4
  %hw_mode21.i162 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 2
  %66 = ptrtoint ptr %hw_mode21.i162 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %hw_mode21.i162, align 4
  %inter_digestsize.i163 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 11
  %67 = ptrtoint ptr %inter_digestsize.i163 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %inter_digestsize.i163, align 8
  %inter_digestsize22.i164 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 3
  %69 = ptrtoint ptr %inter_digestsize22.i164 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %inter_digestsize22.i164, align 16
  %cmp.i167 = icmp ugt ptr %call.i.i145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %cc_alloc_hash_alg.exit166.if.then62_crit_edge, label %if.end70

cc_alloc_hash_alg.exit166.if.then62_crit_edge:    ; preds = %cc_alloc_hash_alg.exit166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %cc_alloc_hash_alg.exit166.if.then62_crit_edge, %if.end58.if.then62_crit_edge
  %retval.0.i165179 = phi ptr [ %call.i.i145, %cc_alloc_hash_alg.exit166.if.then62_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end58.if.then62_crit_edge ]
  %70 = ptrtoint ptr %retval.0.i165179 to i32
  %driver_name68 = getelementptr [9 x %struct.cc_hash_template], ptr @driver_hash, i32 0, i32 %alg.0188, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %driver_name68) #10
  br label %fail

if.end70:                                         ; preds = %cc_alloc_hash_alg.exit166
  %drvdata71 = getelementptr inbounds %struct.cc_hash_alg, ptr %call.i.i145, i32 0, i32 4
  %71 = ptrtoint ptr %drvdata71 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %drvdata, ptr %drvdata71, align 4
  %call73 = tail call i32 @crypto_register_ahash(ptr noundef %ahash_alg.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end82, label %do.end78

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef %driver_name.i) #10
  br label %fail

if.end82:                                         ; preds = %if.end70
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i, align 4
  %call.i.i169 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i145, ptr noundef %73, ptr noundef %hash_list) #7
  br i1 %call.i.i169, label %if.end.i.i171, label %if.end82.for.inc_crit_edge

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i171:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i145, ptr %prev.i, align 4
  %75 = ptrtoint ptr %call.i.i145 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %hash_list, ptr %call.i.i145, align 4
  %prev3.i.i170 = getelementptr inbounds %struct.list_head, ptr %call.i.i145, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i170 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i170, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call.i.i145, ptr %73, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i171, %if.end82.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %if.end53.for.inc_crit_edge214, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %alg.0188, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc.cleanup87_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup87_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

fail:                                             ; preds = %do.end78, %if.then62, %do.end46, %if.then33, %do.end, %if.end.fail_crit_edge
  %rc.3 = phi i32 [ %call14, %do.end ], [ -12, %if.end.fail_crit_edge ], [ %40, %if.then33 ], [ %call41, %do.end46 ], [ %70, %if.then62 ], [ %call73, %do.end78 ]
  %78 = ptrtoint ptr %hash_handle2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hash_handle2, align 4
  %hash_list.i = getelementptr inbounds %struct.cc_hash_handle, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hash_list.i, align 4
  %cmp.not20.i = icmp eq ptr %81, %hash_list.i
  br i1 %cmp.not20.i, label %fail.cleanup87_crit_edge, label %fail.for.body.i_crit_edge

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

fail.cleanup87_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %t_hash_alg.021.i = phi ptr [ %hash_n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %81, %fail.for.body.i_crit_edge ]
  %82 = ptrtoint ptr %t_hash_alg.021.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %hash_n.0.i = load ptr, ptr %t_hash_alg.021.i, align 128
  %ahash_alg.i173 = getelementptr inbounds %struct.cc_hash_alg, ptr %t_hash_alg.021.i, i32 0, i32 6
  tail call void @crypto_unregister_ahash(ptr noundef %ahash_alg.i173) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_hash_alg.021.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %t_hash_alg.021.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %t_hash_alg.021.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %t_hash_alg.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %89 = ptrtoint ptr %t_hash_alg.021.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %t_hash_alg.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_hash_alg.021.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %hash_n.0.i, %hash_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup87_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.cleanup87_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup87

cleanup87:                                        ; preds = %list_del.exit.i.cleanup87_crit_edge, %fail.cleanup87_crit_edge, %for.inc.cleanup87_crit_edge, %entry.cleanup87_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup87_crit_edge ], [ %rc.3, %fail.cleanup87_crit_edge ], [ %rc.3, %list_del.exit.i.cleanup87_crit_edge ], [ 0, %for.inc.cleanup87_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_sram_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_hash_free(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 7
  %0 = ptrtoint ptr %hash_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_handle1, align 4
  %hash_list = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_list, align 4
  %cmp.not20 = icmp eq ptr %3, %hash_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %t_hash_alg.021 = phi ptr [ %hash_n.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %t_hash_alg.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %hash_n.0 = load ptr, ptr %t_hash_alg.021, align 128
  %ahash_alg = getelementptr inbounds %struct.cc_hash_alg, ptr %t_hash_alg.021, i32 0, i32 6
  tail call void @crypto_unregister_ahash(ptr noundef %ahash_alg) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_hash_alg.021) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_hash_alg.021, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %t_hash_alg.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t_hash_alg.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %t_hash_alg.021 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %t_hash_alg.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t_hash_alg.021, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %hash_n.0, %hash_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_larval_digest_addr(ptr nocapture noundef readonly %drvdata, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 7
  %0 = ptrtoint ptr %hash_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_handle1, align 4
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %2 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 712, i32 %3)
  %cmp = icmp ugt i32 %3, 712
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %mode, label %do.end [
    i32 -1, label %entry.sw.epilog_crit_edge
    i32 5, label %sw.bb
    i32 0, label %sw.bb2
    i32 2, label %sw.bb4
    i32 1, label %sw.bb8
    i32 9, label %sw.bb13
    i32 4, label %sw.bb19
    i32 3, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %larval_digest_sram_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %larval_digest_sram_addr, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr3 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %larval_digest_sram_addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %larval_digest_sram_addr3, align 4
  %add = add i32 %8, 16
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr5 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %larval_digest_sram_addr5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %larval_digest_sram_addr5, align 4
  %add7 = add i32 %10, 36
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr9 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %larval_digest_sram_addr9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %larval_digest_sram_addr9, align 4
  %add12 = add i32 %12, 68
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr14 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %larval_digest_sram_addr14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %larval_digest_sram_addr14, align 4
  %add18 = add i32 %14, 100
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr20 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %larval_digest_sram_addr20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %larval_digest_sram_addr20, align 4
  %spec.select.v = select i1 %cmp, i32 132, i32 100
  %spec.select = add i32 %16, %spec.select.v
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr27 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %larval_digest_sram_addr27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %larval_digest_sram_addr27, align 4
  %spec.select56.v = select i1 %cmp, i32 196, i32 164
  %spec.select56 = add i32 %18, %spec.select56.v
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %19 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %mode) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %larval_digest_sram_addr37 = getelementptr inbounds %struct.cc_hash_handle, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %larval_digest_sram_addr37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %larval_digest_sram_addr37, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb26, %sw.bb19, %sw.bb13, %sw.bb8, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %22, %sw.epilog ], [ %spec.select56, %sw.bb26 ], [ %spec.select, %sw.bb19 ], [ %add18, %sw.bb13 ], [ %add12, %sw.bb8 ], [ %add7, %sw.bb4 ], [ %add, %sw.bb2 ], [ %6, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cc_digest_len_addr(ptr nocapture noundef readonly %drvdata, i32 noundef %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 7
  %0 = ptrtoint ptr %hash_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_handle1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mode.off = add i32 %mode, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 2
  %add = add i32 %3, 16
  %spec.select = select i1 %switch, i32 %add, i32 %3
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_set_sram_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_request_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_init(ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_init.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_init.__UNIQUE_ID_ddebug434, ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  tail call fastcc void @cc_init_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_update(ptr noundef %req) #0 align 64 {
entry:
  %idx.addr.i = alloca i32, align 4
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i, align 4
  %src4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %src4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src4, align 4
  %nbytes5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes5, align 8
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %14 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %16 = getelementptr inbounds i8, ptr %desc, i32 24
  %17 = call ptr @memset(ptr %16, i32 255, i32 264)
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_update.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_update, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %is_hmac = getelementptr i8, ptr %1, i32 604
  %20 = ptrtoint ptr %is_hmac to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_hmac, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool12.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_update.__UNIQUE_ID_ddebug431, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %22 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call16 = tail call i32 @cc_map_hash_request_update(ptr noundef %23, ptr noundef %__ctx.i, ptr noundef %7, i32 noundef %9, i32 noundef %5, i32 noundef %cond.i) #7
  %24 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call16, label %do.end40 [
    i32 0, label %if.end41
    i32 1, label %do.body21
  ]

do.body21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_update.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_update, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !305

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_update.__UNIQUE_ID_ddebug432, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %9) #7
  br label %cleanup

do.end40:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end14
  %call42 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  tail call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext true) #7
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %25 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cc_update_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %26 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %req, ptr %user_arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.addr.i)
  %27 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %hw_mode.i = getelementptr i8, ptr %1, i32 536
  %28 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_mode.i, align 8
  %hash_mode.i = getelementptr i8, ptr %1, i32 532
  %30 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hash_mode.i, align 4
  %arrayidx.i.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %34 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %inter_digestsize.i = getelementptr i8, ptr %1, i32 540
  %36 = ptrtoint ptr %inter_digestsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inter_digestsize.i, align 4
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 9
  %shl.i.i.i = shl i32 %29, 10
  %and9.i.i.i = and i32 %shl.i.i.i, 15360
  %or.i.i.i = or i32 %33, %and9.i.i.i
  %or.i3.i.i = or i32 %or.i.i.i, 128
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i3.i.i, i32 %or.i.i.i
  %shl28.i.i = shl i32 %37, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %and29.i.i, %40
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %or.i3.i = or i32 %spec.select.i.i, 16777253
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i3.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx5.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %42 = call ptr @memset(ptr %arrayidx5.i, i32 0, i32 24)
  %43 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_mode.i, align 8
  %45 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_mode.i, align 4
  %arrayidx.i.i8.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i8.i, align 4
  %digest_bytes_len_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 1
  %49 = ptrtoint ptr %digest_bytes_len_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %digest_bytes_len_dma_addr.i, align 8
  %hash_len.i = getelementptr i8, ptr %1, i32 544
  %51 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hash_len.i, align 32
  %53 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %cmp.i10.i = icmp eq i32 %46, 9
  %shl.i.i6.i = shl i32 %44, 10
  %and9.i.i7.i = and i32 %shl.i.i6.i, 15360
  %or.i.i9.i = or i32 %48, %and9.i.i7.i
  %or.i3.i11.i = or i32 %or.i.i9.i, 128
  %spec.select.i12.i = select i1 %cmp.i10.i, i32 %or.i3.i11.i, i32 %or.i.i9.i
  %shl28.i17.i = shl i32 %52, 2
  %and29.i18.i = and i32 %shl28.i17.i, 67108860
  %arrayidx50.i19.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx50.i19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx50.i19.i, align 4
  %or.i20.i = or i32 %and29.i18.i, %55
  %or51.i22.i = or i32 %or.i20.i, 67108866
  store i32 %or51.i22.i, ptr %arrayidx50.i19.i, align 4
  %or.i27.i = or i32 %spec.select.i12.i, 67108901
  %56 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i27.i, ptr %arrayidx.i.i8.i, align 4
  %57 = ptrtoint ptr %idx.addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %idx.addr.i, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 7, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx.addr.i) #7
  %58 = ptrtoint ptr %idx.addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %idx.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.addr.i)
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %59
  %60 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %61 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_mode.i, align 8
  %63 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hash_mode.i, align 4
  %shl.i.i = shl i32 %62, 10
  %and9.i.i = and i32 %shl.i.i, 15360
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i148 = or i32 %66, %and9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %64)
  %cmp.i = icmp eq i32 %64, 9
  %or.i3.i149 = or i32 %or.i.i148, 128
  %spec.select.i = select i1 %cmp.i, i32 %or.i3.i149, i32 %or.i.i148
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select.i, ptr %arrayidx.i.i, align 4
  %68 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %70 = ptrtoint ptr %inter_digestsize.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %inter_digestsize.i, align 4
  %arrayidx.i.i150 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %arrayidx.i.i150, align 4
  %shl28.i.i153 = shl i32 %71, 2
  %and29.i.i154 = and i32 %shl28.i.i153, 67108860
  %arrayidx50.i.i155 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx50.i.i155 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx50.i.i155, align 4
  %or49.i.i = or i32 %and29.i.i154, %74
  %or51.i.i156 = or i32 %or49.i.i, 67108866
  store i32 %or51.i.i156, ptr %arrayidx50.i.i155, align 4
  %or.i158 = or i32 %spec.select.i, 134217771
  store i32 %or.i158, ptr %arrayidx.i.i, align 4
  %inc = add i32 %59, 1
  %arrayidx54 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %inc
  %75 = call ptr @memset(ptr %arrayidx54, i32 0, i32 24)
  %76 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_mode.i, align 8
  %78 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hash_mode.i, align 4
  %shl.i.i161 = shl i32 %77, 10
  %and9.i.i162 = and i32 %shl.i.i161, 15360
  %arrayidx.i.i163 = getelementptr [6 x i32], ptr %arrayidx54, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i163, align 4
  %or.i.i164 = or i32 %81, %and9.i.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %79)
  %cmp.i165 = icmp eq i32 %79, 9
  %or.i3.i166 = or i32 %or.i.i164, 128
  %spec.select.i167 = select i1 %cmp.i165, i32 %or.i3.i166, i32 %or.i.i164
  %82 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.select.i167, ptr %arrayidx.i.i163, align 4
  %83 = ptrtoint ptr %digest_bytes_len_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %digest_bytes_len_dma_addr.i, align 8
  %85 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hash_len.i, align 32
  %arrayidx.i.i169 = getelementptr [6 x i32], ptr %arrayidx54, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx.i.i169 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %arrayidx.i.i169, align 4
  %shl28.i.i172 = shl i32 %86, 2
  %and29.i.i173 = and i32 %shl28.i.i172, 67108860
  %arrayidx50.i.i174 = getelementptr [6 x i32], ptr %arrayidx54, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx50.i.i174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx50.i.i174, align 4
  %or49.i.i175 = or i32 %89, %and29.i.i173
  %or.i177 = or i32 %or49.i.i175, 201326594
  store i32 %or.i177, ptr %arrayidx50.i.i174, align 4
  %90 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %93)
  %cmp.i179 = icmp ugt i32 %93, 711
  br i1 %cmp.i179, label %if.then.i, label %if.end48.set_queue_last_ind.exit_crit_edge

if.end48.set_queue_last_ind.exit_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i181 = or i32 %or49.i.i175, -1946157054
  %94 = ptrtoint ptr %arrayidx50.i.i174 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or.i.i181, ptr %arrayidx50.i.i174, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i, %if.end48.set_queue_last_ind.exit_crit_edge
  %95 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i163, align 4
  %or.i185 = or i32 %96, 150994987
  store i32 %or.i185, ptr %arrayidx.i.i163, align 4
  %inc63 = add i32 %59, 2
  %97 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call67 = call i32 @cc_send_request(ptr noundef %98, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc63, ptr noundef %req) #7
  %99 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call67, label %do.end73 [
    i32 -115, label %set_queue_last_ind.exit.cleanup_crit_edge
    i32 -16, label %set_queue_last_ind.exit.cleanup_crit_edge188
  ]

set_queue_last_ind.exit.cleanup_crit_edge188:     ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_queue_last_ind.exit.cleanup_crit_edge:        ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end73:                                         ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call67) #10
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext true) #7
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %set_queue_last_ind.exit.cleanup_crit_edge, %set_queue_last_ind.exit.cleanup_crit_edge188, %do.end47, %do.end40, %if.then33, %do.body21, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end40 ], [ -22, %do.end47 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call67, %set_queue_last_ind.exit.cleanup_crit_edge ], [ %call67, %set_queue_last_ind.exit.cleanup_crit_edge188 ], [ %call67, %do.end73 ], [ 0, %do.body21 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_final(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cc_do_finup(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_finup(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cc_do_finup(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_digest(ptr noundef %req) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  %src4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %src4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src4, align 4
  %nbytes5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes5, align 8
  %result6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %result6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result6, align 32
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %is_hmac8 = getelementptr i8, ptr %1, i32 604
  %16 = ptrtoint ptr %is_hmac8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_hmac8, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %18 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %20 = call ptr @memset(ptr %desc, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idx, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_digest.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_digest, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_digest.__UNIQUE_ID_ddebug430, ptr noundef %dev.i, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @cc_init_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  %call16 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %call23 = tail call fastcc i32 @cc_map_result(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call31 = tail call i32 @cc_map_hash_request_final(ptr noundef %25, ptr noundef %__ctx.i, ptr noundef %7, i32 noundef %9, i1 noundef zeroext true, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  %digest_result_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %26 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %digest_result_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i187 = icmp eq i32 %27, 0
  br i1 %tobool.not.i187, label %do.end36.cc_unmap_result.exit_crit_edge, label %if.then.i

do.end36.cc_unmap_result.exit_crit_edge:          ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i:                                        ; preds = %do.end36
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %27, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_digest, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr.i, i32 noundef %5) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %28 = call ptr @memcpy(ptr %11, ptr %digest_result_buff7.i, i32 %5)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %do.end36.cc_unmap_result.exit_crit_edge
  %29 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %digest_result_dma_addr.i, align 4
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cc_digest_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %31 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %user_arg, align 4
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %33
  %34 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %hash_mode = getelementptr i8, ptr %1, i32 532
  %35 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_mode, align 8
  %37 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hash_mode, align 4
  %shl.i.i = shl i32 %36, 10
  %and9.i.i = and i32 %shl.i.i, 15360
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %40, %and9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %38)
  %cmp.i = icmp eq i32 %38, 9
  %or.i3.i = or i32 %or.i.i, 128
  %spec.select.i = select i1 %cmp.i, i32 %or.i3.i, i32 %or.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.i, ptr %arrayidx.i.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %42 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %digest_buff_dma_addr, align 4
  %inter_digestsize = getelementptr i8, ptr %1, i32 540
  %44 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %inter_digestsize, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end37
  %47 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__crt_ctx.i.i, align 128
  %49 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hash_mode, align 4
  %hash_handle1.i = getelementptr inbounds %struct.cc_drvdata, ptr %48, i32 0, i32 7
  %51 = ptrtoint ptr %hash_handle1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hash_handle1.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %48, i32 0, i32 16
  %53 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 712, i32 %54)
  %cmp.i188 = icmp ugt i32 %54, 712
  %55 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %50, label %do.end.i190 [
    i32 -1, label %if.else.sw.epilog.i_crit_edge
    i32 5, label %sw.bb.i
    i32 0, label %sw.bb2.i
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb8.i
    i32 9, label %sw.bb13.i
    i32 4, label %sw.bb19.i
    i32 3, label %sw.bb26.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %56 = ptrtoint ptr %larval_digest_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %larval_digest_sram_addr.i, align 4
  br label %cc_larval_digest_addr.exit

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr3.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %58 = ptrtoint ptr %larval_digest_sram_addr3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %larval_digest_sram_addr3.i, align 4
  %add.i = add i32 %59, 16
  br label %cc_larval_digest_addr.exit

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr5.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %60 = ptrtoint ptr %larval_digest_sram_addr5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %larval_digest_sram_addr5.i, align 4
  %add7.i = add i32 %61, 36
  br label %cc_larval_digest_addr.exit

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr9.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %62 = ptrtoint ptr %larval_digest_sram_addr9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %larval_digest_sram_addr9.i, align 4
  %add12.i = add i32 %63, 68
  br label %cc_larval_digest_addr.exit

sw.bb13.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr14.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %64 = ptrtoint ptr %larval_digest_sram_addr14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %larval_digest_sram_addr14.i, align 4
  %add18.i = add i32 %65, 100
  br label %cc_larval_digest_addr.exit

sw.bb19.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr20.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %66 = ptrtoint ptr %larval_digest_sram_addr20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %larval_digest_sram_addr20.i, align 4
  %spec.select.v.i = select i1 %cmp.i188, i32 132, i32 100
  %spec.select.i189 = add i32 %67, %spec.select.v.i
  br label %cc_larval_digest_addr.exit

sw.bb26.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr27.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %68 = ptrtoint ptr %larval_digest_sram_addr27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %larval_digest_sram_addr27.i, align 4
  %spec.select56.v.i = select i1 %cmp.i188, i32 196, i32 164
  %spec.select56.i = add i32 %69, %spec.select56.v.i
  br label %cc_larval_digest_addr.exit

do.end.i190:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %48, i32 0, i32 3
  %70 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %50) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i190, %if.else.sw.epilog.i_crit_edge
  %larval_digest_sram_addr37.i = getelementptr inbounds %struct.cc_hash_handle, ptr %52, i32 0, i32 1
  %72 = ptrtoint ptr %larval_digest_sram_addr37.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %larval_digest_sram_addr37.i, align 4
  br label %cc_larval_digest_addr.exit

cc_larval_digest_addr.exit:                       ; preds = %sw.epilog.i, %sw.bb26.i, %sw.bb19.i, %sw.bb13.i, %sw.bb8.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i191 = phi i32 [ %73, %sw.epilog.i ], [ %spec.select56.i, %sw.bb26.i ], [ %spec.select.i189, %sw.bb19.i ], [ %add18.i, %sw.bb13.i ], [ %add12.i, %sw.bb8.i ], [ %add7.i, %sw.bb4.i ], [ %add.i, %sw.bb2.i ], [ %57, %sw.bb.i ]
  %74 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idx, align 4
  %arrayidx45 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %75
  %inter_digestsize46 = getelementptr i8, ptr %1, i32 540
  %76 = ptrtoint ptr %inter_digestsize46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %inter_digestsize46, align 4
  %78 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i191, ptr %arrayidx45, align 4
  br label %if.end47

if.end47:                                         ; preds = %cc_larval_digest_addr.exit, %if.then40
  %.sink264 = phi i32 [ %45, %if.then40 ], [ %77, %cc_larval_digest_addr.exit ]
  %79 = phi i32 [ %33, %if.then40 ], [ %75, %cc_larval_digest_addr.exit ]
  %.sink = phi i32 [ 67108866, %if.then40 ], [ 1, %cc_larval_digest_addr.exit ]
  %shl.i = shl i32 %.sink264, 2
  %and9.i = and i32 %shl.i, 67108860
  %arrayidx21.i = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %79, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx21.i, align 4
  %or.i194 = or i32 %and9.i, %81
  %or22.i = or i32 %or.i194, %.sink
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %82 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idx, align 4
  %arrayidx.i = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %83, i32 0, i32 0, i32 4
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %or.i197 = or i32 %85, 16777253
  store i32 %or.i197, ptr %arrayidx.i, align 4
  %inc = add i32 %83, 1
  %arrayidx50 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %inc
  %86 = call ptr @memset(ptr %arrayidx50, i32 0, i32 24)
  %87 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hw_mode, align 8
  %89 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hash_mode, align 4
  %shl.i.i200 = shl i32 %88, 10
  %and9.i.i201 = and i32 %shl.i.i200, 15360
  %arrayidx.i.i202 = getelementptr [6 x i32], ptr %arrayidx50, i32 0, i32 4
  %91 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i202, align 4
  %or.i.i203 = or i32 %92, %and9.i.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %90)
  %cmp.i204 = icmp eq i32 %90, 9
  %or.i3.i205 = or i32 %or.i.i203, 128
  %spec.select.i206 = select i1 %cmp.i204, i32 %or.i3.i205, i32 %or.i.i203
  %93 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.select.i206, ptr %arrayidx.i.i202, align 4
  br i1 %tobool.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %digest_bytes_len_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 1
  %94 = ptrtoint ptr %digest_bytes_len_dma_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %digest_bytes_len_dma_addr, align 8
  %hash_len = getelementptr i8, ptr %1, i32 544
  %96 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hash_len, align 32
  %98 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %arrayidx50, align 4
  %shl28.i210 = shl i32 %97, 2
  %and29.i211 = and i32 %shl28.i210, 67108860
  %arrayidx50.i212 = getelementptr [6 x i32], ptr %arrayidx50, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx50.i212 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx50.i212, align 4
  %or.i213 = or i32 %and29.i211, %100
  %or51.i215 = or i32 %or.i213, 67108866
  store i32 %or51.i215, ptr %arrayidx50.i212, align 4
  %or.i220 = or i32 %spec.select.i206, 67108901
  %101 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i220, ptr %arrayidx.i.i202, align 4
  %inc69.c186 = add i32 %83, 2
  %102 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %inc69.c186, ptr %idx, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 7, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  %103 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %idx, align 4
  %arrayidx72 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %104
  %105 = call ptr @memset(ptr %arrayidx72, i32 0, i32 24)
  %106 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hw_mode, align 8
  %shl.i223 = shl i32 %107, 10
  %and9.i224 = and i32 %shl.i223, 15360
  %arrayidx.i225 = getelementptr [6 x i32], ptr %arrayidx72, i32 0, i32 4
  %108 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i225, align 4
  %or.i226 = or i32 %109, %and9.i224
  store i32 %or.i226, ptr %arrayidx.i225, align 4
  %digest_buff_dma_addr76 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %110 = ptrtoint ptr %digest_buff_dma_addr76 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %digest_buff_dma_addr76, align 4
  %112 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hash_len, align 32
  %arrayidx.i.i227 = getelementptr [6 x i32], ptr %arrayidx72, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx.i.i227 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %arrayidx.i.i227, align 4
  %shl28.i.i = shl i32 %113, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx72, i32 0, i32 3
  %115 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx50.i.i, align 4
  %or49.i.i = or i32 %and29.i.i, %116
  %or51.i.i = or i32 %or49.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %or.i233 = or i32 %or.i226, 151027755
  store i32 %or.i233, ptr %arrayidx.i225, align 4
  %inc81 = add i32 %104, 1
  %call83 = call fastcc i32 @cc_fin_hmac(ptr noundef nonnull %desc, ptr noundef %req, i32 noundef %inc81)
  %117 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call83, ptr %idx, align 4
  br label %if.end84

if.else57:                                        ; preds = %if.end47
  %hash_len59 = getelementptr i8, ptr %1, i32 544
  %118 = ptrtoint ptr %hash_len59 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hash_len59, align 32
  %120 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %arrayidx50, align 4
  %shl.i236 = shl i32 %119, 2
  %and31.i = and i32 %shl.i236, 67108860
  %arrayidx33.i = getelementptr [6 x i32], ptr %arrayidx50, i32 0, i32 1
  %121 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx33.i, align 4
  %or32.i = or i32 %and31.i, %122
  %or34.i = or i32 %or32.i, 134217729
  store i32 %or34.i, ptr %arrayidx33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool60.not = icmp eq i32 %9, 0
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %or.i242 = or i32 %spec.select.i206, 67633189
  %123 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or.i242, ptr %arrayidx.i.i202, align 4
  %inc69.c = add i32 %83, 2
  %124 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %inc69.c, ptr %idx, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 7, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  br label %if.end84

if.else63:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %or.i248 = or i32 %spec.select.i206, 67141669
  %125 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or.i248, ptr %arrayidx.i.i202, align 4
  %inc69.c183 = add i32 %83, 2
  %126 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc69.c183, ptr %idx, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 7, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  br label %if.end84

if.end84:                                         ; preds = %if.else63, %if.then61, %if.then55
  %127 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %idx, align 4
  %129 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %130, i32 128
  %__crt_alg.i.i.i = getelementptr i8, ptr %130, i32 12
  %131 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %132, i32 -128
  %133 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %arrayidx.i249 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %128
  %135 = call ptr @memset(ptr %arrayidx.i249, i32 0, i32 24)
  %hash_mode.i = getelementptr i8, ptr %130, i32 532
  %hw_mode.i = getelementptr i8, ptr %130, i32 536
  %136 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hw_mode.i, align 8
  %138 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hash_mode.i, align 4
  %shl.i.i.i = shl i32 %137, 10
  %and9.i.i.i = and i32 %shl.i.i.i, 15360
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i249, i32 0, i32 4
  %140 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %141, %and9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %139)
  %cmp.i.i = icmp eq i32 %139, 9
  %or.i3.i.i = or i32 %or.i.i.i, 128
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i3.i.i, i32 %or.i.i.i
  %142 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %spec.select.i.i, ptr %arrayidx.i.i.i, align 4
  %digest_result_dma_addr.i250 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %143 = ptrtoint ptr %digest_result_dma_addr.i250 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %digest_result_dma_addr.i250, align 4
  %arrayidx.i.i33.i = getelementptr [6 x i32], ptr %arrayidx.i249, i32 0, i32 2
  %145 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx.i.i33.i, align 4
  %shl28.i.i.i = shl i32 %134, 2
  %and29.i.i.i = and i32 %shl28.i.i.i, 67108860
  %arrayidx50.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i249, i32 0, i32 3
  %146 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx50.i.i.i, align 4
  %or49.i.i.i = or i32 %147, %and29.i.i.i
  %or.i.i251 = or i32 %or49.i.i.i, 201326594
  store i32 %or.i.i251, ptr %arrayidx50.i.i.i, align 4
  %148 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %__crt_ctx.i.i.i, align 128
  %hw_rev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hw_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %151)
  %cmp.i34.i = icmp ugt i32 %151, 711
  br i1 %cmp.i34.i, label %if.then.i.i252, label %if.end84.cc_fin_result.exit_crit_edge

if.end84.cc_fin_result.exit_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_fin_result.exit

if.then.i.i252:                                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i36.i = or i32 %or49.i.i.i, -1946157054
  %152 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i.i36.i, ptr %arrayidx50.i.i.i, align 4
  br label %cc_fin_result.exit

cc_fin_result.exit:                               ; preds = %if.then.i.i252, %if.end84.cc_fin_result.exit_crit_edge
  %153 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i39.i = or i32 %154, 134217771
  %155 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %hash_mode.i, align 4
  %mode.off.i.i = add i32 %156, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode.off.i.i)
  %switch.i.i = icmp ult i32 %mode.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i32 -2147483648, i32 262144
  %or.i8.i.i = or i32 %..i.i, %or.i39.i
  %157 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or.i8.i.i, ptr %arrayidx.i.i.i, align 4
  %inc.i = add i32 %128, 1
  %158 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call90 = call i32 @cc_send_request(ptr noundef %159, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc.i, ptr noundef %req) #7
  %160 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call90, label %do.end95 [
    i32 -115, label %cc_fin_result.exit.cleanup_crit_edge
    i32 -16, label %cc_fin_result.exit.cleanup_crit_edge265
  ]

cc_fin_result.exit.cleanup_crit_edge265:          ; preds = %cc_fin_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cc_fin_result.exit.cleanup_crit_edge:             ; preds = %cc_fin_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end95:                                         ; preds = %cc_fin_result.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call90) #10
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext true) #7
  %161 = ptrtoint ptr %digest_result_dma_addr.i250 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %digest_result_dma_addr.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i254 = icmp eq i32 %162, 0
  br i1 %tobool.not.i254, label %do.end95.cc_unmap_result.exit260_crit_edge, label %if.then.i255

do.end95.cc_unmap_result.exit260_crit_edge:       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit260

if.then.i255:                                     ; preds = %do.end95
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %162, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_digest, %if.then5.i257)) #7
          to label %do.end.i259 [label %if.then5.i257], !srcloc !305

if.then5.i257:                                    ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i256 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i256, ptr noundef %digest_result_dma_addr.i250, i32 noundef %5) #7
  br label %do.end.i259

do.end.i259:                                      ; preds = %if.then5.i257, %if.then.i255
  %digest_result_buff7.i258 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %163 = call ptr @memcpy(ptr %11, ptr %digest_result_buff7.i258, i32 %5)
  br label %cc_unmap_result.exit260

cc_unmap_result.exit260:                          ; preds = %do.end.i259, %do.end95.cc_unmap_result.exit260_crit_edge
  %164 = ptrtoint ptr %digest_result_dma_addr.i250 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %digest_result_dma_addr.i250, align 4
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cc_unmap_result.exit260, %cc_fin_result.exit.cleanup_crit_edge, %cc_fin_result.exit.cleanup_crit_edge265, %cc_unmap_result.exit, %do.end28, %do.end21
  %retval.0 = phi i32 [ -12, %do.end21 ], [ -12, %do.end28 ], [ -12, %cc_unmap_result.exit ], [ %call90, %cc_fin_result.exit.cleanup_crit_edge ], [ %call90, %cc_fin_result.exit.cleanup_crit_edge265 ], [ %call90, %cc_unmap_result.exit260 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cc_hash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %buff_index.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 5
  %2 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buff_index.i, align 8
  %arrayidx.i = getelementptr [2 x [128 x i8]], ptr %__ctx.i, i32 0, i32 %3
  %arrayidx.i27 = getelementptr %struct.ahash_req_ctx, ptr %__ctx.i, i32 0, i32 15, i32 %3
  %4 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i27, align 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 -1024585616, ptr %out, align 1
  %add.ptr = getelementptr i8, ptr %out, i32 4
  %digest_buff = getelementptr inbounds %struct.ahash_request, ptr %req, i32 4
  %inter_digestsize = getelementptr i8, ptr %1, i32 540
  %7 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inter_digestsize, align 4
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %digest_buff, i32 %8)
  %10 = load i32, ptr %inter_digestsize, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %10
  %digest_bytes_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 6
  %hash_len = getelementptr i8, ptr %1, i32 544
  %11 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_len, align 32
  %13 = call ptr @memcpy(ptr %add.ptr6, ptr %digest_bytes_len, i32 %12)
  %14 = load i32, ptr %hash_len, align 32
  %add.ptr9 = getelementptr i8, ptr %add.ptr6, i32 %14
  %15 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %5, ptr %add.ptr9, align 1
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 4
  %16 = call ptr @memcpy(ptr %add.ptr10, ptr %arrayidx.i, i32 %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_import(ptr nocapture noundef %req, ptr nocapture noundef readonly %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %tmp.0.copyload = load i32, ptr %in, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024585616, i32 %tmp.0.copyload)
  %cmp.not = icmp eq i32 %tmp.0.copyload, -1024585616
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %in, i32 4
  tail call fastcc void @cc_init_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  %digest_buff = getelementptr inbounds %struct.ahash_request, ptr %req, i32 4
  %inter_digestsize = getelementptr i8, ptr %2, i32 540
  %7 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inter_digestsize, align 4
  %9 = call ptr @memcpy(ptr %digest_buff, ptr %add.ptr, i32 %8)
  %10 = load i32, ptr %inter_digestsize, align 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %10
  %digest_bytes_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 6
  %hash_len = getelementptr i8, ptr %2, i32 544
  %11 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_len, align 32
  %13 = call ptr @memcpy(ptr %digest_bytes_len, ptr %add.ptr5, i32 %12)
  %14 = load i32, ptr %hash_len, align 32
  %add.ptr8 = getelementptr i8, ptr %add.ptr5, i32 %14
  %15 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %tmp.0.copyload19 = load i32, ptr %add.ptr8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %tmp.0.copyload19)
  %cmp9 = icmp ugt i32 %tmp.0.copyload19, 128
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12 = getelementptr i8, ptr %add.ptr8, i32 4
  %buf_cnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 3
  %16 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tmp.0.copyload19, ptr %buf_cnt, align 32
  %17 = call ptr @memcpy(ptr %__ctx.i, ptr %add.ptr12, i32 %tmp.0.copyload19)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_hash_setkey(ptr noundef %ahash, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %0 = call ptr @memset(ptr %cc_req, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %1 = call ptr @memset(ptr %desc, i32 255, i32 288)
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_setkey.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_setkey.__UNIQUE_ID_ddebug435, ptr noundef %dev.i, ptr noundef nonnull @.str.82, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hash_mode = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 4
  %14 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash_mode, align 4
  %hash_handle1.i = getelementptr inbounds %struct.cc_drvdata, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %hash_handle1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash_handle1.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %13, i32 0, i32 16
  %18 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 712, i32 %19)
  %cmp.i = icmp ugt i32 %19, 712
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %15, label %do.end.i [
    i32 -1, label %do.end.sw.epilog.i_crit_edge
    i32 5, label %sw.bb.i
    i32 0, label %sw.bb2.i
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb8.i
    i32 9, label %sw.bb13.i
    i32 4, label %sw.bb19.i
    i32 3, label %sw.bb26.i
  ]

do.end.sw.epilog.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %larval_digest_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %larval_digest_sram_addr.i, align 4
  br label %cc_larval_digest_addr.exit

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr3.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %larval_digest_sram_addr3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %larval_digest_sram_addr3.i, align 4
  %add.i = add i32 %24, 16
  br label %cc_larval_digest_addr.exit

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr5.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %larval_digest_sram_addr5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %larval_digest_sram_addr5.i, align 4
  %add7.i = add i32 %26, 36
  br label %cc_larval_digest_addr.exit

sw.bb8.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr9.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %larval_digest_sram_addr9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %larval_digest_sram_addr9.i, align 4
  %add12.i = add i32 %28, 68
  br label %cc_larval_digest_addr.exit

sw.bb13.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr14.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %29 = ptrtoint ptr %larval_digest_sram_addr14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %larval_digest_sram_addr14.i, align 4
  %add18.i = add i32 %30, 100
  br label %cc_larval_digest_addr.exit

sw.bb19.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr20.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %31 = ptrtoint ptr %larval_digest_sram_addr20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %larval_digest_sram_addr20.i, align 4
  %spec.select.v.i = select i1 %cmp.i, i32 132, i32 100
  %spec.select.i = add i32 %32, %spec.select.v.i
  br label %cc_larval_digest_addr.exit

sw.bb26.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %larval_digest_sram_addr27.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %33 = ptrtoint ptr %larval_digest_sram_addr27.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %larval_digest_sram_addr27.i, align 4
  %spec.select56.v.i = select i1 %cmp.i, i32 196, i32 164
  %spec.select56.i = add i32 %34, %spec.select56.v.i
  br label %cc_larval_digest_addr.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %13, i32 0, i32 3
  %35 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %15) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %do.end.sw.epilog.i_crit_edge
  %larval_digest_sram_addr37.i = getelementptr inbounds %struct.cc_hash_handle, ptr %17, i32 0, i32 1
  %37 = ptrtoint ptr %larval_digest_sram_addr37.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %larval_digest_sram_addr37.i, align 4
  br label %cc_larval_digest_addr.exit

cc_larval_digest_addr.exit:                       ; preds = %sw.epilog.i, %sw.bb26.i, %sw.bb19.i, %sw.bb13.i, %sw.bb8.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i398 = phi i32 [ %38, %sw.epilog.i ], [ %spec.select56.i, %sw.bb26.i ], [ %spec.select.i, %sw.bb19.i ], [ %add18.i, %sw.bb13.i ], [ %add12.i, %sw.bb8.i ], [ %add7.i, %sw.bb4.i ], [ %add.i, %sw.bb2.i ], [ %22, %sw.bb.i ]
  %key_params = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 2
  %39 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %keylen, ptr %key_params, align 8
  %key_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 3
  %40 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %key_dma_addr, align 4
  %is_hmac = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 76
  %41 = ptrtoint ptr %is_hmac to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %is_hmac, align 4
  %key12 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4
  %42 = ptrtoint ptr %key12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %key12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen)
  %tobool13.not = icmp eq i32 %keylen, 0
  br i1 %tobool13.not, label %if.else119, label %if.then14

if.then14:                                        ; preds = %cc_larval_digest_addr.exit
  %call15 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #7
  %43 = ptrtoint ptr %key12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call15, ptr %key12, align 8
  %tobool20.not = icmp eq ptr %call15, null
  br i1 %tobool20.not, label %if.then14.cleanup_crit_edge, label %if.end22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call15) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end22
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !306

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %47, %if.end.i.i ], [ %45, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %48 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %key_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #7
  br label %do.end35

dma_map_single_attrs.exit:                        ; preds = %if.end22
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call15, i32 noundef %keylen) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %50 = ptrtoint ptr %call15 to i32
  %sub.i = add i32 %50, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %49, i32 %shr.i
  %and.i = and i32 %50, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %keylen, i32 noundef 1, i32 noundef 0) #7
  %51 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call41.i, ptr %key_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i400 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i400, label %dma_map_single_attrs.exit.do.end35_crit_edge, label %do.body41

dma_map_single_attrs.exit.do.end35_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end35:                                         ; preds = %dma_map_single_attrs.exit.do.end35_crit_edge, %dma_map_single_attrs.exit.thread
  %52 = ptrtoint ptr %key12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %key12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef %53, i32 noundef %keylen) #10
  %54 = ptrtoint ptr %key12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %key12, align 8
  tail call void @kfree_sensitive(ptr noundef %55) #7
  br label %cleanup

do.body41:                                        ; preds = %dma_map_single_attrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_setkey.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_setkey, %if.then53)) #7
          to label %do.end60 [label %if.then53], !srcloc !305

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key_params, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_setkey.__UNIQUE_ID_ddebug436, ptr noundef %dev.i, ptr noundef nonnull @.str.84, ptr noundef %key_dma_addr, i32 noundef %57) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %do.body41
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %keylen)
  %cmp = icmp ult i32 %9, %keylen
  br i1 %cmp, label %if.then61, label %if.else

if.then61:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %58 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %hw_mode = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 8
  %59 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %60, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %inter_digestsize = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 12
  %63 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inter_digestsize, align 4
  %65 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i398, ptr %desc, align 4
  %or.i = or i32 %62, %and9.i
  %shl.i404 = shl i32 %64, 2
  %and9.i405 = and i32 %shl.i404, 67108860
  %arrayidx21.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx21.i, align 4
  %or.i406 = or i32 %and9.i405, %67
  %or22.i = or i32 %or.i406, 1
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %or.i410 = or i32 %or.i, 16777253
  store i32 %or.i410, ptr %arrayidx.i, align 4
  %arrayidx66 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1
  %68 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %69 = call ptr @memset(ptr %68, i32 0, i32 20)
  %hash_len = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 16
  %70 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hash_len, align 32
  %72 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx66, align 4
  %arrayidx.i415 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 4
  %shl.i420 = shl i32 %71, 2
  %and31.i = and i32 %shl.i420, 67108860
  %arrayidx33.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx33.i, align 4
  %or32.i = or i32 %and31.i, %74
  %or34.i = or i32 %or32.i, 134217729
  store i32 %or34.i, ptr %arrayidx33.i, align 4
  %or.i426 = or i32 %and9.i, 67633189
  %75 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i426, ptr %arrayidx.i415, align 4
  %arrayidx74 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2
  %76 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %77 = call ptr @memset(ptr %76, i32 0, i32 20)
  %78 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %key_dma_addr, align 4
  %80 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx74, align 4
  %shl28.i = shl i32 %keylen, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx50.i, align 4
  %or.i427 = or i32 %and29.i, %82
  %or51.i = or i32 %or.i427, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %arrayidx.i428 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 4
  %83 = ptrtoint ptr %arrayidx.i428 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i428, align 4
  %or.i429 = or i32 %84, 7
  store i32 %or.i429, ptr %arrayidx.i428, align 4
  %arrayidx80 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3
  %85 = call ptr @memset(ptr %arrayidx80, i32 0, i32 24)
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %86 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  %arrayidx.i.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx.i.i, align 4
  %arrayidx.i434 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 4
  %shl28.i.i = shl i32 %11, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx50.i.i, align 4
  %or49.i.i = or i32 %and29.i.i, %90
  %or51.i.i = or i32 %or49.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %or.i440 = or i32 %and9.i, 134217771
  %91 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hash_mode, align 4
  %mode.off.i = add i32 %92, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode.off.i)
  %switch.i = icmp ult i32 %mode.off.i, 3
  %..i443 = select i1 %switch.i, i32 -2147483648, i32 262144
  %or.i8.i = or i32 %..i443, %or.i440
  %93 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i8.i, ptr %arrayidx.i434, align 4
  %arrayidx90 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4
  %94 = call ptr @memset(ptr %arrayidx90, i32 0, i32 24)
  %sub = sub i32 %9, %11
  %shl.i446 = shl i32 %sub, 2
  %and31.i447 = and i32 %shl.i446, 67108860
  %arrayidx33.i448 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx33.i448 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx33.i448, align 4
  %or32.i449 = or i32 %and31.i447, %96
  %or34.i450 = or i32 %or32.i449, 134217729
  store i32 %or34.i450, ptr %arrayidx33.i448, align 4
  %add = add i32 %87, %11
  %arrayidx.i.i453 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx.i.i453 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add, ptr %arrayidx.i.i453, align 4
  %arrayidx50.i.i458 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 3
  br label %if.end126.sink.split

if.else:                                          ; preds = %do.end60
  %98 = getelementptr inbounds i8, ptr %desc, i32 4
  %99 = call ptr @memset(ptr %98, i32 0, i32 20)
  %100 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %key_dma_addr, align 4
  %102 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %desc, align 4
  %shl28.i464 = shl i32 %keylen, 2
  %and29.i465 = and i32 %shl28.i464, 67108860
  %arrayidx50.i466 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx50.i466 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx50.i466, align 4
  %or.i467 = or i32 %and29.i465, %104
  %or51.i469 = or i32 %or.i467, 67108866
  store i32 %or51.i469, ptr %arrayidx50.i466, align 4
  %opad_tmp_keys_dma_addr103 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %105 = ptrtoint ptr %opad_tmp_keys_dma_addr103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %opad_tmp_keys_dma_addr103, align 128
  %arrayidx.i.i472 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i472 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx.i.i472, align 4
  %arrayidx50.i.i477 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx50.i.i477 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx50.i.i477, align 4
  %or49.i.i478 = or i32 %and29.i465, %109
  %or51.i.i479 = or i32 %or49.i.i478, 67108866
  store i32 %or51.i.i479, ptr %arrayidx50.i.i477, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %keylen)
  %tobool106.not = icmp eq i32 %9, %keylen
  br i1 %tobool106.not, label %if.else.if.end126_crit_edge, label %if.then107

if.else.if.end126_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx108 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1
  %110 = call ptr @memset(ptr %arrayidx108, i32 0, i32 24)
  %sub105 = sub i32 %9, %keylen
  %shl.i483 = shl i32 %sub105, 2
  %and31.i484 = and i32 %shl.i483, 67108860
  %arrayidx33.i485 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %arrayidx33.i485 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx33.i485, align 4
  %or32.i486 = or i32 %and31.i484, %112
  %or34.i487 = or i32 %or32.i486, 134217729
  store i32 %or34.i487, ptr %arrayidx33.i485, align 4
  %add114 = add i32 %106, %keylen
  %arrayidx.i.i490 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 2
  %113 = ptrtoint ptr %arrayidx.i.i490 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add114, ptr %arrayidx.i.i490, align 4
  %arrayidx50.i.i495 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 3
  br label %if.end126.sink.split

if.else119:                                       ; preds = %cc_larval_digest_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %114 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %shl.i501 = shl i32 %9, 2
  %and31.i502 = and i32 %shl.i501, 67108860
  %arrayidx33.i503 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx33.i503 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx33.i503, align 4
  %or32.i504 = or i32 %and31.i502, %116
  %or34.i505 = or i32 %or32.i504, 134217729
  store i32 %or34.i505, ptr %arrayidx33.i503, align 4
  %opad_tmp_keys_dma_addr124 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %117 = ptrtoint ptr %opad_tmp_keys_dma_addr124 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %opad_tmp_keys_dma_addr124, align 128
  %arrayidx.i.i508 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx.i.i508 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx.i.i508, align 4
  %arrayidx50.i.i513 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 3
  br label %if.end126.sink.split

if.end126.sink.split:                             ; preds = %if.else119, %if.then107, %if.then61
  %arrayidx50.i.i458.sink628 = phi ptr [ %arrayidx50.i.i458, %if.then61 ], [ %arrayidx50.i.i495, %if.then107 ], [ %arrayidx50.i.i513, %if.else119 ]
  %and31.i447.sink = phi i32 [ %and31.i447, %if.then61 ], [ %and31.i484, %if.then107 ], [ %and31.i502, %if.else119 ]
  %idx.0.ph = phi i32 [ 5, %if.then61 ], [ 2, %if.then107 ], [ 1, %if.else119 ]
  %120 = ptrtoint ptr %arrayidx50.i.i458.sink628 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx50.i.i458.sink628, align 4
  %or49.i.i459 = or i32 %and31.i447.sink, %121
  %or51.i.i460 = or i32 %or49.i.i459, 67108866
  store i32 %or51.i.i460, ptr %arrayidx50.i.i458.sink628, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.end126.sink.split, %if.else.if.end126_crit_edge
  %idx.0 = phi i32 [ 1, %if.else.if.end126_crit_edge ], [ %idx.0.ph, %if.end126.sink.split ]
  %122 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call128 = call i32 @cc_send_sync_request(ptr noundef %123, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %idx.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %for.cond.preheader, label %do.end133

for.cond.preheader:                               ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %hw_mode138 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 8
  %124 = ptrtoint ptr %hw_mode138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hw_mode138, align 8
  %shl.i519 = shl i32 %125, 10
  %and9.i520 = and i32 %shl.i519, 15360
  %inter_digestsize140 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 12
  %hash_len148 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 16
  %opad_tmp_keys_dma_addr162 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %shl28.i569 = shl i32 %9, 2
  %and29.i570 = and i32 %shl28.i569, 67108860
  %digest_buff_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 1
  %126 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %arrayidx.i521 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %127 = ptrtoint ptr %arrayidx.i521 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i521, align 4
  %or.i522 = or i32 %128, %and9.i520
  store i32 %or.i522, ptr %arrayidx.i521, align 4
  %129 = ptrtoint ptr %inter_digestsize140 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %inter_digestsize140, align 4
  %131 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %retval.0.i398, ptr %desc, align 4
  %shl.i526 = shl i32 %130, 2
  %and9.i527 = and i32 %shl.i526, 67108860
  %arrayidx21.i528 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx21.i528 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx21.i528, align 4
  %or.i529 = or i32 %and9.i527, %133
  %or22.i530 = or i32 %or.i529, 1
  store i32 %or22.i530, ptr %arrayidx21.i528, align 4
  %or.i535 = or i32 %or.i522, 16777253
  store i32 %or.i535, ptr %arrayidx.i521, align 4
  %arrayidx144 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1
  %134 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %135 = call ptr @memset(ptr %134, i32 0, i32 20)
  %arrayidx.i540 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 4
  %136 = ptrtoint ptr %arrayidx.i540 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %and9.i520, ptr %arrayidx.i540, align 4
  %137 = ptrtoint ptr %hash_len148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hash_len148, align 32
  %139 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %arrayidx144, align 4
  %shl.i545 = shl i32 %138, 2
  %and31.i546 = and i32 %shl.i545, 67108860
  %arrayidx33.i547 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx33.i547 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx33.i547, align 4
  %or32.i548 = or i32 %and31.i546, %141
  %or34.i549 = or i32 %or32.i548, 134217729
  store i32 %or34.i549, ptr %arrayidx33.i547, align 4
  %or.i554 = or i32 %and9.i520, 67108901
  store i32 %or.i554, ptr %arrayidx.i540, align 4
  %arrayidx152 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2
  %142 = call ptr @memset(ptr %arrayidx152, i32 0, i32 24)
  %arrayidx.i555 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %143 = ptrtoint ptr %arrayidx.i555 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 909522486, ptr %arrayidx.i555, align 4
  %arrayidx.i560 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 4
  %or.i566 = or i32 %and9.i520, 33554469
  %144 = ptrtoint ptr %arrayidx.i560 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i566, ptr %arrayidx.i560, align 4
  %arrayidx160 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3
  %145 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 1
  %146 = call ptr @memset(ptr %145, i32 0, i32 20)
  %147 = ptrtoint ptr %opad_tmp_keys_dma_addr162 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %opad_tmp_keys_dma_addr162, align 128
  %149 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx160, align 4
  %arrayidx50.i571 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx50.i571 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx50.i571, align 4
  %or.i572 = or i32 %and29.i570, %151
  %or51.i574 = or i32 %or.i572, 67108866
  store i32 %or51.i574, ptr %arrayidx50.i571, align 4
  %arrayidx.i580 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 4
  %152 = ptrtoint ptr %arrayidx.i580 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i580, align 4
  %or.i581 = or i32 %153, %and9.i520
  %arrayidx.i583 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 3
  %154 = ptrtoint ptr %arrayidx.i583 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i583, align 4
  %or.i584 = or i32 %155, 536870912
  store i32 %or.i584, ptr %arrayidx.i583, align 4
  %or.i586 = or i32 %or.i581, 7
  store i32 %or.i586, ptr %arrayidx.i580, align 4
  %arrayidx168 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4
  %156 = call ptr @memset(ptr %arrayidx168, i32 0, i32 24)
  %arrayidx.i591 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 4
  %157 = ptrtoint ptr %arrayidx.i591 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and9.i520, ptr %arrayidx.i591, align 4
  %158 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %digest_buff_dma_addr, align 4
  %arrayidx.i.i603 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 2
  %160 = ptrtoint ptr %arrayidx.i.i603 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx.i.i603, align 4
  %arrayidx50.i.i608 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 4, i32 0, i32 0, i32 3
  %161 = ptrtoint ptr %arrayidx50.i.i608 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx50.i.i608, align 4
  %or49.i.i609 = or i32 %and9.i527, %162
  %or51.i.i610 = or i32 %or49.i.i609, 67108866
  store i32 %or51.i.i610, ptr %arrayidx50.i.i608, align 4
  %163 = load i32, ptr %arrayidx.i591, align 4
  %or.i615 = or i32 %163, 134217771
  store i32 %or.i615, ptr %arrayidx.i591, align 4
  %arrayidx136.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 5
  %164 = call ptr @memset(ptr %arrayidx136.1, i32 0, i32 24)
  %arrayidx.i521.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 5, i32 0, i32 0, i32 4
  %165 = ptrtoint ptr %arrayidx.i521.1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i521.1, align 4
  %or.i522.1 = or i32 %166, %and9.i520
  store i32 %or.i522.1, ptr %arrayidx.i521.1, align 4
  %167 = load i32, ptr %inter_digestsize140, align 4
  %168 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i398, ptr %arrayidx136.1, align 4
  %shl.i526.1 = shl i32 %167, 2
  %and9.i527.1 = and i32 %shl.i526.1, 67108860
  %arrayidx21.i528.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 5, i32 0, i32 0, i32 1
  %169 = ptrtoint ptr %arrayidx21.i528.1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx21.i528.1, align 4
  %or.i529.1 = or i32 %and9.i527.1, %170
  %or22.i530.1 = or i32 %or.i529.1, 1
  store i32 %or22.i530.1, ptr %arrayidx21.i528.1, align 4
  %or.i535.1 = or i32 %or.i522.1, 16777253
  store i32 %or.i535.1, ptr %arrayidx.i521.1, align 4
  %arrayidx144.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 6
  %171 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 6, i32 0, i32 0, i32 1
  %172 = call ptr @memset(ptr %171, i32 0, i32 20)
  %arrayidx.i540.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 6, i32 0, i32 0, i32 4
  %173 = ptrtoint ptr %arrayidx.i540.1 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %and9.i520, ptr %arrayidx.i540.1, align 4
  %174 = load i32, ptr %hash_len148, align 32
  %175 = ptrtoint ptr %arrayidx144.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %arrayidx144.1, align 4
  %shl.i545.1 = shl i32 %174, 2
  %and31.i546.1 = and i32 %shl.i545.1, 67108860
  %arrayidx33.i547.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 6, i32 0, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx33.i547.1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx33.i547.1, align 4
  %or32.i548.1 = or i32 %and31.i546.1, %177
  %or34.i549.1 = or i32 %or32.i548.1, 134217729
  store i32 %or34.i549.1, ptr %arrayidx33.i547.1, align 4
  store i32 %or.i554, ptr %arrayidx.i540.1, align 4
  %arrayidx152.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 7
  %178 = call ptr @memset(ptr %arrayidx152.1, i32 0, i32 24)
  %arrayidx.i555.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 7, i32 0, i32 0, i32 2
  %179 = ptrtoint ptr %arrayidx.i555.1 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1549556828, ptr %arrayidx.i555.1, align 4
  %arrayidx.i560.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 7, i32 0, i32 0, i32 4
  %180 = ptrtoint ptr %arrayidx.i560.1 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or.i566, ptr %arrayidx.i560.1, align 4
  %arrayidx160.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 8
  %181 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 8, i32 0, i32 0, i32 1
  %182 = call ptr @memset(ptr %181, i32 0, i32 20)
  %183 = load i32, ptr %opad_tmp_keys_dma_addr162, align 128
  %184 = ptrtoint ptr %arrayidx160.1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx160.1, align 4
  %arrayidx50.i571.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 8, i32 0, i32 0, i32 1
  %185 = ptrtoint ptr %arrayidx50.i571.1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx50.i571.1, align 4
  %or.i572.1 = or i32 %and29.i570, %186
  %or51.i574.1 = or i32 %or.i572.1, 67108866
  store i32 %or51.i574.1, ptr %arrayidx50.i571.1, align 4
  %arrayidx.i580.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 8, i32 0, i32 0, i32 4
  %187 = ptrtoint ptr %arrayidx.i580.1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i580.1, align 4
  %or.i581.1 = or i32 %188, %and9.i520
  %arrayidx.i583.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 8, i32 0, i32 0, i32 3
  %189 = ptrtoint ptr %arrayidx.i583.1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i583.1, align 4
  %or.i584.1 = or i32 %190, 536870912
  store i32 %or.i584.1, ptr %arrayidx.i583.1, align 4
  %or.i586.1 = or i32 %or.i581.1, 7
  store i32 %or.i586.1, ptr %arrayidx.i580.1, align 4
  %arrayidx168.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 9
  %191 = call ptr @memset(ptr %arrayidx168.1, i32 0, i32 24)
  %arrayidx.i591.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 9, i32 0, i32 0, i32 4
  %192 = ptrtoint ptr %arrayidx.i591.1 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %and9.i520, ptr %arrayidx.i591.1, align 4
  %arrayidx.i.i594.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 9, i32 0, i32 0, i32 2
  %193 = ptrtoint ptr %arrayidx.i.i594.1 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %183, ptr %arrayidx.i.i594.1, align 4
  %arrayidx50.i.i599.1 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 9, i32 0, i32 0, i32 3
  %194 = ptrtoint ptr %arrayidx50.i.i599.1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx50.i.i599.1, align 4
  %or49.i.i600.1 = or i32 %and9.i527.1, %195
  %or51.i.i601.1 = or i32 %or49.i.i600.1, 67108866
  store i32 %or51.i.i601.1, ptr %arrayidx50.i.i599.1, align 4
  %196 = load i32, ptr %arrayidx.i591.1, align 4
  %or.i615.1 = or i32 %196, 134217771
  store i32 %or.i615.1, ptr %arrayidx.i591.1, align 4
  %197 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call186 = call i32 @cc_send_sync_request(ptr noundef %198, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef 10) #7
  br label %out

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call128) #10
  br label %out

out:                                              ; preds = %do.end133, %for.cond.preheader
  %rc.0 = phi i32 [ %call128, %do.end133 ], [ %call186, %for.cond.preheader ]
  %199 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %key_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool189.not = icmp eq i32 %200, 0
  br i1 %tobool189.not, label %out.if.end215_crit_edge, label %if.then190

out.if.end215_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

if.then190:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %key_params, align 8
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %200, i32 noundef %202, i32 noundef 1, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_setkey.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_setkey, %if.then207)) #7
          to label %if.end215 [label %if.then207], !srcloc !305

if.then207:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %key_params, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_setkey.__UNIQUE_ID_ddebug437, ptr noundef %dev.i, ptr noundef nonnull @.str.87, ptr noundef %key_dma_addr, i32 noundef %204) #7
  br label %if.end215

if.end215:                                        ; preds = %if.then207, %if.then190, %out.if.end215_crit_edge
  %205 = ptrtoint ptr %key12 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %key12, align 8
  call void @kfree_sensitive(ptr noundef %206) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end215, %do.end35, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end35 ], [ %rc.0, %if.end215 ], [ -12, %if.then14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_mac_update(ptr noundef %req) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %10 = call ptr @memset(ptr %cc_req, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %11 = call ptr @memset(ptr %desc, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %xcbc_count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 5, i32 4
  %16 = ptrtoint ptr %xcbc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xcbc_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %xcbc_count, align 4
  %18 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  %call9 = tail call i32 @cc_map_hash_request_update(ptr noundef %19, ptr noundef %__ctx.i, ptr noundef %21, i32 noundef %13, i32 noundef %9, i32 noundef %cond.i) #7
  %22 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call9, label %do.end23 [
    i32 0, label %if.end24
    i32 1, label %do.body
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mac_update.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_update, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !305

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mac_update.__UNIQUE_ID_ddebug447, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %24) #7
  br label %cleanup

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %call25 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %25 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp32 = icmp eq i32 %26, 5
  %27 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tfm.i, align 16
  %29 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %opad_tmp_keys_dma_addr.i = getelementptr i8, ptr %28, i32 512
  %30 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %desc, align 4
  %arrayidx50.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 67108930, ptr %arrayidx50.i.i, align 4
  %arrayidx.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 67108864, ptr %arrayidx.i.i, align 4
  %hash_mode.i = getelementptr i8, ptr %28, i32 532
  %35 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hash_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 9
  %or.i104.i = select i1 %cmp.i.i, i32 67114144, i32 67114016
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i104.i, ptr %arrayidx.i.i, align 4
  %arrayidx9.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %38 = call ptr @memset(ptr %arrayidx9.i, i32 0, i32 24)
  %39 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add12.i = add i32 %40, 16
  %41 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add12.i, ptr %arrayidx9.i, align 4
  %arrayidx50.i105.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx50.i105.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 67108930, ptr %arrayidx50.i105.i, align 4
  %arrayidx.i108.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 33559584, ptr %arrayidx.i108.i, align 4
  %arrayidx19.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2
  %44 = call ptr @memset(ptr %arrayidx19.i, i32 0, i32 24)
  %45 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add22.i = add i32 %45, 32
  %46 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add22.i, ptr %arrayidx19.i, align 4
  %arrayidx50.i116.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx50.i116.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 67108930, ptr %arrayidx50.i116.i, align 4
  %arrayidx.i119.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 50336800, ptr %arrayidx.i119.i, align 4
  %arrayidx29.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3
  %49 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 2
  %50 = call ptr @memset(ptr %49, i32 0, i32 16)
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %51 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %53 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx29.i, align 4
  %arrayidx50.i127.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx50.i127.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108930, ptr %arrayidx50.i127.i, align 4
  %arrayidx.i130.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16782368, ptr %arrayidx.i130.i, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %key_params.i = getelementptr i8, ptr %28, i32 520
  %56 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key_params.i, align 8
  %58 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %31, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %57)
  %cmp.i = icmp eq i32 %57, 24
  %.op = shl i32 %57, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i = select i1 %cmp.i, i32 128, i32 %.op.op
  %arrayidx50.i.i107 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx50.i.i107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx50.i.i107, align 4
  %or.i.i = or i32 %and29.i.i, %60
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i107, align 4
  %arrayidx.i.i108 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %61 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i108, align 4
  %or.i60.i = or i32 %62, 67116032
  store i32 %or.i60.i, ptr %arrayidx.i.i108, align 4
  %63 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %key_params.i, align 8
  %65 = shl i32 %64, 19
  %66 = add i32 %65, 8388608
  %and9.i.i.i = and i32 %66, 12582912
  %or.i.i.i = or i32 %62, %and9.i.i.i
  %or.i63.i = or i32 %or.i.i.i, 67116064
  store i32 %or.i63.i, ptr %arrayidx.i.i108, align 4
  %arrayidx13.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %67 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 2
  %68 = call ptr @memset(ptr %67, i32 0, i32 16)
  %digest_buff_dma_addr.i110 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %69 = ptrtoint ptr %digest_buff_dma_addr.i110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %digest_buff_dma_addr.i110, align 4
  %71 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx13.i, align 4
  %arrayidx50.i64.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx50.i64.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 67108930, ptr %arrayidx50.i64.i, align 4
  %arrayidx.i67.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16784384, ptr %arrayidx.i67.i, align 4
  %74 = load i32, ptr %key_params.i, align 8
  %75 = shl i32 %74, 19
  %76 = add i32 %75, 8388608
  %and9.i.i77.i = and i32 %76, 12582912
  %or.i82.i = or i32 %and9.i.i77.i, 16784416
  store i32 %or.i82.i, ptr %arrayidx.i67.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then33
  %storemerge = phi i32 [ 2, %if.else ], [ 4, %if.then33 ]
  %77 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %storemerge, ptr %idx, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 1, ptr noundef nonnull %desc, i1 noundef zeroext true, ptr noundef nonnull %idx)
  %78 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %79
  %80 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %81 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %82, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i112 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %83 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i112, align 4
  %or.i = or i32 %84, %and9.i
  store i32 %or.i, ptr %arrayidx.i112, align 4
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %85 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %digest_buff_dma_addr, align 4
  %inter_digestsize = getelementptr i8, ptr %1, i32 540
  %87 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %inter_digestsize, align 4
  %arrayidx.i.i113 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %arrayidx.i.i113, align 4
  %shl28.i.i116 = shl i32 %88, 2
  %and29.i.i117 = and i32 %shl28.i.i116, 67108860
  %arrayidx50.i.i118 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %90 = ptrtoint ptr %arrayidx50.i.i118 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx50.i.i118, align 4
  %or49.i.i = or i32 %91, %and29.i.i117
  %or.i120 = or i32 %or49.i.i, 201326594
  store i32 %or.i120, ptr %arrayidx50.i.i118, align 4
  %92 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %95)
  %cmp.i121 = icmp ugt i32 %95, 711
  br i1 %cmp.i121, label %if.then.i124, label %if.end35.set_queue_last_ind.exit_crit_edge

if.end35.set_queue_last_ind.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit

if.then.i124:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i123 = or i32 %or49.i.i, -1946157054
  %96 = ptrtoint ptr %arrayidx50.i.i118 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i.i123, ptr %arrayidx50.i.i118, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i124, %if.end35.set_queue_last_ind.exit_crit_edge
  %97 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i112, align 4
  %or.i128 = or i32 %98, 134217766
  store i32 %or.i128, ptr %arrayidx.i112, align 4
  %inc44 = add i32 %79, 1
  %99 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @cc_update_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %100 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %req, ptr %user_arg, align 4
  %101 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call48 = call i32 @cc_send_request(ptr noundef %102, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc44, ptr noundef %req) #7
  %103 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call48, label %do.end54 [
    i32 -115, label %set_queue_last_ind.exit.cleanup_crit_edge
    i32 -16, label %set_queue_last_ind.exit.cleanup_crit_edge130
  ]

set_queue_last_ind.exit.cleanup_crit_edge130:     ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_queue_last_ind.exit.cleanup_crit_edge:        ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end54:                                         ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call48) #10
  %104 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %src, align 4
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %105, i1 noundef zeroext true) #7
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %set_queue_last_ind.exit.cleanup_crit_edge, %set_queue_last_ind.exit.cleanup_crit_edge130, %do.end30, %do.end23, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end23 ], [ -22, %do.end30 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ %call48, %set_queue_last_ind.exit.cleanup_crit_edge ], [ %call48, %set_queue_last_ind.exit.cleanup_crit_edge130 ], [ %call48, %do.end54 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_mac_final(ptr noundef %req) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %6 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %8 = call ptr @memset(ptr %desc, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idx, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -128
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %buff_index.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 5
  %16 = ptrtoint ptr %buff_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buff_index.i, align 8
  %arrayidx.i = getelementptr %struct.ahash_req_ctx, ptr %__ctx.i, i32 0, i32 15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %20 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp = icmp eq i32 %21, 5
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %key_params = getelementptr i8, ptr %1, i32 520
  %22 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_params, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %23)
  %cmp7 = icmp eq i32 %23, 24
  %24 = shl i32 %23, 19
  %25 = add i32 %24, 8388608
  %phi.bo = and i32 %25, 12582912
  %.op261 = shl i32 %23, 2
  %.op261.op = and i32 %.op261, 67108860
  %phi.bo262 = select i1 %cmp7, i32 128, i32 %.op261.op
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %key_size.0 = phi i32 [ %phi.bo262, %if.else ], [ 64, %entry.do.body_crit_edge ]
  %key_len.0 = phi i32 [ %phi.bo, %if.else ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mac_final.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_final, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !305

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mac_final.__UNIQUE_ID_ddebug448, ptr noundef %dev.i, ptr noundef nonnull @.str.94, i32 noundef %19) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %call17 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %26 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_ctx.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nbytes, align 8
  %call25 = tail call i32 @cc_map_hash_request_final(ptr noundef %27, ptr noundef %__ctx.i, ptr noundef %29, i32 noundef %31, i1 noundef zeroext false, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call32 = tail call fastcc i32 @cc_map_result(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #10
  %32 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src, align 4
  tail call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %33, i1 noundef zeroext true) #7
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %34 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @cc_hash_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %35 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req, ptr %user_arg, align 4
  %xcbc_count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 5, i32 4
  %36 = ptrtoint ptr %xcbc_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xcbc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool40.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp41 = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool40.not, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then42, label %if.end39.if.end59_crit_edge

if.end39.if.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %39
  %40 = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 20)
  %arrayidx.i184 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 131072, ptr %arrayidx.i184, align 4
  %opad_tmp_keys_dma_addr = getelementptr i8, ptr %1, i32 512
  %43 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx, align 4
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx50.i, align 4
  %or.i186 = or i32 %key_size.0, %47
  %or51.i = or i32 %or.i186, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %or.i190 = or i32 %key_len.0, 67239968
  store i32 %or.i190, ptr %arrayidx.i184, align 4
  %inc = add i32 %39, 1
  %arrayidx49 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %inc
  %48 = getelementptr inbounds i8, ptr %arrayidx49, i32 20
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %48, align 4
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %50 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %digest_buff_dma_addr, align 4
  %52 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx49, align 4
  %arrayidx50.i191 = getelementptr [6 x i32], ptr %arrayidx49, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx50.i191 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 67108930, ptr %arrayidx50.i191, align 4
  %arrayidx.i.i194 = getelementptr [6 x i32], ptr %arrayidx49, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %arrayidx.i.i194, align 4
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx49, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 67108930, ptr %arrayidx50.i.i, align 4
  %arrayidx.i195 = getelementptr [6 x i32], ptr %arrayidx49, i32 0, i32 4
  %56 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %arrayidx.i195, align 4
  %inc54 = add i32 %39, 2
  %arrayidx55 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %inc54
  %arrayidx10.i = getelementptr [6 x i32], ptr %arrayidx55, i32 0, i32 1
  %57 = call ptr @memset(ptr %arrayidx55, i32 0, i32 24)
  %58 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 67108800, ptr %arrayidx10.i, align 4
  %arrayidx33.i = getelementptr [6 x i32], ptr %arrayidx55, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 134217728, ptr %arrayidx33.i, align 4
  %inc58 = add i32 %39, 3
  store i32 %inc58, ptr %idx, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then42, %if.end39.if.end59_crit_edge
  %60 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp61 = icmp eq i32 %61, 5
  %62 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx, align 4
  %64 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tfm.i, align 16
  %arrayidx.i199 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %63
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %66 = getelementptr inbounds i8, ptr %arrayidx.i199, i32 8
  %67 = call ptr @memset(ptr %66, i32 0, i32 16)
  %opad_tmp_keys_dma_addr.i = getelementptr i8, ptr %65, i32 512
  %68 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %70 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i199, align 4
  %arrayidx50.i.i200 = getelementptr [6 x i32], ptr %arrayidx.i199, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx50.i.i200 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 67108930, ptr %arrayidx50.i.i200, align 4
  %arrayidx.i.i201 = getelementptr [6 x i32], ptr %arrayidx.i199, i32 0, i32 4
  %hash_mode.i = getelementptr i8, ptr %65, i32 532
  %72 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hash_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %73)
  %cmp.i.i = icmp eq i32 %73, 9
  %or.i104.i = select i1 %cmp.i.i, i32 67114144, i32 67114016
  %74 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i104.i, ptr %arrayidx.i.i201, align 4
  %inc.i = add i32 %63, 1
  %arrayidx9.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i
  %75 = getelementptr inbounds i8, ptr %arrayidx9.i, i32 8
  %76 = call ptr @memset(ptr %75, i32 0, i32 16)
  %77 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add12.i = add i32 %78, 16
  %79 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add12.i, ptr %arrayidx9.i, align 4
  %arrayidx50.i105.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx50.i105.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 67108930, ptr %arrayidx50.i105.i, align 4
  %arrayidx.i108.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 4
  %81 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 33559584, ptr %arrayidx.i108.i, align 4
  %inc18.i = add i32 %63, 2
  %arrayidx19.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18.i
  %82 = getelementptr inbounds i8, ptr %arrayidx19.i, i32 8
  %83 = call ptr @memset(ptr %82, i32 0, i32 16)
  %84 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add22.i = add i32 %84, 32
  %85 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add22.i, ptr %arrayidx19.i, align 4
  %arrayidx50.i116.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx50.i116.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 67108930, ptr %arrayidx50.i116.i, align 4
  %arrayidx.i119.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 50336800, ptr %arrayidx.i119.i, align 4
  %inc28.i = add i32 %63, 3
  %arrayidx29.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i
  %88 = getelementptr inbounds i8, ptr %arrayidx29.i, i32 8
  %89 = call ptr @memset(ptr %88, i32 0, i32 16)
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %90 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %92 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx29.i, align 4
  %arrayidx50.i127.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx50.i127.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 67108930, ptr %arrayidx50.i127.i, align 4
  %arrayidx.i130.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 4
  %94 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16782368, ptr %arrayidx.i130.i, align 4
  br label %if.end65

if.else63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %95 = getelementptr inbounds i8, ptr %arrayidx.i199, i32 4
  %96 = call ptr @memset(ptr %95, i32 0, i32 20)
  %opad_tmp_keys_dma_addr.i204 = getelementptr i8, ptr %65, i32 512
  %97 = ptrtoint ptr %opad_tmp_keys_dma_addr.i204 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %opad_tmp_keys_dma_addr.i204, align 128
  %key_params.i = getelementptr i8, ptr %65, i32 520
  %99 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %key_params.i, align 8
  %101 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %98, ptr %arrayidx.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %100)
  %cmp.i = icmp eq i32 %100, 24
  %.op = shl i32 %100, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i = select i1 %cmp.i, i32 128, i32 %.op.op
  %arrayidx50.i.i205 = getelementptr [6 x i32], ptr %arrayidx.i199, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx50.i.i205 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx50.i.i205, align 4
  %or.i.i206 = or i32 %and29.i.i, %103
  %or51.i.i207 = or i32 %or.i.i206, 67108866
  store i32 %or51.i.i207, ptr %arrayidx50.i.i205, align 4
  %arrayidx.i.i208 = getelementptr [6 x i32], ptr %arrayidx.i199, i32 0, i32 4
  %104 = ptrtoint ptr %arrayidx.i.i208 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i208, align 4
  %or.i60.i = or i32 %105, 67116032
  store i32 %or.i60.i, ptr %arrayidx.i.i208, align 4
  %106 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %key_params.i, align 8
  %108 = shl i32 %107, 19
  %109 = add i32 %108, 8388608
  %and9.i.i.i = and i32 %109, 12582912
  %or.i.i.i = or i32 %105, %and9.i.i.i
  %or.i63.i = or i32 %or.i.i.i, 67116064
  store i32 %or.i63.i, ptr %arrayidx.i.i208, align 4
  %inc.i209 = add i32 %63, 1
  %arrayidx13.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i209
  %110 = getelementptr inbounds i8, ptr %arrayidx13.i, i32 8
  %111 = call ptr @memset(ptr %110, i32 0, i32 16)
  %digest_buff_dma_addr.i210 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %112 = ptrtoint ptr %digest_buff_dma_addr.i210 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %digest_buff_dma_addr.i210, align 4
  %114 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx13.i, align 4
  %arrayidx50.i64.i = getelementptr [6 x i32], ptr %arrayidx13.i, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx50.i64.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 67108930, ptr %arrayidx50.i64.i, align 4
  %arrayidx.i67.i = getelementptr [6 x i32], ptr %arrayidx13.i, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16784384, ptr %arrayidx.i67.i, align 4
  %117 = load i32, ptr %key_params.i, align 8
  %118 = shl i32 %117, 19
  %119 = add i32 %118, 8388608
  %and9.i.i77.i = and i32 %119, 12582912
  %or.i82.i = or i32 %and9.i.i77.i, 16784416
  store i32 %or.i82.i, ptr %arrayidx.i67.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then62
  %.sink = phi i32 [ 2, %if.else63 ], [ 4, %if.then62 ]
  %inc22.i = add i32 %63, %.sink
  %120 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %inc22.i, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp67 = icmp eq i32 %37, 0
  br i1 %cmp67, label %if.then68, label %if.else76

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %idx, align 4
  %arrayidx69 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %122
  %123 = call ptr @memset(ptr %arrayidx69, i32 0, i32 24)
  %124 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %125, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i212 = getelementptr [6 x i32], ptr %arrayidx69, i32 0, i32 4
  %126 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i212, align 4
  %or.i213 = or i32 %127, %and9.i
  %or.i.i221 = or i32 %key_len.0, %or.i213
  %or.i226 = or i32 %or.i.i221, 16416
  store i32 %or.i226, ptr %arrayidx.i212, align 4
  %inc75 = add i32 %122, 1
  store i32 %inc75, ptr %idx, align 4
  br label %if.end86

if.else76:                                        ; preds = %if.end65
  br i1 %cmp41, label %if.else80, label %if.then78

if.then78:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 1, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  br label %if.end86

if.else80:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %idx, align 4
  %arrayidx81 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %129
  %arrayidx33.i227 = getelementptr [6 x i32], ptr %arrayidx81, i32 0, i32 1
  %130 = call ptr @memset(ptr %arrayidx81, i32 0, i32 24)
  %131 = ptrtoint ptr %arrayidx33.i227 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 134217793, ptr %arrayidx33.i227, align 4
  %arrayidx.i229 = getelementptr [6 x i32], ptr %arrayidx81, i32 0, i32 4
  %132 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %arrayidx.i229, align 4
  %inc84 = add i32 %129, 1
  store i32 %inc84, ptr %idx, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else80, %if.then78, %if.then68
  %133 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %idx, align 4
  %arrayidx87 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %134
  %135 = call ptr @memset(ptr %arrayidx87, i32 0, i32 24)
  %digest_result_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %136 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %digest_result_dma_addr, align 4
  %arrayidx.i.i231 = getelementptr [6 x i32], ptr %arrayidx87, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx.i.i231 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx.i.i231, align 4
  %shl28.i.i234 = shl i32 %13, 2
  %and29.i.i235 = and i32 %shl28.i.i234, 67108860
  %arrayidx50.i.i236 = getelementptr [6 x i32], ptr %arrayidx87, i32 0, i32 3
  %139 = ptrtoint ptr %arrayidx50.i.i236 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx50.i.i236, align 4
  %or49.i.i237 = or i32 %140, %and29.i.i235
  %or.i239 = or i32 %or49.i.i237, 201326594
  store i32 %or.i239, ptr %arrayidx50.i.i236, align 4
  %141 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %142, i32 0, i32 16
  %143 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %144)
  %cmp.i240 = icmp ugt i32 %144, 711
  br i1 %cmp.i240, label %if.then.i243, label %if.end86.set_queue_last_ind.exit_crit_edge

if.end86.set_queue_last_ind.exit_crit_edge:       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit

if.then.i243:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i242 = or i32 %or49.i.i237, -1946157054
  %145 = ptrtoint ptr %arrayidx50.i.i236 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or.i.i242, ptr %arrayidx50.i.i236, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i243, %if.end86.set_queue_last_ind.exit_crit_edge
  %arrayidx.i244 = getelementptr [6 x i32], ptr %arrayidx87, i32 0, i32 4
  %146 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i244, align 4
  %or.i247 = or i32 %147, 134217766
  store i32 %or.i247, ptr %arrayidx.i244, align 4
  %148 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hw_mode, align 8
  %shl.i250 = shl i32 %149, 10
  %and9.i251 = and i32 %shl.i250, 15360
  %or.i253 = or i32 %and9.i251, %or.i247
  store i32 %or.i253, ptr %arrayidx.i244, align 4
  %inc95 = add i32 %134, 1
  %150 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call99 = call i32 @cc_send_request(ptr noundef %151, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc95, ptr noundef %req) #7
  %152 = zext i32 %call99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call99, label %do.end106 [
    i32 -115, label %set_queue_last_ind.exit.cleanup_crit_edge
    i32 -16, label %set_queue_last_ind.exit.cleanup_crit_edge263
  ]

set_queue_last_ind.exit.cleanup_crit_edge263:     ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_queue_last_ind.exit.cleanup_crit_edge:        ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end106:                                        ; preds = %set_queue_last_ind.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call99) #10
  %153 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %src, align 4
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %154, i1 noundef zeroext true) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %155 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %result, align 32
  %157 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %digest_result_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i255 = icmp eq i32 %158, 0
  br i1 %tobool.not.i255, label %do.end106.cc_unmap_result.exit_crit_edge, label %if.then.i256

do.end106.cc_unmap_result.exit_crit_edge:         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i256:                                     ; preds = %do.end106
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %158, i32 noundef %13, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_final, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i256
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr, i32 noundef %13) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i256
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %159 = call ptr @memcpy(ptr %156, ptr %digest_result_buff7.i, i32 %13)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %do.end106.cc_unmap_result.exit_crit_edge
  %160 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %digest_result_dma_addr, align 4
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cc_unmap_result.exit, %set_queue_last_ind.exit.cleanup_crit_edge, %set_queue_last_ind.exit.cleanup_crit_edge263, %do.end37, %do.end30, %do.end22
  %retval.0 = phi i32 [ -22, %do.end22 ], [ -12, %do.end30 ], [ -12, %do.end37 ], [ %call99, %set_queue_last_ind.exit.cleanup_crit_edge ], [ %call99, %set_queue_last_ind.exit.cleanup_crit_edge263 ], [ %call99, %cc_unmap_result.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_mac_finup(ptr noundef %req) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %6 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %8 = call ptr @memset(ptr %desc, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idx, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -128
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 128
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mac_finup.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_finup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mac_finup.__UNIQUE_ID_ddebug449, ptr noundef %dev.i, ptr noundef nonnull @.str.102, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xcbc_count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 5, i32 4
  %18 = ptrtoint ptr %xcbc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xcbc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %do.end.if.end29_crit_edge, label %land.lhs.true

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end
  %nbytes9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %nbytes9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbytes9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %do.body12, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body12:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mac_finup.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_finup, %if.then24)) #7
          to label %do.end27 [label %if.then24], !srcloc !305

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mac_finup.__UNIQUE_ID_ddebug450, ptr noundef %dev.i, ptr noundef nonnull @.str.103) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  %call28 = tail call i32 @cc_mac_final(ptr noundef %req)
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %call30 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %22 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_ctx.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src, align 4
  %nbytes38 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %nbytes38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes38, align 8
  %call39 = tail call i32 @cc_map_hash_request_final(ptr noundef %23, ptr noundef %__ctx.i, ptr noundef %25, i32 noundef %27, i1 noundef zeroext true, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %call46 = tail call fastcc i32 @cc_map_result(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #10
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 4
  tail call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %29, i1 noundef zeroext true) #7
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cc_hash_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %31 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %user_arg, align 4
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %32 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp54 = icmp eq i32 %33, 5
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  %36 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm.i, align 16
  %arrayidx.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %35
  %38 = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 16)
  %opad_tmp_keys_dma_addr.i = getelementptr i8, ptr %37, i32 512
  %40 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.i, align 4
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 67108930, ptr %arrayidx50.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 4
  %hash_mode.i = getelementptr i8, ptr %37, i32 532
  %44 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hash_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %45)
  %cmp.i.i = icmp eq i32 %45, 9
  %or.i104.i = select i1 %cmp.i.i, i32 67114144, i32 67114016
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i104.i, ptr %arrayidx.i.i, align 4
  %inc.i = add i32 %35, 1
  %arrayidx9.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i
  %47 = getelementptr inbounds i8, ptr %arrayidx9.i, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 16)
  %49 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add12.i = add i32 %50, 16
  %51 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add12.i, ptr %arrayidx9.i, align 4
  %arrayidx50.i105.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx50.i105.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 67108930, ptr %arrayidx50.i105.i, align 4
  %arrayidx.i108.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 33559584, ptr %arrayidx.i108.i, align 4
  %inc18.i = add i32 %35, 2
  %arrayidx19.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18.i
  %54 = getelementptr inbounds i8, ptr %arrayidx19.i, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 16)
  %56 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add22.i = add i32 %56, 32
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add22.i, ptr %arrayidx19.i, align 4
  %arrayidx50.i116.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx50.i116.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 67108930, ptr %arrayidx50.i116.i, align 4
  %arrayidx.i119.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 50336800, ptr %arrayidx.i119.i, align 4
  %inc28.i = add i32 %35, 3
  %arrayidx29.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i
  %60 = getelementptr inbounds i8, ptr %arrayidx29.i, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 16)
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %62 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %64 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx29.i, align 4
  %arrayidx50.i127.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx50.i127.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 67108930, ptr %arrayidx50.i127.i, align 4
  %arrayidx.i130.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16782368, ptr %arrayidx.i130.i, align 4
  %inc36.i = add i32 %35, 4
  br label %if.end57

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %key_params = getelementptr i8, ptr %1, i32 520
  %67 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key_params, align 8
  %69 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tfm.i, align 16
  %71 = getelementptr inbounds i8, ptr %desc, i32 4
  %72 = call ptr @memset(ptr %71, i32 0, i32 20)
  %opad_tmp_keys_dma_addr.i163 = getelementptr i8, ptr %70, i32 512
  %73 = ptrtoint ptr %opad_tmp_keys_dma_addr.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %opad_tmp_keys_dma_addr.i163, align 128
  %key_params.i = getelementptr i8, ptr %70, i32 520
  %75 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key_params.i, align 8
  %77 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %76)
  %cmp.i = icmp eq i32 %76, 24
  %.op = shl i32 %76, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i = select i1 %cmp.i, i32 128, i32 %.op.op
  %arrayidx50.i.i164 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx50.i.i164 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx50.i.i164, align 4
  %or.i.i = or i32 %and29.i.i, %79
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i164, align 4
  %80 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %key_params.i, align 8
  %arrayidx.i.i165 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %82 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i165, align 4
  %84 = shl i32 %81, 19
  %85 = add i32 %84, 8388608
  %and9.i.i.i = and i32 %85, 12582912
  %or.i.i.i = or i32 %83, %and9.i.i.i
  %or.i63.i = or i32 %or.i.i.i, 67116064
  store i32 %or.i63.i, ptr %arrayidx.i.i165, align 4
  %arrayidx13.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %86 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 2
  %87 = call ptr @memset(ptr %86, i32 0, i32 16)
  %digest_buff_dma_addr.i167 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %88 = ptrtoint ptr %digest_buff_dma_addr.i167 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %digest_buff_dma_addr.i167, align 4
  %90 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx13.i, align 4
  %arrayidx50.i64.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx50.i64.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 67108930, ptr %arrayidx50.i64.i, align 4
  %92 = load i32, ptr %key_params.i, align 8
  %arrayidx.i67.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %93 = shl i32 %92, 19
  %94 = add i32 %93, 8388608
  %and9.i.i77.i = and i32 %94, 12582912
  %or.i82.i = or i32 %and9.i.i77.i, 16784416
  %95 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or.i82.i, ptr %arrayidx.i67.i, align 4
  %96 = shl i32 %68, 19
  %97 = add i32 %96, 8388608
  %phi.bo = and i32 %97, 12582912
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then55
  %storemerge = phi i32 [ 2, %if.else ], [ %inc36.i, %if.then55 ]
  %key_len.0 = phi i32 [ %phi.bo, %if.else ], [ 0, %if.then55 ]
  %98 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge, ptr %idx, align 4
  %99 = ptrtoint ptr %nbytes38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nbytes38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp59 = icmp eq i32 %100, 0
  br i1 %cmp59, label %if.then60, label %if.else66

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %102
  %103 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %104 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %105, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i169 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %106 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i169, align 4
  %or.i = or i32 %107, %and9.i
  %or.i.i171 = or i32 %key_len.0, %or.i
  %or.i175 = or i32 %or.i.i171, 16416
  store i32 %or.i175, ptr %arrayidx.i169, align 4
  %inc = add i32 %102, 1
  store i32 %inc, ptr %idx, align 4
  br label %if.end68

if.else66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 1, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then60
  %108 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %idx, align 4
  %arrayidx69 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %109
  %110 = call ptr @memset(ptr %arrayidx69, i32 0, i32 24)
  %digest_result_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %111 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %digest_result_dma_addr, align 4
  %arrayidx.i.i176 = getelementptr [6 x i32], ptr %arrayidx69, i32 0, i32 2
  %113 = ptrtoint ptr %arrayidx.i.i176 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx.i.i176, align 4
  %shl28.i.i179 = shl i32 %13, 2
  %and29.i.i180 = and i32 %shl28.i.i179, 67108860
  %arrayidx50.i.i181 = getelementptr [6 x i32], ptr %arrayidx69, i32 0, i32 3
  %114 = ptrtoint ptr %arrayidx50.i.i181 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx50.i.i181, align 4
  %or49.i.i = or i32 %115, %and29.i.i180
  %or.i183 = or i32 %or49.i.i, 201326594
  store i32 %or.i183, ptr %arrayidx50.i.i181, align 4
  %116 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %119)
  %cmp.i184 = icmp ugt i32 %119, 711
  br i1 %cmp.i184, label %if.then.i187, label %if.end68.set_queue_last_ind.exit_crit_edge

if.end68.set_queue_last_ind.exit_crit_edge:       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit

if.then.i187:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i186 = or i32 %or49.i.i, -1946157054
  %120 = ptrtoint ptr %arrayidx50.i.i181 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i.i186, ptr %arrayidx50.i.i181, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i187, %if.end68.set_queue_last_ind.exit_crit_edge
  %arrayidx.i188 = getelementptr [6 x i32], ptr %arrayidx69, i32 0, i32 4
  %121 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i188, align 4
  %or.i191 = or i32 %122, 134217766
  store i32 %or.i191, ptr %arrayidx.i188, align 4
  %123 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hw_mode, align 8
  %shl.i194 = shl i32 %124, 10
  %and9.i195 = and i32 %shl.i194, 15360
  %or.i197 = or i32 %and9.i195, %or.i191
  store i32 %or.i197, ptr %arrayidx.i188, align 4
  %inc77 = add i32 %109, 1
  %125 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call81 = call i32 @cc_send_request(ptr noundef %126, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc77, ptr noundef %req) #7
  %127 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call81, label %do.end88 [
    i32 -115, label %set_queue_last_ind.exit.cleanup_crit_edge
    i32 -16, label %set_queue_last_ind.exit.cleanup_crit_edge205
  ]

set_queue_last_ind.exit.cleanup_crit_edge205:     ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_queue_last_ind.exit.cleanup_crit_edge:        ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end88:                                         ; preds = %set_queue_last_ind.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call81) #10
  %128 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %src, align 4
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %129, i1 noundef zeroext true) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %130 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %result, align 32
  %132 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %digest_result_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i199 = icmp eq i32 %133, 0
  br i1 %tobool.not.i199, label %do.end88.cc_unmap_result.exit_crit_edge, label %if.then.i200

do.end88.cc_unmap_result.exit_crit_edge:          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i200:                                     ; preds = %do.end88
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %133, i32 noundef %13, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_finup, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr, i32 noundef %13) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i200
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %134 = call ptr @memcpy(ptr %131, ptr %digest_result_buff7.i, i32 %13)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %do.end88.cc_unmap_result.exit_crit_edge
  %135 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %digest_result_dma_addr, align 4
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cc_unmap_result.exit, %set_queue_last_ind.exit.cleanup_crit_edge, %set_queue_last_ind.exit.cleanup_crit_edge205, %do.end51, %do.end44, %do.end35, %do.end27
  %retval.0 = phi i32 [ %call28, %do.end27 ], [ -22, %do.end35 ], [ -12, %do.end44 ], [ -12, %do.end51 ], [ %call81, %set_queue_last_ind.exit.cleanup_crit_edge ], [ %call81, %set_queue_last_ind.exit.cleanup_crit_edge205 ], [ %call81, %cc_unmap_result.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_mac_digest(ptr noundef %req) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %10 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %12 = call ptr @memset(ptr %desc, i32 255, i32 288)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idx, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mac_digest.__UNIQUE_ID_ddebug451, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_digest, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mac_digest.__UNIQUE_ID_ddebug451, ptr noundef %dev.i, ptr noundef nonnull @.str.111, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @cc_init_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  %call9 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %call16 = tail call fastcc i32 @cc_map_result(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  %nbytes24 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %nbytes24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes24, align 8
  %call25 = tail call i32 @cc_map_hash_request_final(ptr noundef %19, ptr noundef %__ctx.i, ptr noundef %21, i32 noundef %23, i1 noundef zeroext true, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cc_digest_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %25 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %req, ptr %user_arg, align 4
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %26 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp = icmp eq i32 %27, 5
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  %30 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm.i, align 16
  %arrayidx.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %29
  %32 = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 16)
  %opad_tmp_keys_dma_addr.i = getelementptr i8, ptr %31, i32 512
  %34 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i, align 4
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 67108930, ptr %arrayidx50.i.i, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 4
  %hash_mode.i = getelementptr i8, ptr %31, i32 532
  %38 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 9
  %or.i104.i = select i1 %cmp.i.i, i32 67114144, i32 67114016
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i104.i, ptr %arrayidx.i.i, align 4
  %inc.i = add i32 %29, 1
  %arrayidx9.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i
  %41 = getelementptr inbounds i8, ptr %arrayidx9.i, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 16)
  %43 = ptrtoint ptr %opad_tmp_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add12.i = add i32 %44, 16
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add12.i, ptr %arrayidx9.i, align 4
  %arrayidx50.i105.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx50.i105.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 67108930, ptr %arrayidx50.i105.i, align 4
  %arrayidx.i108.i = getelementptr [6 x i32], ptr %arrayidx9.i, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 33559584, ptr %arrayidx.i108.i, align 4
  %inc18.i = add i32 %29, 2
  %arrayidx19.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18.i
  %48 = getelementptr inbounds i8, ptr %arrayidx19.i, i32 8
  %49 = call ptr @memset(ptr %48, i32 0, i32 16)
  %50 = load i32, ptr %opad_tmp_keys_dma_addr.i, align 128
  %add22.i = add i32 %50, 32
  %51 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add22.i, ptr %arrayidx19.i, align 4
  %arrayidx50.i116.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx50.i116.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 67108930, ptr %arrayidx50.i116.i, align 4
  %arrayidx.i119.i = getelementptr [6 x i32], ptr %arrayidx19.i, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 50336800, ptr %arrayidx.i119.i, align 4
  %inc28.i = add i32 %29, 3
  %arrayidx29.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i
  %54 = getelementptr inbounds i8, ptr %arrayidx29.i, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 16)
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %56 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %58 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx29.i, align 4
  %arrayidx50.i127.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx50.i127.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 67108930, ptr %arrayidx50.i127.i, align 4
  %arrayidx.i130.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 4
  %60 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16782368, ptr %arrayidx.i130.i, align 4
  %inc36.i = add i32 %29, 4
  br label %if.end34

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %key_params = getelementptr i8, ptr %1, i32 520
  %61 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %key_params, align 8
  %63 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tfm.i, align 16
  %65 = getelementptr inbounds i8, ptr %desc, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 20)
  %opad_tmp_keys_dma_addr.i132 = getelementptr i8, ptr %64, i32 512
  %67 = ptrtoint ptr %opad_tmp_keys_dma_addr.i132 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %opad_tmp_keys_dma_addr.i132, align 128
  %key_params.i = getelementptr i8, ptr %64, i32 520
  %69 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %key_params.i, align 8
  %71 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %70)
  %cmp.i = icmp eq i32 %70, 24
  %.op = shl i32 %70, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i = select i1 %cmp.i, i32 128, i32 %.op.op
  %arrayidx50.i.i133 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx50.i.i133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx50.i.i133, align 4
  %or.i.i = or i32 %and29.i.i, %73
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i133, align 4
  %74 = ptrtoint ptr %key_params.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %key_params.i, align 8
  %arrayidx.i.i134 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %76 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i134, align 4
  %78 = shl i32 %75, 19
  %79 = add i32 %78, 8388608
  %and9.i.i.i = and i32 %79, 12582912
  %or.i.i.i = or i32 %77, %and9.i.i.i
  %or.i63.i = or i32 %or.i.i.i, 67116064
  store i32 %or.i63.i, ptr %arrayidx.i.i134, align 4
  %arrayidx13.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %80 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 2
  %81 = call ptr @memset(ptr %80, i32 0, i32 16)
  %digest_buff_dma_addr.i136 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %82 = ptrtoint ptr %digest_buff_dma_addr.i136 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %digest_buff_dma_addr.i136, align 4
  %84 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx13.i, align 4
  %arrayidx50.i64.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx50.i64.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 67108930, ptr %arrayidx50.i64.i, align 4
  %86 = load i32, ptr %key_params.i, align 8
  %arrayidx.i67.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %87 = shl i32 %86, 19
  %88 = add i32 %87, 8388608
  %and9.i.i77.i = and i32 %88, 12582912
  %or.i82.i = or i32 %and9.i.i77.i, 16784416
  %89 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or.i82.i, ptr %arrayidx.i67.i, align 4
  %90 = shl i32 %62, 19
  %91 = add i32 %90, 8388608
  %phi.bo = and i32 %91, 12582912
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  %storemerge = phi i32 [ 2, %if.else ], [ %inc36.i, %if.then32 ]
  %key_len.0 = phi i32 [ %phi.bo, %if.else ], [ 0, %if.then32 ]
  %92 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %storemerge, ptr %idx, align 4
  %93 = ptrtoint ptr %nbytes24 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nbytes24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp36 = icmp eq i32 %94, 0
  br i1 %cmp36, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %96
  %97 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %98 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %99, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i138 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %100 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i138, align 4
  %or.i = or i32 %101, %and9.i
  %or.i.i140 = or i32 %key_len.0, %or.i
  %or.i144 = or i32 %or.i.i140, 16416
  store i32 %or.i144, ptr %arrayidx.i138, align 4
  %inc = add i32 %96, 1
  store i32 %inc, ptr %idx, align 4
  br label %if.end45

if.else43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 1, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx)
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then37
  %102 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %idx, align 4
  %arrayidx46 = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %103
  %104 = call ptr @memset(ptr %arrayidx46, i32 0, i32 24)
  %digest_result_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %105 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %digest_result_dma_addr, align 4
  %arrayidx.i.i145 = getelementptr [6 x i32], ptr %arrayidx46, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx.i.i145, align 4
  %arrayidx50.i.i146 = getelementptr [6 x i32], ptr %arrayidx46, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx50.i.i146 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 201326658, ptr %arrayidx50.i.i146, align 4
  %109 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %__crt_ctx.i.i, align 128
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %110, i32 0, i32 16
  %111 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %112)
  %cmp.i149 = icmp ugt i32 %112, 711
  %spec.store.select = select i1 %cmp.i149, i32 -1946156990, i32 201326658
  %113 = ptrtoint ptr %arrayidx50.i.i146 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.store.select, ptr %arrayidx50.i.i146, align 4
  %arrayidx.i153 = getelementptr [6 x i32], ptr %arrayidx46, i32 0, i32 4
  %114 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i153, align 4
  %or.i156 = or i32 %115, 134217766
  store i32 %or.i156, ptr %arrayidx.i153, align 4
  %116 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hw_mode, align 8
  %shl.i160 = shl i32 %117, 10
  %and9.i161 = and i32 %shl.i160, 15360
  %or.i163 = or i32 %and9.i161, %or.i156
  store i32 %or.i163, ptr %arrayidx.i153, align 4
  %inc55 = add i32 %103, 1
  %118 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call59 = call i32 @cc_send_request(ptr noundef %119, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc55, ptr noundef %req) #7
  %120 = zext i32 %call59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call59, label %do.end65 [
    i32 -115, label %if.end45.cleanup_crit_edge
    i32 -16, label %if.end45.cleanup_crit_edge170
  ]

if.end45.cleanup_crit_edge170:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end65:                                         ; preds = %if.end45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call59) #10
  %121 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %src, align 4
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %122, i1 noundef zeroext true) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %123 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %result, align 32
  %125 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %digest_result_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i165 = icmp eq i32 %126, 0
  br i1 %tobool.not.i165, label %do.end65.cc_unmap_result.exit_crit_edge, label %if.then.i166

do.end65.cc_unmap_result.exit_crit_edge:          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i166:                                     ; preds = %do.end65
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %126, i32 noundef %9, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mac_digest, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr, i32 noundef %9) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i166
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %127 = call ptr @memcpy(ptr %124, ptr %digest_result_buff7.i, i32 %9)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %do.end65.cc_unmap_result.exit_crit_edge
  %128 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %digest_result_dma_addr, align 4
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cc_unmap_result.exit, %if.end45.cleanup_crit_edge, %if.end45.cleanup_crit_edge170, %do.end30, %do.end21, %do.end14
  %retval.0 = phi i32 [ -12, %do.end14 ], [ -12, %do.end21 ], [ -12, %do.end30 ], [ %call59, %if.end45.cleanup_crit_edge ], [ %call59, %if.end45.cleanup_crit_edge170 ], [ %call59, %cc_unmap_result.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_xcbc_setkey(ptr noundef %ahash, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %0 = call ptr @memset(ptr %cc_req, i32 0, i32 76)
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %5 = call ptr @memset(ptr %desc, i32 255, i32 288)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_xcbc_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_xcbc_setkey.__UNIQUE_ID_ddebug438, ptr noundef %dev.i, ptr noundef nonnull @.str.119, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %keylen, label %do.end.cleanup_crit_edge [
    i32 16, label %do.end.sw.epilog_crit_edge
    i32 24, label %do.end.sw.epilog_crit_edge213
    i32 32, label %do.end.sw.epilog_crit_edge214
  ]

do.end.sw.epilog_crit_edge214:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge213:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge213, %do.end.sw.epilog_crit_edge214
  %key_params = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 2
  %7 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %keylen, ptr %key_params, align 8
  %call6 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #7
  %key8 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4
  %8 = ptrtoint ptr %key8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %key8, align 8
  %tobool11.not = icmp eq ptr %call6, null
  br i1 %tobool11.not, label %sw.epilog.cleanup_crit_edge, label %if.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call6) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end13
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !306

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %key_dma_addr204 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 3
  %13 = ptrtoint ptr %key_dma_addr204 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %key_dma_addr204, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #7
  br label %do.end25

dma_map_single_attrs.exit:                        ; preds = %if.end13
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call6, i32 noundef %keylen) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %call6 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %keylen, i32 noundef 1, i32 noundef 0) #7
  %key_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 3
  %16 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call41.i, ptr %key_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end25_crit_edge, label %do.body29

dma_map_single_attrs.exit.do.end25_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end25:                                         ; preds = %dma_map_single_attrs.exit.do.end25_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef %key, i32 noundef %keylen) #10
  %17 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key8, align 8
  tail call void @kfree_sensitive(ptr noundef %18) #7
  br label %cleanup

do.body29:                                        ; preds = %dma_map_single_attrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_xcbc_setkey, %if.then41)) #7
          to label %do.end48 [label %if.then41], !srcloc !305

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_params, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_xcbc_setkey.__UNIQUE_ID_ddebug439, ptr noundef %dev.i, ptr noundef nonnull @.str.84, ptr noundef %key_dma_addr, i32 noundef %20) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then41, %do.body29
  %is_hmac = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 76
  %21 = ptrtoint ptr %is_hmac to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %is_hmac, align 4
  %22 = getelementptr inbounds i8, ptr %desc, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 16)
  %24 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_dma_addr, align 4
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desc, align 4
  %shl28.i = shl nuw nsw i32 %keylen, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %or51.i = or i32 %and29.i, 67108866
  %27 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %arrayidx.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %28 = shl nuw nsw i32 %keylen, 19
  %29 = add nuw nsw i32 %28, 8388608
  %and9.i.i = and i32 %29, 12582912
  %or.i180 = or i32 %and9.i.i, 67108896
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i180, ptr %arrayidx.i, align 4
  %arrayidx57 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1
  %31 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %31, align 4
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16843009, ptr %arrayidx57, align 4
  %arrayidx33.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 134217793, ptr %arrayidx33.i, align 4
  %arrayidx.i181 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %arrayidx.i181, align 4
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %36 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  %arrayidx.i.i183 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i.i183, align 4
  %arrayidx50.i.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 67108930, ptr %arrayidx50.i.i, align 4
  %arrayidx62 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2
  %40 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 33686018, ptr %arrayidx62, align 4
  %arrayidx33.i184 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx33.i184 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 134217793, ptr %arrayidx33.i184, align 4
  %arrayidx.i187 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %arrayidx.i187, align 4
  %add67 = add i32 %37, 16
  %arrayidx.i.i189 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add67, ptr %arrayidx.i.i189, align 4
  %arrayidx50.i.i190 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 2, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx50.i.i190 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 67108930, ptr %arrayidx50.i.i190, align 4
  %arrayidx69 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3
  %47 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %49 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 50529027, ptr %arrayidx69, align 4
  %arrayidx33.i193 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx33.i193 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 134217793, ptr %arrayidx33.i193, align 4
  %arrayidx.i196 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %arrayidx.i196, align 4
  %add74 = add i32 %37, 32
  %arrayidx.i.i198 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.i.i198 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add74, ptr %arrayidx.i.i198, align 4
  %arrayidx50.i.i199 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 3, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx50.i.i199 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 67108930, ptr %arrayidx50.i.i199, align 4
  %54 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call77 = call i32 @cc_send_sync_request(ptr noundef %55, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef 4) #7
  %56 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key_dma_addr, align 4
  %58 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %key_params, align 8
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %57, i32 noundef %59, i32 noundef 1, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_xcbc_setkey, %if.then94)) #7
          to label %do.end101 [label %if.then94], !srcloc !305

if.then94:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %key_params to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key_params, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_xcbc_setkey.__UNIQUE_ID_ddebug440, ptr noundef %dev.i, ptr noundef nonnull @.str.87, ptr noundef %key_dma_addr, i32 noundef %61) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then94, %do.end48
  %62 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %key8, align 8
  call void @kfree_sensitive(ptr noundef %63) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %do.end25, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end25 ], [ %call77, %do.end101 ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cmac_setkey(ptr nocapture noundef %ahash, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cmac_setkey.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cmac_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cmac_setkey.__UNIQUE_ID_ddebug441, ptr noundef %dev.i, ptr noundef nonnull @.str.119, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_hmac = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 4, i32 76
  %4 = ptrtoint ptr %is_hmac to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_hmac, align 4
  %5 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %keylen, label %do.end.cleanup_crit_edge [
    i32 16, label %do.end.sw.epilog_crit_edge
    i32 24, label %do.end.sw.epilog_crit_edge31
    i32 32, label %do.end.sw.epilog_crit_edge32
  ]

do.end.sw.epilog_crit_edge32:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge31:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge31, %do.end.sw.epilog_crit_edge32
  %key_params = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10, i32 2
  %6 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %keylen, ptr %key_params, align 8
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %7 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %8, i32 noundef %keylen, i32 noundef 1) #7
  %opad_tmp_keys_buff = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2
  %9 = call ptr @memcpy(ptr %opad_tmp_keys_buff, ptr %key, i32 %keylen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %cmp = icmp eq i32 %keylen, 24
  br i1 %cmp, label %if.then6, label %sw.epilog.if.end9_crit_edge

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.crypto_ahash, ptr %ahash, i32 2, i32 6
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %add.ptr, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %sw.epilog.if.end9_crit_edge
  %11 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i, i32 noundef %12, i32 noundef %keylen, i32 noundef 1) #7
  %13 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %keylen, ptr %key_params, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_init_req(ptr noundef %dev, ptr nocapture noundef writeonly %state, ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_hmac1 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 13
  %0 = ptrtoint ptr %is_hmac1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hmac1, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = call ptr @memset(ptr %state, i32 0, i32 896)
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %hw_mode = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 9
  %3 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_mode, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %4, label %if.then5 [
    i32 5, label %if.then.if.end17_crit_edge
    i32 7, label %if.then.if.end17_crit_edge57
  ]

if.then.if.end17_crit_edge57:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then5:                                         ; preds = %if.then
  %digest_buff_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digest_buff_dma_addr, align 4
  %inter_digestsize = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %8 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inter_digestsize, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %7, i32 noundef %9, i32 noundef 0) #7
  %digest_buff = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 3
  %digest_buff6 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inter_digestsize, align 4
  %12 = call ptr @memcpy(ptr %digest_buff, ptr %digest_buff6, i32 %11)
  %hash_mode = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 8
  %13 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_mode, align 4
  %.off = add i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %digest_bytes_len = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 7
  %hash_len = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 11
  %15 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_len, align 32
  br i1 %switch, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call ptr @memcpy(ptr %digest_bytes_len, ptr @cc_digest_len_sha512_init, i32 %16)
  br label %if.end17

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %digest_bytes_len, ptr @cc_digest_len_init, i32 %16)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12, %if.then.if.end17_crit_edge, %if.then.if.end17_crit_edge57
  %hash_mode18 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 8
  %19 = ptrtoint ptr %hash_mode18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash_mode18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp19.not = icmp eq i32 %20, -1
  br i1 %cmp19.not, label %if.end17.if.end31_crit_edge, label %if.then20

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 5
  %21 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  %inter_digestsize21 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %23 = ptrtoint ptr %inter_digestsize21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inter_digestsize21, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %22, i32 noundef %24, i32 noundef 0) #7
  %opad_digest_buff = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 5
  %opad_tmp_keys_buff = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %inter_digestsize21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inter_digestsize21, align 4
  %27 = call ptr @memcpy(ptr %opad_digest_buff, ptr %opad_tmp_keys_buff, i32 %26)
  br label %if.end31

if.else26:                                        ; preds = %entry
  %hash_mode27 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 8
  %28 = ptrtoint ptr %hash_mode27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hash_mode27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %switch.hole_check, label %if.else26.do.end.i_crit_edge

if.else26.do.end.i_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.else26.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %29) #10
  br label %cc_larval_digest.exit

switch.hole_check:                                ; preds = %if.else26
  %switch.maskindex = trunc i32 %29 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %31 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %switch.lobit.not = icmp eq i16 %31, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.cc_init_req, i32 0, i32 %29
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cc_larval_digest.exit

cc_larval_digest.exit:                            ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi ptr [ @cc_md5_init, %do.end.i ], [ %switch.load, %switch.lookup ]
  %digest_buff28 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 3
  %inter_digestsize30 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %33 = ptrtoint ptr %inter_digestsize30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inter_digestsize30, align 4
  %35 = call ptr @memcpy(ptr %digest_buff28, ptr %retval.0.i, i32 %34)
  br label %if.end31

if.end31:                                         ; preds = %cc_larval_digest.exit, %if.then20, %if.end17.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_map_hash_request_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_map_req(ptr noundef %dev, ptr noundef %state, ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_hmac1 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 13
  %0 = ptrtoint ptr %is_hmac1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hmac1, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %digest_buff = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 3
  %inter_digestsize = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inter_digestsize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %digest_buff) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !306

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %digest_buff_dma_addr200 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 12
  %8 = ptrtoint ptr %digest_buff_dma_addr200 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %digest_buff_dma_addr200, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #7
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %digest_buff, i32 noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %digest_buff to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %3, i32 noundef 0, i32 noundef 0) #7
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 12
  %11 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call41.i, ptr %digest_buff_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %do.body8

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %12 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inter_digestsize, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %13, ptr noundef %digest_buff) #10
  br label %cleanup

do.body8:                                         ; preds = %dma_map_single_attrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_req.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_req, %if.then14)) #7
          to label %do.end21 [label %if.then14], !srcloc !305

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inter_digestsize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_req.__UNIQUE_ID_ddebug420, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %15, ptr noundef %digest_buff, ptr noundef %digest_buff_dma_addr) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %do.body8
  %hw_mode = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 9
  %16 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp.not = icmp eq i32 %17, 5
  br i1 %cmp.not, label %do.end21.if.end54_crit_edge, label %if.then22

do.end21.if.end54_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then22:                                        ; preds = %do.end21
  %digest_bytes_len = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 7
  %call.i159 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %digest_bytes_len) #7
  br i1 %call.i159, label %land.rhs.i161, label %dma_map_single_attrs.exit176

land.rhs.i161:                                    ; preds = %if.then22
  %.b1.i160 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i160, label %land.rhs.i161.dma_map_single_attrs.exit176.thread_crit_edge, label %if.then.i165, !prof !306

land.rhs.i161.dma_map_single_attrs.exit176.thread_crit_edge: ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit176.thread

if.then.i165:                                     ; preds = %land.rhs.i161
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i162 = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i163 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i163 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i163, align 8
  %tobool.not.i.i164 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i164, label %if.end.i.i166, label %if.then.i165.dev_name.exit.i168_crit_edge

if.then.i165.dev_name.exit.i168_crit_edge:        ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i168

if.end.i.i166:                                    ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i168

dev_name.exit.i168:                               ; preds = %if.end.i.i166, %if.then.i165.dev_name.exit.i168_crit_edge
  %retval.0.i.i167 = phi ptr [ %21, %if.end.i.i166 ], [ %19, %if.then.i165.dev_name.exit.i168_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i162, ptr noundef %retval.0.i.i167) #7
  br label %dma_map_single_attrs.exit176.thread

dma_map_single_attrs.exit176.thread:              ; preds = %dev_name.exit.i168, %land.rhs.i161.dma_map_single_attrs.exit176.thread_crit_edge
  %digest_bytes_len_dma_addr210 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 13
  %22 = ptrtoint ptr %digest_bytes_len_dma_addr210 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %digest_bytes_len_dma_addr210, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #7
  br label %do.end31

dma_map_single_attrs.exit176:                     ; preds = %if.then22
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %digest_bytes_len, i32 noundef 16) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %digest_bytes_len to i32
  %sub.i169 = add i32 %24, 1073741824
  %shr.i170 = lshr i32 %sub.i169, 12
  %add.ptr.i171 = getelementptr %struct.page, ptr %23, i32 %shr.i170
  %and.i172 = and i32 %24, 4095
  %call41.i173 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i171, i32 noundef %and.i172, i32 noundef 16, i32 noundef 0, i32 noundef 0) #7
  %digest_bytes_len_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 13
  %25 = ptrtoint ptr %digest_bytes_len_dma_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41.i173, ptr %digest_bytes_len_dma_addr, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i173) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i173)
  %cmp.i177 = icmp eq i32 %call41.i173, -1
  br i1 %cmp.i177, label %dma_map_single_attrs.exit176.do.end31_crit_edge, label %do.body35

dma_map_single_attrs.exit176.do.end31_crit_edge:  ; preds = %dma_map_single_attrs.exit176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end31:                                         ; preds = %dma_map_single_attrs.exit176.do.end31_crit_edge, %dma_map_single_attrs.exit176.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef 16, ptr noundef %digest_bytes_len) #10
  br label %unmap_digest_buf

do.body35:                                        ; preds = %dma_map_single_attrs.exit176
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_req.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_req, %if.then47)) #7
          to label %if.end54 [label %if.then47], !srcloc !305

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_req.__UNIQUE_ID_ddebug421, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef 16, ptr noundef %digest_bytes_len, ptr noundef %digest_bytes_len_dma_addr) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %do.body35, %do.end21.if.end54_crit_edge
  br i1 %tobool.not, label %if.end54.cleanup_crit_edge, label %land.lhs.true

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end54
  %hash_mode = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 8
  %26 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp56.not = icmp eq i32 %27, -1
  br i1 %cmp56.not, label %land.lhs.true.cleanup_crit_edge, label %if.then57

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %land.lhs.true
  %opad_digest_buff = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 5
  %28 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inter_digestsize, align 4
  %call.i179 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %opad_digest_buff) #7
  br i1 %call.i179, label %land.rhs.i181, label %dma_map_single_attrs.exit196

land.rhs.i181:                                    ; preds = %if.then57
  %.b1.i180 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i180, label %land.rhs.i181.dma_map_single_attrs.exit196.thread_crit_edge, label %if.then.i185, !prof !306

land.rhs.i181.dma_map_single_attrs.exit196.thread_crit_edge: ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit196.thread

if.then.i185:                                     ; preds = %land.rhs.i181
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i182 = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i183 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i183 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i183, align 8
  %tobool.not.i.i184 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i184, label %if.end.i.i186, label %if.then.i185.dev_name.exit.i188_crit_edge

if.then.i185.dev_name.exit.i188_crit_edge:        ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i188

if.end.i.i186:                                    ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i188

dev_name.exit.i188:                               ; preds = %if.end.i.i186, %if.then.i185.dev_name.exit.i188_crit_edge
  %retval.0.i.i187 = phi ptr [ %33, %if.end.i.i186 ], [ %31, %if.then.i185.dev_name.exit.i188_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i182, ptr noundef %retval.0.i.i187) #7
  br label %dma_map_single_attrs.exit196.thread

dma_map_single_attrs.exit196.thread:              ; preds = %dev_name.exit.i188, %land.rhs.i181.dma_map_single_attrs.exit196.thread_crit_edge
  %opad_digest_dma_addr220 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 11
  %34 = ptrtoint ptr %opad_digest_dma_addr220 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %opad_digest_dma_addr220, align 16
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #7
  br label %do.end67

dma_map_single_attrs.exit196:                     ; preds = %if.then57
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %opad_digest_buff, i32 noundef %29) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %opad_digest_buff to i32
  %sub.i189 = add i32 %36, 1073741824
  %shr.i190 = lshr i32 %sub.i189, 12
  %add.ptr.i191 = getelementptr %struct.page, ptr %35, i32 %shr.i190
  %and.i192 = and i32 %36, 4095
  %call41.i193 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i191, i32 noundef %and.i192, i32 noundef %29, i32 noundef 0, i32 noundef 0) #7
  %opad_digest_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 11
  %37 = ptrtoint ptr %opad_digest_dma_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i193, ptr %opad_digest_dma_addr, align 16
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i193) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i193)
  %cmp.i197 = icmp eq i32 %call41.i193, -1
  br i1 %cmp.i197, label %dma_map_single_attrs.exit196.do.end67_crit_edge, label %do.body72

dma_map_single_attrs.exit196.do.end67_crit_edge:  ; preds = %dma_map_single_attrs.exit196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end67:                                         ; preds = %dma_map_single_attrs.exit196.do.end67_crit_edge, %dma_map_single_attrs.exit196.thread
  %38 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inter_digestsize, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %39, ptr noundef %opad_digest_buff) #10
  %digest_bytes_len_dma_addr93 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 13
  %40 = ptrtoint ptr %digest_bytes_len_dma_addr93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %digest_bytes_len_dma_addr93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool94.not = icmp eq i32 %41, 0
  br i1 %tobool94.not, label %do.end67.unmap_digest_buf_crit_edge, label %if.then95

do.end67.unmap_digest_buf_crit_edge:              ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_digest_buf

do.body72:                                        ; preds = %dma_map_single_attrs.exit196
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_req.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_req, %if.then84)) #7
          to label %cleanup [label %if.then84], !srcloc !305

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inter_digestsize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_req.__UNIQUE_ID_ddebug422, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %43, ptr noundef %opad_digest_buff, ptr noundef %opad_digest_dma_addr) #7
  br label %cleanup

if.then95:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %41, i32 noundef 16, i32 noundef 0, i32 noundef 0) #7
  %44 = ptrtoint ptr %digest_bytes_len_dma_addr93 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %digest_bytes_len_dma_addr93, align 8
  br label %unmap_digest_buf

unmap_digest_buf:                                 ; preds = %if.then95, %do.end67.unmap_digest_buf_crit_edge, %do.end31
  %45 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %digest_buff_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool100.not = icmp eq i32 %46, 0
  br i1 %tobool100.not, label %unmap_digest_buf.cleanup_crit_edge, label %if.then101

unmap_digest_buf.cleanup_crit_edge:               ; preds = %unmap_digest_buf
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then101:                                       ; preds = %unmap_digest_buf
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inter_digestsize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %46, i32 noundef %48, i32 noundef 0, i32 noundef 0) #7
  %49 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %digest_buff_dma_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %unmap_digest_buf.cleanup_crit_edge, %if.then84, %do.body72, %land.lhs.true.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then84 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ -22, %if.then101 ], [ -22, %unmap_digest_buf.cleanup_crit_edge ], [ 0, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_unmap_hash_request(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_update_complete(ptr noundef %dev, ptr noundef %cc_req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_update_complete.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_update_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_update_complete.__UNIQUE_ID_ddebug427, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %cc_req) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp.not = icmp eq i32 %err, -115
  br i1 %cmp.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %src = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 2
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  tail call void @cc_unmap_hash_request(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %3, i1 noundef zeroext false) #7
  tail call fastcc void @cc_unmap_req(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 1
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete.i, align 8
  tail call void %5(ptr noundef %cc_req, i32 noundef %err) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_unmap_req(ptr noundef %dev, ptr noundef %state, ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 12
  %0 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_buff_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %inter_digestsize = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inter_digestsize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_req.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_req, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !305

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_req.__UNIQUE_ID_ddebug423, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef %digest_buff_dma_addr) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %4 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %digest_buff_dma_addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %digest_bytes_len_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 13
  %5 = ptrtoint ptr %digest_bytes_len_dma_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %digest_bytes_len_dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end8.if.end29_crit_edge, label %if.then10

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then10:                                        ; preds = %if.end8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %6, i32 noundef 16, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_req.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_req, %if.then24)) #7
          to label %do.end27 [label %if.then24], !srcloc !305

if.then24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_req.__UNIQUE_ID_ddebug424, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef %digest_bytes_len_dma_addr) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.then10
  %7 = ptrtoint ptr %digest_bytes_len_dma_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %digest_bytes_len_dma_addr, align 8
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end8.if.end29_crit_edge
  %opad_digest_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 11
  %8 = ptrtoint ptr %opad_digest_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opad_digest_dma_addr, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool30.not = icmp eq i32 %9, 0
  br i1 %tobool30.not, label %if.end29.if.end51_crit_edge, label %if.then31

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31:                                        ; preds = %if.end29
  %inter_digestsize33 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 10
  %10 = ptrtoint ptr %inter_digestsize33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inter_digestsize33, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_req.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_unmap_req, %if.then46)) #7
          to label %do.end49 [label %if.then46], !srcloc !305

if.then46:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_req.__UNIQUE_ID_ddebug425, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef %opad_digest_dma_addr) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %if.then31
  %12 = ptrtoint ptr %opad_digest_dma_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %opad_digest_dma_addr, align 16
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end29.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_set_desc(ptr nocapture noundef readonly %areq_ctx, ptr nocapture noundef readonly %ctx, i32 noundef %flow_mode, ptr nocapture noundef %desc, i1 noundef zeroext %is_not_last_data, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_size, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %data_dma_buf_type = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 10
  %6 = ptrtoint ptr %data_dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_dma_buf_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %7, label %if.end12 [
    i32 1, label %if.then
    i32 0, label %do.body
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %1
  %9 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %curr_sg = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 19
  %10 = ptrtoint ptr %curr_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr_sg, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx, align 4
  br label %if.end28

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_desc.__UNIQUE_ID_ddebug452, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_desc, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !305

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_desc.__UNIQUE_ID_ddebug452, ptr noundef %dev.i, ptr noundef nonnull @.str.49) #7
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %1
  %17 = call ptr @memset(ptr %arrayidx13, i32 0, i32 24)
  %mlli_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 22, i32 2
  %18 = ptrtoint ptr %mlli_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mlli_dma_addr, align 4
  %mlli_len = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %mlli_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mlli_len, align 4
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx13, align 4
  %shl28.i72 = shl i32 %21, 2
  %and29.i73 = and i32 %shl28.i72, 67108860
  %arrayidx50.i74 = getelementptr [6 x i32], ptr %arrayidx13, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx50.i74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx50.i74, align 4
  %or.i75 = or i32 %and29.i73, %24
  %or51.i77 = or i32 %or.i75, 67108866
  store i32 %or51.i77, ptr %arrayidx50.i74, align 4
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 128
  %mlli_sram_addr = getelementptr inbounds %struct.cc_drvdata, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %mlli_sram_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mlli_sram_addr, align 4
  %29 = load i32, ptr %mlli_len, align 4
  %arrayidx.i79 = getelementptr [6 x i32], ptr %arrayidx13, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %arrayidx.i79, align 4
  %shl.i = shl i32 %29, 2
  %and20.i = and i32 %shl.i, 67108860
  %arrayidx21.i = getelementptr [6 x i32], ptr %arrayidx13, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx21.i, align 4
  %or.i82 = or i32 %and20.i, %32
  %or22.i = or i32 %or.i82, 1
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %inc21 = add i32 %1, 1
  %arrayidx22 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc21
  %33 = call ptr @memset(ptr %arrayidx22, i32 0, i32 24)
  %34 = load ptr, ptr %ctx, align 128
  %mlli_sram_addr25 = getelementptr inbounds %struct.cc_drvdata, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %mlli_sram_addr25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mlli_sram_addr25, align 4
  %mlli_nents = getelementptr inbounds %struct.ahash_req_ctx, ptr %areq_ctx, i32 0, i32 21
  %37 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mlli_nents, align 32
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %arrayidx22, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end12, %if.then
  %.sink107 = phi i32 [ %38, %if.end12 ], [ %15, %if.then ]
  %.sink104 = phi i32 [ 67108867, %if.end12 ], [ 67108866, %if.then ]
  %40 = phi i32 [ %inc21, %if.end12 ], [ %1, %if.then ]
  %.sink = phi i32 [ 2, %if.end12 ], [ 1, %if.then ]
  %shl28.i86 = shl i32 %.sink107, 2
  %and29.i87 = and i32 %shl28.i86, 67108860
  %arrayidx50.i88 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %40, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx50.i88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx50.i88, align 4
  %or.i89 = or i32 %and29.i87, %42
  %or51.i91 = or i32 %or.i89, %.sink104
  store i32 %or51.i91, ptr %arrayidx50.i88, align 4
  %and9.i95 = and i32 %flow_mode, 63
  %arrayidx.i96 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %40, i32 0, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i96, align 4
  %or.i97 = or i32 %44, %and9.i95
  store i32 %or.i97, ptr %arrayidx.i96, align 4
  %inc27 = add i32 %1, %.sink
  br i1 %is_not_last_data, label %if.then30, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %inc27, -1
  %arrayidx.i99 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %sub, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i99, align 4
  %or.i100 = or i32 %46, 268435456
  store i32 %or.i100, ptr %arrayidx.i99, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %47 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc27, ptr %seq_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then11, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_do_finup(ptr noundef %req, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  %idx.addr.i = alloca i32, align 4
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  %src4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %src4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src4, align 4
  %nbytes5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes5, align 8
  %result6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %result6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result6, align 32
  %12 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %is_hmac8 = getelementptr i8, ptr %1, i32 604
  %16 = ptrtoint ptr %is_hmac8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_hmac8, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %18 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #7
  %20 = getelementptr inbounds i8, ptr %desc, i32 24
  %21 = call ptr @memset(ptr %20, i32 255, i32 264)
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_do_finup.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_do_finup, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  %cond18 = select i1 %update, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_do_finup.__UNIQUE_ID_ddebug433, ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond, ptr noundef nonnull %cond18, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call19 = tail call fastcc i32 @cc_map_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %24 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call28 = tail call i32 @cc_map_hash_request_final(ptr noundef %25, ptr noundef %__ctx.i, ptr noundef %7, i32 noundef %9, i1 noundef zeroext %update, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %call35 = tail call fastcc i32 @cc_map_result(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #10
  tail call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext true) #7
  tail call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %26 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @cc_hash_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %27 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req, ptr %user_arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.addr.i)
  %28 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %hw_mode.i = getelementptr i8, ptr %1, i32 536
  %29 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_mode.i, align 8
  %hash_mode.i = getelementptr i8, ptr %1, i32 532
  %31 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hash_mode.i, align 4
  %arrayidx.i.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  %digest_buff_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %35 = ptrtoint ptr %digest_buff_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %digest_buff_dma_addr.i, align 4
  %inter_digestsize.i = getelementptr i8, ptr %1, i32 540
  %37 = ptrtoint ptr %inter_digestsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inter_digestsize.i, align 4
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 9
  %shl.i.i.i = shl i32 %30, 10
  %and9.i.i.i = and i32 %shl.i.i.i, 15360
  %or.i.i.i = or i32 %34, %and9.i.i.i
  %or.i3.i.i = or i32 %or.i.i.i, 128
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i3.i.i, i32 %or.i.i.i
  %shl28.i.i = shl i32 %38, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %and29.i.i, %41
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %or.i3.i = or i32 %spec.select.i.i, 16777253
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i3.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx5.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %43 = call ptr @memset(ptr %arrayidx5.i, i32 0, i32 24)
  %44 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_mode.i, align 8
  %46 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hash_mode.i, align 4
  %arrayidx.i.i8.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i8.i, align 4
  %digest_bytes_len_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 1
  %50 = ptrtoint ptr %digest_bytes_len_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %digest_bytes_len_dma_addr.i, align 8
  %hash_len.i = getelementptr i8, ptr %1, i32 544
  %52 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hash_len.i, align 32
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %47)
  %cmp.i10.i = icmp eq i32 %47, 9
  %shl.i.i6.i = shl i32 %45, 10
  %and9.i.i7.i = and i32 %shl.i.i6.i, 15360
  %or.i.i9.i = or i32 %49, %and9.i.i7.i
  %or.i3.i11.i = or i32 %or.i.i9.i, 128
  %spec.select.i12.i = select i1 %cmp.i10.i, i32 %or.i3.i11.i, i32 %or.i.i9.i
  %shl28.i17.i = shl i32 %53, 2
  %and29.i18.i = and i32 %shl28.i17.i, 67108860
  %arrayidx50.i19.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx50.i19.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx50.i19.i, align 4
  %or.i20.i = or i32 %and29.i18.i, %56
  %or51.i22.i = or i32 %or.i20.i, 67108866
  store i32 %or51.i22.i, ptr %arrayidx50.i19.i, align 4
  %or.i27.i = or i32 %spec.select.i12.i, 67108901
  %57 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i27.i, ptr %arrayidx.i.i8.i, align 4
  %58 = ptrtoint ptr %idx.addr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %idx.addr.i, align 4
  call fastcc void @cc_set_desc(ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i, i32 noundef 7, ptr noundef nonnull %desc, i1 noundef zeroext false, ptr noundef nonnull %idx.addr.i) #7
  %59 = ptrtoint ptr %idx.addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.addr.i)
  %arrayidx = getelementptr [12 x %struct.cc_hw_desc], ptr %desc, i32 0, i32 %60
  %61 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 32768, ptr %arrayidx.i, align 4
  %63 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hw_mode.i, align 8
  %65 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hash_mode.i, align 4
  %shl.i.i = shl i32 %64, 10
  %and9.i.i = and i32 %shl.i.i, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %66)
  %cmp.i = icmp eq i32 %66, 9
  %spec.select.i.v = select i1 %cmp.i, i32 32896, i32 32768
  %spec.select.i = or i32 %and9.i.i, %spec.select.i.v
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select.i, ptr %arrayidx.i, align 4
  %68 = ptrtoint ptr %digest_bytes_len_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %digest_bytes_len_dma_addr.i, align 8
  %70 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hash_len.i, align 32
  %arrayidx.i.i142 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %arrayidx.i.i142, align 4
  %shl28.i.i145 = shl i32 %71, 2
  %and29.i.i146 = and i32 %shl28.i.i145, 67108860
  %arrayidx50.i.i147 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx50.i.i147 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx50.i.i147, align 4
  %or49.i.i = or i32 %and29.i.i146, %74
  %or51.i.i148 = or i32 %or49.i.i, 67108866
  store i32 %or51.i.i148, ptr %arrayidx50.i.i147, align 4
  %or.i152 = or i32 %spec.select.i, 150994987
  store i32 %or.i152, ptr %arrayidx.i, align 4
  %inc = add i32 %60, 1
  br i1 %tobool.not, label %if.end41.if.end52_crit_edge, label %if.then49

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call fastcc i32 @cc_fin_hmac(ptr noundef nonnull %desc, ptr noundef %req, i32 noundef %inc)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end41.if.end52_crit_edge
  %idx.0 = phi i32 [ %call51, %if.then49 ], [ %inc, %if.end41.if.end52_crit_edge ]
  %75 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %76, i32 128
  %__crt_alg.i.i.i = getelementptr i8, ptr %76, i32 12
  %77 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %78, i32 -128
  %79 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %arrayidx.i153 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %idx.0
  %81 = call ptr @memset(ptr %arrayidx.i153, i32 0, i32 24)
  %hash_mode.i155 = getelementptr i8, ptr %76, i32 532
  %hw_mode.i154 = getelementptr i8, ptr %76, i32 536
  %82 = ptrtoint ptr %hw_mode.i154 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hw_mode.i154, align 8
  %84 = ptrtoint ptr %hash_mode.i155 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hash_mode.i155, align 4
  %shl.i.i.i158 = shl i32 %83, 10
  %and9.i.i.i159 = and i32 %shl.i.i.i158, 15360
  %arrayidx.i.i.i160 = getelementptr [6 x i32], ptr %arrayidx.i153, i32 0, i32 4
  %86 = ptrtoint ptr %arrayidx.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.i160, align 4
  %or.i.i.i161 = or i32 %87, %and9.i.i.i159
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %85)
  %cmp.i.i162 = icmp eq i32 %85, 9
  %or.i3.i.i163 = or i32 %or.i.i.i161, 128
  %spec.select.i.i164 = select i1 %cmp.i.i162, i32 %or.i3.i.i163, i32 %or.i.i.i161
  %88 = ptrtoint ptr %arrayidx.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select.i.i164, ptr %arrayidx.i.i.i160, align 4
  %digest_result_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 2
  %89 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %digest_result_dma_addr.i, align 4
  %arrayidx.i.i33.i = getelementptr [6 x i32], ptr %arrayidx.i153, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx.i.i33.i, align 4
  %shl28.i.i.i = shl i32 %80, 2
  %and29.i.i.i = and i32 %shl28.i.i.i, 67108860
  %arrayidx50.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i153, i32 0, i32 3
  %92 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx50.i.i.i, align 4
  %or49.i.i.i = or i32 %93, %and29.i.i.i
  %or.i.i166 = or i32 %or49.i.i.i, 201326594
  store i32 %or.i.i166, ptr %arrayidx50.i.i.i, align 4
  %94 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %__crt_ctx.i.i.i, align 128
  %hw_rev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hw_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %97)
  %cmp.i34.i = icmp ugt i32 %97, 711
  br i1 %cmp.i34.i, label %if.then.i.i167, label %if.end52.cc_fin_result.exit_crit_edge

if.end52.cc_fin_result.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_fin_result.exit

if.then.i.i167:                                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i36.i = or i32 %or49.i.i.i, -1946157054
  %98 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or.i.i36.i, ptr %arrayidx50.i.i.i, align 4
  br label %cc_fin_result.exit

cc_fin_result.exit:                               ; preds = %if.then.i.i167, %if.end52.cc_fin_result.exit_crit_edge
  %99 = ptrtoint ptr %arrayidx.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i.i.i160, align 4
  %or.i39.i = or i32 %100, 134217771
  %101 = ptrtoint ptr %hash_mode.i155 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hash_mode.i155, align 4
  %mode.off.i.i = add i32 %102, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode.off.i.i)
  %switch.i.i = icmp ult i32 %mode.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i32 -2147483648, i32 262144
  %or.i8.i.i = or i32 %..i.i, %or.i39.i
  %103 = ptrtoint ptr %arrayidx.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i8.i.i, ptr %arrayidx.i.i.i160, align 4
  %inc.i = add i32 %idx.0, 1
  %104 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %__crt_ctx.i.i, align 128
  %call58 = call i32 @cc_send_request(ptr noundef %105, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %inc.i, ptr noundef %req) #7
  %106 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call58, label %do.end63 [
    i32 -115, label %cc_fin_result.exit.cleanup_crit_edge
    i32 -16, label %cc_fin_result.exit.cleanup_crit_edge171
  ]

cc_fin_result.exit.cleanup_crit_edge171:          ; preds = %cc_fin_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cc_fin_result.exit.cleanup_crit_edge:             ; preds = %cc_fin_result.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %cc_fin_result.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call58) #10
  call void @cc_unmap_hash_request(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext true) #7
  %107 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %digest_result_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i169 = icmp eq i32 %108, 0
  br i1 %tobool.not.i169, label %do.end63.cc_unmap_result.exit_crit_edge, label %if.then.i

do.end63.cc_unmap_result.exit_crit_edge:          ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i:                                        ; preds = %do.end63
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %108, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_do_finup, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev.i, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr.i, i32 noundef %5) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %109 = call ptr @memcpy(ptr %11, ptr %digest_result_buff7.i, i32 %5)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %do.end63.cc_unmap_result.exit_crit_edge
  %110 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %digest_result_dma_addr.i, align 4
  call fastcc void @cc_unmap_req(ptr noundef %dev.i, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cc_unmap_result.exit, %cc_fin_result.exit.cleanup_crit_edge, %cc_fin_result.exit.cleanup_crit_edge171, %do.end40, %do.end33, %do.end24
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -12, %do.end33 ], [ -12, %do.end40 ], [ %call58, %cc_fin_result.exit.cleanup_crit_edge ], [ %call58, %cc_fin_result.exit.cleanup_crit_edge171 ], [ %call58, %cc_unmap_result.exit ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_map_hash_request_final(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_map_result(ptr noundef %dev, ptr noundef %state, i32 noundef %digestsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %digest_result_buff = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 1
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %digest_result_buff) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !306

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %digest_result_dma_addr25 = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 14
  %4 = ptrtoint ptr %digest_result_dma_addr25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %digest_result_dma_addr25, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #7
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %digest_result_buff, i32 noundef %digestsize) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %digest_result_buff to i32
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %shr.i
  %and.i = and i32 %6, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %digestsize, i32 noundef 0, i32 noundef 0) #7
  %digest_result_dma_addr = getelementptr inbounds %struct.ahash_req_ctx, ptr %state, i32 0, i32 14
  %7 = ptrtoint ptr %digest_result_dma_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call41.i, ptr %digest_result_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %do.body3

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %digestsize) #10
  br label %return

do.body3:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_map_result.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_map_result, %if.then8)) #7
          to label %return [label %if.then8], !srcloc !305

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_map_result.__UNIQUE_ID_ddebug419, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %digestsize, ptr noundef %digest_result_buff, ptr noundef %digest_result_dma_addr) #7
  br label %return

return:                                           ; preds = %if.then8, %do.body3, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then8 ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_hash_complete(ptr noundef %dev, ptr noundef %cc_req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_hash_complete.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_hash_complete.__UNIQUE_ID_ddebug429, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %cc_req) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp.not = icmp eq i32 %err, -115
  br i1 %cmp.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end
  %src = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 2
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 4
  tail call void @cc_unmap_hash_request(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext false) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %digest_result_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 7, i32 2
  %10 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digest_result_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then7.cc_unmap_result.exit_crit_edge, label %if.then.i

if.then7.cc_unmap_result.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i:                                        ; preds = %if.then7
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_hash_complete, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr.i, i32 noundef %5) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 3
  %12 = call ptr @memcpy(ptr %9, ptr %digest_result_buff7.i, i32 %5)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %if.then7.cc_unmap_result.exit_crit_edge
  %13 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %digest_result_dma_addr.i, align 4
  tail call fastcc void @cc_unmap_req(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %if.end8

if.end8:                                          ; preds = %cc_unmap_result.exit, %do.end.if.end8_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 8
  tail call void %15(ptr noundef %cc_req, i32 noundef %err) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_fin_hmac(ptr nocapture noundef %desc, ptr nocapture noundef readonly %req, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %idx
  %6 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %hw_mode = getelementptr i8, ptr %1, i32 536
  %7 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_mode, align 8
  %shl.i = shl i32 %8, 10
  %and9.i = and i32 %shl.i, 15360
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %10, %and9.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %digest_buff_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 4
  %11 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digest_buff_dma_addr, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i.i, align 4
  %shl28.i.i = shl i32 %5, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx50.i.i, align 4
  %or49.i.i = or i32 %and29.i.i, %15
  %or51.i.i = or i32 %or49.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %or.i98 = or i32 %or.i, 43
  store i32 %or.i98, ptr %arrayidx.i, align 4
  %hash_mode = getelementptr i8, ptr %1, i32 532
  %16 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash_mode, align 4
  %mode.off.i = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode.off.i)
  %switch.i = icmp ult i32 %mode.off.i, 3
  %..i = select i1 %switch.i, i32 -2147483648, i32 262144
  %or.i8.i = or i32 %or.i, %..i
  %or.i101 = or i32 %or.i8.i, 134217771
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i101, ptr %arrayidx.i, align 4
  %inc = add i32 %idx, 1
  %arrayidx9 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc
  %19 = call ptr @memset(ptr %arrayidx9, i32 0, i32 24)
  %20 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_mode, align 8
  %shl.i104 = shl i32 %21, 10
  %and9.i105 = and i32 %shl.i104, 15360
  %arrayidx.i106 = getelementptr [6 x i32], ptr %arrayidx9, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i106, align 4
  %or.i107 = or i32 %23, %and9.i105
  store i32 %or.i107, ptr %arrayidx.i106, align 4
  %opad_digest_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 7, i32 0, i32 3
  %24 = ptrtoint ptr %opad_digest_dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opad_digest_dma_addr, align 16
  %inter_digestsize = getelementptr i8, ptr %1, i32 540
  %26 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inter_digestsize, align 4
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %arrayidx9, align 4
  %shl28.i = shl i32 %27, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx9, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx50.i, align 4
  %or.i109 = or i32 %and29.i, %30
  %or51.i = or i32 %or.i109, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %or.i113 = or i32 %or.i107, 16777253
  store i32 %or.i113, ptr %arrayidx.i106, align 4
  %inc15 = add i32 %idx, 2
  %arrayidx16 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc15
  %31 = call ptr @memset(ptr %arrayidx16, i32 0, i32 24)
  %32 = load i32, ptr %hw_mode, align 8
  %shl.i116 = shl i32 %32, 10
  %and9.i117 = and i32 %shl.i116, 15360
  %arrayidx.i118 = getelementptr [6 x i32], ptr %arrayidx16, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i118, align 4
  %or.i119 = or i32 %34, %and9.i117
  store i32 %or.i119, ptr %arrayidx.i118, align 4
  %35 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_ctx.i.i, align 128
  %37 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hash_mode, align 4
  %hash_handle1.i = getelementptr inbounds %struct.cc_drvdata, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %hash_handle1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hash_handle1.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %mode.off.i121 = add i32 %38, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off.i121)
  %switch.i122 = icmp ult i32 %mode.off.i121, 2
  %add.i = add i32 %42, 16
  %spec.select.i = select i1 %switch.i122, i32 %add.i, i32 %42
  %hash_len = getelementptr i8, ptr %1, i32 544
  %43 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash_len, align 32
  %45 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %arrayidx16, align 4
  %shl.i125 = shl i32 %44, 2
  %and9.i126 = and i32 %shl.i125, 67108860
  %arrayidx21.i = getelementptr [6 x i32], ptr %arrayidx16, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx21.i, align 4
  %or.i127 = or i32 %and9.i126, %47
  %or22.i = or i32 %or.i127, 1
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %or.i133 = or i32 %or.i119, 67633189
  %48 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i133, ptr %arrayidx.i118, align 4
  %inc25 = add i32 %idx, 3
  %arrayidx26 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc25
  %arrayidx10.i = getelementptr [6 x i32], ptr %arrayidx26, i32 0, i32 1
  %49 = call ptr @memset(ptr %arrayidx26, i32 0, i32 24)
  %50 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 67108800, ptr %arrayidx10.i, align 4
  %arrayidx33.i = getelementptr [6 x i32], ptr %arrayidx26, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 134217728, ptr %arrayidx33.i, align 4
  %inc29 = add i32 %idx, 4
  %arrayidx30 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc29
  %52 = call ptr @memset(ptr %arrayidx30, i32 0, i32 24)
  %53 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %digest_buff_dma_addr, align 4
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx30, align 4
  %arrayidx50.i140 = getelementptr [6 x i32], ptr %arrayidx30, i32 0, i32 1
  %or51.i143 = or i32 %and29.i.i, 67108866
  %56 = ptrtoint ptr %arrayidx50.i140 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or51.i143, ptr %arrayidx50.i140, align 4
  %arrayidx.i145 = getelementptr [6 x i32], ptr %arrayidx30, i32 0, i32 4
  %57 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 7, ptr %arrayidx.i145, align 4
  %inc34 = add i32 %idx, 5
  ret i32 %inc34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_digest_complete(ptr noundef %dev, ptr noundef %cc_req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_digest_complete.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_digest_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_digest_complete.__UNIQUE_ID_ddebug428, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %cc_req) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp.not = icmp eq i32 %err, -115
  br i1 %cmp.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end
  %src = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 2
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 4
  tail call void @cc_unmap_hash_request(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %7, i1 noundef zeroext false) #7
  %result = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %digest_result_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 7, i32 2
  %10 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digest_result_dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then7.cc_unmap_result.exit_crit_edge, label %if.then.i

if.then7.cc_unmap_result.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_unmap_result.exit

if.then.i:                                        ; preds = %if.then7
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_digest_complete, %if.then5.i)) #7
          to label %do.end.i [label %if.then5.i], !srcloc !305

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %digest_result_buff.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_unmap_result.__UNIQUE_ID_ddebug426, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %digest_result_buff.i, ptr noundef %digest_result_dma_addr.i, i32 noundef %5) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.then.i
  %digest_result_buff7.i = getelementptr inbounds %struct.ahash_request, ptr %cc_req, i32 3
  %12 = call ptr @memcpy(ptr %9, ptr %digest_result_buff7.i, i32 %5)
  br label %cc_unmap_result.exit

cc_unmap_result.exit:                             ; preds = %do.end.i, %if.then7.cc_unmap_result.exit_crit_edge
  %13 = ptrtoint ptr %digest_result_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %digest_result_dma_addr.i, align 4
  tail call fastcc void @cc_unmap_req(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %__crt_ctx.i.i)
  br label %if.end8

if.end8:                                          ; preds = %cc_unmap_result.exit, %do.end.if.end8_crit_edge
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 8
  tail call void %15(ptr noundef %cc_req, i32 noundef %err) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_send_sync_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cra_exit.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cra_exit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cra_exit.__UNIQUE_ID_ddebug446, ptr noundef %dev.i, ptr noundef nonnull @.str.122) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @cc_free_ctx(ptr noundef %__crt_ctx.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cra_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %2 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 896, ptr %reqsize1.i, align 32
  %hash_mode = getelementptr i8, ptr %1, i32 -376
  %3 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_mode, align 8
  %hash_mode8 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 4
  %5 = ptrtoint ptr %hash_mode8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hash_mode8, align 4
  %hw_mode = getelementptr i8, ptr %1, i32 -372
  %6 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_mode, align 4
  %hw_mode9 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 8
  %8 = ptrtoint ptr %hw_mode9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hw_mode9, align 8
  %inter_digestsize = getelementptr i8, ptr %1, i32 -368
  %9 = ptrtoint ptr %inter_digestsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inter_digestsize, align 16
  %inter_digestsize10 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 12
  %11 = ptrtoint ptr %inter_digestsize10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inter_digestsize10, align 4
  %drvdata = getelementptr i8, ptr %1, i32 -364
  %12 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvdata, align 4
  %14 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__crt_ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.i = icmp eq i32 %4, 9
  br i1 %cmp.i, label %entry.cc_get_hash_len.exit_crit_edge, label %if.else.i

entry.cc_get_hash_len.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_get_hash_len.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @cc_get_default_hash_len(ptr noundef %13) #7
  br label %cc_get_hash_len.exit

cc_get_hash_len.exit:                             ; preds = %if.else.i, %entry.cc_get_hash_len.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.else.i ], [ 8, %entry.cc_get_hash_len.exit_crit_edge ]
  %hash_len = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 16
  %15 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %hash_len, align 32
  %call13 = tail call fastcc i32 @cc_alloc_ctx(ptr noundef %__crt_ctx.i)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_free_ctx(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %digest_buff_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digest_buff_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %5, i32 noundef 64, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_free_ctx.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_free_ctx, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !305

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_free_ctx.__UNIQUE_ID_ddebug442, ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef %digest_buff_dma_addr) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  %6 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %digest_buff_dma_addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 5
  %7 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opad_tmp_keys_dma_addr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end9.if.end31_crit_edge, label %if.then11

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then11:                                        ; preds = %if.end9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %8, i32 noundef 128, i32 noundef 0, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_free_ctx.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_free_ctx, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !305

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_free_ctx.__UNIQUE_ID_ddebug443, ptr noundef %dev.i, ptr noundef nonnull @.str.124, ptr noundef %opad_tmp_keys_dma_addr) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %if.then11
  %9 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %opad_tmp_keys_dma_addr, align 128
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end9.if.end31_crit_edge
  %key_params = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 7
  %10 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %key_params, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_alloc_ctx(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 128
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %key_params = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %key_params, align 8
  %digest_buff = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 2
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %digest_buff) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !306

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %digest_buff_dma_addr96 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 6
  %9 = ptrtoint ptr %digest_buff_dma_addr96 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %digest_buff_dma_addr96, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #7
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %digest_buff, i32 noundef 64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %digest_buff to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 64, i32 noundef 0, i32 noundef 0) #7
  %digest_buff_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 6
  %12 = ptrtoint ptr %digest_buff_dma_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call41.i, ptr %digest_buff_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %do.body6

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.125, i32 noundef 64, ptr noundef %digest_buff) #10
  br label %fail

do.body6:                                         ; preds = %dma_map_single_attrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_alloc_ctx.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_alloc_ctx, %if.then11)) #7
          to label %do.end17 [label %if.then11], !srcloc !305

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_alloc_ctx.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.127, i32 noundef 64, ptr noundef %digest_buff, ptr noundef %digest_buff_dma_addr) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body6
  %opad_tmp_keys_buff = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 4
  %call.i75 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %opad_tmp_keys_buff) #7
  br i1 %call.i75, label %land.rhs.i77, label %dma_map_single_attrs.exit92

land.rhs.i77:                                     ; preds = %do.end17
  %.b1.i76 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i76, label %land.rhs.i77.dma_map_single_attrs.exit92.thread_crit_edge, label %if.then.i81, !prof !306

land.rhs.i77.dma_map_single_attrs.exit92.thread_crit_edge: ; preds = %land.rhs.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit92.thread

if.then.i81:                                      ; preds = %land.rhs.i77
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i78 = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i79 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i.i79 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i79, align 8
  %tobool.not.i.i80 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i80, label %if.end.i.i82, label %if.then.i81.dev_name.exit.i84_crit_edge

if.then.i81.dev_name.exit.i84_crit_edge:          ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i84

if.end.i.i82:                                     ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i84

dev_name.exit.i84:                                ; preds = %if.end.i.i82, %if.then.i81.dev_name.exit.i84_crit_edge
  %retval.0.i.i83 = phi ptr [ %16, %if.end.i.i82 ], [ %14, %if.then.i81.dev_name.exit.i84_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i78, ptr noundef %retval.0.i.i83) #7
  br label %dma_map_single_attrs.exit92.thread

dma_map_single_attrs.exit92.thread:               ; preds = %dev_name.exit.i84, %land.rhs.i77.dma_map_single_attrs.exit92.thread_crit_edge
  %opad_tmp_keys_dma_addr105 = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 5
  %17 = ptrtoint ptr %opad_tmp_keys_dma_addr105 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %opad_tmp_keys_dma_addr105, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #7
  br label %do.end26

dma_map_single_attrs.exit92:                      ; preds = %do.end17
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %opad_tmp_keys_buff, i32 noundef 128) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %opad_tmp_keys_buff to i32
  %sub.i85 = add i32 %19, 1073741824
  %shr.i86 = lshr i32 %sub.i85, 12
  %add.ptr.i87 = getelementptr %struct.page, ptr %18, i32 %shr.i86
  %and.i88 = and i32 %19, 4095
  %call41.i89 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i87, i32 noundef %and.i88, i32 noundef 128, i32 noundef 0, i32 noundef 0) #7
  %opad_tmp_keys_dma_addr = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 5
  %20 = ptrtoint ptr %opad_tmp_keys_dma_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call41.i89, ptr %opad_tmp_keys_dma_addr, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i89)
  %cmp.i93 = icmp eq i32 %call41.i89, -1
  br i1 %cmp.i93, label %dma_map_single_attrs.exit92.do.end26_crit_edge, label %do.body30

dma_map_single_attrs.exit92.do.end26_crit_edge:   ; preds = %dma_map_single_attrs.exit92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end26:                                         ; preds = %dma_map_single_attrs.exit92.do.end26_crit_edge, %dma_map_single_attrs.exit92.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.129, i32 noundef 128, ptr noundef %opad_tmp_keys_buff) #10
  br label %fail

do.body30:                                        ; preds = %dma_map_single_attrs.exit92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_alloc_ctx.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_alloc_ctx, %if.then42)) #7
          to label %do.end48 [label %if.then42], !srcloc !305

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_alloc_ctx.__UNIQUE_ID_ddebug445, ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 128, ptr noundef %opad_tmp_keys_buff, ptr noundef %opad_tmp_keys_dma_addr) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %do.body30
  %is_hmac = getelementptr inbounds %struct.cc_hash_ctx, ptr %ctx, i32 0, i32 13
  %21 = ptrtoint ptr %is_hmac to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_hmac, align 4
  br label %cleanup

fail:                                             ; preds = %do.end26, %do.end
  tail call fastcc void @cc_free_ctx(ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end48
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %do.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_get_default_hash_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !266, !268, !269, !271, !273, !274, !276, !277, !279, !280, !282, !283, !284, !285, !287, !288, !290, !291, !292, !294}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1993, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cc_hash_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cc_hash_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2012, i32 5}
!10 = !{ptr @cc_hash_alloc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cc_hash_alloc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2020, i32 5}
!14 = !{ptr @cc_hash_alloc._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cc_hash_alloc._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cc_hash_alloc._entry.11, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2035, i32 4}
!18 = !{ptr @cc_hash_alloc._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @cc_hash_alloc._entry.13, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2043, i32 4}
!21 = !{ptr @cc_hash_alloc._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2290, i32 3}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cc_larval_digest_addr._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @cc_larval_digest_addr._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @cc_digest_len_init, !28, !"cc_digest_len_init", i1 false, i1 false}
!28 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 28, i32 18}
!29 = !{ptr @cc_digest_len_sha512_init, !30, !"cc_digest_len_sha512_init", i1 false, i1 false}
!30 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 40, i32 18}
!31 = !{ptr @cc_md5_init, !32, !"cc_md5_init", i1 false, i1 false}
!32 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 30, i32 18}
!33 = !{ptr @cc_sha1_init, !34, !"cc_sha1_init", i1 false, i1 false}
!34 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 32, i32 18}
!35 = !{ptr @cc_sha224_init, !36, !"cc_sha224_init", i1 false, i1 false}
!36 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 34, i32 18}
!37 = !{ptr @cc_sha256_init, !38, !"cc_sha256_init", i1 false, i1 false}
!38 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 37, i32 18}
!39 = !{ptr @cc_sm3_init, !40, !"cc_sm3_init", i1 false, i1 false}
!40 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 55, i32 18}
!41 = !{ptr @cc_sha384_init, !42, !"cc_sha384_init", i1 false, i1 false}
!42 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 48, i32 18}
!43 = !{ptr @cc_sha512_init, !44, !"cc_sha512_init", i1 false, i1 false}
!44 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 51, i32 18}
!45 = !{ptr @driver_hash, !46, !"driver_hash", i1 false, i1 false}
!46 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1579, i32 32}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 719, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cc_hash_init.__UNIQUE_ID_ddebug434, !48, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2224, i32 3}
!54 = !{ptr @cc_larval_digest._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cc_larval_digest._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 571, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cc_hash_update.__UNIQUE_ID_ddebug431, !57, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!60 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 583, i32 4}
!64 = !{ptr @cc_hash_update.__UNIQUE_ID_ddebug432, !63, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 588, i32 3}
!67 = !{ptr @cc_hash_update._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cc_hash_update._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 593, i32 3}
!71 = !{ptr @cc_hash_update._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cc_hash_update._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 625, i32 3}
!75 = !{ptr @cc_hash_update._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cc_hash_update._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 187, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cc_map_req._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cc_map_req._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 191, i32 2}
!84 = !{ptr @cc_map_req.__UNIQUE_ID_ddebug420, !83, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 200, i32 4}
!87 = !{ptr @cc_map_req._entry.36, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cc_map_req._entry_ptr.38, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 204, i32 3}
!91 = !{ptr @cc_map_req.__UNIQUE_ID_ddebug421, !90, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 215, i32 4}
!94 = !{ptr @cc_map_req._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cc_map_req._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 220, i32 3}
!98 = !{ptr @cc_map_req.__UNIQUE_ID_ddebug422, !97, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 290, i32 2}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cc_update_complete.__UNIQUE_ID_ddebug427, !104, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 2179, i32 4}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cc_set_desc.__UNIQUE_ID_ddebug452, !108, !"__UNIQUE_ID_ddebug452", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 249, i32 3}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cc_unmap_req.__UNIQUE_ID_ddebug423, !112, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 256, i32 3}
!117 = !{ptr @cc_unmap_req.__UNIQUE_ID_ddebug424, !116, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 263, i32 3}
!120 = !{ptr @cc_unmap_req.__UNIQUE_ID_ddebug425, !119, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 649, i32 2}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cc_do_finup.__UNIQUE_ID_ddebug433, !122, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!125 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cc_do_finup._entry, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 653, i32 3}
!129 = !{ptr @cc_do_finup._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 659, i32 3}
!132 = !{ptr @cc_do_finup._entry.58, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cc_do_finup._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 664, i32 3}
!136 = !{ptr @cc_do_finup._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @cc_do_finup._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @cc_do_finup._entry.64, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 693, i32 3}
!140 = !{ptr @cc_do_finup._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 124, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cc_map_result._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @cc_map_result._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 128, i32 2}
!148 = !{ptr @cc_map_result.__UNIQUE_ID_ddebug419, !147, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 329, i32 2}
!151 = !{ptr @cc_hash_complete.__UNIQUE_ID_ddebug429, !150, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 275, i32 3}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @cc_unmap_result.__UNIQUE_ID_ddebug426, !153, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 436, i32 2}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @cc_hash_digest.__UNIQUE_ID_ddebug430, !157, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!160 = !{ptr @cc_hash_digest._entry, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 442, i32 3}
!162 = !{ptr @cc_hash_digest._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @cc_hash_digest._entry.74, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 447, i32 3}
!165 = !{ptr @cc_hash_digest._entry_ptr.75, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @cc_hash_digest._entry.76, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 454, i32 3}
!168 = !{ptr @cc_hash_digest._entry_ptr.77, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @cc_hash_digest._entry.78, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 521, i32 3}
!171 = !{ptr @cc_hash_digest._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 309, i32 2}
!174 = !{ptr @cc_digest_complete.__UNIQUE_ID_ddebug428, !173, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 741, i32 2}
!177 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @cc_hash_setkey.__UNIQUE_ID_ddebug435, !176, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 765, i32 4}
!181 = !{ptr @cc_hash_setkey._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @cc_hash_setkey._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 770, i32 3}
!185 = !{ptr @cc_hash_setkey.__UNIQUE_ID_ddebug436, !184, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!186 = !{ptr @cc_hash_setkey._entry.85, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 851, i32 3}
!188 = !{ptr @cc_hash_setkey._entry_ptr.86, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 912, i32 3}
!191 = !{ptr @cc_hash_setkey.__UNIQUE_ID_ddebug437, !190, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1174, i32 4}
!194 = !{ptr @cc_mac_update.__UNIQUE_ID_ddebug447, !193, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!195 = !{ptr @cc_mac_update._entry, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1179, i32 3}
!197 = !{ptr @cc_mac_update._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @cc_mac_update._entry.89, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1184, i32 3}
!200 = !{ptr @cc_mac_update._entry_ptr.90, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @cc_mac_update._entry.91, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1211, i32 3}
!203 = !{ptr @cc_mac_update._entry_ptr.92, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1242, i32 2}
!206 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @cc_mac_final.__UNIQUE_ID_ddebug448, !205, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!208 = !{ptr @cc_mac_final._entry, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1245, i32 3}
!210 = !{ptr @cc_mac_final._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @cc_mac_final._entry.95, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1251, i32 3}
!213 = !{ptr @cc_mac_final._entry_ptr.96, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @cc_mac_final._entry.97, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1257, i32 3}
!216 = !{ptr @cc_mac_final._entry_ptr.98, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @cc_mac_final._entry.99, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1331, i32 3}
!219 = !{ptr @cc_mac_final._entry_ptr.100, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1353, i32 2}
!222 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @cc_mac_finup.__UNIQUE_ID_ddebug449, !221, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1355, i32 3}
!226 = !{ptr @cc_mac_finup.__UNIQUE_ID_ddebug450, !225, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!227 = !{ptr @cc_mac_finup._entry, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1360, i32 3}
!229 = !{ptr @cc_mac_finup._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @cc_mac_finup._entry.104, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1366, i32 3}
!232 = !{ptr @cc_mac_finup._entry_ptr.105, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @cc_mac_finup._entry.106, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1371, i32 3}
!235 = !{ptr @cc_mac_finup._entry_ptr.107, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @cc_mac_finup._entry.108, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1412, i32 3}
!238 = !{ptr @cc_mac_finup._entry_ptr.109, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1434, i32 2}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @cc_mac_digest.__UNIQUE_ID_ddebug451, !240, !"__UNIQUE_ID_ddebug451", i1 false, i1 false}
!243 = !{ptr @cc_mac_digest._entry, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1439, i32 3}
!245 = !{ptr @cc_mac_digest._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @cc_mac_digest._entry.112, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1443, i32 3}
!248 = !{ptr @cc_mac_digest._entry_ptr.113, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @cc_mac_digest._entry.114, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1450, i32 3}
!251 = !{ptr @cc_mac_digest._entry_ptr.115, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @cc_mac_digest._entry.116, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1491, i32 3}
!254 = !{ptr @cc_mac_digest._entry_ptr.117, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 931, i32 2}
!257 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug438, !256, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!259 = !{ptr @cc_xcbc_setkey._entry, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 951, i32 3}
!261 = !{ptr @cc_xcbc_setkey._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug439, !263, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!263 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 956, i32 2}
!264 = !{ptr @cc_xcbc_setkey.__UNIQUE_ID_ddebug440, !265, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!265 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 999, i32 2}
!266 = !{ptr @.str.120, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1013, i32 2}
!268 = !{ptr @cc_cmac_setkey.__UNIQUE_ID_ddebug441, !267, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1837, i32 48}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1146, i32 2}
!273 = !{ptr @cc_cra_exit.__UNIQUE_ID_ddebug446, !272, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1054, i32 3}
!276 = !{ptr @cc_free_ctx.__UNIQUE_ID_ddebug442, !275, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1062, i32 3}
!279 = !{ptr @cc_free_ctx.__UNIQUE_ID_ddebug443, !278, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1080, i32 3}
!282 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @cc_alloc_ctx._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @cc_alloc_ctx._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1084, i32 2}
!287 = !{ptr @cc_alloc_ctx.__UNIQUE_ID_ddebug444, !286, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!288 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1093, i32 3}
!290 = !{ptr @cc_alloc_ctx._entry.128, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @cc_alloc_ctx._entry_ptr.130, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/crypto/ccree/cc_hash.c", i32 1098, i32 2}
!294 = !{ptr @cc_alloc_ctx.__UNIQUE_ID_ddebug445, !293, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i8 0, i8 2}
!305 = !{i64 2148757652, i64 2148757657, i64 2148757670, i64 2148757714, i64 2148757748, i64 2148757769}
!306 = !{!"branch_weights", i32 2000, i32 1}
