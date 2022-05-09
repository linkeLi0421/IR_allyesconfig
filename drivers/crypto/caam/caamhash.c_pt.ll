; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/caamhash.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamhash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.caam_hash_template = type { [128 x i8], [128 x i8], [128 x i8], [128 x i8], i32, [124 x i8], %struct.ahash_alg, i32, [124 x i8] }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.139, ptr, ptr, ptr, ptr, %union.anon.140, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.139 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.140 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.caam_hash_alg = type { %struct.list_head, i32, [116 x i8], %struct.ahash_alg }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.158, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.158 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_edesc = type { i32, i32, i32, i8, [115 x i8], [8 x i32], [0 x %struct.sec4_sg_entry], [96 x i8] }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.caam_export_state = type { [128 x i8], [72 x i8], i32, ptr, ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.17, %union.anon.122, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.122 = type { %struct.atomic_t }
%struct.caam_hash_ctx = type { %struct.crypto_engine_ctx, [116 x i8], [40 x i32], [96 x i8], [40 x i32], [96 x i8], [40 x i32], [96 x i8], [40 x i32], [96 x i8], [128 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, %struct.alginfo, [72 x i8] }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.caam_hash_state = type { i32, i32, i32, [116 x i8], [128 x i8], i32, i32, [120 x i8], [72 x i8], [56 x i8], ptr, ptr, ptr, ptr, ptr, [108 x i8] }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [79 x i8], %struct.atomic_t, ptr, [120 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [56 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.163, i32 }
%union.anon.163 = type { ptr }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.split_key_result = type { %struct.completion, i32 }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@hash_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@driver_hash = internal global [8 x %struct.caam_hash_template] [%struct.caam_hash_template { [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4259840, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4325376, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4390912, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4456448, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4521984, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-md5-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4194304, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xcbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @axcbc_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1050368, [124 x i8] undef }, %struct.caam_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cmac-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @acmac_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1050112, [124 x i8] undef }], align 128
@caam_algapi_hash_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s alg allocation failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"caam_algapi_hash_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/crypto/caam/caamhash.c\00", [33 x i8] zeroinitializer }, align 32
@caam_algapi_hash_init._entry_ptr = internal global ptr @caam_algapi_hash_init._entry, section ".printk_index", align 4
@caam_algapi_hash_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s alg registration failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@caam_algapi_hash_init._entry_ptr.5 = internal global ptr @caam_algapi_hash_init._entry.3, section ".printk_index", align 4
@caam_algapi_hash_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caam_algapi_hash_init._entry_ptr.7 = internal global ptr @caam_algapi_hash_init._entry.6, section ".printk_index", align 4
@caam_algapi_hash_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caam_algapi_hash_init._entry_ptr.9 = internal global ptr @caam_algapi_hash_init._entry.8, section ".printk_index", align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@ahash_update_first._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1422, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid number of src SG.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahash_update_first\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahash_update_first._entry_ptr = internal global ptr @ahash_update_first._entry, section ".printk_index", align 4
@ahash_update_first._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 1430, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to map source for DMA\0A\00", [34 x i8] zeroinitializer }, align 32
@ahash_update_first._entry_ptr.16 = internal global ptr @ahash_update_first._entry.14, section ".printk_index", align 4
@ahash_update_first.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.11, ptr @.str.2, ptr @.str.18, i8 1, i8 110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1463: \00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ahash_update_first.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.11, ptr @.str.2, ptr @.str.20, i8 1, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buf@1482: \00", [21 x i8] zeroinitializer }, align 32
@ahash_edesc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 707, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not allocate extended descriptor\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahash_edesc_alloc\00", [46 x i8] zeroinitializer }, align 32
@ahash_edesc_alloc._entry_ptr = internal global ptr @ahash_edesc_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_job_desc_shared._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_job_desc_shared\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@init_job_desc_shared._entry_ptr = internal global ptr @init_job_desc_shared._entry, section ".printk_index", align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@ahash_edesc_add_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 737, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map S/G table\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahash_edesc_add_src\00", [44 x i8] zeroinitializer }, align 32
@ahash_edesc_add_src._entry_ptr = internal global ptr @ahash_edesc_add_src._entry, section ".printk_index", align 4
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_to_sec4_sg_one\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/caam/sg_sw_sec4.h\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sec4_sg_ptr@: \00", [17 x i8] zeroinitializer }, align 32
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@append_seq_in_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.33, ptr @.str.25, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_seq_in_ptr\00", [46 x i8] zeroinitializer }, align 32
@append_seq_in_ptr._entry_ptr = internal global ptr @append_seq_in_ptr._entry, section ".printk_index", align 4
@append_seq_in_ptr_extlen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.34, ptr @.str.25, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"append_seq_in_ptr_extlen\00", [39 x i8] zeroinitializer }, align 32
@append_seq_in_ptr_extlen._entry_ptr = internal global ptr @append_seq_in_ptr_extlen._entry, section ".printk_index", align 4
@map_seq_out_ptr_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 149, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to map ctx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map_seq_out_ptr_ctx\00", [44 x i8] zeroinitializer }, align 32
@map_seq_out_ptr_ctx._entry_ptr = internal global ptr @map_seq_out_ptr_ctx._entry, section ".printk_index", align 4
@append_seq_out_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.37, ptr @.str.25, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"append_seq_out_ptr\00", [45 x i8] zeroinitializer }, align 32
@append_seq_out_ptr._entry_ptr = internal global ptr @append_seq_out_ptr._entry, section ".printk_index", align 4
@append_seq_out_ptr_extlen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.38, ptr @.str.25, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"append_seq_out_ptr_extlen\00", [38 x i8] zeroinitializer }, align 32
@append_seq_out_ptr_extlen._entry_ptr = internal global ptr @append_seq_out_ptr_extlen._entry, section ".printk_index", align 4
@ahash_done_switch.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahash_done_switch\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %d: err 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@ahash_done_switch.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 -92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buf@654: \00", [22 x i8] zeroinitializer }, align 32
@ahash_done_switch.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctx@658: \00", [22 x i8] zeroinitializer }, align 32
@ahash_done_switch.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"result@662: \00", [19 x i8] zeroinitializer }, align 32
@ahash_update_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.44, ptr @.str.2, i32 851, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahash_update_ctx\00", [47 x i8] zeroinitializer }, align 32
@ahash_update_ctx._entry_ptr = internal global ptr @ahash_update_ctx._entry, section ".printk_index", align 4
@ahash_update_ctx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 859, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to DMA map source\0A\00", [38 x i8] zeroinitializer }, align 32
@ahash_update_ctx._entry_ptr.47 = internal global ptr @ahash_update_ctx._entry.45, section ".printk_index", align 4
@ahash_update_ctx._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.44, ptr @.str.2, i32 907, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_update_ctx._entry_ptr.49 = internal global ptr @ahash_update_ctx._entry.48, section ".printk_index", align 4
@ahash_update_ctx.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.2, ptr @.str.50, i8 0, i8 -27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jobdesc@917: \00", [18 x i8] zeroinitializer }, align 32
@ahash_update_ctx.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 0, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"buf@928: \00", [22 x i8] zeroinitializer }, align 32
@ctx_map_to_sec4_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.52, ptr @.str.2, i32 190, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctx_map_to_sec4_sg\00", [45 x i8] zeroinitializer }, align 32
@ctx_map_to_sec4_sg._entry_ptr = internal global ptr @ctx_map_to_sec4_sg._entry, section ".printk_index", align 4
@buf_map_to_sec4_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 172, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to map buf\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"buf_map_to_sec4_sg\00", [45 x i8] zeroinitializer }, align 32
@buf_map_to_sec4_sg._entry_ptr = internal global ptr @buf_map_to_sec4_sg._entry, section ".printk_index", align 4
@ahash_finup_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.55, ptr @.str.2, i32 1017, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahash_finup_ctx\00", [16 x i8] zeroinitializer }, align 32
@ahash_finup_ctx._entry_ptr = internal global ptr @ahash_finup_ctx._entry, section ".printk_index", align 4
@ahash_finup_ctx._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.55, ptr @.str.2, i32 1025, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_finup_ctx._entry_ptr.57 = internal global ptr @ahash_finup_ctx._entry.56, section ".printk_index", align 4
@ahash_finup_ctx.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.55, ptr @.str.2, ptr @.str.58, i8 1, i8 10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1063: \00", [17 x i8] zeroinitializer }, align 32
@ahash_done_cpy.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.59, ptr @.str.2, ptr @.str.40, i8 0, i8 -109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahash_done_cpy\00", [17 x i8] zeroinitializer }, align 32
@ahash_done_cpy.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctx@600: \00", [22 x i8] zeroinitializer }, align 32
@ahash_final_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.61, ptr @.str.2, i32 980, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahash_final_ctx\00", [16 x i8] zeroinitializer }, align 32
@ahash_final_ctx._entry_ptr = internal global ptr @ahash_final_ctx._entry, section ".printk_index", align 4
@ahash_final_ctx.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jobdesc@989: \00", [18 x i8] zeroinitializer }, align 32
@ahash_update_no_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.63, ptr @.str.2, i32 1227, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahash_update_no_ctx\00", [44 x i8] zeroinitializer }, align 32
@ahash_update_no_ctx._entry_ptr = internal global ptr @ahash_update_no_ctx._entry, section ".printk_index", align 4
@ahash_update_no_ctx._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.63, ptr @.str.2, i32 1235, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_update_no_ctx._entry_ptr.65 = internal global ptr @ahash_update_no_ctx._entry.64, section ".printk_index", align 4
@ahash_update_no_ctx._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.63, ptr @.str.2, i32 1272, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_update_no_ctx._entry_ptr.67 = internal global ptr @ahash_update_no_ctx._entry.66, section ".printk_index", align 4
@ahash_update_no_ctx.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.63, ptr @.str.2, ptr @.str.68, i8 1, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1283: \00", [17 x i8] zeroinitializer }, align 32
@ahash_update_no_ctx.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.63, ptr @.str.2, ptr @.str.69, i8 1, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buf@1299: \00", [21 x i8] zeroinitializer }, align 32
@ahash_finup_no_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.70, ptr @.str.2, i32 1327, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahash_finup_no_ctx\00", [45 x i8] zeroinitializer }, align 32
@ahash_finup_no_ctx._entry_ptr = internal global ptr @ahash_finup_no_ctx._entry, section ".printk_index", align 4
@ahash_finup_no_ctx._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.70, ptr @.str.2, i32 1335, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_finup_no_ctx._entry_ptr.72 = internal global ptr @ahash_finup_no_ctx._entry.71, section ".printk_index", align 4
@ahash_finup_no_ctx._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.70, ptr @.str.2, i32 1366, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_finup_no_ctx._entry_ptr.74 = internal global ptr @ahash_finup_no_ctx._entry.73, section ".printk_index", align 4
@ahash_finup_no_ctx.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 1, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1374: \00", [17 x i8] zeroinitializer }, align 32
@ahash_final_no_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1167, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to map src\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahash_final_no_ctx\00", [45 x i8] zeroinitializer }, align 32
@ahash_final_no_ctx._entry_ptr = internal global ptr @ahash_final_no_ctx._entry, section ".printk_index", align 4
@ahash_final_no_ctx.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 1, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1178: \00", [17 x i8] zeroinitializer }, align 32
@ahash_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.79, ptr @.str.2, i32 1091, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahash_digest\00", [19 x i8] zeroinitializer }, align 32
@ahash_digest._entry_ptr = internal global ptr @ahash_digest._entry, section ".printk_index", align 4
@ahash_digest._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.79, ptr @.str.2, i32 1099, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ahash_digest._entry_ptr.81 = internal global ptr @ahash_digest._entry.80, section ".printk_index", align 4
@ahash_digest.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.79, ptr @.str.2, ptr @.str.82, i8 1, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jobdesc@1133: \00", [17 x i8] zeroinitializer }, align 32
@ahash_setkey.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahash_setkey\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"keylen %d\0A\00", [21 x i8] zeroinitializer }, align 32
@hash_digest_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 370, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to allocate key input memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_digest_key\00", [16 x i8] zeroinitializer }, align 32
@hash_digest_key._entry_ptr = internal global ptr @hash_digest_key._entry, section ".printk_index", align 4
@hash_digest_key._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 378, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to map key memory\0A\00", [38 x i8] zeroinitializer }, align 32
@hash_digest_key._entry_ptr.89 = internal global ptr @hash_digest_key._entry.87, section ".printk_index", align 4
@hash_digest_key.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.86, ptr @.str.2, ptr @.str.90, i8 0, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"key_in@393: \00", [19 x i8] zeroinitializer }, align 32
@hash_digest_key.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.86, ptr @.str.2, ptr @.str.91, i8 0, i8 99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jobdesc@395: \00", [18 x i8] zeroinitializer }, align 32
@hash_digest_key.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.86, ptr @.str.2, ptr @.str.92, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"digested key@408: \00", [45 x i8] zeroinitializer }, align 32
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.93, ptr @.str.25, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@append_seq_fifo_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.94, ptr @.str.25, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"append_seq_fifo_load\00", [43 x i8] zeroinitializer }, align 32
@append_seq_fifo_load._entry_ptr = internal global ptr @append_seq_fifo_load._entry, section ".printk_index", align 4
@append_seq_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.95, ptr @.str.25, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_seq_store\00", [47 x i8] zeroinitializer }, align 32
@append_seq_store._entry_ptr = internal global ptr @append_seq_store._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@split_key_len.mdpadlen = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\10\14  @@", [26 x i8] zeroinitializer }, align 32
@ahash_set_sh_desc.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahash_set_sh_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ahash update shdesc@217: \00", [38 x i8] zeroinitializer }, align 32
@ahash_set_sh_desc.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.97, ptr @.str.2, ptr @.str.99, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ahash update first shdesc@227: \00", [32 x i8] zeroinitializer }, align 32
@ahash_set_sh_desc.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.97, ptr @.str.2, ptr @.str.100, i8 0, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahash final shdesc@238: \00", [39 x i8] zeroinitializer }, align 32
@ahash_set_sh_desc.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.97, ptr @.str.2, ptr @.str.101, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ahash digest shdesc@249: \00", [38 x i8] zeroinitializer }, align 32
@axcbc_setkey.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 0, i8 124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axcbc_setkey\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"axcbc ctx.key@498 : \00", [43 x i8] zeroinitializer }, align 32
@axcbc_set_sh_desc.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"axcbc_set_sh_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"axcbc update shdesc@269 : \00", [37 x i8] zeroinitializer }, align 32
@axcbc_set_sh_desc.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.104, ptr @.str.2, ptr @.str.106, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"axcbc finup shdesc@279 : \00", [38 x i8] zeroinitializer }, align 32
@axcbc_set_sh_desc.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.104, ptr @.str.2, ptr @.str.107, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"axcbc update first shdesc@292 : \00", [63 x i8] zeroinitializer }, align 32
@axcbc_set_sh_desc.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.104, ptr @.str.2, ptr @.str.108, i8 0, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"axcbc digest shdesc@302 : \00", [37 x i8] zeroinitializer }, align 32
@acmac_setkey.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 0, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acmac_setkey\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"acmac ctx.key@518 : \00", [43 x i8] zeroinitializer }, align 32
@acmac_set_sh_desc.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acmac_set_sh_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"acmac update shdesc@321 : \00", [37 x i8] zeroinitializer }, align 32
@acmac_set_sh_desc.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.111, ptr @.str.2, ptr @.str.113, i8 0, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"acmac finup shdesc@331 : \00", [38 x i8] zeroinitializer }, align 32
@acmac_set_sh_desc.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.111, ptr @.str.2, ptr @.str.114, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"acmac update first shdesc@341 : \00", [63 x i8] zeroinitializer }, align 32
@acmac_set_sh_desc.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.111, ptr @.str.2, ptr @.str.115, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"acmac digest shdesc@351 : \00", [37 x i8] zeroinitializer }, align 32
@caam_hash_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013failed to allocate t_alg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"caam_hash_alloc\00", [16 x i8] zeroinitializer }, align 32
@caam_hash_alloc._entry_ptr = internal global ptr @caam_hash_alloc._entry, section ".printk_index", align 4
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@caam_hash_cra_init.runninglen = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\18\1C((HH", [26 x i8] zeroinitializer }, align 32
@caam_hash_cra_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 1784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"caam_hash_cra_init\00", [45 x i8] zeroinitializer }, align 32
@caam_hash_cra_init._entry_ptr = internal global ptr @caam_hash_cra_init._entry, section ".printk_index", align 4
@caam_hash_cra_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 1820, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to map key\0A\00", [45 x i8] zeroinitializer }, align 32
@caam_hash_cra_init._entry_ptr.123 = internal global ptr @caam_hash_cra_init._entry.121, section ".printk_index", align 4
@caam_hash_cra_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.2, i32 1831, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map shared descriptors\0A\00", [62 x i8] zeroinitializer }, align 32
@caam_hash_cra_init._entry_ptr.126 = internal global ptr @caam_hash_cra_init._entry.124, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1050112, i64 1050368]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967268]
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"hash_list\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 86, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1990, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1997, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2011, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2017, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1422, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1430, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1463, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1482, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 707, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 156, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 737, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant [36 x i8] c"../drivers/crypto/caam/sg_sw_sec4.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 39, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 326, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 358, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 341, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 149, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 359, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 342, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 639, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 654, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 658, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 662, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 851, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 859, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 907, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 917, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 928, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 190, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 172, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1017, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1025, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1063, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 588, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 600, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 980, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 989, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1227, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1235, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1272, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1283, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1299, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1327, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1335, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1366, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1374, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1167, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1178, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1091, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1099, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1133, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 432, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 370, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 378, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 393, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 395, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 408, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 265, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 277, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 276, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 87, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [9 x i8] c"mdpadlen\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [33 x i8] c"../drivers/crypto/caam/key_gen.h\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 19, i32 18 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 217, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 227, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 238, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 249, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 498, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 269, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 279, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 292, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 302, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 518, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 321, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 331, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 341, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 351, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1906, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1915, i32 48 }
@___asan_gen_.531 = private unnamed_addr constant [11 x i8] c"runninglen\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1767, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1784, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1820, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.553 = private constant [34 x i8] c"../drivers/crypto/caam/caamhash.c\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1831, i32 3 }
@llvm.compiler.used = appending global [181 x ptr] [ptr @ahash_digest._entry, ptr @ahash_digest._entry.80, ptr @ahash_digest._entry_ptr, ptr @ahash_digest._entry_ptr.81, ptr @ahash_edesc_add_src._entry, ptr @ahash_edesc_add_src._entry_ptr, ptr @ahash_edesc_alloc._entry, ptr @ahash_edesc_alloc._entry_ptr, ptr @ahash_final_ctx._entry, ptr @ahash_final_ctx._entry_ptr, ptr @ahash_final_no_ctx._entry, ptr @ahash_final_no_ctx._entry_ptr, ptr @ahash_finup_ctx._entry, ptr @ahash_finup_ctx._entry.56, ptr @ahash_finup_ctx._entry_ptr, ptr @ahash_finup_ctx._entry_ptr.57, ptr @ahash_finup_no_ctx._entry, ptr @ahash_finup_no_ctx._entry.71, ptr @ahash_finup_no_ctx._entry.73, ptr @ahash_finup_no_ctx._entry_ptr, ptr @ahash_finup_no_ctx._entry_ptr.72, ptr @ahash_finup_no_ctx._entry_ptr.74, ptr @ahash_update_ctx._entry, ptr @ahash_update_ctx._entry.45, ptr @ahash_update_ctx._entry.48, ptr @ahash_update_ctx._entry_ptr, ptr @ahash_update_ctx._entry_ptr.47, ptr @ahash_update_ctx._entry_ptr.49, ptr @ahash_update_first._entry, ptr @ahash_update_first._entry.14, ptr @ahash_update_first._entry_ptr, ptr @ahash_update_first._entry_ptr.16, ptr @ahash_update_no_ctx._entry, ptr @ahash_update_no_ctx._entry.64, ptr @ahash_update_no_ctx._entry.66, ptr @ahash_update_no_ctx._entry_ptr, ptr @ahash_update_no_ctx._entry_ptr.65, ptr @ahash_update_no_ctx._entry_ptr.67, ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @append_seq_fifo_load._entry, ptr @append_seq_fifo_load._entry_ptr, ptr @append_seq_in_ptr._entry, ptr @append_seq_in_ptr._entry_ptr, ptr @append_seq_in_ptr_extlen._entry, ptr @append_seq_in_ptr_extlen._entry_ptr, ptr @append_seq_out_ptr._entry, ptr @append_seq_out_ptr._entry_ptr, ptr @append_seq_out_ptr_extlen._entry, ptr @append_seq_out_ptr_extlen._entry_ptr, ptr @append_seq_store._entry, ptr @append_seq_store._entry_ptr, ptr @buf_map_to_sec4_sg._entry, ptr @buf_map_to_sec4_sg._entry_ptr, ptr @caam_algapi_hash_init._entry, ptr @caam_algapi_hash_init._entry.3, ptr @caam_algapi_hash_init._entry.6, ptr @caam_algapi_hash_init._entry.8, ptr @caam_algapi_hash_init._entry_ptr, ptr @caam_algapi_hash_init._entry_ptr.5, ptr @caam_algapi_hash_init._entry_ptr.7, ptr @caam_algapi_hash_init._entry_ptr.9, ptr @caam_hash_alloc._entry, ptr @caam_hash_alloc._entry_ptr, ptr @caam_hash_cra_init._entry, ptr @caam_hash_cra_init._entry.121, ptr @caam_hash_cra_init._entry.124, ptr @caam_hash_cra_init._entry_ptr, ptr @caam_hash_cra_init._entry_ptr.123, ptr @caam_hash_cra_init._entry_ptr.126, ptr @ctx_map_to_sec4_sg._entry, ptr @ctx_map_to_sec4_sg._entry_ptr, ptr @hash_digest_key._entry, ptr @hash_digest_key._entry.87, ptr @hash_digest_key._entry_ptr, ptr @hash_digest_key._entry_ptr.89, ptr @init_job_desc_shared._entry, ptr @init_job_desc_shared._entry_ptr, ptr @map_seq_out_ptr_ctx._entry, ptr @map_seq_out_ptr_ctx._entry_ptr, ptr @hash_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @init_completion.__key, ptr @.str.96, ptr @split_key_len.mdpadlen, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @caam_hash_cra_init.runninglen, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_hash_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_hash_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_hash_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_hash_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_first._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_first._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_edesc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_job_desc_shared._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_edesc_add_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_in_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_in_ptr_extlen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_seq_out_ptr_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_out_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_out_ptr_extlen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_ctx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_ctx._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_map_to_sec4_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_map_to_sec4_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_finup_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_finup_ctx._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_final_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_no_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_no_ctx._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update_no_ctx._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_finup_no_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_finup_no_ctx._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_finup_no_ctx._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_final_no_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_digest._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_digest_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_digest_key._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_fifo_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_key_len.mdpadlen to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_hash_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_hash_cra_init.runninglen to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_hash_cra_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_hash_cra_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_hash_cra_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_algapi_hash_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hash_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %cmp.not18 = icmp eq ptr %0, @hash_list
  %or.cond = or i1 %tobool.not, %cmp.not18
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %t_alg.019 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %t_alg.019 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0 = load ptr, ptr %t_alg.019, align 128
  %ahash_alg = getelementptr inbounds %struct.caam_hash_alg, ptr %t_alg.019, i32 0, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %ahash_alg) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_alg.019) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.019, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %t_alg.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_alg.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %t_alg.019 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %t_alg.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t_alg.019, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %t_alg.019) #11
  %cmp.not = icmp eq ptr %n.0, @hash_list
  br i1 %cmp.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_algapi_hash_init(ptr nocapture noundef readonly %ctrldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrldev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cha_id_ls = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 26, i32 22
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_id_ls) #11
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %7, %if.end.i ]
  %9 = lshr i32 %retval.0.i, 12
  %10 = and i32 %9, 15
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cha_num_ls = getelementptr inbounds %struct.caam_ctrl, ptr %12, i32 0, i32 26, i32 24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i123 = icmp eq i8 %13, 0
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_num_ls) #11
  br i1 %tobool.not.i123, label %if.end.i125, label %if.then.i124

if.then.i124:                                     ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  br label %rd_reg32.exit127

if.end.i125:                                      ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  br label %rd_reg32.exit127

rd_reg32.exit127:                                 ; preds = %if.end.i125, %if.then.i124
  %retval.0.i126 = phi i32 [ %15, %if.then.i124 ], [ %14, %if.end.i125 ]
  %16 = lshr i32 %retval.0.i126, 12
  %17 = and i32 %16, 15
  br label %if.end

if.else:                                          ; preds = %entry
  %mdha11 = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 25, i32 5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i128 = icmp eq i8 %18, 0
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdha11) #11
  br i1 %tobool.not.i128, label %if.end.i130, label %if.then.i129

if.then.i129:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  br label %rd_reg32.exit132

if.end.i130:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  br label %rd_reg32.exit132

rd_reg32.exit132:                                 ; preds = %if.end.i130, %if.then.i129
  %retval.0.i131 = phi i32 [ %20, %if.then.i129 ], [ %19, %if.end.i130 ]
  %shr15 = lshr i32 %retval.0.i131, 24
  %21 = and i32 %retval.0.i131, 255
  br label %if.end

if.end:                                           ; preds = %rd_reg32.exit132, %rd_reg32.exit127
  %md_inst.0 = phi i32 [ %17, %rd_reg32.exit127 ], [ %21, %rd_reg32.exit132 ]
  %md_vid.0 = phi i32 [ %10, %rd_reg32.exit127 ], [ %shr15, %rd_reg32.exit132 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %md_inst.0)
  %tobool.not = icmp eq i32 %md_inst.0, 0
  br i1 %tobool.not, label %if.end.cleanup90_crit_edge, label %if.end21

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %md_vid.0)
  %cmp23 = icmp eq i32 %md_vid.0, 0
  %spec.select = select i1 %cmp23, i32 32, i32 64
  store volatile ptr @hash_list, ptr @hash_list, align 4
  store ptr @hash_list, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end21
  %i.0170 = phi i32 [ 0, %if.end21 ], [ %inc, %cleanup.for.body_crit_edge ]
  %err.0169 = phi i32 [ 0, %if.end21 ], [ %err.1, %cleanup.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170
  %alg_type = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 7
  %22 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alg_type, align 128
  %and1.i = and i32 %23, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and1.i)
  %cmp.i = icmp eq i32 %and1.i, 4194304
  br i1 %cmp.i, label %land.lhs.true, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %for.body
  %halg = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 6, i32 11
  %24 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %halg, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %spec.select)
  %cmp31 = icmp ugt i32 %25, %spec.select
  br i1 %cmp31, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %for.body.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 896) #14
  %tobool.not.i133 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i133, label %caam_hash_alloc.exit.thread, label %caam_hash_alloc.exit

caam_hash_alloc.exit.thread:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #15
  br label %if.then37

caam_hash_alloc.exit:                             ; preds = %if.end34
  %ahash_alg.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3
  %template_ahash.i = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 6
  %27 = call ptr @memcpy(ptr %ahash_alg.i, ptr %template_ahash.i, i32 768)
  %cra_name.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 8
  %hmac_name.i = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 2
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i, i32 noundef 128, ptr noundef nonnull @.str.118, ptr noundef %hmac_name.i) #11
  %cra_driver_name.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 9
  %hmac_driver_name.i = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 3
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i, i32 noundef 128, ptr noundef nonnull @.str.118, ptr noundef %hmac_driver_name.i) #11
  %cra_module.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 15
  %28 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cra_module.i, align 4
  %cra_init.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 12
  %29 = ptrtoint ptr %cra_init.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @caam_hash_cra_init, ptr %cra_init.i, align 64
  %cra_exit.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 13
  %30 = ptrtoint ptr %cra_exit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @caam_hash_cra_exit, ptr %cra_exit.i, align 4
  %cra_ctxsize.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 4
  %31 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1408, ptr %cra_ctxsize.i, align 8
  %cra_priority.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 6
  %32 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3000, ptr %cra_priority.i, align 32
  %blocksize.i = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 4
  %33 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blocksize.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 3
  %35 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cra_blocksize.i, align 4
  %cra_alignmask.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 5
  %36 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cra_alignmask.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 3, i32 11, i32 3, i32 2
  %37 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65664, ptr %cra_flags.i, align 16
  %38 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alg_type, align 128
  %alg_type22.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %alg_type22.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %alg_type22.i, align 8
  %cmp.i136 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %caam_hash_alloc.exit.if.then37_crit_edge, label %if.end40

caam_hash_alloc.exit.if.then37_crit_edge:         ; preds = %caam_hash_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then37:                                        ; preds = %caam_hash_alloc.exit.if.then37_crit_edge, %caam_hash_alloc.exit.thread
  %retval.0.i135165 = phi ptr [ inttoptr (i32 -12 to ptr), %caam_hash_alloc.exit.thread ], [ %call7.i.i.i, %caam_hash_alloc.exit.if.then37_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i135165 to i32
  %hmac_driver_name = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 3
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %hmac_driver_name) #15
  br label %cleanup

if.end40:                                         ; preds = %caam_hash_alloc.exit
  %call41 = tail call i32 @crypto_register_ahash(ptr noundef %ahash_alg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else52, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %cra_driver_name.i, i32 noundef %call41) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end54

if.else52:                                        ; preds = %if.end40
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %42, ptr noundef nonnull @hash_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else52.if.end54_crit_edge

if.else52.if.end54_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i.i:                                       ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hash_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i.i.i, ptr %42, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end.i.i, %if.else52.if.end54_crit_edge, %do.end46
  %46 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alg_type, align 128
  %and56 = and i32 %47, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 1048576
  br i1 %cmp57, label %if.end54.cleanup_crit_edge, label %if.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i137 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 896) #14
  %tobool.not.i138 = icmp eq ptr %call7.i.i.i137, null
  br i1 %tobool.not.i138, label %caam_hash_alloc.exit157.thread, label %caam_hash_alloc.exit157

caam_hash_alloc.exit157.thread:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #15
  br label %if.then63

caam_hash_alloc.exit157:                          ; preds = %if.end60
  %ahash_alg.i141 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3
  %49 = call ptr @memcpy(ptr %ahash_alg.i141, ptr %template_ahash.i, i32 768)
  %cra_name.i143 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 8
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i143, i32 noundef 128, ptr noundef nonnull @.str.118, ptr noundef %add.ptr) #11
  %cra_driver_name16.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 9
  %driver_name.i = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 1
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name16.i, i32 noundef 128, ptr noundef nonnull @.str.118, ptr noundef %driver_name.i) #11
  %setkey.i = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 7
  %50 = ptrtoint ptr %setkey.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %setkey.i, align 4
  %cra_module.i145 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 15
  %51 = ptrtoint ptr %cra_module.i145 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %cra_module.i145, align 4
  %cra_init.i146 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 12
  %52 = ptrtoint ptr %cra_init.i146 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @caam_hash_cra_init, ptr %cra_init.i146, align 64
  %cra_exit.i147 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 13
  %53 = ptrtoint ptr %cra_exit.i147 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @caam_hash_cra_exit, ptr %cra_exit.i147, align 4
  %cra_ctxsize.i148 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 4
  %54 = ptrtoint ptr %cra_ctxsize.i148 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1408, ptr %cra_ctxsize.i148, align 8
  %cra_priority.i149 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 6
  %55 = ptrtoint ptr %cra_priority.i149 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3000, ptr %cra_priority.i149, align 32
  %56 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blocksize.i, align 128
  %cra_blocksize.i151 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 3
  %58 = ptrtoint ptr %cra_blocksize.i151 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cra_blocksize.i151, align 4
  %cra_alignmask.i152 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 5
  %59 = ptrtoint ptr %cra_alignmask.i152 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %cra_alignmask.i152, align 4
  %cra_flags.i153 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 3, i32 11, i32 3, i32 2
  %60 = ptrtoint ptr %cra_flags.i153 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 65664, ptr %cra_flags.i153, align 16
  %61 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %alg_type, align 128
  %alg_type22.i155 = getelementptr inbounds %struct.caam_hash_alg, ptr %call7.i.i.i137, i32 0, i32 1
  %63 = ptrtoint ptr %alg_type22.i155 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %alg_type22.i155, align 8
  %cmp.i158 = icmp ugt ptr %call7.i.i.i137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %caam_hash_alloc.exit157.if.then63_crit_edge, label %if.end71

caam_hash_alloc.exit157.if.then63_crit_edge:      ; preds = %caam_hash_alloc.exit157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

if.then63:                                        ; preds = %caam_hash_alloc.exit157.if.then63_crit_edge, %caam_hash_alloc.exit157.thread
  %retval.0.i156168 = phi ptr [ inttoptr (i32 -12 to ptr), %caam_hash_alloc.exit157.thread ], [ %call7.i.i.i137, %caam_hash_alloc.exit157.if.then63_crit_edge ]
  %64 = ptrtoint ptr %retval.0.i156168 to i32
  %driver_name = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %i.0170, i32 1
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %driver_name) #15
  br label %cleanup

if.end71:                                         ; preds = %caam_hash_alloc.exit157
  %call73 = tail call i32 @crypto_register_ahash(ptr noundef %ahash_alg.i141) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else86, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %cra_driver_name16.i, i32 noundef %call73) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i137) #11
  br label %cleanup

if.else86:                                        ; preds = %if.end71
  %65 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  %call.i.i159 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i137, ptr noundef %65, ptr noundef nonnull @hash_list) #11
  br i1 %call.i.i159, label %if.end.i.i161, label %if.else86.cleanup_crit_edge

if.else86.cleanup_crit_edge:                      ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i161:                                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i.i137, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  %66 = ptrtoint ptr %call7.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @hash_list, ptr %call7.i.i.i137, align 8
  %prev3.i.i160 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i137, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i160 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %prev3.i.i160, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i137, ptr %65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i161, %if.else86.cleanup_crit_edge, %do.end78, %if.then63, %if.end54.cleanup_crit_edge, %if.then37, %land.lhs.true.cleanup_crit_edge
  %err.1 = phi i32 [ %41, %if.then37 ], [ %64, %if.then63 ], [ %err.0169, %land.lhs.true.cleanup_crit_edge ], [ %call41, %if.end54.cleanup_crit_edge ], [ %call73, %do.end78 ], [ 0, %if.else86.cleanup_crit_edge ], [ 0, %if.end.i.i161 ]
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup.cleanup90_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.cleanup90_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup.cleanup90_crit_edge, %if.end.cleanup90_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup90_crit_edge ], [ %err.1, %cleanup.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ahash_init(ptr nocapture noundef writeonly %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %update = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %0 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ahash_update_first, ptr %update, align 128
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %finup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ahash_finup_first, ptr %finup, align 8
  %final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ahash_final_no_ctx, ptr %final, align 4
  %ctx_dma = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ctx_dma, align 4
  %ctx_dma_len = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ctx_dma_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ctx_dma_len, align 8
  %5 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__ctx.i, align 128
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buflen, align 128
  %next_buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %next_buflen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %next_buflen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %update = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %0 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update, align 128
  %call1 = tail call i32 %1(ptr noundef %req) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_final(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %final to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %final, align 4
  %call1 = tail call i32 %1(ptr noundef %req) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_finup(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %0 = ptrtoint ptr %finup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %finup, align 8
  %call1 = tail call i32 %1(ptr noundef %req) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 128
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %__ctx.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %12 to i64
  %call5 = tail call i32 @sg_nents_for_len(ptr noundef %10, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end16.thread_crit_edge, label %if.then7

if.end.if.end16.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread

if.then7:                                         ; preds = %if.end
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %call9 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %14, i32 noundef %call5, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp17 = icmp sgt i32 %call9, 1
  %spec.select = select i1 %cmp17, i32 %call9, i32 0
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end16, %if.end.if.end16.thread_crit_edge
  %mapped_nents.0117 = phi i32 [ 0, %if.end.if.end16.thread_crit_edge ], [ %call9, %if.end16 ]
  %15 = phi i32 [ 0, %if.end.if.end16.thread_crit_edge ], [ %spec.select, %if.end16 ]
  %sh_desc_digest = getelementptr i8, ptr %1, i32 1024
  %sh_desc_digest_dma = getelementptr i8, ptr %1, i32 1420
  %16 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_desc_digest_dma, align 4
  %call19 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %15, ptr noundef %sh_desc_digest, i32 noundef %17)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %19, i32 noundef %call5, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end16.thread
  %src_nents24 = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 1
  %20 = ptrtoint ptr %src_nents24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call5, ptr %src_nents24, align 4
  %21 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbytes, align 8
  %call26 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %call19, ptr noundef %req, i32 noundef %mapped_nents.0117, i32 noundef 0, i32 noundef 0, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end23
  %23 = ptrtoint ptr %src_nents24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_nents24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then28.if.end.i_crit_edge, label %if.then.i

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %26, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then28.if.end.i_crit_edge
  %sec4_sg_bytes.i = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 2
  %27 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sec4_sg_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i = icmp eq i32 %28, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call19, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %30, i32 noundef %28, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %31 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool6.not.i = icmp eq i32 %32, 0
  br i1 %tobool6.not.i, label %if.end5.i.ahash_unmap.exit_crit_edge, label %if.then7.i

if.end5.i.ahash_unmap.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %33 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buflen.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %32, i32 noundef %34, i32 noundef 1, i32 noundef 0) #11
  %35 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap.exit

ahash_unmap.exit:                                 ; preds = %if.then7.i, %if.end5.i.ahash_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call19) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 5
  %call31 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %hw_desc, ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body35, label %if.then33

if.then33:                                        ; preds = %if.end29
  %36 = ptrtoint ptr %src_nents24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_nents24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i103 = icmp eq i32 %37, 0
  br i1 %tobool.not.i103, label %if.then33.if.end.i108_crit_edge, label %if.then.i105

if.then33.if.end.i108_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i108

if.then.i105:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %39, i32 noundef %37, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.then.i105, %if.then33.if.end.i108_crit_edge
  %sec4_sg_bytes.i106 = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 2
  %40 = ptrtoint ptr %sec4_sg_bytes.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sec4_sg_bytes.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i107 = icmp eq i32 %41, 0
  br i1 %tobool2.not.i107, label %if.end.i108.if.end5.i111_crit_edge, label %if.then3.i109

if.end.i108.if.end5.i111_crit_edge:               ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i111

if.then3.i109:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call19, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %43, i32 noundef %41, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i111

if.end5.i111:                                     ; preds = %if.then3.i109, %if.end.i108.if.end5.i111_crit_edge
  %44 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not.i110 = icmp eq i32 %45, 0
  br i1 %tobool6.not.i110, label %if.end5.i111.ahash_unmap.exit114_crit_edge, label %if.then7.i113

if.end5.i111.ahash_unmap.exit114_crit_edge:       ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap.exit114

if.then7.i113:                                    ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i112 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %46 = ptrtoint ptr %buflen.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buflen.i112, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %45, i32 noundef %47, i32 noundef 1, i32 noundef 0) #11
  %48 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap.exit114

ahash_unmap.exit114:                              ; preds = %if.then7.i113, %if.end5.i111.ahash_unmap.exit114_crit_edge
  tail call void @kfree(ptr noundef nonnull %call19) #11
  br label %cleanup

do.body35:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_digest.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_digest, %do.end45)) #11
          to label %if.then41 [label %do.end45], !srcloc !314

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i = icmp eq i8 %51, 0
  %52 = lshr i32 %50, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %50, i32 %52
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body35
  %call46 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done, ptr noundef %req, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %ahash_unmap.exit114, %ahash_unmap.exit, %if.then21, %do.end14, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call26, %ahash_unmap.exit ], [ -12, %ahash_unmap.exit114 ], [ %call46, %do.end45 ], [ -12, %if.then21 ], [ -12, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 128
  %2 = call ptr @memcpy(ptr %out, ptr %buf1, i32 %1)
  %caam_ctx = getelementptr inbounds %struct.caam_export_state, ptr %out, i32 0, i32 1
  %caam_ctx5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 4
  %3 = call ptr @memcpy(ptr %caam_ctx, ptr %caam_ctx5, i32 72)
  %buflen7 = getelementptr inbounds %struct.caam_export_state, ptr %out, i32 0, i32 2
  %4 = ptrtoint ptr %buflen7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %buflen7, align 4
  %update = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %5 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %update, align 128
  %update8 = getelementptr inbounds %struct.caam_export_state, ptr %out, i32 0, i32 3
  %7 = ptrtoint ptr %update8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %update8, align 4
  %final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %final to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %final, align 4
  %final9 = getelementptr inbounds %struct.caam_export_state, ptr %out, i32 0, i32 4
  %10 = ptrtoint ptr %final9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %final9, align 4
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %finup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %finup, align 8
  %finup10 = getelementptr inbounds %struct.caam_export_state, ptr %out, i32 0, i32 5
  %13 = ptrtoint ptr %finup10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %finup10, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 640)
  %buf = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen = getelementptr inbounds %struct.caam_export_state, ptr %in, i32 0, i32 2
  %1 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buflen, align 4
  %3 = call ptr @memcpy(ptr %buf, ptr %in, i32 %2)
  %caam_ctx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 4
  %caam_ctx4 = getelementptr inbounds %struct.caam_export_state, ptr %in, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %caam_ctx, ptr %caam_ctx4, i32 72)
  %5 = load i32, ptr %buflen, align 4
  %buflen7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %6 = ptrtoint ptr %buflen7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buflen7, align 128
  %update = getelementptr inbounds %struct.caam_export_state, ptr %in, i32 0, i32 3
  %7 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %update, align 4
  %update8 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %9 = ptrtoint ptr %update8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %update8, align 128
  %final = getelementptr inbounds %struct.caam_export_state, ptr %in, i32 0, i32 4
  %10 = ptrtoint ptr %final to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %final, align 4
  %final9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %final9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %final9, align 4
  %finup = getelementptr inbounds %struct.caam_export_state, ptr %in, i32 0, i32 5
  %13 = ptrtoint ptr %finup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %finup, align 4
  %finup10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %finup10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %finup10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_setkey(ptr noundef %ahash, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %keylen.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keylen.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %keylen, ptr %keylen.addr, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1
  %jrdev1 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 6
  %1 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jrdev1, align 8
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %3 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_blocksize.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i, align 128
  %parent = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_setkey.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_setkey, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahash_setkey.__UNIQUE_ID_ddebug531, ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %keylen) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %keylen)
  %cmp = icmp ult i32 %6, %keylen
  br i1 %cmp, label %if.then10, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10:                                        ; preds = %do.end
  %call11 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %call15 = call fastcc i32 @hash_digest_key(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %keylen.addr, ptr noundef nonnull %call11, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.end14.bad_free_key_crit_edge

if.end14.bad_free_key_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_free_key

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.end14.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %hashed_key.0 = phi ptr [ null, %do.end.if.end19_crit_edge ], [ %call11, %if.end14.if.end19_crit_edge ]
  %key.addr.0 = phi ptr [ %key, %do.end.if.end19_crit_edge ], [ %call11, %if.end14.if.end19_crit_edge ]
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp20 = icmp sgt i32 %14, 5
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %adata = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 8
  %key_inline = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 16
  %15 = ptrtoint ptr %key_inline to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %key_inline, align 4
  %16 = ptrtoint ptr %keylen.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keylen.addr, align 4
  %keylen23 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9
  %18 = ptrtoint ptr %keylen23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %keylen23, align 4
  %19 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adata, align 32
  %and = lshr i32 %20, 16
  %shr.i = and i32 %and, 15
  %arrayidx.i = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %keylen_pad = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 4
  %23 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %keylen_pad, align 8
  %key32 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 5, i32 10
  %24 = call ptr @memcpy(ptr %key32, ptr %key.addr.0, i32 %17)
  %25 = load i32, ptr %keylen_pad, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %25)
  %cmp35 = icmp ugt i32 %17, %25
  br i1 %cmp35, label %if.then36, label %if.then21.if.end50_crit_edge

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then36:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jrdev1, align 8
  %key_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 8
  %28 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %29, i32 noundef %25, i32 noundef 1) #11
  br label %if.end50

if.else:                                          ; preds = %if.end19
  %30 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %jrdev1, align 8
  %key43 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 5, i32 10
  %adata45 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 8
  %32 = ptrtoint ptr %keylen.addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %keylen.addr, align 4
  %call46 = tail call i32 @gen_split_key(ptr noundef %31, ptr noundef %key43, ptr noundef %adata45, ptr noundef %key.addr.0, i32 noundef %33, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else.if.end50_crit_edge, label %if.else.bad_free_key_crit_edge

if.else.bad_free_key_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_free_key

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then36, %if.then21.if.end50_crit_edge
  tail call void @kfree(ptr noundef %hashed_key.0) #11
  tail call fastcc void @ahash_set_sh_desc(ptr noundef %ahash)
  br label %cleanup

bad_free_key:                                     ; preds = %if.else.bad_free_key_crit_edge, %if.end14.bad_free_key_crit_edge
  %hashed_key.1 = phi ptr [ %call11, %if.end14.bad_free_key_crit_edge ], [ %hashed_key.0, %if.else.bad_free_key_crit_edge ]
  tail call void @kfree(ptr noundef %hashed_key.1) #11
  br label %cleanup

cleanup:                                          ; preds = %bad_free_key, %if.end50, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %bad_free_key ], [ 0, %if.end50 ], [ -12, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axcbc_setkey(ptr noundef %ahash, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %jrdev1 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 6
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 8
  %key2 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 5, i32 10
  %2 = call ptr @memcpy(ptr %key2, ptr %key, i32 16)
  %key_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 8
  %3 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %4, i32 noundef 16, i32 noundef 1) #11
  %keylen4 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9
  %5 = ptrtoint ptr %keylen4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %keylen4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axcbc_setkey.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axcbc_setkey, %do.end)) #11
          to label %if.then9 [label %do.end], !srcloc !314

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.103, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key2, i32 noundef 16, i1 noundef zeroext true) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  tail call fastcc void @axcbc_set_sh_desc(ptr noundef %ahash)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acmac_setkey(ptr noundef %ahash, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge23
    i32 32, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24
  %key_virt = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 12
  %1 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %key, ptr %key_virt, align 16
  %keylen3 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9
  %2 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acmac_setkey.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acmac_setkey, %do.end)) #11
          to label %if.then9 [label %do.end], !srcloc !314

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.110, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  tail call fastcc void @acmac_set_sh_desc(ptr noundef %ahash)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update_first(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buf4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %next_buflen6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %sub = add i32 %7, -1
  %and = and i32 %9, %sub
  %10 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %next_buflen6, align 4
  %sub9 = sub i32 %9, %and
  %adata = getelementptr i8, ptr %1, i32 1440
  %11 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adata, align 32
  %and.i = and i32 %12, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050368, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1050368
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050112, i32 %and.i)
  %cmp.i192 = icmp eq i32 %and.i, 1050112
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %7)
  %cmp.not = icmp sge i32 %sub9, %7
  %or.cond = select i1 %cmp.i192, i1 %cmp.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  %or.cond198 = select i1 %or.cond, i1 %cmp15, i1 false
  br i1 %or.cond198, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %7)
  %cmp.not.old = icmp sge i32 %sub9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15.old = icmp eq i32 %and, 0
  %or.cond199 = and i1 %cmp15.old, %cmp.not.old
  br i1 %or.cond199, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  %13 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %next_buflen6, align 4
  %sub16 = sub i32 %sub9, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %to_hash.0 = phi i32 [ %sub16, %if.then ], [ %sub9, %land.lhs.true.if.end_crit_edge ], [ %sub9, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_hash.0)
  %tobool.not = icmp eq i32 %to_hash.0, 0
  br i1 %tobool.not, label %if.else74, label %if.then17

if.then17:                                        ; preds = %if.end
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %16 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_buflen6, align 4
  %sub19 = sub i32 %9, %17
  %conv = zext i32 %sub19 to i64
  %call20 = tail call i32 @sg_nents_for_len(ptr noundef %15, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %if.end24

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool25.not = icmp eq i32 %call20, 0
  br i1 %tobool25.not, label %if.end24.if.end35.thread_crit_edge, label %if.then26

if.end24.if.end35.thread_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.thread

if.then26:                                        ; preds = %if.end24
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %call28 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %19, i32 noundef %call20, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end35:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp36 = icmp sgt i32 %call28, 1
  %spec.select = select i1 %cmp36, i32 %call28, i32 0
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end35, %if.end24.if.end35.thread_crit_edge
  %mapped_nents.0195 = phi i32 [ 0, %if.end24.if.end35.thread_crit_edge ], [ %call28, %if.end35 ]
  %20 = phi i32 [ 0, %if.end24.if.end35.thread_crit_edge ], [ %spec.select, %if.end35 ]
  %sh_desc_update_first = getelementptr i8, ptr %1, i32 512
  %sh_desc_update_first_dma = getelementptr i8, ptr %1, i32 1412
  %21 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_update_first_dma, align 4
  %call39 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %20, ptr noundef %sh_desc_update_first, i32 noundef %22)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %24, i32 noundef %call20, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end35.thread
  %src_nents44 = getelementptr inbounds %struct.ahash_edesc, ptr %call39, i32 0, i32 1
  %25 = ptrtoint ptr %src_nents44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call20, ptr %src_nents44, align 4
  %call45 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %call39, ptr noundef %req, i32 noundef %mapped_nents.0195, i32 noundef 0, i32 noundef 0, i32 noundef %to_hash.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.unmap_ctx_crit_edge

if.end43.unmap_ctx_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end48:                                         ; preds = %if.end43
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call39, i32 0, i32 5
  %ctx_len = getelementptr i8, ptr %1, i32 1436
  %26 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctx_len, align 4
  %call50 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %hw_desc, ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body54, label %if.end48.unmap_ctx_crit_edge

if.end48.unmap_ctx_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

do.body54:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_first.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_first, %do.end64)) #11
          to label %if.then60 [label %do.end64], !srcloc !314

if.then60:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i = icmp eq i8 %30, 0
  %31 = lshr i32 %29, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %29, i32 %31
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body54
  %call66 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done_ctx_dst, ptr noundef %req, i32 noundef 1)
  %32 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call66, label %do.end64.cleanup_crit_edge [
    i32 -115, label %do.end64.if.end73_crit_edge
    i32 -16, label %do.end64.if.end73_crit_edge200
  ]

do.end64.if.end73_crit_edge200:                   ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end64.if.end73_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end73:                                         ; preds = %do.end64.if.end73_crit_edge, %do.end64.if.end73_crit_edge200
  %update = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %33 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ahash_update_ctx, ptr %update, align 128
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %finup to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ahash_finup_ctx, ptr %finup, align 8
  %final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ahash_final_ctx, ptr %final, align 4
  br label %cleanup

if.else74:                                        ; preds = %if.end
  %36 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next_buflen6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool75.not = icmp eq i32 %37, 0
  br i1 %tobool75.not, label %if.else74.cleanup_crit_edge, label %if.then76

if.else74.cleanup_crit_edge:                      ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %update77 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %38 = ptrtoint ptr %update77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ahash_update_no_ctx, ptr %update77, align 128
  %finup78 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %finup78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ahash_finup_no_ctx, ptr %finup78, align 8
  %final79 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %final79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ahash_final_no_ctx, ptr %final79, align 4
  %src80 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %41 = ptrtoint ptr %src80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src80, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %buf4, ptr noundef %42, i32 noundef 0, i32 noundef %9, i32 noundef 0) #11
  %43 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next_buflen6, align 4
  %45 = ptrtoint ptr %buflen5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %buflen5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_first.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_first, %cleanup)) #11
          to label %if.then96 [label %cleanup], !srcloc !314

if.then96:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buflen5, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %buf4, i32 noundef %47, i1 noundef zeroext true) #11
  br label %cleanup

unmap_ctx:                                        ; preds = %if.end48.unmap_ctx_crit_edge, %if.end43.unmap_ctx_crit_edge
  %ret.1 = phi i32 [ %call45, %if.end43.unmap_ctx_crit_edge ], [ %call50, %if.end48.unmap_ctx_crit_edge ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %unmap_ctx.if.end.i_crit_edge, label %if.then.i

unmap_ctx.if.end.i_crit_edge:                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %49, i32 noundef %51, i32 noundef 1, i32 noundef 0) #11
  %52 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unmap_ctx.if.end.i_crit_edge
  %53 = ptrtoint ptr %src_nents44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_nents44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %56, i32 noundef %54, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %call39, i32 0, i32 2
  %57 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sec4_sg_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call39, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %60, i32 noundef %58, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %61 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool6.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buflen5, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %62, i32 noundef %64, i32 noundef 1, i32 noundef 0) #11
  %65 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call39) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap_ctx.exit, %if.then96, %if.then76, %if.else74.cleanup_crit_edge, %if.end73, %do.end64.cleanup_crit_edge, %if.then41, %do.end33, %do.end
  %retval.0 = phi i32 [ %call20, %do.end ], [ %ret.1, %ahash_unmap_ctx.exit ], [ -12, %if.then41 ], [ -12, %do.end33 ], [ %call66, %do.end64.cleanup_crit_edge ], [ %call66, %if.end73 ], [ 0, %if.then96 ], [ 0, %if.else74.cleanup_crit_edge ], [ 0, %if.then76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_finup_first(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahash_digest(ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_final_no_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buf4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %4 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen5, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  %sh_desc_digest = getelementptr i8, ptr %1, i32 1024
  %sh_desc_digest_dma = getelementptr i8, ptr %1, i32 1420
  %10 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_desc_digest_dma, align 4
  %call8 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef 0, ptr noundef %sh_desc_digest, i32 noundef %11)
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call8, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end.if.end19_crit_edge, label %if.then11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then11:                                        ; preds = %if.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf4) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then11
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %__ctx.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #11
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.then11
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %buf4, i32 noundef %5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %buf4 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %5, i32 noundef 1, i32 noundef 0) #11
  %19 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call41.i, ptr %__ctx.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end17

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.76) #15
  br label %unmap

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__ctx.i, align 128
  %22 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  %25 = lshr i32 %23, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %23, i32 %25
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %26 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i.i = icmp eq i8 %28, 0
  %29 = lshr i32 %27, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %27, i32 %29
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %30 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %32, 0
  %33 = lshr i32 %31, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %31, i32 %33
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -264241152, i32 16624
  %34 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %37 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %36, i32 %38
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %39
  %40 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc, align 4
  %41 = lshr i32 %39, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %41
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %21, i32 %42
  %43 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %44 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %46 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i.i.i.i = icmp eq i8 %46, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %45, i32 %47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %48 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %48, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %49
  %50 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i23.i.i.i.i, ptr %hw_desc, align 4
  %51 = lshr i32 %49, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %51
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %5, i32 %52
  %53 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %54 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %56 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %56, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %55, i32 %57
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %58
  %59 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i9.i18.i.i.i, ptr %hw_desc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end.if.end19_crit_edge
  %call20 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %hw_desc, ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body24, label %if.end19.unmap_crit_edge

if.end19.unmap_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

do.body24:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final_no_ctx.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_final_no_ctx, %do.end34)) #11
          to label %if.then30 [label %do.end34], !srcloc !314

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i.i73 = icmp eq i8 %62, 0
  %63 = lshr i32 %61, 24
  %retval.0.i.i.i74 = select i1 %tobool.not.i.i.i73, i32 %61, i32 %63
  %and.i.i75 = shl i32 %retval.0.i.i.i74, 2
  %mul.i = and i32 %and.i.i75, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body24
  %call35 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done, ptr noundef %req, i32 noundef 2)
  br label %cleanup

unmap:                                            ; preds = %if.end19.unmap_crit_edge, %do.end
  %src_nents.i = getelementptr inbounds %struct.ahash_edesc, ptr %call8, i32 0, i32 1
  %64 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %unmap.if.end.i_crit_edge, label %if.then.i76

unmap.if.end.i_crit_edge:                         ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i76:                                      ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %66 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %src.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %67, i32 noundef %65, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i76, %unmap.if.end.i_crit_edge
  %sec4_sg_bytes.i = getelementptr inbounds %struct.ahash_edesc, ptr %call8, i32 0, i32 2
  %68 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sec4_sg_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool2.not.i = icmp eq i32 %69, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call8, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %71, i32 noundef %69, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %72 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool6.not.i = icmp eq i32 %73, 0
  br i1 %tobool6.not.i, label %if.end5.i.ahash_unmap.exit_crit_edge, label %if.then7.i

if.end5.i.ahash_unmap.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buflen5, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %73, i32 noundef %75, i32 noundef 1, i32 noundef 0) #11
  %76 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap.exit

ahash_unmap.exit:                                 ; preds = %if.then7.i, %if.end5.i.ahash_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap.exit, %do.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ahash_unmap.exit ], [ %call35, %do.end34 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ahash_edesc_alloc(ptr nocapture noundef %req, i32 noundef %sg_num, ptr nocapture noundef readonly %sh_desc, i32 noundef %sh_desc_dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %flags3 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.i = select i1 %tobool.not, i32 2849, i32 3521
  %mul = shl i32 %sg_num, 4
  %add = add i32 %mul, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #16
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %jrdev = getelementptr i8, ptr %1, i32 1432
  %4 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %edesc6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %edesc6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %edesc6, align 4
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call9.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %sh_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sh_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %9 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %10 = lshr i32 %8, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %8, i32 %10
  %11 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_desc, align 128
  %13 = lshr i32 %12, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i, i32 %12, i32 %13
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.24, i32 0, i32 7)) #15
  %and.i = shl i32 %retval.0.i.i, 16
  %shl.i = and i32 %and.i, 8323072
  %add.i.i.i = or i32 %shl.i, -1333781503
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %14 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i.i = icmp eq i8 %14, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #11
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %15
  %add.ptr.i.i.i = getelementptr %struct.ahash_edesc, ptr %call9.i.i, i32 0, i32 5, i32 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %sh_desc_dma) #11
  %retval.0.i.i.i1.i = select i1 %tobool.not.i.i.i.i, i32 %sh_desc_dma, i32 %16
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.i.i1.i, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i2.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i.i) #11
  %retval.0.i.i3.i = select i1 %tobool.not.i.i2.i, i32 %retval.0.i.i.i.i, i32 %19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %20 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i = lshr i32 %20, 2
  %add.i.i = add nuw nsw i32 %retval.0.i.i3.i, %div14.i.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %retval.0.i23.i.i = select i1 %tobool.not.i.i2.i, i32 %add.i.i, i32 %21
  %22 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i23.i.i, ptr %hw_desc, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ %call9.i.i, %if.end ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahash_edesc_add_src(ptr nocapture noundef readonly %ctx, ptr noundef %edesc, ptr nocapture noundef readonly %req, i32 noundef %nents, i32 noundef %first_sg, i32 noundef %first_bytes, i32 noundef %to_hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nents)
  %cmp = icmp slt i32 %nents, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_sg)
  %tobool.not = icmp eq i32 %first_sg, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %edesc, i32 0, i32 6
  %add = add i32 %first_sg, %nents
  %add.i = shl i32 %add, 4
  %and.i = add i32 %add.i, 48
  %mul = and i32 %and.i, -64
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %add.ptr = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg, i32 %first_sg
  tail call fastcc void @sg_to_sec4_sg_last(ptr noundef %1, i32 noundef %to_hash, ptr noundef %add.ptr)
  %jrdev = getelementptr inbounds %struct.caam_hash_ctx, ptr %ctx, i32 0, i32 17
  %2 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sec4_sg) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %8 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jrdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef -1) #11
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.then
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %sec4_sg, i32 noundef %mul) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %sec4_sg to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i28 = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i28, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #11
  %12 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jrdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %cleanup.thread

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.thread:                                   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sec4_sg_bytes = getelementptr inbounds %struct.ahash_edesc, ptr %edesc, i32 0, i32 2
  %14 = ptrtoint ptr %sec4_sg_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %sec4_sg_bytes, align 8
  %15 = ptrtoint ptr %edesc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call41.i, ptr %edesc, align 128
  br label %if.end9

cleanup:                                          ; preds = %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %16 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jrdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26) #15
  br label %cleanup12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %src8 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %src8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src8, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %cleanup.thread
  %src_dma.0 = phi i32 [ %21, %if.else ], [ %call41.i, %cleanup.thread ]
  %options.1 = phi i32 [ 0, %if.else ], [ 16777216, %cleanup.thread ]
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %edesc, i32 0, i32 5
  %add11 = add i32 %to_hash, %first_bytes
  tail call fastcc void @append_seq_in_ptr(ptr noundef %hw_desc, i32 noundef %src_dma.0, i32 noundef %add11, i32 noundef %options.1)
  br label %cleanup12

cleanup12:                                        ; preds = %if.end9, %cleanup
  %retval.1 = phi i32 [ 0, %if.end9 ], [ -12, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_seq_out_ptr_ctx(ptr nocapture noundef %desc, ptr noundef %jrdev, ptr noundef %state, i32 noundef %ctx_len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_dma_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ctx_len, ptr %ctx_dma_len, align 8
  %caam_ctx = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %caam_ctx) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %jrdev) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jrdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %ctx_dma15 = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %ctx_dma15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ctx_dma15, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef -1) #11
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %jrdev, ptr noundef %caam_ctx, i32 noundef %ctx_len) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %caam_ctx to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %jrdev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %ctx_len, i32 noundef 2, i32 noundef 0) #11
  %ctx_dma = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call41.i, ptr %ctx_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %ctx_dma18 = phi ptr [ %ctx_dma15, %dma_map_single_attrs.exit.thread ], [ %ctx_dma, %dma_map_single_attrs.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.35) #15
  %9 = ptrtoint ptr %ctx_dma18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ctx_dma18, align 4
  br label %return

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_dma, align 4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %14 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i = icmp eq i8 %14, 0
  %15 = lshr i32 %13, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %13, i32 %15
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.37, i32 0, i32 7)) #15
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i.i = icmp eq i8 %18, 0
  %19 = lshr i32 %17, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %17, i32 %19
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.38, i32 0, i32 7)) #15
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %22 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %22, 0
  %23 = lshr i32 %21, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %21, i32 %23
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -130023424, i32 16632
  %24 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %27 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %26, i32 %28
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %29
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i9.i.i.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %31 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i.i4.i.i.i = icmp eq i8 %31, 0
  %32 = lshr i32 %retval.0.i9.i.i.i.i, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i.i, i32 %retval.0.i9.i.i.i.i, i32 %32
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i6.i.i.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i.i, i32 %11, i32 %33
  %34 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %35 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %37 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i.i.i = icmp eq i8 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %36, i32 %38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %39 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %39, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %40
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i23.i.i.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %42 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i.i.i10.i.i.i = icmp eq i8 %42, 0
  %43 = lshr i32 %retval.0.i23.i.i.i.i, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i10.i.i.i, i32 %retval.0.i23.i.i.i.i, i32 %43
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i12.i.i.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %ctx_len) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i10.i.i.i, i32 %ctx_len, i32 %44
  %45 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %47, i32 %49
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %50
  %51 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i9.i18.i.i.i, ptr %desc, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahash_enqueue_req(ptr noundef %jrdev, ptr noundef %cbk, ptr noundef %req, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %edesc2 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 2
  %2 = ptrtoint ptr %edesc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edesc2, align 4
  %ahash_op_done = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 3
  %4 = ptrtoint ptr %ahash_op_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbk, ptr %ahash_op_done, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %engine, align 4
  %call3 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %8, ptr noundef %req) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %3, i32 0, i32 5
  %call4 = tail call i32 @caam_jr_enqueue(ptr noundef %jrdev, ptr noundef %hw_desc, ptr noundef %cbk, ptr noundef %req) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  %9 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %ret.0, label %if.then6 [
    i32 -115, label %if.end.if.end7_crit_edge
    i32 -16, label %if.end.if.end7_crit_edge1
  ]

if.end.if.end7_crit_edge1:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then6.if.end.i_crit_edge, label %if.then.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %11, i32 noundef %13, i32 noundef %dir, i32 noundef 0) #11
  %14 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then6.if.end.i_crit_edge
  %src_nents.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %17 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %jrdev, ptr noundef %18, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sec4_sg_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %22, i32 noundef %20, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %23 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %25 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buflen.i.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef 0) #11
  %27 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef %3) #11
  br label %if.end7

if.end7:                                          ; preds = %ahash_unmap_ctx.exit, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge1
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahash_done_ctx_dst(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ahash_done_switch(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buf4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %next_buflen6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i, align 4
  %8 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buflen5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 8
  %add = add i32 %11, %9
  %sub = add i32 %7, -1
  %and = and i32 %add, %sub
  %12 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %next_buflen6, align 4
  %sub8 = sub i32 %add, %and
  %adata = getelementptr i8, ptr %1, i32 1440
  %13 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adata, align 32
  %and.i = and i32 %14, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050368, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1050368
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050112, i32 %and.i)
  %cmp.i234 = icmp eq i32 %and.i, 1050112
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %7)
  %cmp.not = icmp sge i32 %sub8, %7
  %or.cond = select i1 %cmp.i234, i1 %cmp.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  %or.cond302 = select i1 %or.cond, i1 %cmp14, i1 false
  br i1 %or.cond302, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %7)
  %cmp.not.old = icmp sge i32 %sub8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.old = icmp eq i32 %and, 0
  %or.cond303 = and i1 %cmp14.old, %cmp.not.old
  br i1 %or.cond303, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  %15 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %next_buflen6, align 4
  %sub15 = sub i32 %sub8, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %to_hash.0 = phi i32 [ %sub15, %if.then ], [ %sub8, %land.lhs.true.if.end_crit_edge ], [ %sub8, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_hash.0)
  %tobool.not = icmp eq i32 %to_hash.0, 0
  %16 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_buflen6, align 4
  br i1 %tobool.not, label %if.else100, label %if.then16

if.then16:                                        ; preds = %if.end
  %sub18 = sub i32 %11, %17
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %conv = sext i32 %sub18 to i64
  %call19 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup127

if.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %if.end23.if.end34_crit_edge, label %if.then25

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then25:                                        ; preds = %if.end23
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %21, i32 noundef %call19, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end32, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #15
  br label %cleanup127

if.end34:                                         ; preds = %if.then25.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %mapped_nents.0 = phi i32 [ %call27, %if.then25.if.end34_crit_edge ], [ 0, %if.end23.if.end34_crit_edge ]
  %22 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buflen5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool35.not.not = icmp eq i32 %23, 0
  %add36 = select i1 %tobool35.not.not, i32 1, i32 2
  %add37 = add i32 %mapped_nents.0, 3
  %add.i = add i32 %add37, %add36
  %and.i235 = and i32 %add.i, -4
  %mul = shl i32 %and.i235, 4
  %sh_desc_update = getelementptr i8, ptr %1, i32 256
  %sh_desc_update_dma = getelementptr i8, ptr %1, i32 1408
  %24 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sh_desc_update_dma, align 128
  %call40 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %and.i235, ptr noundef %sh_desc_update, i32 noundef %25)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %27, i32 noundef %call19, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup127

if.end44:                                         ; preds = %if.end34
  %src_nents45 = getelementptr inbounds %struct.ahash_edesc, ptr %call40, i32 0, i32 1
  %28 = ptrtoint ptr %src_nents45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call19, ptr %src_nents45, align 4
  %sec4_sg_bytes46 = getelementptr inbounds %struct.ahash_edesc, ptr %call40, i32 0, i32 2
  %29 = ptrtoint ptr %sec4_sg_bytes46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %sec4_sg_bytes46, align 8
  %ctx_len = getelementptr i8, ptr %1, i32 1436
  %30 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx_len, align 4
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %call40, i32 0, i32 6
  %call48 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %31, ptr noundef %sec4_sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end44.unmap_ctx_crit_edge

if.end44.unmap_ctx_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end51:                                         ; preds = %if.end44
  %add.ptr = getelementptr %struct.ahash_edesc, ptr %call40, i32 0, i32 7, i32 16
  %call54 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end51.unmap_ctx_crit_edge

if.end51.unmap_ctx_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped_nents.0)
  %tobool58.not = icmp eq i32 %mapped_nents.0, 0
  br i1 %tobool58.not, label %if.else64, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src, align 4
  %add.ptr63 = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg, i32 %add36
  tail call fastcc void @sg_to_sec4_sg_last(ptr noundef %33, i32 noundef %sub18, ptr noundef %add.ptr63)
  br label %if.end69

if.else64:                                        ; preds = %if.end57
  %add.ptr67 = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg, i32 %add36
  %add.ptr68 = getelementptr %struct.sec4_sg_entry, ptr %add.ptr67, i32 -1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %34 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #13
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr68, i32 0, i32 3
  %35 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %36, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %if.end69

if.else.i:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %37 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 1073741824, i32 64
  %len.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr68, i32 0, i32 1
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 8
  %or.i = or i32 %retval.0.i.i, %39
  store i32 %or.i, ptr %len.i, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else.i, %if.then.i, %if.then59
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call40, i32 0, i32 5
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sec4_sg) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end69
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i237, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i237:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i236 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i236, label %if.end.i.i, label %if.then.i237.dev_name.exit.i_crit_edge

if.then.i237.dev_name.exit.i_crit_edge:           ; preds = %if.then.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i237
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i237.dev_name.exit.i_crit_edge
  %retval.0.i.i238 = phi ptr [ %43, %if.end.i.i ], [ %41, %if.then.i237.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i238) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %44 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %call40, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #11
  br label %do.end80

dma_map_single_attrs.exit:                        ; preds = %if.end69
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %sec4_sg, i32 noundef %mul) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %sec4_sg to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i239 = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i239, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #11
  %47 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call41.i, ptr %call40, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i241 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i241, label %dma_map_single_attrs.exit.do.end80_crit_edge, label %if.end81

dma_map_single_attrs.exit.do.end80_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

do.end80:                                         ; preds = %dma_map_single_attrs.exit.do.end80_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #15
  br label %unmap_ctx

if.end81:                                         ; preds = %dma_map_single_attrs.exit
  %48 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call40, align 128
  %50 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctx_len, align 4
  %add84 = add i32 %51, %to_hash.0
  %52 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %54 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i.i = icmp eq i8 %54, 0
  %55 = lshr i32 %53, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %53, i32 %55
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %56 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i.i = icmp eq i8 %58, 0
  %59 = lshr i32 %57, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %57, i32 %59
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %60 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %62, 0
  %63 = lshr i32 %61, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %61, i32 %63
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -247463936, i32 16625
  %64 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %67 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %67, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %66, i32 %68
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %69
  %70 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc, align 4
  %71 = lshr i32 %69, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %71
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i
  %72 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %49, i32 %72
  %73 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %74 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %76 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i.i.i.i = icmp eq i8 %76, 0
  %77 = tail call i32 @llvm.bswap.i32(i32 %75) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %75, i32 %77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %78 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %78, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %79 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %79
  %80 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i23.i.i.i.i, ptr %hw_desc, align 4
  %81 = lshr i32 %79, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %81
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i
  %82 = tail call i32 @llvm.bswap.i32(i32 %add84) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add84, i32 %82
  %83 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %84 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %86 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %86, 0
  %87 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %85, i32 %87
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %88
  %89 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i9.i18.i.i.i, ptr %hw_desc, align 4
  %ctx_dma = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %90 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ctx_dma, align 4
  %92 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctx_len, align 4
  %94 = lshr i32 %88, 24
  %retval.0.i.i.i243 = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %94
  %and.i.i244 = and i32 %retval.0.i.i.i243, 127
  %call2.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i244, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.37, i32 0, i32 7)) #15
  %95 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %97 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.i.i246 = icmp eq i8 %97, 0
  %98 = lshr i32 %96, 24
  %retval.0.i.i.i.i247 = select i1 %tobool.not.i.i.i.i246, i32 %96, i32 %98
  %and.i.i.i248 = and i32 %retval.0.i.i.i.i247, 127
  %call2.i.i249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i248, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.38, i32 0, i32 7)) #15
  %99 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %101 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i.i.i.i.i.i.i250 = icmp eq i8 %101, 0
  %102 = lshr i32 %100, 24
  %retval.0.i.i.i.i.i.i.i251 = select i1 %tobool.not.i.i.i.i.i.i.i250, i32 %100, i32 %102
  %and.i.i.i.i.i.i252 = and i32 %retval.0.i.i.i.i.i.i.i251, 127
  %add.ptr.i.i.i.i.i253 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i252
  %retval.0.i.i.i.i.i254 = select i1 %tobool.not.i.i.i.i.i.i.i250, i32 -130023424, i32 16632
  %103 = ptrtoint ptr %add.ptr.i.i.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %retval.0.i.i.i.i.i254, ptr %add.ptr.i.i.i.i.i253, align 4
  %104 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %106 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i6.i.i.i.i255 = icmp eq i8 %106, 0
  %107 = tail call i32 @llvm.bswap.i32(i32 %105) #11
  %retval.0.i7.i.i.i.i256 = select i1 %tobool.not.i6.i.i.i.i255, i32 %105, i32 %107
  %add.i.i.i.i257 = add i32 %retval.0.i7.i.i.i.i256, 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i257) #11
  %retval.0.i9.i.i.i.i258 = select i1 %tobool.not.i6.i.i.i.i255, i32 %add.i.i.i.i257, i32 %108
  %109 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i9.i.i.i.i258, ptr %hw_desc, align 4
  %110 = lshr i32 %108, 24
  %retval.0.i.i.i.i5.i.i.i260 = select i1 %tobool.not.i6.i.i.i.i255, i32 %add.i.i.i.i257, i32 %110
  %and.i.i.i6.i.i.i261 = and i32 %retval.0.i.i.i.i5.i.i.i260, 127
  %add.ptr.i.i7.i.i.i262 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i261
  %111 = tail call i32 @llvm.bswap.i32(i32 %91) #11
  %retval.0.i.i.i.i.i.i263 = select i1 %tobool.not.i6.i.i.i.i255, i32 %91, i32 %111
  %112 = ptrtoint ptr %add.ptr.i.i7.i.i.i262 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %retval.0.i.i.i.i.i.i263, ptr %add.ptr.i.i7.i.i.i262, align 4
  %113 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %115 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i.i.i.i264 = icmp eq i8 %115, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %114) #11
  %retval.0.i.i8.i.i.i265 = select i1 %tobool.not.i.i.i.i.i264, i32 %114, i32 %116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %117 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i266 = lshr i32 %117, 2
  %add.i9.i.i.i267 = add i32 %retval.0.i.i8.i.i.i265, %div14.i.i.i.i266
  %118 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i267) #11
  %retval.0.i23.i.i.i.i268 = select i1 %tobool.not.i.i.i.i.i264, i32 %add.i9.i.i.i267, i32 %118
  %119 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i23.i.i.i.i268, ptr %hw_desc, align 4
  %120 = lshr i32 %118, 24
  %retval.0.i.i.i.i11.i.i.i270 = select i1 %tobool.not.i.i.i.i.i264, i32 %add.i9.i.i.i267, i32 %120
  %and.i.i.i12.i.i.i271 = and i32 %retval.0.i.i.i.i11.i.i.i270, 127
  %add.ptr.i.i13.i.i.i272 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i271
  %121 = tail call i32 @llvm.bswap.i32(i32 %93) #11
  %retval.0.i.i14.i.i.i273 = select i1 %tobool.not.i.i.i.i.i264, i32 %93, i32 %121
  %122 = ptrtoint ptr %add.ptr.i.i13.i.i.i272 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i.i14.i.i.i273, ptr %add.ptr.i.i13.i.i.i272, align 4
  %123 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %125 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i6.i15.i.i.i274 = icmp eq i8 %125, 0
  %126 = tail call i32 @llvm.bswap.i32(i32 %124) #11
  %retval.0.i7.i16.i.i.i275 = select i1 %tobool.not.i6.i15.i.i.i274, i32 %124, i32 %126
  %add.i17.i.i.i276 = add i32 %retval.0.i7.i16.i.i.i275, 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i276) #11
  %retval.0.i9.i18.i.i.i277 = select i1 %tobool.not.i6.i15.i.i.i274, i32 %add.i17.i.i.i276, i32 %127
  %128 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %retval.0.i9.i18.i.i.i277, ptr %hw_desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_ctx.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_ctx, %cleanup)) #11
          to label %if.then92 [label %cleanup], !srcloc !314

if.then92:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %131 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i.i278 = icmp eq i8 %131, 0
  %132 = lshr i32 %130, 24
  %retval.0.i.i.i279 = select i1 %tobool.not.i.i.i278, i32 %130, i32 %132
  %and.i.i280 = shl i32 %retval.0.i.i.i279, 2
  %mul.i = and i32 %and.i.i280, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end81
  %call98 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done_bi, ptr noundef %req, i32 noundef 0)
  br label %cleanup127

if.else100:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool101.not = icmp eq i32 %17, 0
  br i1 %tobool101.not, label %if.else100.cleanup127_crit_edge, label %if.then102

if.else100.cleanup127_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup127

if.then102:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr103 = getelementptr i8, ptr %buf4, i32 %9
  %src104 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %133 = ptrtoint ptr %src104 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %src104, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr103, ptr noundef %134, i32 noundef 0, i32 noundef %11, i32 noundef 0) #11
  %135 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %next_buflen6, align 4
  %137 = ptrtoint ptr %buflen5 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %buflen5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_ctx.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_ctx, %cleanup127)) #11
          to label %if.then120 [label %cleanup127], !srcloc !314

if.then120:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buflen5, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %buf4, i32 noundef %139, i1 noundef zeroext true) #11
  br label %cleanup127

unmap_ctx:                                        ; preds = %do.end80, %if.end51.unmap_ctx_crit_edge, %if.end44.unmap_ctx_crit_edge
  %ret.0.ph = phi i32 [ %call54, %if.end51.unmap_ctx_crit_edge ], [ %call48, %if.end44.unmap_ctx_crit_edge ], [ -12, %do.end80 ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i281 = icmp eq i32 %141, 0
  br i1 %tobool.not.i281, label %unmap_ctx.if.end.i_crit_edge, label %if.then.i282

unmap_ctx.if.end.i_crit_edge:                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i282:                                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %142 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %141, i32 noundef %143, i32 noundef 0, i32 noundef 0) #11
  %144 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i282, %unmap_ctx.if.end.i_crit_edge
  %145 = ptrtoint ptr %src_nents45 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %src_nents45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i.i283 = icmp eq i32 %146, 0
  br i1 %tobool.not.i.i283, label %if.end.i.if.end.i.i284_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i284_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i284

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %148, i32 noundef %146, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i284

if.end.i.i284:                                    ; preds = %if.then.i.i, %if.end.i.if.end.i.i284_crit_edge
  %149 = ptrtoint ptr %sec4_sg_bytes46 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sec4_sg_bytes46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool2.not.i.i = icmp eq i32 %150, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i284.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i284.if.end5.i.i_crit_edge:              ; preds = %if.end.i.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i284
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %call40, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %152, i32 noundef %150, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i284.if.end5.i.i_crit_edge
  %153 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool6.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %buflen5, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %154, i32 noundef %156, i32 noundef 1, i32 noundef 0) #11
  %157 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call40) #11
  br label %cleanup127

cleanup127:                                       ; preds = %ahash_unmap_ctx.exit, %if.then120, %if.then102, %if.else100.cleanup127_crit_edge, %cleanup, %if.then42, %do.end32, %do.end
  %retval.1 = phi i32 [ %ret.0.ph, %ahash_unmap_ctx.exit ], [ %call98, %cleanup ], [ 0, %if.then120 ], [ 0, %if.else100.cleanup127_crit_edge ], [ -12, %do.end32 ], [ -12, %if.then42 ], [ %call19, %do.end ], [ 0, %if.then102 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_finup_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buflen4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %4 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen4, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %13 to i64
  %call6 = tail call i32 @sg_nents_for_len(ptr noundef %11, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %call10 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %15, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end15, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then8.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %mapped_nents.0 = phi i32 [ %call10, %if.then8.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not.not = icmp eq i32 %5, 0
  %add = select i1 %tobool18.not.not, i32 1, i32 2
  %add19 = add i32 %mapped_nents.0, %add
  %sh_desc_fin = getelementptr i8, ptr %1, i32 768
  %sh_desc_fin_dma = getelementptr i8, ptr %1, i32 1416
  %16 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_desc_fin_dma, align 8
  %call20 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %add19, ptr noundef %sh_desc_fin, i32 noundef %17)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %19, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call20, i32 0, i32 5
  %src_nents26 = getelementptr inbounds %struct.ahash_edesc, ptr %call20, i32 0, i32 1
  %20 = ptrtoint ptr %src_nents26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call6, ptr %src_nents26, align 4
  %ctx_len = getelementptr i8, ptr %1, i32 1436
  %21 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx_len, align 4
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %call20, i32 0, i32 6
  %call28 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %22, ptr noundef %sec4_sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.unmap_ctx_crit_edge

if.end24.unmap_ctx_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end31:                                         ; preds = %if.end24
  %add.ptr = getelementptr %struct.ahash_edesc, ptr %call20, i32 0, i32 7, i32 16
  %call34 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.unmap_ctx_crit_edge

if.end31.unmap_ctx_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end37:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctx_len, align 4
  %add39 = add i32 %24, %5
  %25 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbytes, align 8
  %call41 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %call20, ptr noundef %req, i32 noundef %mapped_nents.0, i32 noundef %add, i32 noundef %add39, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end37.unmap_ctx_crit_edge

if.end37.unmap_ctx_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end44:                                         ; preds = %if.end37
  %ctx_dma = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctx_dma, align 4
  %29 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %31 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i = icmp eq i8 %31, 0
  %32 = lshr i32 %30, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %30, i32 %32
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.37, i32 0, i32 7)) #15
  %33 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i.i = icmp eq i8 %35, 0
  %36 = lshr i32 %34, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %34, i32 %36
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.38, i32 0, i32 7)) #15
  %37 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %39, 0
  %40 = lshr i32 %38, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %38, i32 %40
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -130023424, i32 16632
  %41 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %44 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %44, 0
  %45 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %43, i32 %45
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %46
  %47 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc, align 4
  %48 = lshr i32 %46, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %48
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %28, i32 %49
  %50 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %51 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %53 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.i.i.i = icmp eq i8 %53, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %52, i32 %54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %55 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %55, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %56 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %56
  %57 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i23.i.i.i.i, ptr %hw_desc, align 4
  %58 = lshr i32 %56, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %58
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %9, i32 %59
  %60 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %61 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %63 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %63, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %62) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %62, i32 %64
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %65
  %66 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i9.i18.i.i.i, ptr %hw_desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_finup_ctx.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_finup_ctx, %do.end55)) #11
          to label %if.then51 [label %do.end55], !srcloc !314

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %69 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i.i117 = icmp eq i8 %69, 0
  %70 = lshr i32 %68, 24
  %retval.0.i.i.i118 = select i1 %tobool.not.i.i.i117, i32 %68, i32 %70
  %and.i.i119 = shl i32 %retval.0.i.i.i118, 2
  %mul.i = and i32 %and.i.i119, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %if.end44
  %call56 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done_ctx_src, ptr noundef %req, i32 noundef 0)
  br label %cleanup

unmap_ctx:                                        ; preds = %if.end37.unmap_ctx_crit_edge, %if.end31.unmap_ctx_crit_edge, %if.end24.unmap_ctx_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end24.unmap_ctx_crit_edge ], [ %call34, %if.end31.unmap_ctx_crit_edge ], [ %call41, %if.end37.unmap_ctx_crit_edge ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %unmap_ctx.if.end.i_crit_edge, label %if.then.i

unmap_ctx.if.end.i_crit_edge:                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %72, i32 noundef %74, i32 noundef 0, i32 noundef 0) #11
  %75 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unmap_ctx.if.end.i_crit_edge
  %76 = ptrtoint ptr %src_nents26 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %src_nents26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %79, i32 noundef %77, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %call20, i32 0, i32 2
  %80 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sec4_sg_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool2.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call20, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %83, i32 noundef %81, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %84 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool6.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buflen4, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %85, i32 noundef %87, i32 noundef 1, i32 noundef 0) #11
  %88 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call20) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap_ctx.exit, %do.end55, %if.then22, %do.end15, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ %ret.0, %ahash_unmap_ctx.exit ], [ %call56, %do.end55 ], [ -12, %if.then22 ], [ -12, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_final_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buflen4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %4 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen4, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %cond = zext i1 %tobool.not to i32
  %sh_desc_fin = getelementptr i8, ptr %1, i32 768
  %sh_desc_fin_dma = getelementptr i8, ptr %1, i32 1416
  %10 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_desc_fin_dma, align 8
  %call7 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef 4, ptr noundef %sh_desc_fin, i32 noundef %11)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call7, i32 0, i32 5
  %sec4_sg_bytes10 = getelementptr inbounds %struct.ahash_edesc, ptr %call7, i32 0, i32 2
  %12 = ptrtoint ptr %sec4_sg_bytes10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %sec4_sg_bytes10, align 8
  %ctx_len = getelementptr i8, ptr %1, i32 1436
  %13 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx_len, align 4
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %call7, i32 0, i32 6
  %call12 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %14, ptr noundef %sec4_sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.unmap_ctx_crit_edge

if.end.unmap_ctx_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end15:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.ahash_edesc, ptr %call7, i32 0, i32 7, i32 16
  %call18 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.unmap_ctx_crit_edge

if.end15.unmap_ctx_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end21:                                         ; preds = %if.end15
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %15 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26 = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg, i32 %cond
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr26, i32 0, i32 3
  %16 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %17, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %sg_to_sec4_set_last.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 1073741824, i32 64
  %len.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg, i32 %cond, i32 1
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 8
  %or.i = or i32 %retval.0.i.i, %20
  store i32 %or.i, ptr %len.i, align 8
  br label %sg_to_sec4_set_last.exit

sg_to_sec4_set_last.exit:                         ; preds = %if.else.i, %if.then.i
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sec4_sg) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %sg_to_sec4_set_last.exit
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i99, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i99:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i98 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i98, label %if.end.i.i, label %if.then.i99.dev_name.exit.i_crit_edge

if.then.i99.dev_name.exit.i_crit_edge:            ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i99.dev_name.exit.i_crit_edge
  %retval.0.i.i100 = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i99.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i100) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %25 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %call7, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #11
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %sg_to_sec4_set_last.exit
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %sec4_sg, i32 noundef 64) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %sec4_sg to i32
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i101 = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i101, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  %28 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call41.i, ptr %call7, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end34

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #15
  br label %unmap_ctx

if.end34:                                         ; preds = %dma_map_single_attrs.exit
  %29 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7, align 128
  %31 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctx_len, align 4
  %add37 = add i32 %32, %5
  %33 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i = icmp eq i8 %35, 0
  %36 = lshr i32 %34, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %34, i32 %36
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %37 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i.i.i = icmp eq i8 %39, 0
  %40 = lshr i32 %38, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %38, i32 %40
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %41 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %43 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %43, 0
  %44 = lshr i32 %42, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %42, i32 %44
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -247463936, i32 16625
  %45 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %47, i32 %49
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %50
  %51 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc, align 4
  %52 = lshr i32 %50, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %52
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %30, i32 %53
  %54 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %55 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %57 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i.i.i.i = icmp eq i8 %57, 0
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %56, i32 %58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %59 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %59, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %60
  %61 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i23.i.i.i.i, ptr %hw_desc, align 4
  %62 = lshr i32 %60, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %62
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %add37) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add37, i32 %63
  %64 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %65 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %67 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %67, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %66, i32 %68
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %69
  %70 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i9.i18.i.i.i, ptr %hw_desc, align 4
  %ctx_dma = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ctx_dma, align 4
  %73 = lshr i32 %69, 24
  %retval.0.i.i.i104 = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %73
  %and.i.i105 = and i32 %retval.0.i.i.i104, 127
  %call2.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i105, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.37, i32 0, i32 7)) #15
  %74 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %76 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i.i.i107 = icmp eq i8 %76, 0
  %77 = lshr i32 %75, 24
  %retval.0.i.i.i.i108 = select i1 %tobool.not.i.i.i.i107, i32 %75, i32 %77
  %and.i.i.i109 = and i32 %retval.0.i.i.i.i108, 127
  %call2.i.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i109, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.38, i32 0, i32 7)) #15
  %78 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %80 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i.i.i.i.i111 = icmp eq i8 %80, 0
  %81 = lshr i32 %79, 24
  %retval.0.i.i.i.i.i.i.i112 = select i1 %tobool.not.i.i.i.i.i.i.i111, i32 %79, i32 %81
  %and.i.i.i.i.i.i113 = and i32 %retval.0.i.i.i.i.i.i.i112, 127
  %add.ptr.i.i.i.i.i114 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i113
  %retval.0.i.i.i.i.i115 = select i1 %tobool.not.i.i.i.i.i.i.i111, i32 -130023424, i32 16632
  %82 = ptrtoint ptr %add.ptr.i.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i.i.i.i115, ptr %add.ptr.i.i.i.i.i114, align 4
  %83 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %85 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i6.i.i.i.i116 = icmp eq i8 %85, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %84) #11
  %retval.0.i7.i.i.i.i117 = select i1 %tobool.not.i6.i.i.i.i116, i32 %84, i32 %86
  %add.i.i.i.i118 = add i32 %retval.0.i7.i.i.i.i117, 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i118) #11
  %retval.0.i9.i.i.i.i119 = select i1 %tobool.not.i6.i.i.i.i116, i32 %add.i.i.i.i118, i32 %87
  %88 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i9.i.i.i.i119, ptr %hw_desc, align 4
  %89 = lshr i32 %87, 24
  %retval.0.i.i.i.i5.i.i.i121 = select i1 %tobool.not.i6.i.i.i.i116, i32 %add.i.i.i.i118, i32 %89
  %and.i.i.i6.i.i.i122 = and i32 %retval.0.i.i.i.i5.i.i.i121, 127
  %add.ptr.i.i7.i.i.i123 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i122
  %90 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %retval.0.i.i.i.i.i.i124 = select i1 %tobool.not.i6.i.i.i.i116, i32 %72, i32 %90
  %91 = ptrtoint ptr %add.ptr.i.i7.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %retval.0.i.i.i.i.i.i124, ptr %add.ptr.i.i7.i.i.i123, align 4
  %92 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %94 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i.i.i125 = icmp eq i8 %94, 0
  %95 = tail call i32 @llvm.bswap.i32(i32 %93) #11
  %retval.0.i.i8.i.i.i126 = select i1 %tobool.not.i.i.i.i.i125, i32 %93, i32 %95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %96 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i127 = lshr i32 %96, 2
  %add.i9.i.i.i128 = add i32 %retval.0.i.i8.i.i.i126, %div14.i.i.i.i127
  %97 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i128) #11
  %retval.0.i23.i.i.i.i129 = select i1 %tobool.not.i.i.i.i.i125, i32 %add.i9.i.i.i128, i32 %97
  %98 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i23.i.i.i.i129, ptr %hw_desc, align 4
  %99 = lshr i32 %97, 24
  %retval.0.i.i.i.i11.i.i.i131 = select i1 %tobool.not.i.i.i.i.i125, i32 %add.i9.i.i.i128, i32 %99
  %and.i.i.i12.i.i.i132 = and i32 %retval.0.i.i.i.i11.i.i.i131, 127
  %add.ptr.i.i13.i.i.i133 = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i132
  %100 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %retval.0.i.i14.i.i.i134 = select i1 %tobool.not.i.i.i.i.i125, i32 %9, i32 %100
  %101 = ptrtoint ptr %add.ptr.i.i13.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i.i14.i.i.i134, ptr %add.ptr.i.i13.i.i.i133, align 4
  %102 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %104 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i6.i15.i.i.i135 = icmp eq i8 %104, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %103) #11
  %retval.0.i7.i16.i.i.i136 = select i1 %tobool.not.i6.i15.i.i.i135, i32 %103, i32 %105
  %add.i17.i.i.i137 = add i32 %retval.0.i7.i16.i.i.i136, 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i137) #11
  %retval.0.i9.i18.i.i.i138 = select i1 %tobool.not.i6.i15.i.i.i135, i32 %add.i17.i.i.i137, i32 %106
  %107 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i9.i18.i.i.i138, ptr %hw_desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final_ctx.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_final_ctx, %do.end48)) #11
          to label %if.then44 [label %do.end48], !srcloc !314

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %110 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i.i139 = icmp eq i8 %110, 0
  %111 = lshr i32 %109, 24
  %retval.0.i.i.i140 = select i1 %tobool.not.i.i.i139, i32 %109, i32 %111
  %and.i.i141 = shl i32 %retval.0.i.i.i140, 2
  %mul.i = and i32 %and.i.i141, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %if.end34
  %call49 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done_ctx_src, ptr noundef %req, i32 noundef 0)
  br label %cleanup

unmap_ctx:                                        ; preds = %do.end, %if.end15.unmap_ctx_crit_edge, %if.end.unmap_ctx_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end.unmap_ctx_crit_edge ], [ %call18, %if.end15.unmap_ctx_crit_edge ], [ -12, %do.end ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %112 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i142 = icmp eq i32 %113, 0
  br i1 %tobool.not.i142, label %unmap_ctx.if.end.i_crit_edge, label %if.then.i143

unmap_ctx.if.end.i_crit_edge:                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i143:                                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %114 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %113, i32 noundef %115, i32 noundef 0, i32 noundef 0) #11
  %116 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i143, %unmap_ctx.if.end.i_crit_edge
  %src_nents.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %call7, i32 0, i32 1
  %117 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i144 = icmp eq i32 %118, 0
  br i1 %tobool.not.i.i144, label %if.end.i.if.end.i.i145_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i145_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i145

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %119 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %120, i32 noundef %118, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i145

if.end.i.i145:                                    ; preds = %if.then.i.i, %if.end.i.if.end.i.i145_crit_edge
  %121 = ptrtoint ptr %sec4_sg_bytes10 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sec4_sg_bytes10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool2.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i145.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i145.if.end5.i.i_crit_edge:              ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %call7, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %124, i32 noundef %122, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i145.if.end5.i.i_crit_edge
  %125 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool6.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buflen4, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %126, i32 noundef %128, i32 noundef 1, i32 noundef 0) #11
  %129 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap_ctx.exit, %do.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ahash_unmap_ctx.exit ], [ %call49, %do.end48 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update_no_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buf4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %buflen5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %next_buflen6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 0, i32 0, i32 1
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i, align 4
  %8 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buflen5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 8
  %add = add i32 %11, %9
  %sub = add i32 %7, -1
  %and = and i32 %add, %sub
  %12 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %next_buflen6, align 4
  %sub8 = sub i32 %add, %and
  %adata = getelementptr i8, ptr %1, i32 1440
  %13 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adata, align 32
  %and.i = and i32 %14, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050368, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1050368
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050112, i32 %and.i)
  %cmp.i221 = icmp eq i32 %and.i, 1050112
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %7)
  %cmp.not = icmp sge i32 %sub8, %7
  %or.cond = select i1 %cmp.i221, i1 %cmp.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  %or.cond249 = select i1 %or.cond, i1 %cmp14, i1 false
  br i1 %or.cond249, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %7)
  %cmp.not.old = icmp sge i32 %sub8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.old = icmp eq i32 %and, 0
  %or.cond250 = and i1 %cmp14.old, %cmp.not.old
  br i1 %or.cond250, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge
  %15 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %next_buflen6, align 4
  %sub15 = sub i32 %sub8, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %to_hash.0 = phi i32 [ %sub15, %if.then ], [ %sub8, %land.lhs.true.if.end_crit_edge ], [ %sub8, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_hash.0)
  %tobool.not = icmp eq i32 %to_hash.0, 0
  %16 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_buflen6, align 4
  br i1 %tobool.not, label %if.else91, label %if.then16

if.then16:                                        ; preds = %if.end
  %sub18 = sub i32 %11, %17
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %conv = sext i32 %sub18 to i64
  %call19 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup118

if.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %if.end23.if.end34_crit_edge, label %if.then25

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then25:                                        ; preds = %if.end23
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %21, i32 noundef %call19, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end32, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #15
  br label %cleanup118

if.end34:                                         ; preds = %if.then25.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %mapped_nents.0 = phi i32 [ %call27, %if.then25.if.end34_crit_edge ], [ 0, %if.end23.if.end34_crit_edge ]
  %add.i = add i32 %mapped_nents.0, 4
  %and.i222 = and i32 %add.i, -4
  %mul = shl i32 %and.i222, 4
  %sh_desc_update_first = getelementptr i8, ptr %1, i32 512
  %sh_desc_update_first_dma = getelementptr i8, ptr %1, i32 1412
  %22 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sh_desc_update_first_dma, align 4
  %call38 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %and.i222, ptr noundef %sh_desc_update_first, i32 noundef %23)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %25, i32 noundef %call19, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup118

if.end42:                                         ; preds = %if.end34
  %src_nents43 = getelementptr inbounds %struct.ahash_edesc, ptr %call38, i32 0, i32 1
  %26 = ptrtoint ptr %src_nents43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call19, ptr %src_nents43, align 4
  %sec4_sg_bytes44 = getelementptr inbounds %struct.ahash_edesc, ptr %call38, i32 0, i32 2
  %27 = ptrtoint ptr %sec4_sg_bytes44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %sec4_sg_bytes44, align 8
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %call38, i32 0, i32 6
  %call46 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %3, ptr noundef %sec4_sg, ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end42.unmap_ctx_crit_edge

if.end42.unmap_ctx_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

if.end49:                                         ; preds = %if.end42
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 4
  %add.ptr = getelementptr %struct.ahash_edesc, ptr %call38, i32 0, i32 7, i32 16
  tail call fastcc void @sg_to_sec4_sg_last(ptr noundef %29, i32 noundef %sub18, ptr noundef %add.ptr)
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call38, i32 0, i32 5
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sec4_sg) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end49
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %33, %if.end.i.i ], [ %31, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %34 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %call38, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #11
  br label %do.end63

dma_map_single_attrs.exit:                        ; preds = %if.end49
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %sec4_sg, i32 noundef %mul) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %sec4_sg to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i223 = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i223, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #11
  %37 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i, ptr %call38, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i225 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i225, label %dma_map_single_attrs.exit.do.end63_crit_edge, label %if.end64

dma_map_single_attrs.exit.do.end63_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.end63:                                         ; preds = %dma_map_single_attrs.exit.do.end63_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #15
  br label %unmap_ctx

if.end64:                                         ; preds = %dma_map_single_attrs.exit
  %38 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call38, align 128
  %40 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %42 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i.i = icmp eq i8 %42, 0
  %43 = lshr i32 %41, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %41, i32 %43
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %44 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %46 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i.i.i = icmp eq i8 %46, 0
  %47 = lshr i32 %45, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %45, i32 %47
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %48 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %50 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %50, 0
  %51 = lshr i32 %49, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %49, i32 %51
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -247463936, i32 16625
  %52 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %55 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %54, i32 %56
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %57
  %58 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc, align 4
  %59 = lshr i32 %57, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %59
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i6.i.i.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %39, i32 %60
  %61 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %62 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i.i.i.i = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %63, i32 %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %66 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %66, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %67
  %68 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i23.i.i.i.i, ptr %hw_desc, align 4
  %69 = lshr i32 %67, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add.i9.i.i.i, i32 %69
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %hw_desc, i32 %and.i.i.i12.i.i.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %to_hash.0) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %to_hash.0, i32 %70
  %71 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %72 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %74 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %74, 0
  %75 = tail call i32 @llvm.bswap.i32(i32 %73) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %73, i32 %75
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %76
  %77 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i9.i18.i.i.i, ptr %hw_desc, align 4
  %ctx_len = getelementptr i8, ptr %1, i32 1436
  %78 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ctx_len, align 4
  %call66 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %hw_desc, ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body70, label %if.end64.unmap_ctx_crit_edge

if.end64.unmap_ctx_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_ctx

do.body70:                                        ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_no_ctx.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_no_ctx, %do.end80)) #11
          to label %if.then76 [label %do.end80], !srcloc !314

if.then76:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %82 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i.i226 = icmp eq i8 %82, 0
  %83 = lshr i32 %81, 24
  %retval.0.i.i.i227 = select i1 %tobool.not.i.i.i226, i32 %81, i32 %83
  %and.i.i228 = shl i32 %retval.0.i.i.i227, 2
  %mul.i = and i32 %and.i.i228, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body70
  %call82 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done_ctx_dst, ptr noundef %req, i32 noundef 1)
  %84 = zext i32 %call82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call82, label %do.end80.cleanup118_crit_edge [
    i32 -115, label %do.end80.cleanup_crit_edge
    i32 -16, label %do.end80.cleanup_crit_edge251
  ]

do.end80.cleanup_crit_edge251:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end80.cleanup118_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup118

cleanup:                                          ; preds = %do.end80.cleanup_crit_edge, %do.end80.cleanup_crit_edge251
  %update = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5
  %85 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ahash_update_ctx, ptr %update, align 128
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 1
  %86 = ptrtoint ptr %finup to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ahash_finup_ctx, ptr %finup, align 8
  %final = getelementptr inbounds %struct.ahash_request, ptr %req, i32 5, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %final to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @ahash_final_ctx, ptr %final, align 4
  br label %cleanup118

if.else91:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool92.not = icmp eq i32 %17, 0
  br i1 %tobool92.not, label %if.else91.cleanup118_crit_edge, label %if.then93

if.else91.cleanup118_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup118

if.then93:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr94 = getelementptr i8, ptr %buf4, i32 %9
  %src95 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %88 = ptrtoint ptr %src95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src95, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr94, ptr noundef %89, i32 noundef 0, i32 noundef %11, i32 noundef 0) #11
  %90 = ptrtoint ptr %next_buflen6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %next_buflen6, align 4
  %92 = ptrtoint ptr %buflen5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %buflen5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_update_no_ctx.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_update_no_ctx, %cleanup118)) #11
          to label %if.then111 [label %cleanup118], !srcloc !314

if.then111:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buflen5, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.69, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %buf4, i32 noundef %94, i1 noundef zeroext true) #11
  br label %cleanup118

unmap_ctx:                                        ; preds = %if.end64.unmap_ctx_crit_edge, %do.end63, %if.end42.unmap_ctx_crit_edge
  %ret.0.ph = phi i32 [ %call66, %if.end64.unmap_ctx_crit_edge ], [ %call46, %if.end42.unmap_ctx_crit_edge ], [ -12, %do.end63 ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %unmap_ctx.if.end.i_crit_edge, label %if.then.i229

unmap_ctx.if.end.i_crit_edge:                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i229:                                     ; preds = %unmap_ctx
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %96, i32 noundef %98, i32 noundef 1, i32 noundef 0) #11
  %99 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i229, %unmap_ctx.if.end.i_crit_edge
  %100 = ptrtoint ptr %src_nents43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %src_nents43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i230 = icmp eq i32 %101, 0
  br i1 %tobool.not.i.i230, label %if.end.i.if.end.i.i231_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i231_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i231

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %103, i32 noundef %101, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i231

if.end.i.i231:                                    ; preds = %if.then.i.i, %if.end.i.if.end.i.i231_crit_edge
  %104 = ptrtoint ptr %sec4_sg_bytes44 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sec4_sg_bytes44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool2.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i231.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i231.if.end5.i.i_crit_edge:              ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %call38, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %107, i32 noundef %105, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i231.if.end5.i.i_crit_edge
  %108 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool6.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %buflen5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buflen5, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %109, i32 noundef %111, i32 noundef 1, i32 noundef 0) #11
  %112 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call38) #11
  br label %cleanup118

cleanup118:                                       ; preds = %ahash_unmap_ctx.exit, %if.then111, %if.then93, %if.else91.cleanup118_crit_edge, %cleanup, %do.end80.cleanup118_crit_edge, %if.then40, %do.end32, %do.end
  %retval.1 = phi i32 [ %ret.0.ph, %ahash_unmap_ctx.exit ], [ %call82, %cleanup ], [ 0, %if.then111 ], [ 0, %if.else91.cleanup118_crit_edge ], [ %call82, %do.end80.cleanup118_crit_edge ], [ -12, %do.end32 ], [ -12, %if.then40 ], [ %call19, %do.end ], [ 0, %if.then93 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_finup_no_ctx(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 8
  %buflen4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3
  %4 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen4, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes, align 8
  %conv = zext i32 %13 to i64
  %call6 = tail call i32 @sg_nents_for_len(ptr noundef %11, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %call10 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %15, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end15, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then8.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %mapped_nents.0 = phi i32 [ %call10, %if.then8.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %add = add i32 %mapped_nents.0, 2
  %sh_desc_digest = getelementptr i8, ptr %1, i32 1024
  %sh_desc_digest_dma = getelementptr i8, ptr %1, i32 1420
  %16 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_desc_digest_dma, align 4
  %call19 = tail call fastcc ptr @ahash_edesc_alloc(ptr noundef %req, i32 noundef %add, ptr noundef %sh_desc_digest, i32 noundef %17)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %19, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %mul = shl i32 %add, 4
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 5
  %src_nents25 = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 1
  %20 = ptrtoint ptr %src_nents25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call6, ptr %src_nents25, align 4
  %sec4_sg_bytes26 = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 2
  %21 = ptrtoint ptr %sec4_sg_bytes26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %sec4_sg_bytes26, align 8
  %sec4_sg = getelementptr inbounds %struct.ahash_edesc, ptr %call19, i32 0, i32 6
  %call28 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %3, ptr noundef %sec4_sg, ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.unmap_crit_edge

if.end23.unmap_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

if.end31:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 8
  %call33 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %call19, ptr noundef %req, i32 noundef %mapped_nents.0, i32 noundef 1, i32 noundef %5, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #15
  br label %unmap

if.end39:                                         ; preds = %if.end31
  %call40 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %hw_desc, ptr noundef %3, ptr noundef %__ctx.i, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body44, label %if.end39.unmap_crit_edge

if.end39.unmap_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap

do.body44:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_finup_no_ctx.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_finup_no_ctx, %do.end54)) #11
          to label %if.then50 [label %do.end54], !srcloc !314

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i = icmp eq i8 %26, 0
  %27 = lshr i32 %25, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %25, i32 %27
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body44
  %call55 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %3, ptr noundef nonnull @ahash_done, ptr noundef %req, i32 noundef 2)
  br label %cleanup

unmap:                                            ; preds = %if.end39.unmap_crit_edge, %do.end38, %if.end23.unmap_crit_edge
  %28 = ptrtoint ptr %src_nents25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_nents25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %unmap.if.end.i_crit_edge, label %if.then.i

unmap.if.end.i_crit_edge:                         ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %31, i32 noundef %29, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unmap.if.end.i_crit_edge
  %32 = ptrtoint ptr %sec4_sg_bytes26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sec4_sg_bytes26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call19, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %35, i32 noundef %33, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %36 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool6.not.i = icmp eq i32 %37, 0
  br i1 %tobool6.not.i, label %if.end5.i.ahash_unmap.exit_crit_edge, label %if.then7.i

if.end5.i.ahash_unmap.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %buflen4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buflen4, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #11
  %40 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap.exit

ahash_unmap.exit:                                 ; preds = %if.then7.i, %if.end5.i.ahash_unmap.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap.exit, %do.end54, %if.then21, %do.end15, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ -12, %ahash_unmap.exit ], [ %call55, %do.end54 ], [ -12, %if.then21 ], [ -12, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_to_sec4_sg_last(ptr noundef %sg, i32 noundef %len, ptr noundef %sec4_sg_ptr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not1.i = icmp eq i32 %len, 0
  br i1 %tobool.not1.i, label %entry.sg_to_sec4_sg.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sg_to_sec4_sg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_to_sec4_sg.exit

while.body.i:                                     ; preds = %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg.addr.06.i = phi ptr [ %call.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sg, %entry.while.body.i_crit_edge ]
  %len.addr.05.i = phi i32 [ %sub.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %sec4_sg_ptr.addr.02.i = phi ptr [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sec4_sg_ptr, %entry.while.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length.i, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %len.addr.05.i) #11
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 3
  %3 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_address.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %5 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i = zext i32 %4 to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i) #11
  %7 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sec4_sg_ptr.addr.02.i, align 8
  %format_offset.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 3
  %8 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %format_offset.i.i.i.i, align 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %len1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %11 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len1.i.i.i.i, align 8
  %bpid1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %12 = ptrtoint ptr %bpid1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bpid1.i.i.i.i, align 4
  %14 = and i16 %13, 192
  store i16 %14, ptr %bpid1.i.i.i.i, align 4
  %15 = and i16 %9, 64
  %16 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %format_offset.i.i.i.i, align 2
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %17 = load i8, ptr @caam_imx, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %4, i32 %19
  %conv.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i, 32
  br label %cpu_to_caam_dma64.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i.i = zext i32 %4 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i4.i.i.i = icmp eq i8 %20, 0
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i) #11
  %retval.0.i5.i.i.i = select i1 %tobool.not.i4.i.i.i, i64 %conv1.i.i.i, i64 %21
  br label %cpu_to_caam_dma64.exit.i.i

cpu_to_caam_dma64.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i1.i.i = phi i64 [ %shl.i.i.i, %if.then.i.i.i ], [ %retval.0.i5.i.i.i, %if.end.i.i.i ]
  %22 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %retval.0.i1.i.i, ptr %sec4_sg_ptr.addr.02.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i2.i.i = icmp eq i8 %23, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %retval.0.i3.i.i = select i1 %tobool.not.i2.i.i, i32 %2, i32 %24
  %len2.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %25 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i3.i.i, ptr %len2.i.i, align 8
  %bpid_offset.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %26 = ptrtoint ptr %bpid_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bpid_offset.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cpu_to_caam_dma64.exit.i.i, %if.then.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sg_to_sec4_sg_last, %dma_to_sec4_sg_one.exit.i)) #11
          to label %if.then9.i.i [label %dma_to_sec4_sg_one.exit.i], !srcloc !314

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg_ptr.addr.02.i, i32 noundef 16, i1 noundef zeroext true) #11
  br label %dma_to_sec4_sg_one.exit.i

dma_to_sec4_sg_one.exit.i:                        ; preds = %if.then9.i.i, %do.body.i.i
  %incdec.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.addr.06.i) #11
  %sub.i = sub i32 %len.addr.05.i, %2
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, label %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge

dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sg_to_sec4_sg.exit

sg_to_sec4_sg.exit:                               ; preds = %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, %entry.sg_to_sec4_sg.exit_crit_edge
  %sec4_sg_ptr.addr.0.lcssa.i = phi ptr [ %sec4_sg_ptr, %entry.sg_to_sec4_sg.exit_crit_edge ], [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %27 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i1 = icmp eq i8 %27, 0
  br i1 %tobool.not.i1, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %29, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %sg_to_sec4_set_last.exit

if.else.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i2 = icmp eq i8 %30, 0
  %retval.0.i.i = select i1 %tobool.not.i.i2, i32 1073741824, i32 64
  %len.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 8
  %or.i = or i32 %retval.0.i.i, %32
  store i32 %or.i, ptr %len.i, align 8
  br label %sg_to_sec4_set_last.exit

sg_to_sec4_set_last.exit:                         ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_seq_in_ptr(ptr nocapture noundef %desc, i32 noundef %ptr, i32 noundef %len, i32 noundef %options) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  %3 = lshr i32 %1, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %1, i32 %3
  %and.i = and i32 %retval.0.i.i, 127
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %5, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %5, i32 %7
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %or.i = or i32 %options, -264241152
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %9, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %9, i32 %11
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %16 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i6.i.i.i = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %15, i32 %17
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #11
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %18
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  %and.i5.i = and i32 %options, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i.i5, label %if.then.i.i, label %entry.append_seq_in_ptr_extlen.exit_crit_edge

entry.append_seq_in_ptr_extlen.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %append_seq_in_ptr_extlen.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i.i4.i.i = icmp eq i8 %20, 0
  %21 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i5.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %retval.0.i9.i.i.i, i32 %21
  %and.i.i.i6.i.i = and i32 %retval.0.i.i.i.i5.i.i, 127
  %add.ptr.i.i7.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i6.i.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %ptr) #11
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %ptr, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i7.i.i, align 4
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i.i = icmp eq i8 %26, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %retval.0.i.i8.i.i = select i1 %tobool.not.i.i.i.i, i32 %25, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %28 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %28, 2
  %add.i9.i.i = add i32 %retval.0.i.i8.i.i, %div14.i.i.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i) #11
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i9.i.i, i32 %29
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i23.i.i.i, ptr %desc, align 4
  br label %append_seq_in_ptr_extlen.exit

append_seq_in_ptr_extlen.exit:                    ; preds = %if.then.i.i, %entry.append_seq_in_ptr_extlen.exit_crit_edge
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i.i10.i.i = icmp eq i8 %33, 0
  %34 = lshr i32 %32, 24
  %retval.0.i.i.i.i11.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %32, i32 %34
  %and.i.i.i12.i.i = and i32 %retval.0.i.i.i.i11.i.i, 127
  %add.ptr.i.i13.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i12.i.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %len) #11
  %retval.0.i.i14.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %len, i32 %35
  %36 = ptrtoint ptr %add.ptr.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i14.i.i, ptr %add.ptr.i.i13.i.i, align 4
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i6.i15.i.i = icmp eq i8 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %retval.0.i7.i16.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %38, i32 %40
  %add.i17.i.i = add i32 %retval.0.i7.i16.i.i, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i) #11
  %retval.0.i9.i18.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %add.i17.i.i, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i9.i18.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

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
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahash_done_switch(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef %dir) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 6
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -128
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_switch.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_switch, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahash_done_switch.__UNIQUE_ID_ddebug536, ptr noundef %jrdev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 639, i32 noundef %err) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %edesc9 = getelementptr inbounds %struct.ahash_request, ptr %context, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %edesc9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edesc9, align 4
  %bklog = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bklog, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool12.not = icmp eq i32 %err, 0
  br i1 %tobool12.not, label %do.end.if.end15_crit_edge, label %if.then13

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %err, i1 noundef zeroext false) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end.if.end15_crit_edge
  %ecode.0 = phi i32 [ %call14, %if.then13 ], [ 0, %do.end.if.end15_crit_edge ]
  %ctx_len = getelementptr i8, ptr %3, i32 1436
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %13, i32 noundef %15, i32 noundef %dir, i32 noundef 0) #11
  %16 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %src_nents.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 2
  %19 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %jrdev, ptr noundef %20, i32 noundef %18, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sec4_sg_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %24, i32 noundef %22, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %25 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 3
  %27 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buflen.i.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #11
  %29 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  tail call void @kfree(ptr noundef %9) #11
  %buf = getelementptr inbounds %struct.ahash_request, ptr %context, i32 2
  %src = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 2
  %30 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 1
  %32 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nbytes, align 8
  %next_buflen = getelementptr inbounds %struct.ahash_request, ptr %context, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %next_buflen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next_buflen, align 4
  %sub = sub i32 %33, %35
  tail call void @scatterwalk_map_and_copy(ptr noundef %buf, ptr noundef %31, i32 noundef %sub, i32 noundef %35, i32 noundef 0) #11
  %36 = ptrtoint ptr %next_buflen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next_buflen, align 4
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %context, i32 3
  %38 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %buflen, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_switch.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_switch, %do.body39)) #11
          to label %if.then32 [label %do.body39], !srcloc !314

if.then32:                                        ; preds = %ahash_unmap_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buflen, align 128
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %buf, i32 noundef %40, i1 noundef zeroext true) #11
  br label %do.body39

do.body39:                                        ; preds = %if.then32, %ahash_unmap_ctx.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_switch.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_switch, %do.end58)) #11
          to label %if.then53 [label %do.end58], !srcloc !314

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %caam_ctx = getelementptr inbounds %struct.ahash_request, ptr %context, i32 4
  %41 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctx_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %caam_ctx, i32 noundef %42, i1 noundef zeroext true) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body39
  %result = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 3
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %result, align 32
  %tobool59.not = icmp eq ptr %44, null
  br i1 %tobool59.not, label %do.end58.if.end80_crit_edge, label %do.body61

do.end58.if.end80_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

do.body61:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_switch.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_switch, %if.end80)) #11
          to label %if.then75 [label %if.end80], !srcloc !314

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %result, align 32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %46, i32 noundef %7, i1 noundef zeroext true) #11
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %do.body61, %do.end58.if.end80_crit_edge
  br i1 %tobool10.not, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 1
  %47 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %complete, align 8
  tail call void %48(ptr noundef %context, i32 noundef %ecode.0) #11
  br label %if.end84

if.else:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %50, ptr noundef %context, i32 noundef %ecode.0) #11
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %jrdev, ptr noundef %state, i32 noundef %ctx_len, ptr noundef %sec4_sg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_dma_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ctx_len, ptr %ctx_dma_len, align 8
  %caam_ctx = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %caam_ctx) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %jrdev) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jrdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %ctx_dma5 = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %ctx_dma5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ctx_dma5, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef -1) #11
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %jrdev, ptr noundef %caam_ctx, i32 noundef %ctx_len) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %caam_ctx to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %jrdev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %ctx_len, i32 noundef 0, i32 noundef 0) #11
  %ctx_dma = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call41.i, ptr %ctx_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %ctx_dma8 = phi ptr [ %ctx_dma5, %dma_map_single_attrs.exit.thread ], [ %ctx_dma, %dma_map_single_attrs.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.35) #15
  %9 = ptrtoint ptr %ctx_dma8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ctx_dma8, align 4
  br label %return

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %10 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %12 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i1

if.then.i1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = zext i32 %11 to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #11
  %14 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sec4_sg, align 8
  %format_offset.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 3
  %15 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %format_offset.i.i.i, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %ctx_len) #11
  %len1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 1
  %18 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len1.i.i.i, align 8
  %bpid1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 2
  %19 = ptrtoint ptr %bpid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bpid1.i.i.i, align 4
  %21 = and i16 %20, 192
  store i16 %21, ptr %bpid1.i.i.i, align 4
  %22 = and i16 %16, 64
  %23 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %format_offset.i.i.i, align 2
  br label %do.body.i

if.else.i:                                        ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %24 = load i8, ptr @caam_imx, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i2 = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i3, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %11, i32 %26
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %cpu_to_caam_dma64.exit.i

if.end.i.i3:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i = zext i32 %11 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %27 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i4.i.i = icmp eq i8 %27, 0
  %28 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i) #11
  %retval.0.i5.i.i = select i1 %tobool.not.i4.i.i, i64 %conv1.i.i, i64 %28
  br label %cpu_to_caam_dma64.exit.i

cpu_to_caam_dma64.exit.i:                         ; preds = %if.end.i.i3, %if.then.i.i
  %retval.0.i1.i = phi i64 [ %shl.i.i, %if.then.i.i ], [ %retval.0.i5.i.i, %if.end.i.i3 ]
  %29 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %retval.0.i1.i, ptr %sec4_sg, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i2.i = icmp eq i8 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %ctx_len) #11
  %retval.0.i3.i = select i1 %tobool.not.i2.i, i32 %ctx_len, i32 %31
  %len2.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg, i32 0, i32 1
  %32 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i3.i, ptr %len2.i, align 8
  %bpid_offset.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg, i32 0, i32 2
  %33 = ptrtoint ptr %bpid_offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bpid_offset.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cpu_to_caam_dma64.exit.i, %if.then.i1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ctx_map_to_sec4_sg, %return)) #11
          to label %if.then9.i [label %return], !srcloc !314

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg, i32 noundef 16, i1 noundef zeroext true) #11
  br label %return

return:                                           ; preds = %if.then9.i, %do.body.i, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.body.i ], [ 0, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @buf_map_to_sec4_sg(ptr noundef %jrdev, ptr noundef %sec4_sg, ptr noundef %state) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %buflen1 = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %buflen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.caam_hash_state, ptr %state, i32 0, i32 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %jrdev) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef -1) #11
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %jrdev, ptr noundef %buf, i32 noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %8, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %and.i = and i32 %8, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %jrdev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call41.i, ptr %state, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end7

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.53) #15
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 128
  br label %cleanup

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %13 = load i8, ptr @caam_dpaa2, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i18

if.then.i18:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i = zext i32 %12 to i64
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #11
  %15 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %sec4_sg, align 8
  %format_offset.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 3
  %16 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %format_offset.i.i.i, align 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %len1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 1
  %19 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %len1.i.i.i, align 8
  %bpid1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg, i32 0, i32 2
  %20 = ptrtoint ptr %bpid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bpid1.i.i.i, align 4
  %22 = and i16 %21, 192
  store i16 %22, ptr %bpid1.i.i.i, align 4
  %23 = and i16 %17, 64
  %24 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %format_offset.i.i.i, align 2
  br label %do.body.i

if.else.i:                                        ; preds = %if.end7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %25 = load i8, ptr @caam_imx, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i19 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i19, label %if.end.i.i20, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i = icmp eq i8 %26, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %12, i32 %27
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %cpu_to_caam_dma64.exit.i

if.end.i.i20:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i = zext i32 %12 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i4.i.i = icmp eq i8 %28, 0
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i) #11
  %retval.0.i5.i.i = select i1 %tobool.not.i4.i.i, i64 %conv1.i.i, i64 %29
  br label %cpu_to_caam_dma64.exit.i

cpu_to_caam_dma64.exit.i:                         ; preds = %if.end.i.i20, %if.then.i.i
  %retval.0.i1.i = phi i64 [ %shl.i.i, %if.then.i.i ], [ %retval.0.i5.i.i, %if.end.i.i20 ]
  %30 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %retval.0.i1.i, ptr %sec4_sg, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %31 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i2.i = icmp eq i8 %31, 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %retval.0.i3.i = select i1 %tobool.not.i2.i, i32 %1, i32 %32
  %len2.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg, i32 0, i32 1
  %33 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i3.i, ptr %len2.i, align 8
  %bpid_offset.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg, i32 0, i32 2
  %34 = ptrtoint ptr %bpid_offset.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bpid_offset.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cpu_to_caam_dma64.exit.i, %if.then.i18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@buf_map_to_sec4_sg, %cleanup)) #11
          to label %if.then9.i [label %cleanup], !srcloc !314

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg, i32 noundef 16, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %do.body.i, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahash_done_bi(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ahash_done_switch(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahash_done_ctx_src(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ahash_done_cpy(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahash_done_cpy(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef %dir) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 3
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
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_cpy.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_cpy, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahash_done_cpy.__UNIQUE_ID_ddebug534, ptr noundef %jrdev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.59, i32 noundef 588, i32 noundef %err) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %edesc9 = getelementptr inbounds %struct.ahash_request, ptr %context, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %edesc9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edesc9, align 4
  %bklog = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bklog, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool12.not = icmp eq i32 %err, 0
  br i1 %tobool12.not, label %do.end.if.end15_crit_edge, label %if.then13

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %err, i1 noundef zeroext false) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end.if.end15_crit_edge
  %ecode.0 = phi i32 [ %call14, %if.then13 ], [ 0, %do.end.if.end15_crit_edge ]
  %ctx_dma.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_dma_len.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %ctx_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx_dma_len.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %13, i32 noundef %15, i32 noundef %dir, i32 noundef 0) #11
  %16 = ptrtoint ptr %ctx_dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ctx_dma.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %src_nents.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 2
  %19 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %jrdev, ptr noundef %20, i32 noundef %18, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %sec4_sg_bytes.i.i = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %sec4_sg_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sec4_sg_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %24, i32 noundef %22, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %25 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool6.not.i.i, label %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge, label %if.then7.i.i

if.end5.i.i.ahash_unmap_ctx.exit_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap_ctx.exit

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i.i = getelementptr inbounds %struct.ahash_request, ptr %context, i32 3
  %27 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buflen.i.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #11
  %29 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap_ctx.exit

ahash_unmap_ctx.exit:                             ; preds = %if.then7.i.i, %if.end5.i.i.ahash_unmap_ctx.exit_crit_edge
  %result = getelementptr inbounds %struct.ahash_request, ptr %context, i32 0, i32 3
  %30 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %result, align 32
  %caam_ctx = getelementptr inbounds %struct.ahash_request, ptr %context, i32 4
  %32 = call ptr @memcpy(ptr %31, ptr %caam_ctx, i32 %7)
  tail call void @kfree(ptr noundef %9) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_done_cpy.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_done_cpy, %do.end35)) #11
          to label %if.then30 [label %do.end35], !srcloc !314

if.then30:                                        ; preds = %ahash_unmap_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_len = getelementptr i8, ptr %3, i32 1436
  %33 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctx_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %caam_ctx, i32 noundef %34, i1 noundef zeroext true) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %ahash_unmap_ctx.exit
  br i1 %tobool10.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 1
  %35 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %complete, align 8
  tail call void %36(ptr noundef %context, i32 noundef %ecode.0) #11
  br label %if.end39

if.else:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %38, ptr noundef %context, i32 noundef %ecode.0) #11
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahash_done(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ahash_done_cpy(ptr noundef %jrdev, i32 noundef %err, ptr noundef %context, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_digest_key(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %keylen, ptr noundef %key, i32 noundef %digestsize) unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.split_key_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.caam_hash_ctx, ptr %ctx, i32 0, i32 17
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #11
  %2 = call ptr @memset(ptr %result, i32 255, i32 60)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %3 = load i32, ptr @caam_ptr_sz, align 4
  %mul = shl i32 %3, 1
  %add = add i32 %mul, 32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3265) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.85) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 -1333788671, i32 16810160
  %5 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i.i.i, ptr %call9.i, align 128
  %6 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %key) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i105, !prof !315

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i105:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i104 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i104, label %if.end.i.i106, label %if.then.i105.dev_name.exit.i_crit_edge

if.then.i105.dev_name.exit.i_crit_edge:           ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i106:                                    ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i106, %if.then.i105.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i106 ], [ %9, %if.then.i105.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #11
  br label %do.end8

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %key, i32 noundef %7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %key to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %7, i32 noundef 0, i32 noundef 0) #11
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i108 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i108, label %dma_map_single_attrs.exit.do.end8_crit_edge, label %if.end9

dma_map_single_attrs.exit.do.end8_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end8:                                          ; preds = %dma_map_single_attrs.exit.do.end8_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88) #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

if.end9:                                          ; preds = %dma_map_single_attrs.exit
  %adata = getelementptr inbounds %struct.caam_hash_ctx, ptr %ctx, i32 0, i32 19
  %14 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adata, align 32
  %16 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i109 = icmp eq i8 %18, 0
  %19 = lshr i32 %17, 24
  %retval.0.i.i.i110 = select i1 %tobool.not.i.i.i109, i32 %17, i32 %19
  %and.i.i = and i32 %retval.0.i.i.i110, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.93, i32 0, i32 7)) #15
  %or.i = or i32 %15, -2147483635
  %20 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %22 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i.i.i.i = icmp eq i8 %22, 0
  %23 = lshr i32 %21, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %21, i32 %23
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %26 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i6.i.i = icmp eq i8 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %27, i32 %29
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %30
  %31 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i9.i.i, ptr %call9.i, align 128
  %32 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %keylen, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i111 = icmp eq i8 %34, 0
  %35 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i112 = select i1 %tobool.not.i.i.i111, i32 %retval.0.i9.i.i, i32 %35
  %and.i.i113 = and i32 %retval.0.i.i.i112, 127
  %call2.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i113, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.33, i32 0, i32 7)) #15
  %36 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i.i = icmp eq i8 %38, 0
  %39 = lshr i32 %37, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %37, i32 %39
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.34, i32 0, i32 7)) #15
  %40 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %42 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %42, 0
  %43 = lshr i32 %41, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %41, i32 %43
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i.i.i
  %retval.0.i.i.i.i.i115 = select i1 %tobool.not.i.i.i.i.i.i.i, i32 -264241152, i32 16624
  %44 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i.i.i.i.i115, ptr %add.ptr.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %47 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %47, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %46, i32 %48
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #11
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %49
  %50 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i9.i.i.i.i, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i.i4.i.i.i = icmp eq i8 %51, 0
  %52 = lshr i32 %retval.0.i9.i.i.i.i, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i.i, i32 %retval.0.i9.i.i.i.i, i32 %52
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i6.i.i.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #11
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i.i, i32 %call41.i, i32 %53
  %54 = ptrtoint ptr %add.ptr.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i.i.i.i.i.i, ptr %add.ptr.i.i7.i.i.i, align 4
  %55 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %57 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i.i.i.i116 = icmp eq i8 %57, 0
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i.i116, i32 %56, i32 %58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %59 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i = lshr i32 %59, 2
  %add.i9.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div14.i.i.i.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i) #11
  %retval.0.i23.i.i.i.i = select i1 %tobool.not.i.i.i.i.i116, i32 %add.i9.i.i.i, i32 %60
  %61 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i23.i.i.i.i, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i.i.i10.i.i.i = icmp eq i8 %62, 0
  %63 = lshr i32 %retval.0.i23.i.i.i.i, 24
  %retval.0.i.i.i.i11.i.i.i = select i1 %tobool.not.i.i.i.i10.i.i.i, i32 %retval.0.i23.i.i.i.i, i32 %63
  %and.i.i.i12.i.i.i = and i32 %retval.0.i.i.i.i11.i.i.i, 127
  %add.ptr.i.i13.i.i.i = getelementptr i32, ptr %call9.i, i32 %and.i.i.i12.i.i.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %retval.0.i.i14.i.i.i = select i1 %tobool.not.i.i.i.i10.i.i.i, i32 %33, i32 %64
  %65 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i14.i.i.i, ptr %add.ptr.i.i13.i.i.i, align 4
  %66 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %68 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i6.i15.i.i.i = icmp eq i8 %68, 0
  %69 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  %retval.0.i7.i16.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %67, i32 %69
  %add.i17.i.i.i = add i32 %retval.0.i7.i16.i.i.i, 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i) #11
  %retval.0.i9.i18.i.i.i = select i1 %tobool.not.i6.i15.i.i.i, i32 %add.i17.i.i.i, i32 %70
  %71 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i9.i18.i.i.i, ptr %call9.i, align 128
  %72 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %keylen, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %74 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.i.i117 = icmp eq i8 %74, 0
  %75 = lshr i32 %retval.0.i9.i18.i.i.i, 24
  %retval.0.i.i.i118 = select i1 %tobool.not.i.i.i117, i32 %retval.0.i9.i18.i.i.i, i32 %75
  %and.i.i119 = and i32 %retval.0.i.i.i118, 127
  %call2.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i119, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.94, i32 0, i32 7)) #15
  %or4.i = or i32 %73, 739508224
  %76 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %78 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i.i.i.i121 = icmp eq i8 %78, 0
  %79 = lshr i32 %77, 24
  %retval.0.i.i.i.i.i122 = select i1 %tobool.not.i.i.i.i.i121, i32 %77, i32 %79
  %and.i.i.i.i123 = and i32 %retval.0.i.i.i.i.i122, 127
  %add.ptr.i.i.i124 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i123
  %80 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #11
  %retval.0.i.i1.i = select i1 %tobool.not.i.i.i.i.i121, i32 %or4.i, i32 %80
  %81 = ptrtoint ptr %add.ptr.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i.i1.i, ptr %add.ptr.i.i.i124, align 4
  %82 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i6.i.i125 = icmp eq i8 %84, 0
  %85 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  %retval.0.i7.i.i126 = select i1 %tobool.not.i6.i.i125, i32 %83, i32 %85
  %add.i.i127 = add i32 %retval.0.i7.i.i126, 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %add.i.i127) #11
  %retval.0.i9.i.i128 = select i1 %tobool.not.i6.i.i125, i32 %add.i.i127, i32 %86
  %87 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i9.i.i128, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %88 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i.i129 = icmp eq i8 %88, 0
  %89 = lshr i32 %retval.0.i9.i.i128, 24
  %retval.0.i.i.i130 = select i1 %tobool.not.i.i.i129, i32 %retval.0.i9.i.i128, i32 %89
  %and.i.i131 = and i32 %retval.0.i.i.i130, 127
  %call2.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i131, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.37, i32 0, i32 7)) #15
  %90 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %92 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i.i.i133 = icmp eq i8 %92, 0
  %93 = lshr i32 %91, 24
  %retval.0.i.i.i.i134 = select i1 %tobool.not.i.i.i.i133, i32 %91, i32 %93
  %and.i.i.i135 = and i32 %retval.0.i.i.i.i134, 127
  %call2.i.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i.i135, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.38, i32 0, i32 7)) #15
  %94 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %96 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i.i.i.i.i.i.i137 = icmp eq i8 %96, 0
  %97 = lshr i32 %95, 24
  %retval.0.i.i.i.i.i.i.i138 = select i1 %tobool.not.i.i.i.i.i.i.i137, i32 %95, i32 %97
  %and.i.i.i.i.i.i139 = and i32 %retval.0.i.i.i.i.i.i.i138, 127
  %add.ptr.i.i.i.i.i140 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i.i.i139
  %retval.0.i.i.i.i.i141 = select i1 %tobool.not.i.i.i.i.i.i.i137, i32 -130023424, i32 16632
  %98 = ptrtoint ptr %add.ptr.i.i.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i.i.i.i.i141, ptr %add.ptr.i.i.i.i.i140, align 4
  %99 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %101 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i6.i.i.i.i142 = icmp eq i8 %101, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %100) #11
  %retval.0.i7.i.i.i.i143 = select i1 %tobool.not.i6.i.i.i.i142, i32 %100, i32 %102
  %add.i.i.i.i144 = add i32 %retval.0.i7.i.i.i.i143, 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i144) #11
  %retval.0.i9.i.i.i.i145 = select i1 %tobool.not.i6.i.i.i.i142, i32 %add.i.i.i.i144, i32 %103
  %104 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %retval.0.i9.i.i.i.i145, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %105 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i.i.i.i4.i.i.i146 = icmp eq i8 %105, 0
  %106 = lshr i32 %retval.0.i9.i.i.i.i145, 24
  %retval.0.i.i.i.i5.i.i.i147 = select i1 %tobool.not.i.i.i.i4.i.i.i146, i32 %retval.0.i9.i.i.i.i145, i32 %106
  %and.i.i.i6.i.i.i148 = and i32 %retval.0.i.i.i.i5.i.i.i147, 127
  %add.ptr.i.i7.i.i.i149 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i6.i.i.i148
  %retval.0.i.i.i.i.i.i150 = select i1 %tobool.not.i.i.i.i4.i.i.i146, i32 %call41.i, i32 %53
  %107 = ptrtoint ptr %add.ptr.i.i7.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i.i.i.i.i.i150, ptr %add.ptr.i.i7.i.i.i149, align 4
  %108 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %110 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i.i.i.i151 = icmp eq i8 %110, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %109) #11
  %retval.0.i.i8.i.i.i152 = select i1 %tobool.not.i.i.i.i.i151, i32 %109, i32 %111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %112 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i.i153 = lshr i32 %112, 2
  %add.i9.i.i.i154 = add i32 %retval.0.i.i8.i.i.i152, %div14.i.i.i.i153
  %113 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i.i154) #11
  %retval.0.i23.i.i.i.i155 = select i1 %tobool.not.i.i.i.i.i151, i32 %add.i9.i.i.i154, i32 %113
  %114 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i23.i.i.i.i155, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %115 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i.i.i10.i.i.i156 = icmp eq i8 %115, 0
  %116 = lshr i32 %retval.0.i23.i.i.i.i155, 24
  %retval.0.i.i.i.i11.i.i.i157 = select i1 %tobool.not.i.i.i.i10.i.i.i156, i32 %retval.0.i23.i.i.i.i155, i32 %116
  %and.i.i.i12.i.i.i158 = and i32 %retval.0.i.i.i.i11.i.i.i157, 127
  %add.ptr.i.i13.i.i.i159 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i12.i.i.i158
  %117 = tail call i32 @llvm.bswap.i32(i32 %digestsize) #11
  %retval.0.i.i14.i.i.i160 = select i1 %tobool.not.i.i.i.i10.i.i.i156, i32 %digestsize, i32 %117
  %118 = ptrtoint ptr %add.ptr.i.i13.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i.i14.i.i.i160, ptr %add.ptr.i.i13.i.i.i159, align 4
  %119 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %121 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i6.i15.i.i.i161 = icmp eq i8 %121, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %120) #11
  %retval.0.i7.i16.i.i.i162 = select i1 %tobool.not.i6.i15.i.i.i161, i32 %120, i32 %122
  %add.i17.i.i.i163 = add i32 %retval.0.i7.i16.i.i.i162, 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i.i163) #11
  %retval.0.i9.i18.i.i.i164 = select i1 %tobool.not.i6.i15.i.i.i161, i32 %add.i17.i.i.i163, i32 %123
  %124 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %retval.0.i9.i18.i.i.i164, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %125 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i.i.i165 = icmp eq i8 %125, 0
  %126 = lshr i32 %retval.0.i9.i18.i.i.i164, 24
  %retval.0.i.i.i166 = select i1 %tobool.not.i.i.i165, i32 %retval.0.i9.i18.i.i.i164, i32 %126
  %and.i.i167 = and i32 %retval.0.i.i.i166, 127
  %call2.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %and.i.i167, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.95, i32 0, i32 7)) #15
  %or4.i169 = or i32 %digestsize, 1545601024
  %127 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %129 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i.i.i.i170 = icmp eq i8 %129, 0
  %130 = lshr i32 %128, 24
  %retval.0.i.i.i.i.i171 = select i1 %tobool.not.i.i.i.i.i170, i32 %128, i32 %130
  %and.i.i.i.i172 = and i32 %retval.0.i.i.i.i.i171, 127
  %add.ptr.i.i.i173 = getelementptr i32, ptr %call9.i, i32 %and.i.i.i.i172
  %131 = tail call i32 @llvm.bswap.i32(i32 %or4.i169) #11
  %retval.0.i.i1.i174 = select i1 %tobool.not.i.i.i.i.i170, i32 %or4.i169, i32 %131
  %132 = ptrtoint ptr %add.ptr.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i.i1.i174, ptr %add.ptr.i.i.i173, align 4
  %133 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %135 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i6.i.i175 = icmp eq i8 %135, 0
  %136 = tail call i32 @llvm.bswap.i32(i32 %134) #11
  %retval.0.i7.i.i176 = select i1 %tobool.not.i6.i.i175, i32 %134, i32 %136
  %add.i.i177 = add i32 %retval.0.i7.i.i176, 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %add.i.i177) #11
  %retval.0.i9.i.i178 = select i1 %tobool.not.i6.i.i175, i32 %add.i.i177, i32 %137
  %138 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %retval.0.i9.i.i178, ptr %call9.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_digest_key.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_digest_key, %do.body21)) #11
          to label %if.then17 [label %do.body21], !srcloc !314

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %keylen, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.90, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %140, i1 noundef zeroext true) #11
  br label %do.body21

do.body21:                                        ; preds = %if.then17, %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_digest_key.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_digest_key, %do.end39)) #11
          to label %if.then35 [label %do.end39], !srcloc !314

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %call9.i, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %143 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i.i179 = icmp eq i8 %143, 0
  %144 = lshr i32 %142, 24
  %retval.0.i.i.i180 = select i1 %tobool.not.i.i.i179, i32 %142, i32 %144
  %and.i.i181 = shl i32 %retval.0.i.i.i180, 2
  %mul.i = and i32 %and.i.i181, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.91, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %call9.i, i32 noundef %mul.i, i1 noundef zeroext true) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body21
  %err = getelementptr inbounds %struct.split_key_result, ptr %result, i32 0, i32 1
  %145 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %err, align 4
  %146 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @init_completion.__key) #11
  %call40 = call i32 @caam_jr_enqueue(ptr noundef %1, ptr noundef nonnull %call9.i, ptr noundef nonnull @split_key_done, ptr noundef nonnull %result) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call40)
  %cmp = icmp eq i32 %call40, -115
  br i1 %cmp, label %if.then41, label %do.end39.if.end62_crit_edge

do.end39.if.end62_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull %result) #11
  %147 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %err, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_digest_key.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_digest_key, %if.end62)) #11
          to label %if.then58 [label %if.end62], !srcloc !314

if.then58:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.92, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %digestsize, i1 noundef zeroext true) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then41, %do.end39.if.end62_crit_edge
  %ret.0 = phi i32 [ %148, %if.then58 ], [ %call40, %do.end39.if.end62_crit_edge ], [ %148, %if.then41 ]
  %149 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %keylen, align 4
  call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %call41.i, i32 noundef %150, i32 noundef 0, i32 noundef 0) #11
  %151 = ptrtoint ptr %keylen to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %digestsize, ptr %keylen, align 4
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end8, %do.end
  %retval.0 = phi i32 [ -12, %do.end8 ], [ %ret.0, %if.end62 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_split_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahash_set_sh_desc(ptr noundef %ahash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %jrdev2 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 6
  %4 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev2, align 8
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %key = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 5, i32 10
  %adata = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 8
  %key_virt = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 12
  %10 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %key, ptr %key_virt, align 16
  %sh_desc_update = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1, i32 10
  %ctx_len = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 7
  %11 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctx_len, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %9, i32 0, i32 11
  %13 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %era, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %sh_desc_update, ptr noundef %adata, i32 noundef 0, i32 noundef %12, i32 noundef %12, i1 noundef zeroext true, i32 noundef %14) #11
  %sh_desc_update_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6
  %15 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sh_desc_update_dma, align 128
  %17 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i = icmp eq i8 %19, 0
  %20 = lshr i32 %18, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %18, i32 %20
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 4
  %21 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %16, i32 noundef %mul.i, i32 noundef %22) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_set_sh_desc, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i10 = icmp eq i8 %25, 0
  %26 = lshr i32 %24, 24
  %retval.0.i.i.i11 = select i1 %tobool.not.i.i.i10, i32 %24, i32 %26
  %and.i.i12 = shl i32 %retval.0.i.i.i11, 2
  %mul.i13 = and i32 %and.i.i12, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.98, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update, i32 noundef %mul.i13, i1 noundef zeroext true) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sh_desc_update_first = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %27 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctx_len, align 4
  %29 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %era, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %sh_desc_update_first, ptr noundef %adata, i32 noundef 4, i32 noundef %28, i32 noundef %28, i1 noundef zeroext false, i32 noundef %30) #11
  %sh_desc_update_first_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 1
  %31 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sh_desc_update_first_dma, align 4
  %33 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i.i14 = icmp eq i8 %35, 0
  %36 = lshr i32 %34, 24
  %retval.0.i.i.i15 = select i1 %tobool.not.i.i.i14, i32 %34, i32 %36
  %and.i.i16 = shl i32 %retval.0.i.i.i15, 2
  %mul.i17 = and i32 %and.i.i16, 508
  %37 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %32, i32 noundef %mul.i17, i32 noundef %38) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_set_sh_desc, %do.end38)) #11
          to label %if.then34 [label %do.end38], !srcloc !314

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %41 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i18 = icmp eq i8 %41, 0
  %42 = lshr i32 %40, 24
  %retval.0.i.i.i19 = select i1 %tobool.not.i.i.i18, i32 %40, i32 %42
  %and.i.i20 = shl i32 %retval.0.i.i.i19, 2
  %mul.i21 = and i32 %and.i.i20, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.99, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update_first, i32 noundef %mul.i21, i1 noundef zeroext true) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.end
  %sh_desc_fin = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 10
  %43 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctx_len, align 4
  %45 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %era, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %sh_desc_fin, ptr noundef %adata, i32 noundef 8, i32 noundef %3, i32 noundef %44, i1 noundef zeroext true, i32 noundef %46) #11
  %sh_desc_fin_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 2
  %47 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sh_desc_fin_dma, align 8
  %49 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i22 = icmp eq i8 %51, 0
  %52 = lshr i32 %50, 24
  %retval.0.i.i.i23 = select i1 %tobool.not.i.i.i22, i32 %50, i32 %52
  %and.i.i24 = shl i32 %retval.0.i.i.i23, 2
  %mul.i25 = and i32 %and.i.i24, 508
  %53 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %48, i32 noundef %mul.i25, i32 noundef %54) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_set_sh_desc, %do.end63)) #11
          to label %if.then59 [label %do.end63], !srcloc !314

if.then59:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %57 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i.i26 = icmp eq i8 %57, 0
  %58 = lshr i32 %56, 24
  %retval.0.i.i.i27 = select i1 %tobool.not.i.i.i26, i32 %56, i32 %58
  %and.i.i28 = shl i32 %retval.0.i.i.i27, 2
  %mul.i29 = and i32 %and.i.i28, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_fin, i32 noundef %mul.i29, i1 noundef zeroext true) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.end38
  %sh_desc_digest = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 4, i32 10
  %59 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctx_len, align 4
  %61 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %era, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %sh_desc_digest, ptr noundef %adata, i32 noundef 12, i32 noundef %3, i32 noundef %60, i1 noundef zeroext false, i32 noundef %62) #11
  %sh_desc_digest_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 3
  %63 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sh_desc_digest_dma, align 4
  %65 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %67 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i.i30 = icmp eq i8 %67, 0
  %68 = lshr i32 %66, 24
  %retval.0.i.i.i31 = select i1 %tobool.not.i.i.i30, i32 %66, i32 %68
  %and.i.i32 = shl i32 %retval.0.i.i.i31, 2
  %mul.i33 = and i32 %and.i.i32, 508
  %69 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %64, i32 noundef %mul.i33, i32 noundef %70) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_set_sh_desc, %do.end88)) #11
          to label %if.then84 [label %do.end88], !srcloc !314

if.then84:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %73 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i.i.i34 = icmp eq i8 %73, 0
  %74 = lshr i32 %72, 24
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i34, i32 %72, i32 %74
  %and.i.i36 = shl i32 %retval.0.i.i.i35, 2
  %mul.i37 = and i32 %and.i.i36, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_digest, i32 noundef %mul.i37, i1 noundef zeroext true) #11
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.end63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_key_done(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_ahash(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axcbc_set_sh_desc(ptr noundef %ahash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %jrdev2 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 6
  %4 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev2, align 8
  %sh_desc_update = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1, i32 10
  %adata = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 8
  %ctx_len = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 7
  %6 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_update, ptr noundef %adata, i32 noundef 0, i32 noundef %7, i32 noundef %7) #11
  %sh_desc_update_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6
  %8 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_desc_update_dma, align 128
  %10 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %12 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i = icmp eq i8 %12, 0
  %13 = lshr i32 %11, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %11, i32 %13
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 4
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %9, i32 noundef %mul.i, i32 noundef %15) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axcbc_set_sh_desc, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i10 = icmp eq i8 %18, 0
  %19 = lshr i32 %17, 24
  %retval.0.i.i.i11 = select i1 %tobool.not.i.i.i10, i32 %17, i32 %19
  %and.i.i12 = shl i32 %retval.0.i.i.i11, 2
  %mul.i13 = and i32 %and.i.i12, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.105, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update, i32 noundef %mul.i13, i1 noundef zeroext true) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sh_desc_fin = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 10
  %20 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_fin, ptr noundef %adata, i32 noundef 8, i32 noundef %3, i32 noundef %21) #11
  %sh_desc_fin_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 2
  %22 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sh_desc_fin_dma, align 8
  %24 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i14 = icmp eq i8 %26, 0
  %27 = lshr i32 %25, 24
  %retval.0.i.i.i15 = select i1 %tobool.not.i.i.i14, i32 %25, i32 %27
  %and.i.i16 = shl i32 %retval.0.i.i.i15, 2
  %mul.i17 = and i32 %and.i.i16, 508
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %23, i32 noundef %mul.i17, i32 noundef %29) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axcbc_set_sh_desc, %do.end33)) #11
          to label %if.then29 [label %do.end33], !srcloc !314

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i18 = icmp eq i8 %32, 0
  %33 = lshr i32 %31, 24
  %retval.0.i.i.i19 = select i1 %tobool.not.i.i.i18, i32 %31, i32 %33
  %and.i.i20 = shl i32 %retval.0.i.i.i19, 2
  %mul.i21 = and i32 %and.i.i20, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.106, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_fin, i32 noundef %mul.i21, i1 noundef zeroext true) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.end
  %key = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 5, i32 10
  %key_virt = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 9, i32 12
  %34 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %key, ptr %key_virt, align 16
  %sh_desc_update_first = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %35 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_update_first, ptr noundef %adata, i32 noundef 4, i32 noundef %36, i32 noundef %36) #11
  %sh_desc_update_first_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 1
  %37 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sh_desc_update_first_dma, align 4
  %39 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %41 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i22 = icmp eq i8 %41, 0
  %42 = lshr i32 %40, 24
  %retval.0.i.i.i23 = select i1 %tobool.not.i.i.i22, i32 %40, i32 %42
  %and.i.i24 = shl i32 %retval.0.i.i.i23, 2
  %mul.i25 = and i32 %and.i.i24, 508
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %38, i32 noundef %mul.i25, i32 noundef %44) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axcbc_set_sh_desc, %do.end60)) #11
          to label %if.then56 [label %do.end60], !srcloc !314

if.then56:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %47 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i.i26 = icmp eq i8 %47, 0
  %48 = lshr i32 %46, 24
  %retval.0.i.i.i27 = select i1 %tobool.not.i.i.i26, i32 %46, i32 %48
  %and.i.i28 = shl i32 %retval.0.i.i.i27, 2
  %mul.i29 = and i32 %and.i.i28, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.107, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update_first, i32 noundef %mul.i29, i1 noundef zeroext true) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end33
  %sh_desc_digest = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 4, i32 10
  %49 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_digest, ptr noundef %adata, i32 noundef 12, i32 noundef %3, i32 noundef %50) #11
  %sh_desc_digest_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 3
  %51 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sh_desc_digest_dma, align 4
  %53 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %55 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i.i30 = icmp eq i8 %55, 0
  %56 = lshr i32 %54, 24
  %retval.0.i.i.i31 = select i1 %tobool.not.i.i.i30, i32 %54, i32 %56
  %and.i.i32 = shl i32 %retval.0.i.i.i31, 2
  %mul.i33 = and i32 %and.i.i32, 508
  %57 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %52, i32 noundef %mul.i33, i32 noundef %58) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@axcbc_set_sh_desc, %do.end84)) #11
          to label %if.then80 [label %do.end84], !srcloc !314

if.then80:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %61 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i.i34 = icmp eq i8 %61, 0
  %62 = lshr i32 %60, 24
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i34, i32 %60, i32 %62
  %and.i.i36 = shl i32 %retval.0.i.i.i35, 2
  %mul.i37 = and i32 %and.i.i36, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.108, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_digest, i32 noundef %mul.i37, i1 noundef zeroext true) #11
  br label %do.end84

do.end84:                                         ; preds = %if.then80, %do.end60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_sk_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acmac_set_sh_desc(ptr noundef %ahash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %jrdev2 = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 6
  %4 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev2, align 8
  %sh_desc_update = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 1, i32 10
  %adata = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 8
  %ctx_len = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 7
  %6 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_update, ptr noundef %adata, i32 noundef 0, i32 noundef %7, i32 noundef %7) #11
  %sh_desc_update_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6
  %8 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_desc_update_dma, align 128
  %10 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %12 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i = icmp eq i8 %12, 0
  %13 = lshr i32 %11, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %11, i32 %13
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 4
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %9, i32 noundef %mul.i, i32 noundef %15) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acmac_set_sh_desc, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !314

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %sh_desc_update to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_desc_update, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i10 = icmp eq i8 %18, 0
  %19 = lshr i32 %17, 24
  %retval.0.i.i.i11 = select i1 %tobool.not.i.i.i10, i32 %17, i32 %19
  %and.i.i12 = shl i32 %retval.0.i.i.i11, 2
  %mul.i13 = and i32 %and.i.i12, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.112, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update, i32 noundef %mul.i13, i1 noundef zeroext true) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sh_desc_fin = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 3, i32 10
  %20 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_fin, ptr noundef %adata, i32 noundef 8, i32 noundef %3, i32 noundef %21) #11
  %sh_desc_fin_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 2
  %22 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sh_desc_fin_dma, align 8
  %24 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i14 = icmp eq i8 %26, 0
  %27 = lshr i32 %25, 24
  %retval.0.i.i.i15 = select i1 %tobool.not.i.i.i14, i32 %25, i32 %27
  %and.i.i16 = shl i32 %retval.0.i.i.i15, 2
  %mul.i17 = and i32 %and.i.i16, 508
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %23, i32 noundef %mul.i17, i32 noundef %29) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acmac_set_sh_desc, %do.end33)) #11
          to label %if.then29 [label %do.end33], !srcloc !314

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sh_desc_fin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sh_desc_fin, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i18 = icmp eq i8 %32, 0
  %33 = lshr i32 %31, 24
  %retval.0.i.i.i19 = select i1 %tobool.not.i.i.i18, i32 %31, i32 %33
  %and.i.i20 = shl i32 %retval.0.i.i.i19, 2
  %mul.i21 = and i32 %and.i.i20, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.113, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_fin, i32 noundef %mul.i21, i1 noundef zeroext true) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.end
  %sh_desc_update_first = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 2, i32 10
  %34 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_update_first, ptr noundef %adata, i32 noundef 4, i32 noundef %35, i32 noundef %35) #11
  %sh_desc_update_first_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 1
  %36 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sh_desc_update_first_dma, align 4
  %38 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %40 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i22 = icmp eq i8 %40, 0
  %41 = lshr i32 %39, 24
  %retval.0.i.i.i23 = select i1 %tobool.not.i.i.i22, i32 %39, i32 %41
  %and.i.i24 = shl i32 %retval.0.i.i.i23, 2
  %mul.i25 = and i32 %and.i.i24, 508
  %42 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %37, i32 noundef %mul.i25, i32 noundef %43) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acmac_set_sh_desc, %do.end58)) #11
          to label %if.then54 [label %do.end58], !srcloc !314

if.then54:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %sh_desc_update_first to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sh_desc_update_first, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %46 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i.i26 = icmp eq i8 %46, 0
  %47 = lshr i32 %45, 24
  %retval.0.i.i.i27 = select i1 %tobool.not.i.i.i26, i32 %45, i32 %47
  %and.i.i28 = shl i32 %retval.0.i.i.i27, 2
  %mul.i29 = and i32 %and.i.i28, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.114, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_update_first, i32 noundef %mul.i29, i1 noundef zeroext true) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.end33
  %sh_desc_digest = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 4, i32 10
  %48 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctx_len, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %sh_desc_digest, ptr noundef %adata, i32 noundef 12, i32 noundef %3, i32 noundef %49) #11
  %sh_desc_digest_dma = getelementptr inbounds %struct.crypto_ahash, ptr %ahash, i32 6, i32 3
  %50 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sh_desc_digest_dma, align 4
  %52 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %54 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i.i30 = icmp eq i8 %54, 0
  %55 = lshr i32 %53, 24
  %retval.0.i.i.i31 = select i1 %tobool.not.i.i.i30, i32 %53, i32 %55
  %and.i.i32 = shl i32 %retval.0.i.i.i31, 2
  %mul.i33 = and i32 %and.i.i32, 508
  %56 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dir, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %51, i32 noundef %mul.i33, i32 noundef %57) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acmac_set_sh_desc, %do.end82)) #11
          to label %if.then78 [label %do.end82], !srcloc !314

if.then78:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %sh_desc_digest to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sh_desc_digest, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %60 = load i8, ptr @caam_little_end, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i.i34 = icmp eq i8 %60, 0
  %61 = lshr i32 %59, 24
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i34, i32 %59, i32 %61
  %and.i.i36 = shl i32 %retval.0.i.i.i35, 2
  %mul.i37 = and i32 %and.i.i36, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.115, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sh_desc_digest, i32 noundef %mul.i37, i1 noundef zeroext true) #11
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.end58
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_hash_cra_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %call8 = tail call ptr @caam_jr_alloc() #11
  %jrdev = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 8
  %2 = ptrtoint ptr %jrdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %jrdev, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #15
  %3 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jrdev, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg_type = getelementptr i8, ptr %1, i32 -376
  %6 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alg_type, align 8
  %and.i = and i32 %7, 16719856
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %and.i, label %if.else30 [
    i32 1050368, label %if.then18
    i32 1050112, label %if.then22
  ]

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dir = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4
  %9 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dir, align 16
  %key_dir = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 4
  %10 = ptrtoint ptr %key_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %key_dir, align 4
  %11 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alg_type, align 8
  %or = or i32 %12, 33554432
  %adata = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 16
  %13 = ptrtoint ptr %adata to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %adata, align 32
  br label %if.end46

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dir23 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4
  %14 = ptrtoint ptr %dir23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir23, align 16
  %key_dir24 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 4
  %15 = ptrtoint ptr %key_dir24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %key_dir24, align 4
  %16 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alg_type, align 8
  %or26 = or i32 %17, 33554432
  %adata27 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 16
  %18 = ptrtoint ptr %adata27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or26, ptr %adata27, align 32
  br label %if.end46

if.else30:                                        ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp = icmp sgt i32 %24, 5
  %dir32 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4
  br i1 %cmp, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dir32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dir32, align 16
  %setkey = getelementptr i8, ptr %1, i32 -228
  %26 = ptrtoint ptr %setkey to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setkey, align 4
  %tobool.not = icmp eq ptr %27, null
  %cond = select i1 %tobool.not, i32 3, i32 1
  br label %if.end37

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dir32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %dir32, align 16
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %.sink = phi i32 [ %cond, %if.then31 ], [ 3, %if.else34 ]
  %29 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %31 = ptrtoint ptr %alg_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alg_type, align 8
  %or39 = or i32 %32, 67108864
  %adata40 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 16
  %33 = ptrtoint ptr %adata40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or39, ptr %adata40, align 32
  %and = lshr i32 %32, 16
  %shr = and i32 %and, 15
  %arrayidx = getelementptr [6 x i8], ptr @caam_hash_cra_init.runninglen, i32 0, i32 %shr
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %35 to i32
  br label %if.end46

if.end46:                                         ; preds = %if.end37, %if.then22, %if.then18
  %.sink200 = phi i32 [ 32, %if.then22 ], [ %conv, %if.end37 ], [ 48, %if.then18 ]
  %ctx_len29 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 12
  %36 = ptrtoint ptr %ctx_len29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink200, ptr %ctx_len29, align 4
  %key_dir47 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 4
  %37 = ptrtoint ptr %key_dir47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key_dir47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp48.not = icmp eq i32 %38, 3
  br i1 %cmp48.not, label %if.end46.if.end67_crit_edge, label %if.then50

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then50:                                        ; preds = %if.end46
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 10
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %key) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then50
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !315

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %call8) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %call8, ptr noundef %key, i32 noundef 128) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %key to i32
  %sub.i = add i32 %44, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i167 = getelementptr %struct.page, ptr %43, i32 %shr.i
  %and.i168 = and i32 %44, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %call8, ptr noundef %add.ptr.i167, i32 noundef %and.i168, i32 noundef 128, i32 noundef %38, i32 noundef 32) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %key_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 28
  %45 = ptrtoint ptr %key_dma to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i, ptr %key_dma, align 4
  %46 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %jrdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %47, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i169 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i169, label %do.end63, label %dma_map_single_attrs.exit.if.end67_crit_edge

dma_map_single_attrs.exit.if.end67_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end63:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %jrdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.122) #15
  %50 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %jrdev, align 8
  tail call void @caam_jr_free(ptr noundef %51) #11
  br label %cleanup

if.end67:                                         ; preds = %dma_map_single_attrs.exit.if.end67_crit_edge, %if.end46.if.end67_crit_edge
  %52 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %jrdev, align 8
  %sh_desc_update = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2
  %dir70 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4
  %54 = ptrtoint ptr %dir70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dir70, align 16
  %call.i170 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sh_desc_update) #11
  br i1 %call.i170, label %land.rhs.i172, label %dma_map_single_attrs.exit187

land.rhs.i172:                                    ; preds = %if.end67
  %.b51.i171 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i171, label %land.rhs.i172.dma_map_single_attrs.exit187.thread_crit_edge, label %if.then.i176, !prof !315

land.rhs.i172.dma_map_single_attrs.exit187.thread_crit_edge: ; preds = %land.rhs.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit187.thread

if.then.i176:                                     ; preds = %land.rhs.i172
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i173 = tail call ptr @dev_driver_string(ptr noundef %53) #11
  %init_name.i.i174 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %init_name.i.i174 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i174, align 8
  %tobool.not.i.i175 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i175, label %if.end.i.i177, label %if.then.i176.dev_name.exit.i179_crit_edge

if.then.i176.dev_name.exit.i179_crit_edge:        ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i179

if.end.i.i177:                                    ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  br label %dev_name.exit.i179

dev_name.exit.i179:                               ; preds = %if.end.i.i177, %if.then.i176.dev_name.exit.i179_crit_edge
  %retval.0.i.i178 = phi ptr [ %59, %if.end.i.i177 ], [ %57, %if.then.i176.dev_name.exit.i179_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i173, ptr noundef %retval.0.i.i178) #11
  br label %dma_map_single_attrs.exit187.thread

dma_map_single_attrs.exit187.thread:              ; preds = %dev_name.exit.i179, %land.rhs.i172.dma_map_single_attrs.exit187.thread_crit_edge
  %60 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jrdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %61, i32 noundef -1) #11
  br label %do.end78

dma_map_single_attrs.exit187:                     ; preds = %if.end67
  tail call void @debug_dma_map_single(ptr noundef %53, ptr noundef %sh_desc_update, i32 noundef 1024) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %62 = load ptr, ptr @mem_map, align 4
  %63 = ptrtoint ptr %sh_desc_update to i32
  %sub.i180 = add i32 %63, 1073741824
  %shr.i181 = lshr i32 %sub.i180, 12
  %add.ptr.i182 = getelementptr %struct.page, ptr %62, i32 %shr.i181
  %and.i183 = and i32 %63, 4095
  %call41.i184 = tail call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %add.ptr.i182, i32 noundef %and.i183, i32 noundef 1024, i32 noundef %55, i32 noundef 32) #11
  %64 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jrdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %65, i32 noundef %call41.i184) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i184)
  %cmp.i188 = icmp eq i32 %call41.i184, -1
  br i1 %cmp.i188, label %dma_map_single_attrs.exit187.do.end78_crit_edge, label %if.end90

dma_map_single_attrs.exit187.do.end78_crit_edge:  ; preds = %dma_map_single_attrs.exit187
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

do.end78:                                         ; preds = %dma_map_single_attrs.exit187.do.end78_crit_edge, %dma_map_single_attrs.exit187.thread
  %66 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %jrdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.125) #15
  %68 = ptrtoint ptr %key_dir47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key_dir47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp81.not = icmp eq i32 %69, 3
  br i1 %cmp81.not, label %do.end78.if.end88_crit_edge, label %if.then83

do.end78.if.end88_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then83:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %jrdev, align 8
  %key_dma86 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 28
  %72 = ptrtoint ptr %key_dma86 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %key_dma86, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %73, i32 noundef 128, i32 noundef %69, i32 noundef 32) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %do.end78.if.end88_crit_edge
  %74 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %jrdev, align 8
  tail call void @caam_jr_free(ptr noundef %75) #11
  br label %cleanup

if.end90:                                         ; preds = %dma_map_single_attrs.exit187
  %sh_desc_update_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11
  %76 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call41.i184, ptr %sh_desc_update_dma, align 128
  %sub = add i32 %call41.i184, 256
  %sh_desc_update_first_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 1
  %77 = ptrtoint ptr %sh_desc_update_first_dma to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub, ptr %sh_desc_update_first_dma, align 4
  %sub92 = add i32 %call41.i184, 512
  %sh_desc_fin_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 2
  %78 = ptrtoint ptr %sh_desc_fin_dma to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub92, ptr %sh_desc_fin_dma, align 8
  %sub94 = add i32 %call41.i184, 768
  %sh_desc_digest_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 3
  %79 = ptrtoint ptr %sh_desc_digest_dma to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub94, ptr %sh_desc_digest_dma, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %80 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ahash_do_one_req, ptr %do_one_request, align 8
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %81 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 640, ptr %reqsize1.i, align 32
  %setkey96 = getelementptr i8, ptr %1, i32 -228
  %82 = ptrtoint ptr %setkey96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %setkey96, align 4
  %tobool97.not = icmp eq ptr %83, null
  br i1 %tobool97.not, label %cond.false, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ahash_set_sh_desc(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end90.cleanup_crit_edge, %if.end88, %do.end63, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ -12, %do.end63 ], [ -12, %if.end88 ], [ 0, %if.end90.cleanup_crit_edge ], [ 0, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_hash_cra_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 8
  %0 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev, align 8
  %sh_desc_update_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11
  %2 = ptrtoint ptr %sh_desc_update_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sh_desc_update_dma, align 128
  %dir = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 16
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 1024, i32 noundef %5, i32 noundef 32) #11
  %key_dir = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 4
  %6 = ptrtoint ptr %key_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jrdev, align 8
  %key_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 11, i32 4, i32 28
  %10 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 128, i32 noundef %7, i32 noundef 32) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jrdev, align 8
  tail call void @caam_jr_free(ptr noundef %13) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_do_one_req(ptr nocapture noundef readonly %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %jrdev4 = getelementptr i8, ptr %1, i32 1432
  %2 = ptrtoint ptr %jrdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev4, align 8
  %edesc = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edesc, align 4
  %hw_desc = getelementptr inbounds %struct.ahash_edesc, ptr %5, i32 0, i32 5
  %bklog = getelementptr inbounds %struct.ahash_edesc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bklog to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bklog, align 4
  %ahash_op_done = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %ahash_op_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ahash_op_done, align 16
  %call6 = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc, ptr noundef %8, ptr noundef %areq) #11
  %9 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call6, label %entry.if.then8_crit_edge [
    i32 -28, label %land.lhs.true
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

land.lhs.true:                                    ; preds = %entry
  %retry_support = getelementptr inbounds %struct.crypto_engine, ptr %engine, i32 0, i32 4
  %10 = ptrtoint ptr %retry_support to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retry_support, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.then8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %entry.if.then8_crit_edge
  %12 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edesc, align 4
  %src_nents.i = getelementptr inbounds %struct.ahash_edesc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %src_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %16 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %17, i32 noundef %15, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %sec4_sg_bytes.i = getelementptr inbounds %struct.ahash_edesc, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sec4_sg_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %21, i32 noundef %19, i32 noundef 1, i32 noundef 0) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i = icmp eq i32 %23, 0
  br i1 %tobool6.not.i, label %if.end5.i.ahash_unmap.exit_crit_edge, label %if.then7.i

if.end5.i.ahash_unmap.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ahash_unmap.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %buflen.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3
  %24 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buflen.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #11
  %26 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %__ctx.i, align 128
  br label %ahash_unmap.exit

ahash_unmap.exit:                                 ; preds = %if.then7.i, %if.end5.i.ahash_unmap.exit_crit_edge
  %27 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edesc, align 4
  tail call void @kfree(ptr noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %ahash_unmap.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %land.lhs.true.cleanup_crit_edge ], [ %call6, %ahash_unmap.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !284, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/caamhash.c", i32 1990, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @caam_algapi_hash_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @caam_algapi_hash_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/caam/caamhash.c", i32 1997, i32 4}
!8 = !{ptr @caam_algapi_hash_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @caam_algapi_hash_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @caam_algapi_hash_init._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/crypto/caam/caamhash.c", i32 2011, i32 4}
!12 = !{ptr @caam_algapi_hash_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @caam_algapi_hash_init._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/crypto/caam/caamhash.c", i32 2017, i32 4}
!15 = !{ptr @caam_algapi_hash_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @hash_list, !17, !"hash_list", i1 false, i1 false}
!17 = !{!"../drivers/crypto/caam/caamhash.c", i32 86, i32 25}
!18 = !{ptr @driver_hash, !19, !"driver_hash", i1 false, i1 false}
!19 = !{!"../drivers/crypto/caam/caamhash.c", i32 1581, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/caam/caamhash.c", i32 1422, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ahash_update_first._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @ahash_update_first._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/caam/caamhash.c", i32 1430, i32 5}
!29 = !{ptr @ahash_update_first._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ahash_update_first._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/caam/caamhash.c", i32 1463, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ahash_update_first.__UNIQUE_ID_ddebug549, !32, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/caam/caamhash.c", i32 1482, i32 3}
!38 = !{ptr @ahash_update_first.__UNIQUE_ID_ddebug550, !37, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/caam/caamhash.c", i32 707, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ahash_edesc_alloc._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ahash_edesc_alloc._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/caam/desc_constr.h", i32 156, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @init_job_desc_shared._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @init_job_desc_shared._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/caam/caamhash.c", i32 737, i32 4}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ahash_edesc_add_src._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ahash_edesc_add_src._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/caam/sg_sw_sec4.h", i32 39, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, !56, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/caam/desc_constr.h", i32 358, i32 1}
!66 = !{ptr @append_seq_in_ptr._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @append_seq_in_ptr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/caam/desc_constr.h", i32 341, i32 1}
!70 = !{ptr @append_seq_in_ptr_extlen._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @append_seq_in_ptr_extlen._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/caam/caamhash.c", i32 149, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @map_seq_out_ptr_ctx._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @map_seq_out_ptr_ctx._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/caam/desc_constr.h", i32 359, i32 1}
!79 = !{ptr @append_seq_out_ptr._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @append_seq_out_ptr._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/caam/desc_constr.h", i32 342, i32 1}
!83 = !{ptr @append_seq_out_ptr_extlen._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @append_seq_out_ptr_extlen._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/caam/caamhash.c", i32 639, i32 2}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ahash_done_switch.__UNIQUE_ID_ddebug536, !86, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/caam/caamhash.c", i32 654, i32 2}
!91 = !{ptr @ahash_done_switch.__UNIQUE_ID_ddebug537, !90, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/caam/caamhash.c", i32 658, i32 2}
!94 = !{ptr @ahash_done_switch.__UNIQUE_ID_ddebug538, !93, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/caam/caamhash.c", i32 662, i32 3}
!97 = !{ptr @ahash_done_switch.__UNIQUE_ID_ddebug539, !96, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/caam/caamhash.c", i32 851, i32 4}
!100 = !{ptr @ahash_update_ctx._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ahash_update_ctx._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/caam/caamhash.c", i32 859, i32 5}
!104 = !{ptr @ahash_update_ctx._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ahash_update_ctx._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ahash_update_ctx._entry.48, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/crypto/caam/caamhash.c", i32 907, i32 4}
!108 = !{ptr @ahash_update_ctx._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/caam/caamhash.c", i32 917, i32 3}
!111 = !{ptr @ahash_update_ctx.__UNIQUE_ID_ddebug540, !110, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/caam/caamhash.c", i32 928, i32 3}
!114 = !{ptr @ahash_update_ctx.__UNIQUE_ID_ddebug541, !113, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/caam/caamhash.c", i32 190, i32 3}
!117 = !{ptr @ctx_map_to_sec4_sg._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ctx_map_to_sec4_sg._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/crypto/caam/caamhash.c", i32 172, i32 3}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @buf_map_to_sec4_sg._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @buf_map_to_sec4_sg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/caam/caamhash.c", i32 1017, i32 3}
!126 = !{ptr @ahash_finup_ctx._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ahash_finup_ctx._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @ahash_finup_ctx._entry.56, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/crypto/caam/caamhash.c", i32 1025, i32 4}
!130 = !{ptr @ahash_finup_ctx._entry_ptr.57, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/crypto/caam/caamhash.c", i32 1063, i32 2}
!133 = !{ptr @ahash_finup_ctx.__UNIQUE_ID_ddebug543, !132, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/caam/caamhash.c", i32 588, i32 2}
!136 = !{ptr @ahash_done_cpy.__UNIQUE_ID_ddebug534, !135, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/caam/caamhash.c", i32 600, i32 2}
!139 = !{ptr @ahash_done_cpy.__UNIQUE_ID_ddebug535, !138, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/caam/caamhash.c", i32 980, i32 3}
!142 = !{ptr @ahash_final_ctx._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ahash_final_ctx._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/caam/caamhash.c", i32 989, i32 2}
!146 = !{ptr @ahash_final_ctx.__UNIQUE_ID_ddebug542, !145, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/caam/caamhash.c", i32 1227, i32 4}
!149 = !{ptr @ahash_update_no_ctx._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ahash_update_no_ctx._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ahash_update_no_ctx._entry.64, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/crypto/caam/caamhash.c", i32 1235, i32 5}
!153 = !{ptr @ahash_update_no_ctx._entry_ptr.65, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @ahash_update_no_ctx._entry.66, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/crypto/caam/caamhash.c", i32 1272, i32 4}
!156 = !{ptr @ahash_update_no_ctx._entry_ptr.67, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/crypto/caam/caamhash.c", i32 1283, i32 3}
!159 = !{ptr @ahash_update_no_ctx.__UNIQUE_ID_ddebug546, !158, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/caam/caamhash.c", i32 1299, i32 3}
!162 = !{ptr @ahash_update_no_ctx.__UNIQUE_ID_ddebug547, !161, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/crypto/caam/caamhash.c", i32 1327, i32 3}
!165 = !{ptr @ahash_finup_no_ctx._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ahash_finup_no_ctx._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @ahash_finup_no_ctx._entry.71, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/crypto/caam/caamhash.c", i32 1335, i32 4}
!169 = !{ptr @ahash_finup_no_ctx._entry_ptr.72, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ahash_finup_no_ctx._entry.73, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/crypto/caam/caamhash.c", i32 1366, i32 3}
!172 = !{ptr @ahash_finup_no_ctx._entry_ptr.74, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/caam/caamhash.c", i32 1374, i32 2}
!175 = !{ptr @ahash_finup_no_ctx.__UNIQUE_ID_ddebug548, !174, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/caam/caamhash.c", i32 1167, i32 4}
!178 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ahash_final_no_ctx._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @ahash_final_no_ctx._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/crypto/caam/caamhash.c", i32 1178, i32 2}
!183 = !{ptr @ahash_final_no_ctx.__UNIQUE_ID_ddebug545, !182, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/crypto/caam/caamhash.c", i32 1091, i32 3}
!186 = !{ptr @ahash_digest._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @ahash_digest._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @ahash_digest._entry.80, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/crypto/caam/caamhash.c", i32 1099, i32 4}
!190 = !{ptr @ahash_digest._entry_ptr.81, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/crypto/caam/caamhash.c", i32 1133, i32 2}
!193 = !{ptr @ahash_digest.__UNIQUE_ID_ddebug544, !192, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/crypto/caam/caamhash.c", i32 432, i32 2}
!196 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ahash_setkey.__UNIQUE_ID_ddebug531, !195, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/crypto/caam/caamhash.c", i32 370, i32 3}
!200 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @hash_digest_key._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @hash_digest_key._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/crypto/caam/caamhash.c", i32 378, i32 3}
!205 = !{ptr @hash_digest_key._entry.87, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @hash_digest_key._entry_ptr.89, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/crypto/caam/caamhash.c", i32 393, i32 2}
!209 = !{ptr @hash_digest_key.__UNIQUE_ID_ddebug528, !208, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/caam/caamhash.c", i32 395, i32 2}
!212 = !{ptr @hash_digest_key.__UNIQUE_ID_ddebug529, !211, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/crypto/caam/caamhash.c", i32 408, i32 3}
!215 = !{ptr @hash_digest_key.__UNIQUE_ID_ddebug530, !214, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!218 = !{ptr @append_operation._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @append_operation._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/caam/desc_constr.h", i32 277, i32 1}
!222 = !{ptr @append_seq_fifo_load._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @append_seq_fifo_load._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/crypto/caam/desc_constr.h", i32 276, i32 1}
!226 = !{ptr @append_seq_store._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @append_seq_store._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @init_completion.__key, !229, !"__key", i1 false, i1 false}
!229 = !{!"../include/linux/completion.h", i32 87, i32 2}
!230 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @split_key_len.mdpadlen, !232, !"mdpadlen", i1 false, i1 false}
!232 = !{!"../drivers/crypto/caam/key_gen.h", i32 19, i32 18}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/crypto/caam/caamhash.c", i32 217, i32 2}
!235 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug516, !234, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!237 = !{ptr @.str.99, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/crypto/caam/caamhash.c", i32 227, i32 2}
!239 = !{ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug517, !238, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/crypto/caam/caamhash.c", i32 238, i32 2}
!242 = !{ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug518, !241, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!243 = !{ptr @.str.101, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/crypto/caam/caamhash.c", i32 249, i32 2}
!245 = !{ptr @ahash_set_sh_desc.__UNIQUE_ID_ddebug519, !244, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!246 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/crypto/caam/caamhash.c", i32 498, i32 2}
!248 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @axcbc_setkey.__UNIQUE_ID_ddebug532, !247, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!250 = !{ptr @.str.104, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/crypto/caam/caamhash.c", i32 269, i32 2}
!252 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug520, !251, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!254 = !{ptr @.str.106, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/crypto/caam/caamhash.c", i32 279, i32 2}
!256 = !{ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug521, !255, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!257 = !{ptr @.str.107, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/crypto/caam/caamhash.c", i32 292, i32 2}
!259 = !{ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug522, !258, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/crypto/caam/caamhash.c", i32 302, i32 2}
!262 = !{ptr @axcbc_set_sh_desc.__UNIQUE_ID_ddebug523, !261, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!263 = !{ptr @.str.109, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/crypto/caam/caamhash.c", i32 518, i32 2}
!265 = !{ptr @.str.110, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @acmac_setkey.__UNIQUE_ID_ddebug533, !264, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!267 = !{ptr @.str.111, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/crypto/caam/caamhash.c", i32 321, i32 2}
!269 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug524, !268, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!271 = !{ptr @.str.113, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/crypto/caam/caamhash.c", i32 331, i32 2}
!273 = !{ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug525, !272, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!274 = !{ptr @.str.114, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/crypto/caam/caamhash.c", i32 341, i32 2}
!276 = !{ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug526, !275, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!277 = !{ptr @.str.115, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/crypto/caam/caamhash.c", i32 351, i32 2}
!279 = !{ptr @acmac_set_sh_desc.__UNIQUE_ID_ddebug527, !278, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!280 = !{ptr @.str.116, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/crypto/caam/caamhash.c", i32 1906, i32 3}
!282 = !{ptr @.str.117, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @caam_hash_alloc._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @caam_hash_alloc._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/crypto/caam/caamhash.c", i32 1915, i32 48}
!287 = !{ptr @caam_hash_cra_init.runninglen, !288, !"runninglen", i1 false, i1 false}
!288 = !{!"../drivers/crypto/caam/caamhash.c", i32 1767, i32 18}
!289 = !{ptr @.str.119, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/crypto/caam/caamhash.c", i32 1784, i32 3}
!291 = !{ptr @.str.120, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @caam_hash_cra_init._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @caam_hash_cra_init._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.122, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/crypto/caam/caamhash.c", i32 1820, i32 4}
!296 = !{ptr @caam_hash_cra_init._entry.121, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @caam_hash_cra_init._entry_ptr.123, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.125, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/crypto/caam/caamhash.c", i32 1831, i32 3}
!300 = !{ptr @caam_hash_cra_init._entry.124, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @caam_hash_cra_init._entry_ptr.126, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{i8 0, i8 2}
!312 = !{i64 2152486027}
!313 = !{i64 2158420281}
!314 = !{i64 2148748422, i64 2148748427, i64 2148748440, i64 2148748484, i64 2148748518, i64 2148748539}
!315 = !{!"branch_weights", i32 2000, i32 1}
