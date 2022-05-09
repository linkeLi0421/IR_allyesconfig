; ModuleID = '/llk/IR_all_yes/drivers/crypto/inside-secure/safexcel_hash.c_pt.bc'
source_filename = "../drivers/crypto/inside-secure/safexcel_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.safexcel_alg_template = type { ptr, i32, i32, [116 x i8], %union.anon.75 }
%union.anon.75 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.safexcel_ahash_req = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [18 x i32], i64, i64, [128 x i8], i32, i32, [128 x i8] }
%struct.safexcel_ahash_export_state = type { i64, i64, i32, [16 x i32], [128 x i8] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.safexcel_inv_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.safexcel_crypto_priv = type { ptr, ptr, ptr, ptr, %struct.safexcel_config, i32, %struct.safexcel_register_offsets, %struct.safexcel_hwconfig, i32, ptr, %struct.atomic_t, ptr }
%struct.safexcel_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_register_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_hwconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_ring = type { %struct.spinlock, ptr, %struct.safexcel_work_data, %struct.safexcel_desc_ring, %struct.safexcel_desc_ring, ptr, %struct.crypto_queue, %struct.spinlock, i32, i8, ptr, ptr, i32 }
%struct.safexcel_work_data = type { %struct.work_struct, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.safexcel_desc_ring = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.safexcel_ahash_result = type { %struct.completion, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.safexcel_context = type { ptr, ptr, ptr, ptr, i32, %union.anon.76, %union.anon.76, i32, i8, i8 }
%union.anon.76 = type { [18 x i32] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.safexcel_context_record = type { i32, i32, [40 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.safexcel_command_desc = type { i32, i32, i32, i32, i32, i32, %struct.safexcel_control_data_desc }
%struct.safexcel_control_data_desc = type { i32, i16, i16, i32, i32, i32, i32, [4 x i32] }

@safexcel_alg_sha1 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 8388608, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha1_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sha1_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha1 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 8388608, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha1_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sha1_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sha1_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha256 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 33554432, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha256_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sha256_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha224 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 33554432, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha224_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sha224_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha224 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 33554432, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha224_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sha224_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sha224_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha256 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 33554432, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha256_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sha256_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sha256_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha512 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 67108864, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha512_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sha512_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 128, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha384 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 67108864, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha384_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sha384_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 128, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha512 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 67108864, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha512_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sha512_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sha512_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 128, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha384 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 67108864, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha384_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sha384_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sha384_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 128, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_md5 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 4194304, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_md5_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_md5_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_md5 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 4194304, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_md5_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_md5_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_md5_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_crc32 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 0, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_crc32_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_crc32_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_crc32_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 4, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 86144, i32 1, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_crc32_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_cbcmac = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 0, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_cbcmac_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_cbcmac_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_cbcmac_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbcmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cbcmac-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_xcbcmac = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 0, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_cbcmac_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_cbcmac_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_xcbcmac_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-xcbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_xcbcmac_cra_init, ptr @safexcel_xcbcmac_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_cmac = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 0, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_cbcmac_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_cbcmac_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_cmac_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cmac-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_xcbcmac_cra_init, ptr @safexcel_xcbcmac_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sm3 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 128, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sm3_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_sm3_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sm3 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 128, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sm3_init, ptr @safexcel_ahash_update, ptr @safexcel_ahash_final, ptr @safexcel_ahash_finup, ptr @safexcel_hmac_sm3_digest, ptr @safexcel_ahash_export, ptr @safexcel_ahash_import, ptr @safexcel_hmac_sm3_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sm3)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_ahash_cra_init, ptr @safexcel_ahash_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha3_224 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha3_224_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_sha3_224_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 144, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_sha3_cra_init, ptr @safexcel_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha3_256 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha3_256_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_sha3_256_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 136, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_sha3_cra_init, ptr @safexcel_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha3_384 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha3_384_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_sha3_384_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 104, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_sha3_cra_init, ptr @safexcel_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_sha3_512 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_sha3_512_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_sha3_512_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 72, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_sha3_cra_init, ptr @safexcel_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha3_224 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha3_224_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_hmac_sha3_224_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr @safexcel_hmac_sha3_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 144, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_hmac_sha3_224_cra_init, ptr @safexcel_hmac_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha3_256 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha3_256_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_hmac_sha3_256_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr @safexcel_hmac_sha3_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 136, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_hmac_sha3_256_cra_init, ptr @safexcel_hmac_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha3_384 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha3_384_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_hmac_sha3_384_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr @safexcel_hmac_sha3_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 104, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_hmac_sha3_384_cra_init, ptr @safexcel_hmac_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@safexcel_alg_hmac_sha3_512 = dso_local local_unnamed_addr global %struct.safexcel_alg_template { ptr null, i32 2, i32 -2147483648, [116 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @safexcel_hmac_sha3_512_init, ptr @safexcel_sha3_update, ptr @safexcel_sha3_final, ptr @safexcel_sha3_finup, ptr @safexcel_hmac_sha3_512_digest, ptr @safexcel_sha3_export, ptr @safexcel_sha3_import, ptr @safexcel_hmac_sha3_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 72, i32 200, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-hmac-sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_hmac_sha3_512_cra_init, ptr @safexcel_hmac_sha3_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } } }, align 128
@md5_zero_message_hash = external dso_local local_unnamed_addr constant [16 x i8], align 1
@sha1_zero_message_hash = external dso_local local_unnamed_addr constant [20 x i8], align 1
@sha224_zero_message_hash = external dso_local local_unnamed_addr constant [28 x i8], align 1
@sha256_zero_message_hash = external dso_local local_unnamed_addr constant [32 x i8], align 1
@sha384_zero_message_hash = external dso_local local_unnamed_addr constant [48 x i8], align 1
@sha512_zero_message_hash = external dso_local local_unnamed_addr constant [64 x i8], align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\1A\B2\1D\83U\CF\A1\7F\8Ea\19H1\E8\1A\8F\22\BE\C8\C7(\FE\FBt~\D05\EBP\82\AA+\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@safexcel_context_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input data is too big\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"safexcel_context_control\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/crypto/inside-secure/safexcel_hash.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@safexcel_context_control._entry_ptr = internal global ptr @safexcel_context_control._entry, section ".printk_index", align 4
@safexcel_handle_inv_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 533, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"hash: invalidate: could not retrieve the result descriptor\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safexcel_handle_inv_result\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@safexcel_handle_inv_result._entry_ptr = internal global ptr @safexcel_handle_inv_result._entry, section ".printk_index", align 4
@safexcel_handle_req_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 243, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"hash: result: could not retrieve the result descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safexcel_handle_req_result\00", [37 x i8] zeroinitializer }, align 32
@safexcel_handle_req_result._entry_ptr = internal global ptr @safexcel_handle_req_result._entry, section ".printk_index", align 4
@safexcel_ahash_cra_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hash: invalidation error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"safexcel_ahash_cra_exit\00", [40 x i8] zeroinitializer }, align 32
@safexcel_ahash_cra_exit._entry_ptr = internal global ptr @safexcel_ahash_cra_exit._entry, section ".printk_index", align 4
@safexcel_ahash_exit_inv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 654, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hash: completion error (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"safexcel_ahash_exit_inv\00", [40 x i8] zeroinitializer }, align 32
@safexcel_ahash_exit_inv._entry_ptr = internal global ptr @safexcel_ahash_exit_inv._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"safexcel-sha1\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha224\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha256\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha512\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha384\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"safexcel-md5\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"safexcel-sm3\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-224\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-256\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-384\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-512\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 800, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 326, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 176, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 532, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 242, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 974, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 653, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1228, i32 52 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1381, i32 52 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1453, i32 52 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1639, i32 52 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1711, i32 52 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1864, i32 52 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2103, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2105, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2107, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2133, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2333, i32 52 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2897, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 2968, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 3039, i32 42 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [48 x i8] c"../drivers/crypto/inside-secure/safexcel_hash.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 3110, i32 42 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @safexcel_ahash_cra_exit._entry, ptr @safexcel_ahash_cra_exit._entry_ptr, ptr @safexcel_ahash_exit_inv._entry, ptr @safexcel_ahash_exit_inv._entry_ptr, ptr @safexcel_context_control._entry, ptr @safexcel_context_control._entry_ptr, ptr @safexcel_handle_inv_result._entry, ptr @safexcel_handle_inv_result._entry_ptr, ptr @safexcel_handle_req_result._entry, ptr @safexcel_handle_req_result._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_context_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_handle_inv_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_handle_req_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_ahash_cra_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_ahash_exit_inv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha1_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ahash_update(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len.i.i, align 8
  %processed.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %4 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %processed.i.i, align 8
  %sub.i.i = sub i64 %3, %5
  %conv.i = zext i32 %1 to i64
  %add.i = add i64 %sub.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 129, i64 %add.i)
  %cmp.i = icmp ult i64 %add.i, 129
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.critedge

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %6 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src.i, align 4
  %call4.i = tail call i32 @sg_nents(ptr noundef %7) #11
  %cache.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 72
  %idx.ext.i = trunc i64 %sub.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %cache.i, i32 %idx.ext.i
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %call6.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %7, i32 noundef %call4.i, ptr noundef %add.ptr.i, i32 noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 8
  %conv.c17 = zext i32 %11 to i64
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len.i.i, align 8
  %add.c19 = add i64 %13, %conv.c17
  store i64 %add.c19, ptr %len.i.i, align 8
  br label %lor.lhs.false

land.lhs.true.critedge:                           ; preds = %if.end
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 8
  %conv.c = zext i32 %15 to i64
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len.i.i, align 8
  %add.c = add i64 %17, %conv.c
  store i64 %add.c, ptr %len.i.i, align 8
  %finish = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %18 = ptrtoint ptr %finish to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %finish, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %land.lhs.true.critedge.if.then7_crit_edge, label %land.lhs.true.critedge.lor.lhs.false_crit_edge

land.lhs.true.critedge.lor.lhs.false_crit_edge:   ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true.critedge.if.then7_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true.critedge.lor.lhs.false_crit_edge, %if.then.i
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %__ctx.i, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %land.lhs.true.critedge.if.then7_crit_edge
  %call8 = tail call fastcc i32 @safexcel_ahash_enqueue(ptr noundef %areq)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ahash_final(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %finish = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %2 = ptrtoint ptr %finish to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %finish, align 1
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.else43_crit_edge

entry.if.else43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

land.rhs:                                         ; preds = %entry
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %5 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then, label %land.rhs.if.else43_crit_edge, !prof !130

land.rhs.if.else43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

if.then:                                          ; preds = %land.rhs
  %alg = getelementptr i8, ptr %1, i32 300
  %7 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alg, align 4
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 9)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
    i32 4, label %if.then15
    i32 3, label %if.then20
    i32 6, label %if.then25
    i32 5, label %if.then30
    i32 7, label %if.then35
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %result, align 32
  %13 = call ptr @memcpy(ptr %12, ptr @md5_zero_message_hash, i32 16)
  br label %cleanup

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result11 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %14 = ptrtoint ptr %result11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %result11, align 32
  %16 = call ptr @memcpy(ptr %15, ptr @sha1_zero_message_hash, i32 20)
  br label %cleanup

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result16 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %17 = ptrtoint ptr %result16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %result16, align 32
  %19 = call ptr @memcpy(ptr %18, ptr @sha224_zero_message_hash, i32 28)
  br label %cleanup

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result21 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %20 = ptrtoint ptr %result21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %result21, align 32
  %22 = call ptr @memcpy(ptr %21, ptr @sha256_zero_message_hash, i32 32)
  br label %cleanup

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result26 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %23 = ptrtoint ptr %result26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %result26, align 32
  %25 = call ptr @memcpy(ptr %24, ptr @sha384_zero_message_hash, i32 48)
  br label %cleanup

if.then30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result31 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %26 = ptrtoint ptr %result31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %result31, align 32
  %28 = call ptr @memcpy(ptr %27, ptr @sha512_zero_message_hash, i32 64)
  br label %cleanup

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %result36 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %29 = ptrtoint ptr %result36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %result36, align 32
  %31 = call ptr @memcpy(ptr %30, ptr @.str, i32 32)
  br label %cleanup

if.else43:                                        ; preds = %land.rhs.if.else43_crit_edge, %entry.if.else43_crit_edge
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %digest, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %33)
  %cmp44 = icmp eq i32 %33, 4194304
  br i1 %cmp44, label %land.lhs.true, label %if.else43.if.else64_crit_edge

if.else43.if.else64_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else64

land.lhs.true:                                    ; preds = %if.else43
  %alg45 = getelementptr i8, ptr %1, i32 300
  %34 = ptrtoint ptr %alg45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alg45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp46 = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %4)
  %cmp49 = icmp eq i64 %4, 4
  %or.cond = select i1 %cmp46, i1 %cmp49, i1 false
  br i1 %or.cond, label %land.rhs50, label %land.lhs.true.if.else64_crit_edge

land.lhs.true.if.else64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else64

land.rhs50:                                       ; preds = %land.lhs.true
  %nbytes51 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %36 = ptrtoint ptr %nbytes51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nbytes51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool52.not = icmp eq i32 %37, 0
  br i1 %tobool52.not, label %if.then62, label %land.rhs50.if.else113_crit_edge, !prof !130

land.rhs50.if.else113_crit_edge:                  ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

if.then62:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  %result63 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %38 = ptrtoint ptr %result63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %result63, align 32
  %ipad = getelementptr i8, ptr %1, i32 148
  %40 = ptrtoint ptr %ipad to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ipad, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %39, align 1
  br label %cleanup

if.else64:                                        ; preds = %land.lhs.true.if.else64_crit_edge, %if.else43.if.else64_crit_edge
  %cbcmac = getelementptr i8, ptr %1, i32 305
  %43 = ptrtoint ptr %cbcmac to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cbcmac, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool65.not = icmp ne i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %4)
  %cmp68 = icmp eq i64 %4, 16
  %or.cond270 = select i1 %tobool65.not, i1 %cmp68, i1 false
  br i1 %or.cond270, label %land.rhs69, label %if.else83

land.rhs69:                                       ; preds = %if.else64
  %nbytes70 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %45 = ptrtoint ptr %nbytes70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbytes70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool71.not = icmp eq i32 %46, 0
  br i1 %tobool71.not, label %if.then81, label %if.else83.thread, !prof !130

if.then81:                                        ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #13
  %result82 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %47 = ptrtoint ptr %result82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %result82, align 32
  %49 = call ptr @memset(ptr %48, i32 0, i32 16)
  br label %cleanup

if.else83:                                        ; preds = %if.else64
  %xcbcmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 7
  %50 = ptrtoint ptr %xcbcmac to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %xcbcmac, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool84.not = icmp ne i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %4)
  %cmp87 = icmp eq i64 %4, 16
  %or.cond271 = select i1 %tobool84.not, i1 %cmp87, i1 false
  br i1 %or.cond271, label %if.else83.land.rhs88_crit_edge, label %if.else83.if.else113_crit_edge

if.else83.if.else113_crit_edge:                   ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

if.else83.land.rhs88_crit_edge:                   ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs88

if.else83.thread:                                 ; preds = %land.rhs69
  %xcbcmac267 = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 7
  %52 = ptrtoint ptr %xcbcmac267 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %xcbcmac267, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool84.not268 = icmp eq i8 %53, 0
  br i1 %tobool84.not268, label %if.else83.thread.if.else113_crit_edge, label %if.else83.thread.land.rhs88_crit_edge

if.else83.thread.land.rhs88_crit_edge:            ; preds = %if.else83.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs88

if.else83.thread.if.else113_crit_edge:            ; preds = %if.else83.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

land.rhs88:                                       ; preds = %if.else83.thread.land.rhs88_crit_edge, %if.else83.land.rhs88_crit_edge
  %nbytes89 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %54 = ptrtoint ptr %nbytes89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nbytes89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool90.not = icmp eq i32 %55, 0
  br i1 %tobool90.not, label %for.cond.preheader, label %land.rhs88.if.else113_crit_edge, !prof !130

land.rhs88.if.else113_crit_edge:                  ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else113

for.cond.preheader:                               ; preds = %land.rhs88
  call void @__sanitizer_cov_trace_pc() #13
  %result103 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %56 = ptrtoint ptr %result103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %result103, align 32
  %arrayidx = getelementptr i8, ptr %1, i32 164
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %57, align 4
  %62 = ptrtoint ptr %result103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %result103, align 32
  %arrayidx.1 = getelementptr i8, ptr %1, i32 168
  %64 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.1, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #11
  %arrayidx107.1 = getelementptr i32, ptr %63, i32 1
  %67 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx107.1, align 4
  %68 = ptrtoint ptr %result103 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %result103, align 32
  %arrayidx.2 = getelementptr i8, ptr %1, i32 172
  %70 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.2, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %arrayidx107.2 = getelementptr i32, ptr %69, i32 2
  %73 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx107.2, align 4
  %74 = ptrtoint ptr %result103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %result103, align 32
  %arrayidx.3 = getelementptr i8, ptr %1, i32 176
  %76 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.3, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #11
  %arrayidx107.3 = getelementptr i32, ptr %75, i32 3
  %79 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx107.3, align 4
  %80 = ptrtoint ptr %result103 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %result103, align 32
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %84 = xor i8 %83, -128
  store i8 %84, ptr %81, align 1
  %kaes = getelementptr i8, ptr %1, i32 312
  %85 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %kaes, align 4
  %87 = load ptr, ptr %result103, align 32
  tail call void @crypto_cipher_encrypt_one(ptr noundef %86, ptr noundef %87, ptr noundef %87) #11
  br label %cleanup

if.else113:                                       ; preds = %land.rhs88.if.else113_crit_edge, %if.else83.thread.if.else113_crit_edge, %if.else83.if.else113_crit_edge, %land.rhs50.if.else113_crit_edge
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %88 = ptrtoint ptr %hmac to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hmac, align 2, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool114.not = icmp eq i8 %89, 0
  br i1 %tobool114.not, label %if.else113.if.end191_crit_edge, label %land.lhs.true116

if.else113.if.end191_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191

land.lhs.true116:                                 ; preds = %if.else113
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %90 = ptrtoint ptr %block_sz to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %block_sz, align 1
  %conv118 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv118)
  %cmp119 = icmp eq i64 %4, %conv118
  br i1 %cmp119, label %land.rhs121, label %land.lhs.true116.if.end191.sink.split_crit_edge

land.lhs.true116.if.end191.sink.split_crit_edge:  ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191.sink.split

land.rhs121:                                      ; preds = %land.lhs.true116
  %nbytes122 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %92 = ptrtoint ptr %nbytes122 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nbytes122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool123.not = icmp eq i32 %93, 0
  br i1 %tobool123.not, label %if.then133, label %land.rhs121.if.end191.sink.split_crit_edge, !prof !130

land.rhs121.if.end191.sink.split_crit_edge:       ; preds = %land.rhs121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191.sink.split

if.then133:                                       ; preds = %land.rhs121
  %cache = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 72
  %conv135 = zext i8 %91 to i32
  %94 = call ptr @memset(ptr %cache, i32 0, i32 %conv135)
  %95 = ptrtoint ptr %cache to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -128, ptr %cache, align 8
  %len_is_le = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 5
  %96 = ptrtoint ptr %len_is_le to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %len_is_le, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool138.not = icmp eq i8 %97, 0
  br i1 %tobool138.not, label %if.else155, label %if.then139

if.then139:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i8 %91, 3
  %sub = add nsw i32 %conv135, -8
  %arrayidx146 = getelementptr %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 17, i32 %sub
  %98 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %shl, ptr %arrayidx146, align 1
  %99 = lshr i8 %91, 5
  br label %if.end175

if.else155:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  %100 = lshr i8 %91, 5
  %sub163 = add nsw i32 %conv135, -2
  %arrayidx164 = getelementptr %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 17, i32 %sub163
  %101 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx164, align 1
  %shl167 = shl i8 %91, 3
  br label %if.end175

if.end175:                                        ; preds = %if.else155, %if.then139
  %.sink = phi i32 [ -1, %if.else155 ], [ -7, %if.then139 ]
  %shl167.sink = phi i8 [ %shl167, %if.else155 ], [ %99, %if.then139 ]
  %sub173 = add nsw i32 %.sink, %conv135
  %arrayidx174 = getelementptr %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 17, i32 %sub173
  %102 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %shl167.sink, ptr %arrayidx174, align 1
  %103 = ptrtoint ptr %block_sz to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %block_sz, align 1
  %conv177 = zext i8 %104 to i64
  %add179 = add i64 %4, %conv177
  %105 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %add179, ptr %len, align 8
  %hmac_zlen = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %hmac_zlen to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %hmac_zlen, align 4
  br label %if.end191.sink.split

if.end191.sink.split:                             ; preds = %if.end175, %land.rhs121.if.end191.sink.split_crit_edge, %land.lhs.true116.if.end191.sink.split_crit_edge
  %107 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 6291456, ptr %digest, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.end191.sink.split, %if.else113.if.end191_crit_edge
  %call192 = tail call fastcc i32 @safexcel_ahash_enqueue(ptr noundef %areq)
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %for.cond.preheader, %if.then81, %if.then62, %if.then35, %if.then30, %if.then25, %if.then20, %if.then15, %if.then10, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then62 ], [ 0, %if.then81 ], [ 0, %for.cond.preheader ], [ %call192, %if.end191 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.then20 ], [ 0, %if.then30 ], [ 0, %if.then35 ], [ 0, %if.then25 ], [ 0, %if.then15 ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ahash_finup(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %finish = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %0 = ptrtoint ptr %finish to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %finish, align 1
  %call1 = tail call i32 @safexcel_ahash_update(ptr noundef %areq)
  %call2 = tail call i32 @safexcel_ahash_final(ptr noundef %areq)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha1_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_ahash_export(ptr nocapture noundef readonly %areq, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %len, align 8
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %out, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %3 = ptrtoint ptr %processed to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %processed, align 8
  %processed2 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %out, i32 0, i32 1
  %5 = ptrtoint ptr %processed2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %processed2, align 8
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digest, align 8
  %digest3 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %out, i32 0, i32 2
  %8 = ptrtoint ptr %digest3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %digest3, align 8
  %state = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %out, i32 0, i32 3
  %state4 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %state_sz to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state_sz, align 4
  %conv = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %state, ptr %state4, i32 %conv)
  %cache = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %out, i32 0, i32 4
  %cache7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 72
  %12 = call ptr @memcpy(ptr %cache, ptr %cache7, i32 128)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ahash_import(ptr noundef %areq, ptr nocapture noundef readonly %in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_init.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

crypto_ahash_init.exit:                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = tail call i32 %5(ptr noundef %areq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_ahash_init.exit.cleanup_crit_edge

crypto_ahash_init.exit.cleanup_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %in, align 8
  %len2 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %len2, align 8
  %processed = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %in, i32 0, i32 1
  %9 = ptrtoint ptr %processed to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %processed, align 8
  %processed3 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %11 = ptrtoint ptr %processed3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %processed3, align 8
  %digest = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %in, i32 0, i32 2
  %12 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %digest, align 8
  %digest4 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %digest4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %digest4, align 8
  %cache = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 72
  %cache5 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %in, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %cache, ptr %cache5, i32 128)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %state8 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %in, i32 0, i32 3
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %state_sz to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %state_sz, align 4
  %conv = zext i8 %17 to i32
  %18 = call ptr @memcpy(ptr %state, ptr %state8, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %crypto_ahash_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %crypto_ahash_init.exit.cleanup_crit_edge ], [ -126, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_ahash_cra_init(ptr nocapture noundef %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %priv2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv2, align 4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @safexcel_ahash_send, ptr %__crt_ctx.i, align 4
  %handle_result = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %handle_result to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_handle_result, ptr %handle_result, align 4
  %fb_do_setkey = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %7 = ptrtoint ptr %fb_do_setkey to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fb_do_setkey, align 4
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 376, ptr %reqsize1.i, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_ahash_cra_exit(ptr noundef %tfm) #1 align 64 {
entry:
  %__req_desc.i = alloca [504 x i8], align 128
  %result.i = alloca %struct.safexcel_inv_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ctxr = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctxr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %__req_desc.i) #11
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %__req_desc.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i) #11
  %8 = getelementptr inbounds i8, ptr %result.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 56)
  %ring4.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 20
  %10 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring4.i, align 4
  %12 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 504)
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %result.i, align 4
  call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 1
  %14 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @safexcel_inv_complete, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 2
  %15 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %result.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 4
  %16 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1024, ptr %flags4.i.i, align 4
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 3
  %17 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tfm, ptr %tfm1.i.i, align 16
  %exit_inv.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 25
  %18 = ptrtoint ptr %exit_inv.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %exit_inv.i, align 1
  %needs_inv.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %needs_inv.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %needs_inv.i, align 1
  %ring10.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %7, i32 0, i32 11
  %20 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring10.i, align 4
  %queue_lock.i = getelementptr %struct.safexcel_ring, ptr %21, i32 %11, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %queue_lock.i) #11
  %22 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring10.i, align 4
  %queue.i = getelementptr %struct.safexcel_ring, ptr %23, i32 %11, i32 6
  %call14.i = call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef nonnull %__req_desc.i) #11
  %24 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring10.i, align 4
  %queue_lock17.i = getelementptr %struct.safexcel_ring, ptr %25, i32 %11, i32 7
  call void @_raw_spin_unlock_bh(ptr noundef %queue_lock17.i) #11
  %26 = ptrtoint ptr %ring10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring10.i, align 4
  %workqueue.i = getelementptr %struct.safexcel_ring, ptr %27, i32 %11, i32 1
  %28 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workqueue.i, align 4
  %work_data.i = getelementptr %struct.safexcel_ring, ptr %27, i32 %11, i32 2
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work_data.i) #11
  call void @wait_for_completion(ptr noundef nonnull %result.i) #11
  %error.i = getelementptr inbounds %struct.safexcel_inv_result, ptr %result.i, i32 0, i32 1
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %safexcel_ahash_exit_inv.exit.thread, label %safexcel_ahash_exit_inv.exit

safexcel_ahash_exit_inv.exit.thread:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #11
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %__req_desc.i) #11
  br label %cleanup

safexcel_ahash_exit_inv.exit:                     ; preds = %if.then4
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %7, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.15, i32 noundef %31) #14
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #11
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %__req_desc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not = icmp eq i32 %35, 0
  br i1 %tobool6.not, label %safexcel_ahash_exit_inv.exit.cleanup_crit_edge, label %do.end

safexcel_ahash_exit_inv.exit.cleanup_crit_edge:   ; preds = %safexcel_ahash_exit_inv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %safexcel_ahash_exit_inv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef %35) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %context_pool, align 4
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %40 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctxr_dma, align 4
  tail call void @dma_pool_free(ptr noundef %39, ptr noundef nonnull %3, i32 noundef %41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %safexcel_ahash_exit_inv.exit.cleanup_crit_edge, %safexcel_ahash_exit_inv.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @safexcel_hmac_setkey(ptr nocapture noundef %base, ptr noundef %key, i32 noundef %keylen, ptr noundef %alg, i32 noundef %state_sz) local_unnamed_addr #1 align 64 {
entry:
  %result.i.i = alloca %struct.safexcel_ahash_result, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  %istate = alloca %struct.safexcel_ahash_export_state, align 8
  %ostate = alloca %struct.safexcel_ahash_export_state, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %istate) #11
  %2 = call ptr @memset(ptr %istate, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %ostate) #11
  %3 = call ptr @memset(ptr %ostate, i32 255, i32 216)
  %call.i = tail call ptr @crypto_alloc_ahash(ptr noundef %alg, i32 noundef 0, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call.i to i32
  br label %__safexcel_hmac_setkey.exit

if.end8.i.i.i:                                    ; preds = %entry
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqsize.i.i.i, align 32
  %add.i.i = add i32 %6, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.free_ahash.i_crit_edge, label %if.end5.i, !prof !130

if.end8.i.i.i.free_ahash.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ahash.i

if.end5.i:                                        ; preds = %if.end8.i.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %8 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %base.i.i.i.i, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cra_blocksize.i.i, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 2) #11
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end5.i.free_request.i_crit_edge, label %if.end7.i.i.i, !prof !130

if.end5.i.free_request.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_request.i

if.end7.i.i.i:                                    ; preds = %if.end5.i
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #15
  %tobool9.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.i.i.free_request.i_crit_edge, label %if.end11.i

if.end7.i.i.i.free_request.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_request.i

if.end11.i:                                       ; preds = %if.end7.i.i.i
  %add.ptr.i = getelementptr i8, ptr %call8.i.i.i, i32 %12
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i.i) #11
  %16 = call ptr @memset(ptr %result.i.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %keylen)
  %cmp.not.i.i = icmp ult i32 %12, %keylen
  %17 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i49.i

if.then.i49.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call ptr @memcpy(ptr %call8.i.i.i, ptr %key, i32 %keylen)
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end11.i
  %call.i.i = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #11
  %tobool.not.i50.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i50.i, label %if.else.i.i.safexcel_hmac_init_pad.exit.i_crit_edge, label %if.end.i.i

if.else.i.i.safexcel_hmac_init_pad.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %safexcel_hmac_init_pad.exit.i

if.end.i.i:                                       ; preds = %if.else.i.i
  %complete.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @safexcel_ahash_complete, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %result.i.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1024, ptr %flags4.i.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef nonnull %call.i.i, i32 noundef %keylen) #11
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %keylen, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i.i, ptr %result3.i.i.i, align 32
  %25 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %result.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.completion, ptr %result.i.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %call2.i.i = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i.i) #11
  %26 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call2.i.i, label %if.end.i.i.if.end8.i.i_crit_edge [
    i32 -115, label %if.end.i.i.if.then5.i.i_crit_edge
    i32 -16, label %if.end.i.i.if.then5.i.i_crit_edge31
  ]

if.end.i.i.if.then5.i.i_crit_edge31:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i.i

if.end.i.i.if.then5.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i.if.then5.i.i_crit_edge, %if.end.i.i.if.then5.i.i_crit_edge31
  %call7.i.i = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %result.i.i) #11
  %error.i.i = getelementptr inbounds %struct.safexcel_ahash_result, ptr %result.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %28, %if.then5.i.i ], [ %call2.i.i, %if.end.i.i.if.end8.i.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool9.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end8.i.i.safexcel_hmac_init_pad.exit.i_crit_edge

if.end8.i.i.safexcel_hmac_init_pad.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %safexcel_hmac_init_pad.exit.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tfm1.i.i.i, align 16
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %30, i32 12
  %31 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i.i.i, align 128
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end11.i.i, %if.then.i49.i
  %keylen.addr.0.i.i = phi i32 [ %keylen, %if.then.i49.i ], [ %34, %if.end11.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %call8.i.i.i, i32 %keylen.addr.0.i.i
  %sub.i.i = sub i32 %12, %keylen.addr.0.i.i
  %35 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %36 = call ptr @memcpy(ptr %add.ptr.i, ptr %call8.i.i.i, i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1551.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp1551.not.i.i, label %if.end14.i.i.if.end15.i_crit_edge, label %if.end14.i.i.for.body.i.i_crit_edge

if.end14.i.i.for.body.i.i_crit_edge:              ; preds = %if.end14.i.i
  br label %for.body.i.i

if.end14.i.i.if.end15.i_crit_edge:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.i.i.for.body.i.i_crit_edge
  %i.052.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %call8.i.i.i, i32 %i.052.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 1
  %39 = xor i8 %38, 54
  store i8 %39, ptr %arrayidx.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.052.i.i
  %40 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx17.i.i, align 1
  %42 = xor i8 %41, 92
  store i8 %42, ptr %arrayidx17.i.i, align 1
  %inc.i.i = add nuw i32 %i.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end15.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.if.end15.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

safexcel_hmac_init_pad.exit.i:                    ; preds = %if.end8.i.i.safexcel_hmac_init_pad.exit.i_crit_edge, %if.else.i.i.safexcel_hmac_init_pad.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -12, %if.else.i.i.safexcel_hmac_init_pad.exit.i_crit_edge ], [ %ret.0.i.i, %if.end8.i.i.safexcel_hmac_init_pad.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i.i) #11
  br label %free_ipad.i

if.end15.i:                                       ; preds = %for.body.i.i.if.end15.i_crit_edge, %if.end14.i.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i.i) #11
  %call16.i = call fastcc i32 @safexcel_hmac_init_iv(ptr noundef nonnull %call9.i.i.i, i32 noundef %12, ptr noundef nonnull %call8.i.i.i, ptr noundef nonnull %istate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.free_ipad.i_crit_edge

if.end15.i.free_ipad.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ipad.i

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = call fastcc i32 @safexcel_hmac_init_iv(ptr noundef nonnull %call9.i.i.i, i32 noundef %12, ptr noundef %add.ptr.i, ptr noundef nonnull %ostate) #11
  br label %free_ipad.i

free_ipad.i:                                      ; preds = %if.end19.i, %if.end15.i.free_ipad.i_crit_edge, %safexcel_hmac_init_pad.exit.i
  %ret.0.i = phi i32 [ %retval.0.i.i, %safexcel_hmac_init_pad.exit.i ], [ %call16.i, %if.end15.i.free_ipad.i_crit_edge ], [ %call20.i, %if.end19.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %free_request.i

free_request.i:                                   ; preds = %free_ipad.i, %if.end7.i.i.i.free_request.i_crit_edge, %if.end5.i.free_request.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %free_ipad.i ], [ -12, %if.end7.i.i.i.free_request.i_crit_edge ], [ -12, %if.end5.i.free_request.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #11
  br label %free_ahash.i

free_ahash.i:                                     ; preds = %free_request.i, %if.end8.i.i.i.free_ahash.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %free_request.i ], [ -12, %if.end8.i.i.i.free_ahash.i_crit_edge ]
  %base.i.i51.i = getelementptr inbounds %struct.crypto_ahash, ptr %call.i, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call.i, ptr noundef %base.i.i51.i) #11
  br label %__safexcel_hmac_setkey.exit

__safexcel_hmac_setkey.exit:                      ; preds = %free_ahash.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %ret.2.i, %free_ahash.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %__safexcel_hmac_setkey.exit.cleanup_crit_edge

__safexcel_hmac_setkey.exit.cleanup_crit_edge:    ; preds = %__safexcel_hmac_setkey.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__safexcel_hmac_setkey.exit
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %ctxr = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 2
  %45 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctxr, align 4
  %tobool3.not = icmp eq ptr %46, null
  br i1 %tobool3.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true4

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %ipad = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 5
  %state = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %istate, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr %ipad, ptr %state, i32 %state_sz) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true4.if.then11_crit_edge

land.lhs.true4.if.then11_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %opad = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 6
  %state7 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %ostate, i32 0, i32 3
  %bcmp30 = call i32 @bcmp(ptr %opad, ptr %state7, i32 %state_sz) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp30)
  %tobool10.not = icmp eq i32 %bcmp30, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %land.lhs.true4.if.then11_crit_edge
  %needs_inv = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 8
  %47 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ipad13 = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 5
  %state14 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %istate, i32 0, i32 3
  %48 = call ptr @memcpy(ptr %ipad13, ptr %state14, i32 %state_sz)
  %opad15 = getelementptr inbounds %struct.safexcel_context, ptr %base, i32 0, i32 6
  %state16 = getelementptr inbounds %struct.safexcel_ahash_export_state, ptr %ostate, i32 0, i32 3
  %49 = call ptr @memcpy(ptr %opad15, ptr %state16, i32 %state_sz)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %__safexcel_hmac_setkey.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %ostate) #11
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %istate) #11
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha1_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 20)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha1_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 20)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha1_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.18, i32 noundef 20) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha256_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 25165824, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha256_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 25165824, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha224_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554432, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha224_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554432, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha224_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 32)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554432, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha224_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 32)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554432, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha224_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.19, i32 noundef 32) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha256_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 32)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 25165824, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha256_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 32)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 25165824, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha256_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.20, i32 noundef 32) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha512_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 41943040, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha512_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 41943040, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha384_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50331648, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha384_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50331648, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha512_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 64)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 128, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 128, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 41943040, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha512_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 64)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 128, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 128, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 41943040, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha512_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.21, i32 noundef 64) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha384_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 64)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 128, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 128, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50331648, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha384_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 64)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 128, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 128, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50331648, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha384_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.22, i32 noundef 64) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_md5_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_md5_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_md5_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 16)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz, align 1
  %len_is_le = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 5
  %11 = ptrtoint ptr %len_is_le to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %len_is_le, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %12 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_md5_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 16)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz.i, align 1
  %len_is_le.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %len_is_le.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %len_is_le.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_md5_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.23, i32 noundef 16) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_crc32_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = ptrtoint ptr %ipad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ipad, align 4
  %neg = xor i32 %4, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state, align 8
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %8 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4194304, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %12 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %13 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_crc32_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = ptrtoint ptr %ipad.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ipad.i, align 4
  %neg.i = xor i32 %4, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #11
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state.i, align 8
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %8 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %9 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4194304, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_crc32_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = ptrtoint ptr %ipad to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ipad, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_crc32_cra_init(ptr nocapture noundef %tfm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv2.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @safexcel_ahash_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_handle_result, ptr %handle_result.i, align 4
  %fb_do_setkey.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %7 = ptrtoint ptr %fb_do_setkey.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fb_do_setkey.i, align 4
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 376, ptr %reqsize1.i.i, align 32
  %ipad = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %ipad to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ipad, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_cbcmac_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %key_sz = getelementptr i8, ptr %1, i32 304
  %3 = ptrtoint ptr %key_sz to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key_sz, align 4
  %conv = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %state, ptr %ipad, i32 %conv)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 16, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16, ptr %processed, align 8
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4194304, ptr %digest, align 8
  %9 = load i8, ptr %key_sz, align 4
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %block_sz, align 1
  %xcbcmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 7
  %13 = ptrtoint ptr %xcbcmac to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %xcbcmac, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_cbcmac_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %key_sz.i = getelementptr i8, ptr %1, i32 304
  %3 = ptrtoint ptr %key_sz.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key_sz.i, align 4
  %conv.i = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 %conv.i)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 16, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16, ptr %processed.i, align 8
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4194304, ptr %digest.i, align 8
  %9 = load i8, ptr %key_sz.i, align 4
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %block_sz.i, align 1
  %xcbcmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %xcbcmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %xcbcmac.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_cbcmac_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %len) #1 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #11
  %0 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %call2 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %1 = call ptr @memset(ptr %ipad, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp36.not = icmp ult i32 %len, 4
  br i1 %cmp36.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %div35 = and i32 %len, -4
  %uglygep = getelementptr i8, ptr %tfm, i32 308
  %2 = call ptr @memcpy(ptr %uglygep, ptr %aes, i32 %div35)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end.for.end_crit_edge
  %3 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %len, label %if.else12 [
    i32 24, label %for.end.if.end16_crit_edge
    i32 32, label %if.then9
  ]

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then9, %for.end.if.end16_crit_edge
  %.sink38 = phi i32 [ 25165824, %if.then9 ], [ 8388608, %if.else12 ], [ 16777216, %for.end.if.end16_crit_edge ]
  %.sink = phi i8 [ 64, %if.then9 ], [ 48, %if.else12 ], [ 64, %for.end.if.end16_crit_edge ]
  %alg10 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 28
  %4 = ptrtoint ptr %alg10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink38, ptr %alg10, align 4
  %key_sz11 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 32
  %5 = ptrtoint ptr %key_sz11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %key_sz11, align 4
  %cbcmac = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 33
  %6 = ptrtoint ptr %cbcmac to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cbcmac, align 1
  %7 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #11, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_xcbcmac_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %len) #1 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  %key_tmp = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #11
  %0 = call ptr @memset(ptr %aes, i32 255, i32 484)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key_tmp) #11
  %1 = call ptr @memset(ptr %key_tmp, i32 255, i32 48)
  %call2 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %kaes = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 40
  %2 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kaes, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %and.i.i = and i32 %5, -1048321
  store i32 %and.i.i, ptr %3, align 128
  %6 = load ptr, ptr %kaes, align 4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i, align 128
  %and = and i32 %8, 1048320
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 128
  %or.i.i = or i32 %10, %and
  store i32 %or.i.i, ptr %6, align 128
  %11 = load ptr, ptr %kaes, align 4
  %call6 = call i32 @crypto_cipher_setkey(ptr noundef %11, ptr noundef %key, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kaes, align 4
  %add.ptr = getelementptr inbounds i8, ptr %key_tmp, i32 32
  call void @crypto_cipher_encrypt_one(ptr noundef %13, ptr noundef %add.ptr, ptr noundef nonnull @.str.24) #11
  %14 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kaes, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %15, ptr noundef nonnull %key_tmp, ptr noundef nonnull @.str.25) #11
  %16 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kaes, align 4
  %add.ptr15 = getelementptr inbounds i8, ptr %key_tmp, i32 16
  call void @crypto_cipher_encrypt_one(ptr noundef %17, ptr noundef %add.ptr15, ptr noundef nonnull @.str.26) #11
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %18 = ptrtoint ptr %key_tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_tmp, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = ptrtoint ptr %ipad to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ipad, align 4
  %arrayidx.1 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #11
  %arrayidx17.1 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 6
  %25 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx17.1, align 4
  %arrayidx.2 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #11
  %arrayidx17.2 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 7
  %29 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx17.2, align 4
  %arrayidx.3 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #11
  %arrayidx17.3 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 8
  %33 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx17.3, align 4
  %34 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr15, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #11
  %arrayidx17.4 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9
  %37 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx17.4, align 4
  %arrayidx.5 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.5, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  %arrayidx17.5 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 4
  %41 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx17.5, align 4
  %arrayidx.6 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 6
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.6, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  %arrayidx17.6 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 8
  %45 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx17.6, align 4
  %arrayidx.7 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 7
  %46 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.7, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  %arrayidx17.7 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 12
  %49 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx17.7, align 4
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #11
  %arrayidx17.8 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 16
  %53 = ptrtoint ptr %arrayidx17.8 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx17.8, align 4
  %arrayidx.9 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.9, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #11
  %arrayidx17.9 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 20
  %57 = ptrtoint ptr %arrayidx17.9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx17.9, align 4
  %arrayidx.10 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 10
  %58 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.10, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #11
  %arrayidx17.10 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 24
  %61 = ptrtoint ptr %arrayidx17.10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx17.10, align 4
  %arrayidx.11 = getelementptr inbounds [12 x i32], ptr %key_tmp, i32 0, i32 11
  %62 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.11, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #11
  %arrayidx17.11 = getelementptr %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 28
  %65 = ptrtoint ptr %arrayidx17.11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx17.11, align 4
  %66 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %kaes, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 128
  %and.i.i57 = and i32 %69, -1048321
  store i32 %and.i.i57, ptr %67, align 128
  %70 = load ptr, ptr %kaes, align 4
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %base.i, align 128
  %and21 = and i32 %72, 1048320
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 128
  %or.i.i59 = or i32 %74, %and21
  store i32 %or.i.i59, ptr %70, align 128
  %75 = load ptr, ptr %kaes, align 4
  %call25 = call i32 @crypto_cipher_setkey(ptr noundef %75, ptr noundef %add.ptr, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %alg = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 28
  %76 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8388608, ptr %alg, align 4
  %key_sz = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 32
  %77 = ptrtoint ptr %key_sz to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 48, ptr %key_sz, align 4
  %cbcmac = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 33
  %78 = ptrtoint ptr %cbcmac to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %cbcmac, align 1
  %79 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #11, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call25, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key_tmp) #11
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_xcbcmac_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv2.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @safexcel_ahash_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_handle_result, ptr %handle_result.i, align 4
  %fb_do_setkey.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %7 = ptrtoint ptr %fb_do_setkey.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fb_do_setkey.i, align 4
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 376, ptr %reqsize1.i.i, align 32
  %call.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef 15) #11
  %kaes = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %9 = ptrtoint ptr %kaes to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %kaes, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %10, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_xcbcmac_cra_exit(ptr noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kaes = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %0 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kaes, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #11
  tail call void @safexcel_ahash_cra_exit(ptr noundef %tfm)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_cmac_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %len) #1 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  %consts = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #11
  %0 = call ptr @memset(ptr %aes, i32 255, i32 484)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %consts) #11
  %1 = getelementptr inbounds [4 x i64], ptr %consts, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i64], ptr %consts, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i64], ptr %consts, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %consts, i32 16
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %call2 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp111.not = icmp ult i32 %len, 4
  br i1 %cmp111.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div110 = lshr i32 %len, 2
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.0112
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7) #11
  %add = add nuw nsw i32 %i.0112, 8
  %arrayidx4 = getelementptr [18 x i32], ptr %ipad, i32 0, i32 %add
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, %div110
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %kaes = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 40
  %10 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kaes, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 128
  %and.i.i = and i32 %13, -1048321
  store i32 %and.i.i, ptr %11, align 128
  %14 = load ptr, ptr %kaes, align 4
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i, align 128
  %and = and i32 %16, 1048320
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 128
  %or.i.i = or i32 %18, %and
  store i32 %or.i.i, ptr %14, align 128
  %19 = load ptr, ptr %kaes, align 4
  %call8 = call i32 @crypto_cipher_setkey(ptr noundef %19, ptr noundef %key, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %20 = call ptr @memset(ptr %consts, i32 0, i32 16)
  %21 = ptrtoint ptr %kaes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kaes, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %22, ptr noundef nonnull %consts, ptr noundef nonnull %consts) #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %1, align 8
  %25 = ptrtoint ptr %consts to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %consts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %isneg = icmp slt i64 %26, 0
  %or = call i64 @llvm.fshl.i64(i64 %26, i64 %24, i64 1)
  %shl30 = shl i64 %24, 1
  %conv31 = select i1 %isneg, i64 135, i64 0
  %xor = xor i64 %shl30, %conv31
  %27 = ptrtoint ptr %consts to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or, ptr %consts, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %xor, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %isneg.1 = icmp slt i64 %or, 0
  %or.1 = call i64 @llvm.fshl.i64(i64 %or, i64 %shl30, i64 1)
  %shl30.1 = shl i64 %xor, 1
  %conv31.1 = select i1 %isneg.1, i64 135, i64 0
  %xor.1 = xor i64 %shl30.1, %conv31.1
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.1, ptr %2, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %xor.1, ptr %3, align 8
  %ipad49 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %31 = call ptr @memcpy(ptr %ipad49, ptr %consts, i32 32)
  %32 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %len, label %if.else62 [
    i32 24, label %if.end11.if.end66_crit_edge
    i32 32, label %if.then59
  ]

if.end11.if.end66_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.else62:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then59, %if.end11.if.end66_crit_edge
  %.sink117 = phi i32 [ 25165824, %if.then59 ], [ 8388608, %if.else62 ], [ 16777216, %if.end11.if.end66_crit_edge ]
  %.sink = phi i8 [ 64, %if.then59 ], [ 48, %if.else62 ], [ 64, %if.end11.if.end66_crit_edge ]
  %alg60 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 28
  %33 = ptrtoint ptr %alg60 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink117, ptr %alg60, align 4
  %key_sz61 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 32
  %34 = ptrtoint ptr %key_sz61 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %key_sz61, align 4
  %cbcmac = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 33
  %35 = ptrtoint ptr %cbcmac to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %cbcmac, align 1
  %36 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #11, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ %call2, %entry.cleanup_crit_edge ], [ %call8, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %consts) #11
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sm3_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 58720256, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sm3_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 58720256, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %block_sz.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sm3_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 32)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 58720256, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sm3_digest(ptr noundef %areq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 32)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 64, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 58720256, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2097152, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac.i, align 2
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %areq) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %areq) #11
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sm3_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i.i.i, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull @.str.28, i32 noundef 32) #11
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha3_224_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100663296, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 28, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 28, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -112, ptr %block_sz, align 1
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %9 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_update(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %do_fallback, align 2
  %call3 = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %nbytes1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %7 = ptrtoint ptr %nbytes1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes1.i, align 8
  tail call void @crypto_stats_get(ptr noundef %6) #11
  %9 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %10, i32 -124
  %11 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %12(ptr noundef %__ctx.i) #11
  tail call void @crypto_stats_ahash_update(i32 noundef %8, i32 noundef %call3.i, ptr noundef %6) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call3.i, %cond.false ], [ %call3, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_final(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %do_fallback, align 2
  %call3 = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4 = tail call i32 @crypto_ahash_final(ptr noundef %__ctx.i) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call3, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_finup(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %4 = ptrtoint ptr %do_fallback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %do_fallback, align 2, !range !129
  %6 = zext i8 %5 to i32
  %or = or i32 %6, %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool4.not = icmp eq i32 %or, 0
  %7 = trunc i32 %or to i8
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %do_fallback, align 2
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.else ], [ %call9, %cond.false ], [ %call7, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_224_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %3, i32 300
  %5 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100663296, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 28, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 28, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -112, ptr %block_sz.i, align 1
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %10 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %11 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %13 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %14 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_export(ptr noundef %req, ptr noundef %out) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %do_fallback, align 2
  %call3 = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %export.i = getelementptr i8, ptr %4, i32 -108
  %5 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %6(ptr noundef %__ctx.i, ptr noundef %out) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1.i, %cond.false ], [ %call3, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_import(ptr noundef %req, ptr noundef %in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %do_fallback, align 2
  %call3 = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tfm.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %import.i = getelementptr i8, ptr %4, i32 -104
  %7 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %8(ptr noundef %__ctx.i, ptr noundef %in) #11
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call3, %entry.cond.end_crit_edge ], [ %call2.i, %if.end.i ], [ -126, %cond.false.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr.i25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i25, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv2.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @safexcel_ahash_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_handle_result, ptr %handle_result.i, align 4
  %fb_do_setkey.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %7 = ptrtoint ptr %fb_do_setkey.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fb_do_setkey.i, align 4
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 376, ptr %reqsize1.i.i, align 32
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call4 = tail call ptr @crypto_alloc_ahash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 384) #11
  %fback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %9 = ptrtoint ptr %fback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %fback, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call4, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %statesize.i = getelementptr i8, ptr %12, i32 -124
  %13 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %statesize.i, align 4
  %15 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i, align 4
  %statesize = getelementptr i8, ptr %16, i32 -124
  %17 = ptrtoint ptr %statesize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %statesize, align 4
  %18 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fback, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %21, 128
  %22 = tail call i32 @llvm.umax.i32(i32 %add, i32 376)
  %23 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reqsize1.i.i, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_sha3_cra_exit(ptr noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %0 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  tail call void @safexcel_ahash_cra_exit(ptr noundef %tfm)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha3_256_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 92274688, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -120, ptr %block_sz, align 1
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %9 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_256_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %3, i32 300
  %5 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 92274688, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -120, ptr %block_sz.i, align 1
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %10 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %11 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %13 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %14 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha3_384_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 117440512, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 48, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 48, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 104, ptr %block_sz, align 1
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %9 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_384_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %3, i32 300
  %5 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 117440512, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 48, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 104, ptr %block_sz.i, align 1
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %10 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %11 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %13 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %14 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_sha3_512_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %alg = getelementptr i8, ptr %1, i32 300
  %3 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 109051904, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %6 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %7 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 72, ptr %block_sz, align 1
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %8 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %9 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sha3_512_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %alg.i = getelementptr i8, ptr %3, i32 300
  %5 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 109051904, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %9 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 72, ptr %block_sz.i, align 1
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %10 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %11 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %13 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %14 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha3_224_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 72)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 144, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 144, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100663296, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6291456, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 72, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 28, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -112, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %12 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %13 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_224_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %3, i32 148
  %5 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 72)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 144, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 144, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %3, i32 300
  %8 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100663296, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6291456, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 72, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 28, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -112, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hmac.i, align 2
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %14 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %15 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %17 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %18 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %keylen)
  %cmp = icmp ult i32 %3, %keylen
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shdesc = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 52
  %4 = ptrtoint ptr %shdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shdesc, align 4
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %call2 = tail call i32 @crypto_shash_digest(ptr noundef %5, ptr noundef %key, i32 noundef %keylen, ptr noundef %ipad) #11
  %shpre = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 48
  %6 = ptrtoint ptr %shpre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shpre, align 4
  %__crt_alg.i.i111 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i111 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i111, align 4
  %digestsize.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digestsize.i, align 128
  %12 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i113 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cra_blocksize.i.i113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cra_blocksize.i.i113, align 4
  %div108 = lshr i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div108)
  %cmp5 = icmp ugt i32 %11, %div108
  br i1 %cmp5, label %if.then6, label %if.then.if.end35_crit_edge

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %opad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 56
  %add.ptr = getelementptr i8, ptr %ipad, i32 %div108
  %sub = sub i32 %11, %div108
  %16 = call ptr @memmove(ptr %opad, ptr %add.ptr, i32 %sub)
  br label %if.end35

if.else:                                          ; preds = %entry
  %div16100 = lshr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div16100, i32 %keylen)
  %cmp17.not = icmp ult i32 %div16100, %keylen
  %ipad23 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  br i1 %cmp17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %ipad23, ptr %key, i32 %keylen)
  br label %if.end35

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call ptr @memcpy(ptr %ipad23, ptr %key, i32 %div16100)
  %opad27 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 56
  %19 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_blocksize.i.i, align 4
  %div29102 = lshr i32 %20, 1
  %add.ptr30 = getelementptr i8, ptr %key, i32 %div29102
  %sub33 = sub i32 %keylen, %div29102
  %21 = call ptr @memcpy(ptr %opad27, ptr %add.ptr30, i32 %sub33)
  br label %if.end35

if.end35:                                         ; preds = %if.else21, %if.then18, %if.then6, %if.then.if.end35_crit_edge
  %keylen.addr.0 = phi i32 [ %11, %if.then6 ], [ %11, %if.then.if.end35_crit_edge ], [ %keylen, %if.then18 ], [ %keylen, %if.else21 ]
  %ret.0 = phi i32 [ %call2, %if.then6 ], [ %call2, %if.then.if.end35_crit_edge ], [ 0, %if.then18 ], [ 0, %if.else21 ]
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i127 = getelementptr inbounds %struct.crypto_alg, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cra_blocksize.i.i127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cra_blocksize.i.i127, align 4
  %div37104 = lshr i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div37104, i32 %keylen.addr.0)
  %cmp38.not = icmp ult i32 %div37104, %keylen.addr.0
  br i1 %cmp38.not, label %if.else51, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %ipad41 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %add.ptr43 = getelementptr i8, ptr %ipad41, i32 %keylen.addr.0
  %sub46 = sub i32 %div37104, %keylen.addr.0
  %26 = call ptr @memset(ptr %add.ptr43, i32 0, i32 %sub46)
  %opad48 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 56
  %27 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i131 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cra_blocksize.i.i131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cra_blocksize.i.i131, align 4
  %div50107 = lshr i32 %30, 1
  %31 = call ptr @memset(ptr %opad48, i32 0, i32 %div50107)
  br label %if.end61

if.else51:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %opad53 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 56
  %add.ptr55 = getelementptr i8, ptr %opad53, i32 %keylen.addr.0
  %idx.neg = sub nsw i32 0, %div37104
  %add.ptr58 = getelementptr i8, ptr %add.ptr55, i32 %idx.neg
  %sub60 = sub i32 %25, %keylen.addr.0
  %32 = call ptr @memset(ptr %add.ptr58, i32 0, i32 %sub60)
  br label %if.end61

if.end61:                                         ; preds = %if.else51, %if.then39
  %fb_do_setkey = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 36
  %33 = ptrtoint ptr %fb_do_setkey to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %fb_do_setkey, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_224_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_hmac_sha3_cra_init(ptr noundef %tfm, ptr noundef nonnull @.str.29)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_hmac_sha3_cra_exit(ptr noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %0 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #11
  %shpre = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %2 = ptrtoint ptr %shpre to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shpre, align 4
  %base.i.i4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i4) #11
  %shdesc = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %4 = ptrtoint ptr %shdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shdesc, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @safexcel_ahash_cra_exit(ptr noundef %tfm)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha3_256_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 68)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 136, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 136, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 92274688, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6291456, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 68, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -120, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %12 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %13 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_256_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %3, i32 148
  %5 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 68)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 136, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 136, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %3, i32 300
  %8 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 92274688, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6291456, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 68, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -120, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hmac.i, align 2
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %14 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %15 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %17 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %18 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_256_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_hmac_sha3_cra_init(ptr noundef %tfm, ptr noundef nonnull @.str.30)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha3_384_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 52)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 104, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 104, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 117440512, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6291456, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 52, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 104, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %12 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %13 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_384_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %3, i32 148
  %5 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 52)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 104, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 104, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %3, i32 300
  %8 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 117440512, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6291456, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 52, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 104, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hmac.i, align 2
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %14 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %15 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %17 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %18 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_384_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_hmac_sha3_cra_init(ptr noundef %tfm, ptr noundef nonnull @.str.31)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_hmac_sha3_512_init(ptr nocapture noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 376)
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %ipad = getelementptr i8, ptr %1, i32 148
  %3 = call ptr @memcpy(ptr %state, ptr %ipad, i32 36)
  %len = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 72, ptr %len, align 8
  %processed = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %5 = ptrtoint ptr %processed to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 72, ptr %processed, align 8
  %alg = getelementptr i8, ptr %1, i32 300
  %6 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 109051904, ptr %alg, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6291456, ptr %digest, align 8
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %state_sz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 36, ptr %state_sz, align 4
  %digest_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %9 = ptrtoint ptr %digest_sz to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %digest_sz, align 2
  %block_sz = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %10 = ptrtoint ptr %block_sz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 72, ptr %block_sz, align 1
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %11 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hmac, align 2
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %12 = ptrtoint ptr %do_fallback to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %do_fallback, align 2
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %13 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fb_init_done, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_512_digest(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tfm.i.i8 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i8, align 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %4 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 376)
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %ipad.i = getelementptr i8, ptr %3, i32 148
  %5 = call ptr @memcpy(ptr %state.i, ptr %ipad.i, i32 36)
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 56
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 72, ptr %len.i, align 8
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 72, ptr %processed.i, align 8
  %alg.i = getelementptr i8, ptr %3, i32 300
  %8 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 109051904, ptr %alg.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %digest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6291456, ptr %digest.i, align 8
  %state_sz.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 36, ptr %state_sz.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %digest_sz.i, align 2
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 72, ptr %block_sz.i, align 1
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hmac.i, align 2
  %do_fallback.i = getelementptr i8, ptr %3, i32 306
  %14 = ptrtoint ptr %do_fallback.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %do_fallback.i, align 2
  %fb_init_done.i = getelementptr i8, ptr %3, i32 307
  %15 = ptrtoint ptr %fb_init_done.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fb_init_done.i, align 1
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %finish.i, align 1
  %call1.i = tail call i32 @safexcel_ahash_update(ptr noundef %req) #11
  %call2.i = tail call i32 @safexcel_ahash_final(ptr noundef %req) #11
  br label %return

if.end:                                           ; preds = %entry
  %do_fallback.i9 = getelementptr i8, ptr %3, i32 306
  %17 = ptrtoint ptr %do_fallback.i9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %do_fallback.i9, align 2
  %fb_init_done.i10 = getelementptr i8, ptr %3, i32 307
  %18 = ptrtoint ptr %fb_init_done.i10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fb_init_done.i10, align 1
  %call3.i = tail call fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i.i11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %call4.i = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i.i11) #11
  br label %return

return:                                           ; preds = %cond.false.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ %call4.i, %cond.false.i ], [ %call3.i, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_hmac_sha3_512_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_hmac_sha3_cra_init(ptr noundef %tfm, ptr noundef nonnull @.str.32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_ahash_enqueue(ptr noundef %areq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %priv3 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  %needs_inv = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 3
  %4 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %needs_inv, align 1
  %ctxr = getelementptr i8, ptr %1, i32 136
  %5 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctxr, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %needs_inv7 = getelementptr i8, ptr %1, i32 296
  %9 = ptrtoint ptr %needs_inv7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %needs_inv7, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %not_first = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 6
  %11 = ptrtoint ptr %not_first to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %not_first, align 2, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %land.lhs.true9.lor.lhs.false_crit_edge, label %land.lhs.true11

land.lhs.true9.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %xcbcmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 7
  %13 = ptrtoint ptr %xcbcmac to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xcbcmac, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.then36_crit_edge, label %land.lhs.true11.lor.lhs.false_crit_edge

land.lhs.true11.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true11.if.then36_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false:                                    ; preds = %land.lhs.true11.lor.lhs.false_crit_edge, %land.lhs.true9.lor.lhs.false_crit_edge
  %data = getelementptr inbounds %struct.safexcel_context_record, ptr %6, i32 0, i32 2
  %state = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %state_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state_sz, align 4
  %conv = zext i8 %16 to i32
  %bcmp = tail call i32 @bcmp(ptr %data, ptr %state, i32 %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool17.not = icmp eq i32 %bcmp, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %finish = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %17 = ptrtoint ptr %finish to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %finish, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  br i1 %tobool19.not, label %lor.lhs.false18.if.end_crit_edge, label %land.lhs.true21

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true21:                                  ; preds = %lor.lhs.false18
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %19 = ptrtoint ptr %hmac to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hmac, align 2, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.end_crit_edge, label %land.lhs.true24

land.lhs.true21.if.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %21 = lshr i32 %conv, 2
  %add.ptr = getelementptr i32, ptr %data, i32 %21
  %opad = getelementptr i8, ptr %1, i32 220
  %bcmp121 = tail call i32 @bcmp(ptr %add.ptr, ptr %opad, i32 %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp121)
  %tobool35.not = icmp eq i32 %bcmp121, 0
  br i1 %tobool35.not, label %land.lhs.true24.if.end_crit_edge, label %land.lhs.true24.if.then36_crit_edge

land.lhs.true24.if.then36_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

land.lhs.true24.if.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then36:                                        ; preds = %land.lhs.true24.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %land.lhs.true11.if.then36_crit_edge
  %22 = ptrtoint ptr %needs_inv7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %needs_inv7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then36, %land.lhs.true24.if.end_crit_edge, %land.lhs.true21.if.end_crit_edge, %lor.lhs.false18.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %needs_inv40 = getelementptr i8, ptr %1, i32 296
  %23 = ptrtoint ptr %needs_inv40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %needs_inv40, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool41.not = icmp eq i8 %24, 0
  br i1 %tobool41.not, label %if.end.if.end63_crit_edge, label %if.then42

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %needs_inv40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %needs_inv40, align 4
  %26 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %needs_inv, align 1
  br label %if.end63

if.else:                                          ; preds = %entry
  %call47 = tail call i32 @safexcel_select_ring(ptr noundef %3) #11
  %ring49 = getelementptr i8, ptr %1, i32 292
  %27 = ptrtoint ptr %ring49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call47, ptr %ring49, align 4
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %context_pool, align 4
  %flags51 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %30 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags51, align 4
  %and52 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %ctxr_dma = getelementptr i8, ptr %1, i32 144
  %or.i = select i1 %tobool53.not, i32 2848, i32 3520
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %29, i32 noundef %or.i, ptr noundef %ctxr_dma) #11
  %32 = ptrtoint ptr %ctxr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %ctxr, align 4
  %tobool60.not = icmp eq ptr %call.i, null
  br i1 %tobool60.not, label %if.else.cleanup_crit_edge, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.then42, %if.end.if.end63_crit_edge
  %not_first64 = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 6
  %33 = ptrtoint ptr %not_first64 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %not_first64, align 2
  %ring66 = getelementptr i8, ptr %1, i32 292
  %34 = ptrtoint ptr %ring66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ring66, align 4
  %ring67 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %ring67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring67, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %37, i32 %35, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #11
  %38 = ptrtoint ptr %ring67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring67, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %39, i32 %35, i32 6
  %call71 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %areq) #11
  %40 = ptrtoint ptr %ring67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring67, align 4
  %queue_lock74 = getelementptr %struct.safexcel_ring, ptr %41, i32 %35, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock74) #11
  %42 = ptrtoint ptr %ring67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring67, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %43, i32 %35, i32 1
  %44 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %workqueue, align 4
  %work_data = getelementptr %struct.safexcel_ring, ptr %43, i32 %35, i32 2
  %call.i122 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work_data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end63 ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_select_ring(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ahash_send(ptr noundef %async, i32 noundef %ring, ptr nocapture noundef writeonly %commands, ptr nocapture noundef writeonly %results) #1 align 64 {
entry:
  %dmmy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 6
  %needs_inv = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 3
  %0 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_inv, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %tfm.i.i9 = getelementptr inbounds %struct.crypto_async_request, ptr %async, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i9, align 16
  %priv4.i = getelementptr i8, ptr %3, i32 140
  %4 = ptrtoint ptr %priv4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv4.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ctxr_dma.i = getelementptr i8, ptr %3, i32 144
  %6 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctxr_dma.i, align 4
  %call4.i = tail call i32 @safexcel_invalidate_cache(ptr noundef %async, ptr noundef %5, i32 noundef %7, i32 noundef %ring) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge, !prof !132

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %commands, align 4
  %9 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %results, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmmy.i) #11
  %10 = ptrtoint ptr %dmmy.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %dmmy.i, align 4, !annotation !133
  %len.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 56
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %len.i.i, align 8
  %processed.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 64
  %13 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %processed.i.i, align 8
  %sub.i.i = sub i64 %12, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 129, i64 %sub.i.i)
  %cmp.i = icmp ult i64 %sub.i.i, 129
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i64 %sub.i.i to i32
  br label %if.end.i11

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 1
  %15 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes.i, align 8
  %17 = trunc i64 %sub.i.i to i32
  %conv7.i = sub i32 %17, %16
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.else.i, %if.then.i
  %cache_len.0.i = phi i32 [ %conv.i, %if.then.i ], [ %conv7.i, %if.else.i ]
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %18 = ptrtoint ptr %finish.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %finish.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i10 = icmp eq i8 %19, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i, label %if.end.i11.if.end24.i_crit_edge

if.end.i11.if.end24.i_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end.i11
  %20 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %__ctx.i, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not.i = icmp eq i8 %21, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %22 = trunc i64 %sub.i.i to i32
  %conv10.i = and i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10.i)
  %tobool11.not.i = icmp eq i32 %conv10.i, 0
  %spec.store.select.i = select i1 %tobool11.not.i, i32 128, i32 %conv10.i
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 2
  %23 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src.i, align 4
  %call15.i = tail call i32 @sg_nents(ptr noundef %24) #11
  %cache_next.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 80
  %nbytes16.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 1
  %25 = ptrtoint ptr %nbytes16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbytes16.i, align 8
  %sub17.i = sub i32 %26, %spec.store.select.i
  %call18.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %24, i32 noundef %call15.i, ptr noundef %cache_next.i, i32 noundef %spec.store.select.i, i32 noundef %sub17.i) #11
  %27 = zext i32 %spec.store.select.i to i64
  %sub20.i = sub i64 %sub.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub20.i)
  %tobool21.not.i = icmp eq i64 %sub20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.then9.i.if.end24.i_crit_edge

if.then9.i.if.end24.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %commands, align 4
  %29 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %results, align 4
  br label %safexcel_ahash_send_req.exit

if.end24.i:                                       ; preds = %if.then9.i.if.end24.i_crit_edge, %land.lhs.true.i.if.end24.i_crit_edge, %if.end.i11.if.end24.i_crit_edge
  %queued.0.i = phi i64 [ %sub.i.i, %if.end.i11.if.end24.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.if.end24.i_crit_edge ], [ %sub20.i, %if.then9.i.if.end24.i_crit_edge ]
  %xcbcmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 7
  %30 = ptrtoint ptr %xcbcmac.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %xcbcmac.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool25.not.i = icmp eq i8 %31, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end90.i_crit_edge, label %land.rhs.i

if.end24.i.if.end90.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

land.rhs.i:                                       ; preds = %if.end24.i
  %32 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %processed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %33)
  %cmp27.i = icmp ugt i64 %33, 16
  br i1 %cmp27.i, label %if.then31.i, label %land.rhs.i.if.end90.i_crit_edge, !prof !130

land.rhs.i.if.end90.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

if.then31.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cache_len.0.i)
  %cmp32.i = icmp slt i32 %cache_len.0.i, 16
  br i1 %cmp32.i, label %if.then40.i, label %if.then31.i.if.end90.thread.i_crit_edge, !prof !130

if.then31.i.if.end90.thread.i_crit_edge:          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.thread.i

if.then40.i:                                      ; preds = %if.then31.i
  %sub41.i = sub i32 16, %cache_len.0.i
  %conv42.i = sext i32 %cache_len.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %queued.0.i, i64 %conv42.i)
  %cmp43.i = icmp ugt i64 %queued.0.i, %conv42.i
  br i1 %cmp43.i, label %if.then45.i, label %if.then40.i.if.end58.i_crit_edge

if.then40.i.if.end58.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then45.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub47.i = sub i64 %queued.0.i, %conv42.i
  %conv48.i = sext i32 %sub41.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub47.i, i64 %conv48.i)
  %cmp50.i = icmp ult i64 %sub47.i, %conv48.i
  %extract.t.i = trunc i64 %sub47.i to i32
  %cond.off0.i = select i1 %cmp50.i, i32 %extract.t.i, i32 %sub41.i
  %src53.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 2
  %34 = ptrtoint ptr %src53.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src53.i, align 4
  %call55.i = tail call i32 @sg_nents(ptr noundef %35) #11
  %cache.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %add.ptr.i = getelementptr i8, ptr %cache.i, i32 %cache_len.0.i
  %call57.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %35, i32 noundef %call55.i, ptr noundef %add.ptr.i, i32 noundef %cond.off0.i, i32 noundef 0) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then45.i, %if.then40.i.if.end58.i_crit_edge
  %skip.0.i = phi i32 [ %cond.off0.i, %if.then45.i ], [ 0, %if.then40.i.if.end58.i_crit_edge ]
  %sub59.i = sub i32 %sub41.i, %skip.0.i
  %cache60.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %add.ptr62.i = getelementptr i8, ptr %cache60.i, i32 %cache_len.0.i
  %add.ptr63.i = getelementptr i8, ptr %add.ptr62.i, i32 %skip.0.i
  %36 = call ptr @memset(ptr %add.ptr63.i, i32 0, i32 %sub59.i)
  %cbcmac.i = getelementptr i8, ptr %3, i32 305
  %37 = ptrtoint ptr %cbcmac.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cbcmac.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool64.not.i = icmp ne i8 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59.i)
  %tobool66.not.i = icmp eq i32 %sub59.i, 0
  %or.cond.i = select i1 %tobool64.not.i, i1 true, i1 %tobool66.not.i
  br i1 %or.cond.i, label %if.end58.i.if.end83.i_crit_edge, label %if.then67.i

if.end58.i.if.end83.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i

if.then67.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %skip.0.i, %cache_len.0.i
  %arrayidx.i = getelementptr %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 17, i32 %add.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %arrayidx.i, align 1
  %ipad75.i = getelementptr i8, ptr %3, i32 148
  %40 = ptrtoint ptr %ipad75.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ipad75.i, align 4
  %arrayidx79.i = getelementptr i8, ptr %3, i32 164
  %42 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx79.i, align 4
  %xor.i = xor i32 %43, %41
  %44 = tail call i32 @llvm.bswap.i32(i32 %xor.i) #11
  %45 = ptrtoint ptr %cache60.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cache60.i, align 4
  %xor82.i = xor i32 %44, %46
  store i32 %xor82.i, ptr %cache60.i, align 4
  %arrayidx77.1.i = getelementptr i8, ptr %3, i32 152
  %47 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx77.1.i, align 4
  %arrayidx79.1.i = getelementptr i8, ptr %3, i32 168
  %49 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx79.1.i, align 4
  %xor.1.i = xor i32 %50, %48
  %51 = tail call i32 @llvm.bswap.i32(i32 %xor.1.i) #11
  %arrayidx81.1.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 76
  %52 = ptrtoint ptr %arrayidx81.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx81.1.i, align 4
  %xor82.1.i = xor i32 %51, %53
  store i32 %xor82.1.i, ptr %arrayidx81.1.i, align 4
  %arrayidx77.2.i = getelementptr i8, ptr %3, i32 156
  %54 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx77.2.i, align 4
  %arrayidx79.2.i = getelementptr i8, ptr %3, i32 172
  %56 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx79.2.i, align 4
  %xor.2.i = xor i32 %57, %55
  %58 = tail call i32 @llvm.bswap.i32(i32 %xor.2.i) #11
  %arrayidx81.2.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 80
  %59 = ptrtoint ptr %arrayidx81.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx81.2.i, align 4
  %xor82.2.i = xor i32 %58, %60
  store i32 %xor82.2.i, ptr %arrayidx81.2.i, align 4
  %arrayidx77.3.i = getelementptr i8, ptr %3, i32 160
  %61 = ptrtoint ptr %arrayidx77.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx77.3.i, align 4
  %arrayidx79.3.i = getelementptr i8, ptr %3, i32 176
  %63 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx79.3.i, align 4
  %xor.3.i = xor i32 %64, %62
  %65 = tail call i32 @llvm.bswap.i32(i32 %xor.3.i) #11
  %arrayidx81.3.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 84
  %66 = ptrtoint ptr %arrayidx81.3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx81.3.i, align 4
  %xor82.3.i = xor i32 %65, %67
  store i32 %xor82.3.i, ptr %arrayidx81.3.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then67.i, %if.end58.i.if.end83.i_crit_edge
  %conv84.i = sext i32 %sub59.i to i64
  %add85.i = add i64 %queued.0.i, %conv84.i
  br label %if.end90.thread.i

if.end90.thread.i:                                ; preds = %if.end83.i, %if.then31.i.if.end90.thread.i_crit_edge
  %extra.1.i = phi i32 [ %sub59.i, %if.end83.i ], [ 0, %if.then31.i.if.end90.thread.i_crit_edge ]
  %cache_len.1.i = phi i32 [ 16, %if.end83.i ], [ %cache_len.0.i, %if.then31.i.if.end90.thread.i_crit_edge ]
  %skip.1.i = phi i32 [ %skip.0.i, %if.end83.i ], [ 0, %if.then31.i.if.end90.thread.i_crit_edge ]
  %queued.1.i = phi i64 [ %add85.i, %if.end83.i ], [ %queued.0.i, %if.then31.i.if.end90.thread.i_crit_edge ]
  %cache87.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %incdec.ptr.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 2
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state.i, align 4
  %incdec.ptr2.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 76
  %70 = ptrtoint ptr %cache87.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cache87.i, align 4
  %xor.i.i = xor i32 %71, %69
  store i32 %xor.i.i, ptr %cache87.i, align 4
  %incdec.ptr.1.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 3
  %72 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr2.1.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 80
  %74 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %incdec.ptr2.i.i, align 4
  %xor.1.i.i = xor i32 %75, %73
  store i32 %xor.1.i.i, ptr %incdec.ptr2.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 4
  %76 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr2.2.i.i = getelementptr %struct.ahash_request, ptr %async, i32 1, i32 5, i32 84
  %78 = ptrtoint ptr %incdec.ptr2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr2.1.i.i, align 4
  %xor.2.i.i = xor i32 %79, %77
  store i32 %xor.2.i.i, ptr %incdec.ptr2.1.i.i, align 4
  %80 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %82 = ptrtoint ptr %incdec.ptr2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %incdec.ptr2.2.i.i, align 4
  %xor.3.i.i = xor i32 %83, %81
  store i32 %xor.3.i.i, ptr %incdec.ptr2.2.i.i, align 4
  br label %if.then92.i

if.end90.i:                                       ; preds = %land.rhs.i.if.end90.i_crit_edge, %if.end24.i.if.end90.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cache_len.0.i)
  %tobool91.not.i = icmp eq i32 %cache_len.0.i, 0
  br i1 %tobool91.not.i, label %if.end90.i.if.end119.i_crit_edge, label %if.end90.i.if.then92.i_crit_edge

if.end90.i.if.then92.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92.i

if.end90.i.if.end119.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i

if.then92.i:                                      ; preds = %if.end90.i.if.then92.i_crit_edge, %if.end90.thread.i
  %queued.2467.i = phi i64 [ %queued.1.i, %if.end90.thread.i ], [ %queued.0.i, %if.end90.i.if.then92.i_crit_edge ]
  %skip.2465.i = phi i32 [ %skip.1.i, %if.end90.thread.i ], [ 0, %if.end90.i.if.then92.i_crit_edge ]
  %cache_len.2464.i = phi i32 [ %cache_len.1.i, %if.end90.thread.i ], [ %cache_len.0.i, %if.end90.i.if.then92.i_crit_edge ]
  %extra.2463.i = phi i32 [ %extra.1.i, %if.end90.thread.i ], [ 0, %if.end90.i.if.then92.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 1
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  %cache93.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cache93.i) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then92.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !132

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %85) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %89, %if.end.i.i.i ], [ %87, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %85, ptr noundef %cache93.i, i32 noundef %cache_len.2464.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %cache93.i to i32
  %sub.i423.i = add i32 %91, 1073741824
  %shr.i.i = lshr i32 %sub.i423.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %90, i32 %shr.i.i
  %and.i.i = and i32 %91, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %85, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %cache_len.2464.i, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %cache_dma.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 72
  %92 = ptrtoint ptr %cache_dma.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %retval.0.i.i, ptr %cache_dma.i, align 8
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %94, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.safexcel_ahash_send_req.exit_crit_edge, label %if.end101.i

dma_map_single_attrs.exit.i.safexcel_ahash_send_req.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %safexcel_ahash_send_req.exit

if.end101.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %cache_sz.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 76
  %95 = ptrtoint ptr %cache_sz.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cache_len.2464.i, ptr %cache_sz.i, align 4
  %conv102.i = sext i32 %cache_len.2464.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %queued.2467.i, i64 %conv102.i)
  %cmp103.i = icmp eq i64 %queued.2467.i, %conv102.i
  %96 = ptrtoint ptr %cache_dma.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cache_dma.i, align 8
  %conv106.i = trunc i64 %queued.2467.i to i32
  %ctxr_dma.i12 = getelementptr i8, ptr %3, i32 144
  %98 = ptrtoint ptr %ctxr_dma.i12 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ctxr_dma.i12, align 4
  %call108.i = call ptr @safexcel_add_cdesc(ptr noundef %5, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext %cmp103.i, i32 noundef %97, i32 noundef %cache_len.2464.i, i32 noundef %conv106.i, i32 noundef %99, ptr noundef nonnull %dmmy.i) #11
  %cmp.i424.i = icmp ugt ptr %call108.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i424.i, label %if.then110.i, label %if.end112.i

if.then110.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %call108.i to i32
  br label %unmap_cache.i

if.end112.i:                                      ; preds = %if.end101.i
  %sub115.i = sub i64 %queued.2467.i, %conv102.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub115.i)
  %tobool116.not.i = icmp eq i64 %sub115.i, 0
  br i1 %tobool116.not.i, label %if.end112.i.send_command.i_crit_edge, label %if.end112.i.if.end119.i_crit_edge

if.end112.i.if.end119.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i

if.end112.i.send_command.i_crit_edge:             ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_command.i

if.end119.i:                                      ; preds = %if.end112.i.if.end119.i_crit_edge, %if.end90.i.if.end119.i_crit_edge
  %queued.2468.i = phi i64 [ %queued.2467.i, %if.end112.i.if.end119.i_crit_edge ], [ %queued.0.i, %if.end90.i.if.end119.i_crit_edge ]
  %skip.2466.i = phi i32 [ %skip.2465.i, %if.end112.i.if.end119.i_crit_edge ], [ 0, %if.end90.i.if.end119.i_crit_edge ]
  %extra.2461.i = phi i32 [ %extra.2463.i, %if.end112.i.if.end119.i_crit_edge ], [ 0, %if.end90.i.if.end119.i_crit_edge ]
  %first_cdesc.0.i = phi ptr [ %call108.i, %if.end112.i.if.end119.i_crit_edge ], [ null, %if.end90.i.if.end119.i_crit_edge ]
  %n_cdesc.0.i = phi i32 [ 1, %if.end112.i.if.end119.i_crit_edge ], [ 0, %if.end90.i.if.end119.i_crit_edge ]
  %queued.3.i = phi i64 [ %sub115.i, %if.end112.i.if.end119.i_crit_edge ], [ %queued.0.i, %if.end90.i.if.end119.i_crit_edge ]
  %dev120.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 1
  %101 = ptrtoint ptr %dev120.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev120.i, align 4
  %src121.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 2
  %103 = ptrtoint ptr %src121.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %src121.i, align 4
  %nbytes123.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 1
  %105 = ptrtoint ptr %nbytes123.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nbytes123.i, align 8
  %conv124.i = zext i32 %106 to i64
  %call125.i = call i32 @sg_nents_for_len(ptr noundef %104, i64 noundef %conv124.i) #11
  %call126.i = call i32 @dma_map_sg_attrs(ptr noundef %102, ptr noundef %104, i32 noundef %call125.i, i32 noundef 1, i32 noundef 0) #11
  %nents.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 1
  %107 = ptrtoint ptr %nents.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call126.i, ptr %nents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool128.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool128.not.i, label %if.end119.i.cdesc_rollback.i_crit_edge, label %if.end130.i

if.end119.i.cdesc_rollback.i_crit_edge:           ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cdesc_rollback.i

if.end130.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %cmp134495.i = icmp sgt i32 %call126.i, 0
  br i1 %cmp134495.i, label %for.body136.lr.ph.i, label %if.end130.i.send_command.i_crit_edge

if.end130.i.send_command.i_crit_edge:             ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_command.i

for.body136.lr.ph.i:                              ; preds = %if.end130.i
  %108 = ptrtoint ptr %src121.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %src121.i, align 4
  %conv167.i = trunc i64 %queued.2468.i to i32
  %ctxr_dma169.i = getelementptr i8, ptr %3, i32 144
  br label %for.body136.i

for.body136.i:                                    ; preds = %for.inc184.i.for.body136.i_crit_edge, %for.body136.lr.ph.i
  %queued.4502.i = phi i64 [ %queued.3.i, %for.body136.lr.ph.i ], [ %queued.5.ph.i, %for.inc184.i.for.body136.i_crit_edge ]
  %skip.3501.i = phi i32 [ %skip.2466.i, %for.body136.lr.ph.i ], [ %skip.4.ph.i, %for.inc184.i.for.body136.i_crit_edge ]
  %n_cdesc.1500.i = phi i32 [ %n_cdesc.0.i, %for.body136.lr.ph.i ], [ %n_cdesc.2.ph.i, %for.inc184.i.for.body136.i_crit_edge ]
  %i.1499.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %inc185.i, %for.inc184.i.for.body136.i_crit_edge ]
  %sg.0497.i = phi ptr [ %109, %for.body136.lr.ph.i ], [ %call186.i, %for.inc184.i.for.body136.i_crit_edge ]
  %first_cdesc.1496.i = phi ptr [ %first_cdesc.0.i, %for.body136.lr.ph.i ], [ %first_cdesc.3.ph.i, %for.inc184.i.for.body136.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0497.i, i32 0, i32 4
  %110 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %skip.3501.i)
  %cmp137.not.i = icmp sgt i32 %111, %skip.3501.i
  br i1 %cmp137.not.i, label %if.end147.i, label %if.then145.i, !prof !132

if.then145.i:                                     ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub146.i = sub i32 %skip.3501.i, %111
  br label %for.inc184.i

if.end147.i:                                      ; preds = %for.body136.i
  %conv148.i = sext i32 %skip.3501.i to i64
  %add149.i = add i64 %queued.4502.i, %conv148.i
  %conv150.i = sext i32 %111 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add149.i, i64 %conv150.i)
  %cmp151.not.i = icmp ugt i64 %add149.i, %conv150.i
  %conv154.i = trunc i64 %queued.4502.i to i32
  %sub156.i = sub i32 %111, %skip.3501.i
  %sglen.0.i = select i1 %cmp151.not.i, i32 %sub156.i, i32 %conv154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_cdesc.1500.i)
  %tobool158.not.i = icmp eq i32 %n_cdesc.1500.i, 0
  %conv161.i = sext i32 %sglen.0.i to i64
  %sub162.i = sub i64 %queued.4502.i, %conv161.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub162.i)
  %tobool163.not.i = icmp eq i64 %sub162.i, 0
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0497.i, i32 0, i32 3
  %112 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma_address.i, align 4
  %add166.i = add i32 %113, %skip.3501.i
  %114 = ptrtoint ptr %ctxr_dma169.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctxr_dma169.i, align 4
  %call170.i = call ptr @safexcel_add_cdesc(ptr noundef %5, i32 noundef %ring, i1 noundef zeroext %tobool158.not.i, i1 noundef zeroext %tobool163.not.i, i32 noundef %add166.i, i32 noundef %sglen.0.i, i32 noundef %conv167.i, i32 noundef %115, ptr noundef nonnull %dmmy.i) #11
  %cmp.i425.i = icmp ugt ptr %call170.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i425.i, label %cleanup.i, label %if.end174.i

if.end174.i:                                      ; preds = %if.end147.i
  %spec.select.i = select i1 %tobool158.not.i, ptr %call170.i, ptr %first_cdesc.1496.i
  %inc178.i = add i32 %n_cdesc.1500.i, 1
  br i1 %tobool163.not.i, label %if.end174.i.send_command.i_crit_edge, label %if.end174.i.for.inc184.i_crit_edge

if.end174.i.for.inc184.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc184.i

if.end174.i.send_command.i_crit_edge:             ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_command.i

cleanup.i:                                        ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %call170.i to i32
  br label %unmap_sg.i

for.inc184.i:                                     ; preds = %if.end174.i.for.inc184.i_crit_edge, %if.then145.i
  %first_cdesc.3.ph.i = phi ptr [ %first_cdesc.1496.i, %if.then145.i ], [ %spec.select.i, %if.end174.i.for.inc184.i_crit_edge ]
  %n_cdesc.2.ph.i = phi i32 [ %n_cdesc.1500.i, %if.then145.i ], [ %inc178.i, %if.end174.i.for.inc184.i_crit_edge ]
  %skip.4.ph.i = phi i32 [ %sub146.i, %if.then145.i ], [ 0, %if.end174.i.for.inc184.i_crit_edge ]
  %queued.5.ph.i = phi i64 [ %queued.4502.i, %if.then145.i ], [ %sub162.i, %if.end174.i.for.inc184.i_crit_edge ]
  %inc185.i = add nuw nsw i32 %i.1499.i, 1
  %call186.i = call ptr @sg_next(ptr noundef %sg.0497.i) #11
  %117 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nents.i, align 8
  %cmp134.i = icmp slt i32 %inc185.i, %118
  br i1 %cmp134.i, label %for.inc184.i.for.body136.i_crit_edge, label %for.inc184.i.send_command.i_crit_edge

for.inc184.i.send_command.i_crit_edge:            ; preds = %for.inc184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_command.i

for.inc184.i.for.body136.i_crit_edge:             ; preds = %for.inc184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136.i

send_command.i:                                   ; preds = %for.inc184.i.send_command.i_crit_edge, %if.end174.i.send_command.i_crit_edge, %if.end130.i.send_command.i_crit_edge, %if.end112.i.send_command.i_crit_edge
  %queued.2469.i = phi i64 [ %queued.2467.i, %if.end112.i.send_command.i_crit_edge ], [ %queued.2468.i, %if.end130.i.send_command.i_crit_edge ], [ %queued.2468.i, %if.end174.i.send_command.i_crit_edge ], [ %queued.2468.i, %for.inc184.i.send_command.i_crit_edge ]
  %extra.2462.i = phi i32 [ %extra.2463.i, %if.end112.i.send_command.i_crit_edge ], [ %extra.2461.i, %if.end130.i.send_command.i_crit_edge ], [ %extra.2461.i, %if.end174.i.send_command.i_crit_edge ], [ %extra.2461.i, %for.inc184.i.send_command.i_crit_edge ]
  %first_cdesc.4.i = phi ptr [ %call108.i, %if.end112.i.send_command.i_crit_edge ], [ %first_cdesc.0.i, %if.end130.i.send_command.i_crit_edge ], [ %first_cdesc.3.ph.i, %for.inc184.i.send_command.i_crit_edge ], [ %spec.select.i, %if.end174.i.send_command.i_crit_edge ]
  %n_cdesc.3.i = phi i32 [ 1, %if.end112.i.send_command.i_crit_edge ], [ %n_cdesc.0.i, %if.end130.i.send_command.i_crit_edge ], [ %n_cdesc.2.ph.i, %for.inc184.i.send_command.i_crit_edge ], [ %inc178.i, %if.end174.i.send_command.i_crit_edge ]
  %119 = ptrtoint ptr %priv4.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv4.i, align 4
  %alg.i.i = getelementptr i8, ptr %3, i32 300
  %121 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %alg.i.i, align 4
  %control0.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 5
  %123 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %control0.i.i, align 1
  %control1.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 6
  %124 = ptrtoint ptr %control1.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 0, ptr %control1.i.i, align 1
  %digest.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 3
  %125 = ptrtoint ptr %digest.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %digest.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %126)
  %cmp.i426.i = icmp eq i32 %126, 4194304
  br i1 %cmp.i426.i, label %if.then.i427.i, label %if.else34.i.i, !prof !130

if.then.i427.i:                                   ; preds = %send_command.i
  %127 = ptrtoint ptr %xcbcmac.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %xcbcmac.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool4.not.i.i = icmp eq i8 %128, 0
  %ctxr9.i.i = getelementptr i8, ptr %3, i32 136
  %129 = ptrtoint ptr %ctxr9.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ctxr9.i.i, align 4
  %data10.i.i = getelementptr inbounds %struct.safexcel_context_record, ptr %130, i32 0, i32 2
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then.i427.i
  call void @__sanitizer_cov_trace_pc() #13
  %ipad.i.i = getelementptr i8, ptr %3, i32 148
  %key_sz.i.i = getelementptr i8, ptr %3, i32 304
  %131 = ptrtoint ptr %key_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %key_sz.i.i, align 4
  %conv.i.i = zext i8 %132 to i32
  %133 = call ptr @memcpy(ptr %data10.i.i, ptr %ipad.i.i, i32 %conv.i.i)
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i427.i
  call void @__sanitizer_cov_trace_pc() #13
  %state.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %state_sz.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 4
  %134 = ptrtoint ptr %state_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %state_sz.i.i, align 4
  %conv13.i.i = zext i8 %135 to i32
  %136 = call ptr @memcpy(ptr %data10.i.i, ptr %state.i.i, i32 %conv13.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then5.i.i
  %137 = ptrtoint ptr %finish.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %finish.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool14.not.i.i = icmp eq i8 %138, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else24.i.i_crit_edge

if.end.i.i.if.else24.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %139 = ptrtoint ptr %xcbcmac.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %xcbcmac.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool16.not.i.i = icmp eq i8 %140, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true.i.i.if.else24.i.i_crit_edge, label %land.lhs.true.i.i.if.end33.i.i_crit_edge

land.lhs.true.i.i.if.end33.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

land.lhs.true.i.i.if.else24.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24.i.i

if.else24.i.i:                                    ; preds = %land.lhs.true.i.i.if.else24.i.i_crit_edge, %if.end.i.i.if.else24.i.i_crit_edge
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else24.i.i, %land.lhs.true.i.i.if.end33.i.i_crit_edge
  %.sink.i.i = phi i32 [ 4194306, %if.else24.i.i ], [ 4194338, %land.lhs.true.i.i.if.end33.i.i_crit_edge ]
  %state_sz25.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 4
  %141 = ptrtoint ptr %state_sz25.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %state_sz25.i.i, align 4
  %143 = lshr i8 %142, 2
  %div27.i.i = zext i8 %143 to i32
  %shl28.i.i = shl nuw nsw i32 %div27.i.i, 8
  %144 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %control0.i.i, align 1
  %or29.i.i = or i32 %145, %.sink.i.i
  %or32.i.i = or i32 %or29.i.i, %shl28.i.i
  store i32 %or32.i.i, ptr %control0.i.i, align 1
  br label %safexcel_context_control.exit.i

if.else34.i.i:                                    ; preds = %send_command.i
  %146 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %processed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %147)
  %tobool35.not.i.i = icmp eq i64 %147, 0
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end58.i.i

if.then36.i.i:                                    ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %finish.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %finish.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool38.not.i.i = icmp eq i8 %149, 0
  %storemerge.v.v.i.i = select i1 %tobool38.not.i.i, i32 306, i32 274
  %storemerge.v.i.i = or i32 %126, %122
  %storemerge.i.i = or i32 %storemerge.v.i.i, %storemerge.v.v.i.i
  %150 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %storemerge.i.i, ptr %control0.i.i, align 1
  br label %safexcel_context_control.exit.i

if.end58.i.i:                                     ; preds = %if.else34.i.i
  %ctxr60.i.i = getelementptr i8, ptr %3, i32 136
  %151 = ptrtoint ptr %ctxr60.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctxr60.i.i, align 4
  %data61.i.i = getelementptr inbounds %struct.safexcel_context_record, ptr %152, i32 0, i32 2
  %state63.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %state_sz65.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 4
  %153 = ptrtoint ptr %state_sz65.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %state_sz65.i.i, align 4
  %conv66.i.i = zext i8 %154 to i32
  %155 = call ptr @memcpy(ptr %data61.i.i, ptr %state63.i.i, i32 %conv66.i.i)
  %156 = ptrtoint ptr %finish.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %finish.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool68.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool68.not.i.i, label %if.else155.i.i, label %if.then69.i.i

if.then69.i.i:                                    ; preds = %if.end58.i.i
  %158 = ptrtoint ptr %digest.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %digest.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %159)
  %cmp71.i.i = icmp eq i32 %159, 2097152
  br i1 %cmp71.i.i, label %if.then80.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then69.i.i
  %hmac_zlen.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 0, i32 1
  %160 = ptrtoint ptr %hmac_zlen.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %hmac_zlen.i.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool73.not.i.i = icmp eq i8 %161, 0
  %162 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %processed.i.i, align 8
  br i1 %tobool73.not.i.i, label %lor.lhs.false75.i.i, label %if.then80.thread230.i.i

lor.lhs.false75.i.i:                              ; preds = %lor.lhs.false.i.i
  %block_sz.i.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %164 = ptrtoint ptr %block_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %block_sz.i.i, align 1
  %conv77.i.i = zext i8 %165 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %163, i64 %conv77.i.i)
  %cmp78.not.i.i = icmp eq i64 %163, %conv77.i.i
  br i1 %cmp78.not.i.i, label %if.else134.i.i, label %if.then80.thread.i.i

if.then80.i.i:                                    ; preds = %if.then69.i.i
  %166 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %.pr.i.i = load i64, ptr %processed.i.i, align 8
  %div82220.i.i = lshr i64 %.pr.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %.pr.i.i)
  %tobool83.not.i.i = icmp ult i64 %.pr.i.i, 274877906944
  %extract.t.i.i = trunc i64 %div82220.i.i to i32
  br i1 %tobool83.not.i.i, label %if.then80.i.i.if.then106.i.i_crit_edge, label %if.then80.i.i.do.end.i.i_crit_edge, !prof !132

if.then80.i.i.do.end.i.i_crit_edge:               ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then80.i.i.if.then106.i.i_crit_edge:           ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106.i.i

if.then80.thread230.i.i:                          ; preds = %lor.lhs.false.i.i
  %div82220232.i.i = lshr i64 %163, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %163)
  %tobool83.not233.i.i = icmp ult i64 %163, 274877906944
  %extract.t234.i.i = trunc i64 %div82220232.i.i to i32
  br i1 %tobool83.not233.i.i, label %if.then80.thread230.i.i.if.then106.i.i_crit_edge, label %if.then80.thread230.i.i.do.end.i.i_crit_edge, !prof !132

if.then80.thread230.i.i.do.end.i.i_crit_edge:     ; preds = %if.then80.thread230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then80.thread230.i.i.if.then106.i.i_crit_edge: ; preds = %if.then80.thread230.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106.i.i

if.then80.thread.i.i:                             ; preds = %lor.lhs.false75.i.i
  %div82220225.i.i = lshr i64 %163, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906944, i64 %163)
  %tobool83.not226.i.i = icmp ult i64 %163, 274877906944
  %extract.t227.i.i = trunc i64 %div82220225.i.i to i32
  br i1 %tobool83.not226.i.i, label %if.then80.thread.i.i.if.then106.i.i_crit_edge, label %if.then80.thread.i.i.do.end.i.i_crit_edge, !prof !132

if.then80.thread.i.i.do.end.i.i_crit_edge:        ; preds = %if.then80.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then80.thread.i.i.if.then106.i.i_crit_edge:    ; preds = %if.then80.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106.i.i

do.end.i.i:                                       ; preds = %if.then80.thread.i.i.do.end.i.i_crit_edge, %if.then80.thread230.i.i.do.end.i.i_crit_edge, %if.then80.i.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %120, i32 0, i32 1
  %167 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.3) #14
  br label %safexcel_context_control.exit.i

if.then106.i.i:                                   ; preds = %if.then80.thread.i.i.if.then106.i.i_crit_edge, %if.then80.thread230.i.i.if.then106.i.i_crit_edge, %if.then80.i.i.if.then106.i.i_crit_edge
  %count.0.off0224.i.i = phi i32 [ %extract.t.i.i, %if.then80.i.i.if.then106.i.i_crit_edge ], [ %extract.t234.i.i, %if.then80.thread230.i.i.if.then106.i.i_crit_edge ], [ %extract.t227.i.i, %if.then80.thread.i.i.if.then106.i.i_crit_edge ]
  %169 = ptrtoint ptr %state_sz65.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %state_sz65.i.i, align 4
  %171 = lshr i8 %170, 2
  %narrow.i.i = add nuw nsw i8 %171, 1
  %add.i.i = zext i8 %narrow.i.i to i32
  %shl109.i.i = shl nuw nsw i32 %add.i.i, 8
  %172 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %control0.i.i, align 1
  %or111.i.i = or i32 %shl109.i.i, %173
  %or114.i.i = or i32 %or111.i.i, 2097154
  store i32 %or114.i.i, ptr %control0.i.i, align 1
  %hmac_zlen115.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 0, i32 1
  %174 = ptrtoint ptr %hmac_zlen115.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %hmac_zlen115.i.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool116.not.i.i = icmp eq i8 %175, 0
  br i1 %tobool116.not.i.i, label %if.then106.i.i.if.end121.i.i_crit_edge, label %if.then117.i.i

if.then106.i.i.if.end121.i.i_crit_edge:           ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i.i

if.then117.i.i:                                   ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or120.i.i = or i32 %or111.i.i, 2097186
  %176 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %or120.i.i, ptr %control0.i.i, align 1
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then117.i.i, %if.then106.i.i.if.end121.i.i_crit_edge
  %177 = ptrtoint ptr %control1.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %control1.i.i, align 1
  %or124.i.i = or i32 %178, 512
  store i32 %or124.i.i, ptr %control1.i.i, align 1
  %179 = call i32 @llvm.bswap.i32(i32 %count.0.off0224.i.i) #11
  %180 = ptrtoint ptr %ctxr60.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctxr60.i.i, align 4
  %182 = ptrtoint ptr %state_sz65.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %state_sz65.i.i, align 4
  %184 = lshr i8 %183, 2
  %185 = zext i8 %184 to i32
  %arrayidx.i.i = getelementptr %struct.safexcel_context_record, ptr %181, i32 0, i32 2, i32 %185
  %186 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 %179, ptr %arrayidx.i.i, align 1
  %187 = ptrtoint ptr %digest.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 2097152, ptr %digest.i.i, align 8
  %188 = ptrtoint ptr %hmac_zlen115.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %hmac_zlen115.i.i, align 4
  br label %safexcel_context_control.exit.i

if.else134.i.i:                                   ; preds = %lor.lhs.false75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %ctxr60.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ctxr60.i.i, align 4
  %data137.i.i = getelementptr inbounds %struct.safexcel_context_record, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %state_sz65.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %state_sz65.i.i, align 4
  %conv140.i.i = zext i8 %192 to i32
  %193 = lshr i32 %conv140.i.i, 2
  %add.ptr.i429.i = getelementptr i32, ptr %data137.i.i, i32 %193
  %opad.i.i = getelementptr i8, ptr %3, i32 220
  %194 = call ptr @memcpy(ptr %add.ptr.i429.i, ptr %opad.i.i, i32 %conv140.i.i)
  %195 = load i8, ptr %state_sz65.i.i, align 4
  %196 = lshr i8 %195, 1
  %197 = zext i8 %196 to i32
  %shl148.i.i = shl nuw nsw i32 %197, 8
  %198 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %control0.i.i, align 1
  %or150.i.i = or i32 %199, %shl148.i.i
  %or153.i.i = or i32 %or150.i.i, 6291458
  store i32 %or153.i.i, ptr %control0.i.i, align 1
  br label %safexcel_context_control.exit.i

if.else155.i.i:                                   ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %state_sz65.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %state_sz65.i.i, align 4
  %202 = lshr i8 %201, 2
  %203 = zext i8 %202 to i32
  %shl159.i.i = shl nuw nsw i32 %203, 8
  %204 = ptrtoint ptr %control0.i.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %control0.i.i, align 1
  %or162.i.i = or i32 %205, %shl159.i.i
  %or165.i.i = or i32 %or162.i.i, 2097186
  store i32 %or165.i.i, ptr %control0.i.i, align 1
  br label %safexcel_context_control.exit.i

safexcel_context_control.exit.i:                  ; preds = %if.else155.i.i, %if.else134.i.i, %if.end121.i.i, %do.end.i.i, %if.then36.i.i, %if.end33.i.i
  %conv188.i = trunc i64 %queued.2469.i to i32
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %206 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %digest_sz.i, align 2
  %conv189.i = zext i8 %207 to i32
  %cbcmac190.i = getelementptr i8, ptr %3, i32 305
  %208 = ptrtoint ptr %cbcmac190.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %cbcmac190.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool191.i = icmp ne i8 %209, 0
  %token1.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 7
  %bf.shl.i.i = shl i32 %conv188.i, 15
  %and.i430.i = and i32 %conv188.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i430.i)
  %tobool10.i.i = icmp ne i32 %and.i430.i, 0
  %spec.select.i.i = and i1 %tobool10.i.i, %tobool191.i
  br i1 %spec.select.i.i, label %if.then.i431.i, label %if.else.i432.i, !prof !130

if.then.i431.i:                                   ; preds = %safexcel_context_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear15.i.i = or i32 %bf.shl.i.i, 1024
  %210 = ptrtoint ptr %token1.i.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %bf.clear15.i.i, ptr %token1.i.i, align 1
  %.neg.i.i = mul nsw i32 %and.i430.i, -32768
  %bf.set34.i.i = add nsw i32 %.neg.i.i, 533506
  br label %safexcel_hash_token.exit.i

if.else.i432.i:                                   ; preds = %safexcel_context_control.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set38.i.i = or i32 %bf.shl.i.i, 9216
  %211 = ptrtoint ptr %token1.i.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %bf.set38.i.i, ptr %token1.i.i, align 1
  br label %safexcel_hash_token.exit.i

safexcel_hash_token.exit.i:                       ; preds = %if.else.i432.i, %if.then.i431.i
  %.sink.i433.i = phi i32 [ %bf.set34.i.i, %if.then.i431.i ], [ 131074, %if.else.i432.i ]
  %212 = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 7, i32 1
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 4)
  store i32 %.sink.i433.i, ptr %212, align 1
  %arrayidx40.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 7, i32 2
  %bf.shl51.i.i = shl nuw nsw i32 %conv189.i, 15
  %bf.set57.i.i = or i32 %bf.shl51.i.i, 25538
  %214 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %bf.set57.i.i, ptr %arrayidx40.i.i, align 1
  %arrayidx58.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.4.i, i32 0, i32 6, i32 7, i32 3
  %215 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 131074, ptr %arrayidx58.i.i, align 1
  %dev192.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 1
  %216 = ptrtoint ptr %dev192.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev192.i, align 4
  %state193.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %218 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %digest_sz.i, align 2
  %call.i435.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %state193.i) #11
  br i1 %call.i435.i, label %land.rhs.i437.i, label %if.end39.i450.i

land.rhs.i437.i:                                  ; preds = %safexcel_hash_token.exit.i
  %.b1.i436.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i436.i, label %land.rhs.i437.i.dma_map_single_attrs.exit452.i_crit_edge, label %if.then.i441.i, !prof !132

land.rhs.i437.i.dma_map_single_attrs.exit452.i_crit_edge: ; preds = %land.rhs.i437.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit452.i

if.then.i441.i:                                   ; preds = %land.rhs.i437.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i438.i = call ptr @dev_driver_string(ptr noundef %217) #11
  %init_name.i.i439.i = getelementptr inbounds %struct.device, ptr %217, i32 0, i32 3
  %220 = ptrtoint ptr %init_name.i.i439.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %init_name.i.i439.i, align 8
  %tobool.not.i.i440.i = icmp eq ptr %221, null
  br i1 %tobool.not.i.i440.i, label %if.end.i.i442.i, label %if.then.i441.i.dev_name.exit.i444.i_crit_edge

if.then.i441.i.dev_name.exit.i444.i_crit_edge:    ; preds = %if.then.i441.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i444.i

if.end.i.i442.i:                                  ; preds = %if.then.i441.i
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %217, align 4
  br label %dev_name.exit.i444.i

dev_name.exit.i444.i:                             ; preds = %if.end.i.i442.i, %if.then.i441.i.dev_name.exit.i444.i_crit_edge
  %retval.0.i.i443.i = phi ptr [ %223, %if.end.i.i442.i ], [ %221, %if.then.i441.i.dev_name.exit.i444.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16.i438.i, ptr noundef %retval.0.i.i443.i) #11
  br label %dma_map_single_attrs.exit452.i

if.end39.i450.i:                                  ; preds = %safexcel_hash_token.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv196.i = zext i8 %219 to i32
  call void @debug_dma_map_single(ptr noundef %217, ptr noundef %state193.i, i32 noundef %conv196.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %224 = load ptr, ptr @mem_map, align 4
  %225 = ptrtoint ptr %state193.i to i32
  %sub.i445.i = add i32 %225, 1073741824
  %shr.i446.i = lshr i32 %sub.i445.i, 12
  %add.ptr.i447.i = getelementptr %struct.page, ptr %224, i32 %shr.i446.i
  %and.i448.i = and i32 %225, 4095
  %call41.i449.i = call i32 @dma_map_page_attrs(ptr noundef %217, ptr noundef %add.ptr.i447.i, i32 noundef %and.i448.i, i32 noundef %conv196.i, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit452.i

dma_map_single_attrs.exit452.i:                   ; preds = %if.end39.i450.i, %dev_name.exit.i444.i, %land.rhs.i437.i.dma_map_single_attrs.exit452.i_crit_edge
  %retval.0.i451.i = phi i32 [ %call41.i449.i, %if.end39.i450.i ], [ -1, %dev_name.exit.i444.i ], [ -1, %land.rhs.i437.i.dma_map_single_attrs.exit452.i_crit_edge ]
  %result_dma.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 2
  %226 = ptrtoint ptr %result_dma.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %retval.0.i451.i, ptr %result_dma.i, align 4
  %227 = ptrtoint ptr %dev192.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev192.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %228, i32 noundef %retval.0.i451.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i451.i)
  %cmp.i453.i = icmp eq i32 %retval.0.i451.i, -1
  br i1 %cmp.i453.i, label %dma_map_single_attrs.exit452.i.unmap_sg.i_crit_edge, label %if.end203.i

dma_map_single_attrs.exit452.i.unmap_sg.i_crit_edge: ; preds = %dma_map_single_attrs.exit452.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_sg.i

if.end203.i:                                      ; preds = %dma_map_single_attrs.exit452.i
  %229 = ptrtoint ptr %result_dma.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %result_dma.i, align 4
  %231 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %digest_sz.i, align 2
  %conv206.i = zext i8 %232 to i32
  %call207.i = call ptr @safexcel_add_rdesc(ptr noundef %5, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %230, i32 noundef %conv206.i) #11
  %cmp.i455.i = icmp ugt ptr %call207.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i455.i, label %if.then209.i, label %if.end211.i

if.then209.i:                                     ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #13
  %233 = ptrtoint ptr %call207.i to i32
  %234 = ptrtoint ptr %dev192.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev192.i, align 4
  %236 = ptrtoint ptr %result_dma.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %result_dma.i, align 4
  %238 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %digest_sz.i, align 2
  %conv220.i = zext i8 %239 to i32
  call void @dma_unmap_page_attrs(ptr noundef %235, i32 noundef %237, i32 noundef %conv220.i, i32 noundef 2, i32 noundef 0) #11
  br label %unmap_sg.i

if.end211.i:                                      ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @safexcel_rdr_req_set(ptr noundef %5, i32 noundef %ring, ptr noundef %call207.i, ptr noundef %async) #11
  %conv213.i = sext i32 %extra.2462.i to i64
  %sub214.i = sub i64 %queued.2469.i, %conv213.i
  %240 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %processed.i.i, align 8
  %add216.i = add i64 %sub214.i, %241
  store i64 %add216.i, ptr %processed.i.i, align 8
  %242 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %n_cdesc.3.i, ptr %commands, align 4
  %243 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %results, align 4
  br label %safexcel_ahash_send_req.exit

unmap_sg.i:                                       ; preds = %if.then209.i, %dma_map_single_attrs.exit452.i.unmap_sg.i_crit_edge, %cleanup.i
  %n_cdesc.4.i = phi i32 [ %n_cdesc.1500.i, %cleanup.i ], [ %n_cdesc.3.i, %if.then209.i ], [ %n_cdesc.3.i, %dma_map_single_attrs.exit452.i.unmap_sg.i_crit_edge ]
  %ret.2.i = phi i32 [ %116, %cleanup.i ], [ %233, %if.then209.i ], [ -22, %dma_map_single_attrs.exit452.i.unmap_sg.i_crit_edge ]
  %nents221.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 1
  %244 = ptrtoint ptr %nents221.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nents221.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool222.not.i = icmp eq i32 %245, 0
  br i1 %tobool222.not.i, label %unmap_sg.i.cdesc_rollback.i_crit_edge, label %if.then223.i

unmap_sg.i.cdesc_rollback.i_crit_edge:            ; preds = %unmap_sg.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cdesc_rollback.i

if.then223.i:                                     ; preds = %unmap_sg.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev224.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 1
  %246 = ptrtoint ptr %dev224.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev224.i, align 4
  %src225.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 2
  %248 = ptrtoint ptr %src225.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %src225.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %247, ptr noundef %249, i32 noundef %245, i32 noundef 1, i32 noundef 0) #11
  %250 = ptrtoint ptr %nents221.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %nents221.i, align 8
  br label %cdesc_rollback.i

cdesc_rollback.i:                                 ; preds = %if.then223.i, %unmap_sg.i.cdesc_rollback.i_crit_edge, %if.end119.i.cdesc_rollback.i_crit_edge
  %n_cdesc.5.i = phi i32 [ %n_cdesc.4.i, %if.then223.i ], [ %n_cdesc.4.i, %unmap_sg.i.cdesc_rollback.i_crit_edge ], [ %n_cdesc.0.i, %if.end119.i.cdesc_rollback.i_crit_edge ]
  %ret.3.i = phi i32 [ %ret.2.i, %if.then223.i ], [ %ret.2.i, %unmap_sg.i.cdesc_rollback.i_crit_edge ], [ -12, %if.end119.i.cdesc_rollback.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_cdesc.5.i)
  %cmp230506.i = icmp sgt i32 %n_cdesc.5.i, 0
  br i1 %cmp230506.i, label %for.body232.lr.ph.i, label %cdesc_rollback.i.unmap_cache.i_crit_edge

cdesc_rollback.i.unmap_cache.i_crit_edge:         ; preds = %cdesc_rollback.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_cache.i

for.body232.lr.ph.i:                              ; preds = %cdesc_rollback.i
  %ring233.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 11
  br label %for.body232.i

for.body232.i:                                    ; preds = %for.body232.i.for.body232.i_crit_edge, %for.body232.lr.ph.i
  %i.2507.i = phi i32 [ 0, %for.body232.lr.ph.i ], [ %inc236.i, %for.body232.i.for.body232.i_crit_edge ]
  %251 = ptrtoint ptr %ring233.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ring233.i, align 4
  %cdr.i = getelementptr %struct.safexcel_ring, ptr %252, i32 %ring, i32 3
  call void @safexcel_ring_rollback_wptr(ptr noundef %5, ptr noundef %cdr.i) #11
  %inc236.i = add nuw nsw i32 %i.2507.i, 1
  %exitcond.not.i = icmp eq i32 %inc236.i, %n_cdesc.5.i
  br i1 %exitcond.not.i, label %for.body232.i.unmap_cache.i_crit_edge, label %for.body232.i.for.body232.i_crit_edge

for.body232.i.for.body232.i_crit_edge:            ; preds = %for.body232.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body232.i

for.body232.i.unmap_cache.i_crit_edge:            ; preds = %for.body232.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_cache.i

unmap_cache.i:                                    ; preds = %for.body232.i.unmap_cache.i_crit_edge, %cdesc_rollback.i.unmap_cache.i_crit_edge, %if.then110.i
  %ret.4.i = phi i32 [ %100, %if.then110.i ], [ %ret.3.i, %cdesc_rollback.i.unmap_cache.i_crit_edge ], [ %ret.3.i, %for.body232.i.unmap_cache.i_crit_edge ]
  %cache_dma238.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 72
  %253 = ptrtoint ptr %cache_dma238.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %cache_dma238.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool239.not.i = icmp eq i32 %254, 0
  br i1 %tobool239.not.i, label %unmap_cache.i.safexcel_ahash_send_req.exit_crit_edge, label %if.then240.i

unmap_cache.i.safexcel_ahash_send_req.exit_crit_edge: ; preds = %unmap_cache.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %safexcel_ahash_send_req.exit

if.then240.i:                                     ; preds = %unmap_cache.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev241.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %5, i32 0, i32 1
  %255 = ptrtoint ptr %dev241.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev241.i, align 4
  %cache_sz243.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 76
  %257 = ptrtoint ptr %cache_sz243.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %cache_sz243.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %256, i32 noundef %254, i32 noundef %258, i32 noundef 1, i32 noundef 0) #11
  %259 = ptrtoint ptr %cache_dma238.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %cache_dma238.i, align 8
  %260 = ptrtoint ptr %cache_sz243.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %cache_sz243.i, align 4
  br label %safexcel_ahash_send_req.exit

safexcel_ahash_send_req.exit:                     ; preds = %if.then240.i, %unmap_cache.i.safexcel_ahash_send_req.exit_crit_edge, %if.end211.i, %dma_map_single_attrs.exit.i.safexcel_ahash_send_req.exit_crit_edge, %if.then22.i
  %retval.0.i = phi i32 [ 0, %if.end211.i ], [ 0, %if.then22.i ], [ %ret.4.i, %if.then240.i ], [ %ret.4.i, %unmap_cache.i.safexcel_ahash_send_req.exit_crit_edge ], [ -22, %dma_map_single_attrs.exit.i.safexcel_ahash_send_req.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmmy.i) #11
  br label %if.end

if.end:                                           ; preds = %safexcel_ahash_send_req.exit, %if.end.i, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %safexcel_ahash_send_req.exit ], [ %call4.i, %if.then.if.end_crit_edge ], [ 0, %if.end.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_handle_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr nocapture noundef writeonly %should_complete, ptr nocapture noundef writeonly %ret) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 6
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.rhs:                                         ; preds = %entry
  %needs_inv = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 3
  %2 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_inv, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.rhs.do.end10_crit_edge, label %do.body5, !prof !132

land.rhs.do.end10_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/inside-secure/safexcel_hash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 575, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

do.end10:                                         ; preds = %land.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %needs_inv11 = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 3
  %4 = ptrtoint ptr %needs_inv11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %needs_inv11, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end10
  %6 = ptrtoint ptr %needs_inv11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %needs_inv11, align 1
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %async, i32 0, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ret, align 4
  %ring3.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %10 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring3.i, align 4
  %rdr.i = getelementptr %struct.safexcel_ring, ptr %11, i32 %ring, i32 4
  %call4.i = tail call ptr @safexcel_ring_next_rptr(ptr noundef %priv, ptr noundef %rdr.i) #11
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8) #14
  %14 = ptrtoint ptr %call4.i to i32
  br label %if.end.i

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @safexcel_rdesc_check_errors(ptr noundef %priv, ptr noundef %call4.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %storemerge.i = phi i32 [ %call7.i, %if.else.i ], [ %14, %do.end.i ]
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge.i, ptr %ret, align 4
  tail call void @safexcel_complete(ptr noundef %priv, i32 noundef %ring) #11
  %exit_inv.i = getelementptr i8, ptr %8, i32 297
  %16 = ptrtoint ptr %exit_inv.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exit_inv.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %context_pool.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %context_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context_pool.i, align 4
  %ctxr.i = getelementptr i8, ptr %8, i32 136
  %20 = ptrtoint ptr %ctxr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxr.i, align 4
  %ctxr_dma.i = getelementptr i8, ptr %8, i32 144
  %22 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctxr_dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #11
  br label %if.end17

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @safexcel_select_ring(ptr noundef %priv) #11
  %ring14.i = getelementptr i8, ptr %8, i32 292
  %24 = ptrtoint ptr %ring14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call12.i, ptr %ring14.i, align 4
  %25 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring3.i, align 4
  %queue_lock.i = getelementptr %struct.safexcel_ring, ptr %26, i32 %call12.i, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock.i) #11
  %27 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring3.i, align 4
  %queue.i = getelementptr %struct.safexcel_ring, ptr %28, i32 %call12.i, i32 6
  %call19.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef %async) #11
  %29 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring3.i, align 4
  %queue_lock22.i = getelementptr %struct.safexcel_ring, ptr %30, i32 %call12.i, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock22.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call19.i)
  %cmp.not.i = icmp eq i32 %call19.i, -115
  br i1 %cmp.not.i, label %if.end11.i.if.end24.i_crit_edge, label %if.then23.i

if.end11.i.if.end24.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call19.i, ptr %ret, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end11.i.if.end24.i_crit_edge
  %32 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring3.i, align 4
  %workqueue.i = getelementptr %struct.safexcel_ring, ptr %33, i32 %call12.i, i32 1
  %34 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %workqueue.i, align 4
  %work_data.i = getelementptr %struct.safexcel_ring, ptr %33, i32 %call12.i, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work_data.i) #11
  br label %if.end17

if.else:                                          ; preds = %do.end10
  %tfm.i.i27 = getelementptr inbounds %struct.crypto_async_request, ptr %async, i32 0, i32 3
  %36 = ptrtoint ptr %tfm.i.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm.i.i27, align 16
  %38 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ret, align 4
  %ring4.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %39 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring4.i, align 4
  %rdr.i28 = getelementptr %struct.safexcel_ring, ptr %40, i32 %ring, i32 4
  %call5.i = tail call ptr @safexcel_ring_next_rptr(ptr noundef %priv, ptr noundef %rdr.i28) #11
  %cmp.i.i29 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29, label %do.end.i31, label %if.else.i32

do.end.i31:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i30 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.11) #14
  %43 = ptrtoint ptr %call5.i to i32
  br label %if.end.i35

if.else.i32:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 @safexcel_rdesc_check_errors(ptr noundef %priv, ptr noundef %call5.i) #11
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.else.i32, %do.end.i31
  %storemerge.i33 = phi i32 [ %call8.i, %if.else.i32 ], [ %43, %do.end.i31 ]
  %44 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge.i33, ptr %ret, align 4
  tail call void @safexcel_complete(ptr noundef %priv, i32 noundef %ring) #11
  %nents.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i34 = icmp eq i32 %46, 0
  br i1 %tobool.not.i34, label %if.end.i35.if.end13.i_crit_edge, label %if.then9.i

if.end.i35.if.end13.i_crit_edge:                  ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #13
  %dev10.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %47 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev10.i, align 4
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 2
  %49 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %48, ptr noundef %50, i32 noundef %46, i32 noundef 1, i32 noundef 0) #11
  %51 = ptrtoint ptr %nents.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %nents.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i35.if.end13.i_crit_edge
  %result_dma.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %result_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %result_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not.i = icmp eq i32 %53, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then15.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev16.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %54 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev16.i, align 4
  %digest_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %56 = ptrtoint ptr %digest_sz.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %digest_sz.i, align 2
  %conv.i = zext i8 %57 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %53, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #11
  %58 = ptrtoint ptr %result_dma.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %result_dma.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end19.i_crit_edge
  %cache_dma.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 72
  %59 = ptrtoint ptr %cache_dma.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cache_dma.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool20.not.i = icmp eq i32 %60, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then21.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev22.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %61 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev22.i, align 4
  %cache_sz.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 76
  %63 = ptrtoint ptr %cache_sz.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cache_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %62, i32 noundef %60, i32 noundef %64, i32 noundef 1, i32 noundef 0) #11
  %65 = ptrtoint ptr %cache_dma.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %cache_dma.i, align 8
  %66 = ptrtoint ptr %cache_sz.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cache_sz.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end26.i_crit_edge
  %finish.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 1
  %67 = ptrtoint ptr %finish.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %finish.i, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool27.not.i = icmp eq i8 %68, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end67.i_crit_edge, label %if.then28.i

if.end26.i.if.end67.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i

if.then28.i:                                      ; preds = %if.end26.i
  %hmac.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %69 = ptrtoint ptr %hmac.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hmac.i, align 2, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool29.not.i = icmp eq i8 %70, 0
  br i1 %tobool29.not.i, label %if.then28.i.if.end50.i_crit_edge, label %land.lhs.true.i

if.then28.i.if.end50.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %if.then28.i
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 3
  %71 = ptrtoint ptr %digest.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %digest.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %72)
  %cmp.not.i36 = icmp eq i32 %72, 6291456
  br i1 %cmp.not.i36, label %land.lhs.true.i.if.end50.i_crit_edge, label %if.then32.i

land.lhs.true.i.if.end50.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  %cache.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %state.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %__crt_alg.i.i.i = getelementptr i8, ptr %37, i32 12
  %73 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 -128
  %75 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %77 = call ptr @memcpy(ptr %cache.i, ptr %state.i, i32 %76)
  %opad.i = getelementptr i8, ptr %37, i32 220
  %digest_sz37.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 13
  %78 = ptrtoint ptr %digest_sz37.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %digest_sz37.i, align 2
  %conv38.i = zext i8 %79 to i32
  %80 = call ptr @memcpy(ptr %state.i, ptr %opad.i, i32 %conv38.i)
  %block_sz.i = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 12
  %81 = ptrtoint ptr %block_sz.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %block_sz.i, align 1
  %conv39.i = zext i8 %82 to i32
  %83 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i3.i = getelementptr i8, ptr %83, i32 -128
  %84 = ptrtoint ptr %add.ptr.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i.i3.i, align 128
  %add.i = add i32 %85, %conv39.i
  %conv41.i = zext i32 %add.i to i64
  %len.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 56
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv41.i, ptr %len.i, align 8
  %conv43.i = zext i8 %82 to i64
  %processed.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 64
  %87 = ptrtoint ptr %processed.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv43.i, ptr %processed.i, align 8
  %88 = ptrtoint ptr %hmac.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %hmac.i, align 2
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool45.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool45.not.i, label %if.then32.i.if.end48.i_crit_edge, label %if.then46.i

if.then32.i.if.end48.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %needs_inv.i = getelementptr i8, ptr %37, i32 296
  %91 = ptrtoint ptr %needs_inv.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %needs_inv.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.then32.i.if.end48.i_crit_edge
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 1
  %92 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %nbytes.i, align 8
  %call49.i = tail call fastcc i32 @safexcel_ahash_enqueue(ptr noundef %async) #11
  br label %if.end17

if.end50.i:                                       ; preds = %land.lhs.true.i.if.end50.i_crit_edge, %if.then28.i.if.end50.i_crit_edge
  %digest51.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 0, i32 3
  %93 = ptrtoint ptr %digest51.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %digest51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %94)
  %cmp52.i = icmp eq i32 %94, 4194304
  br i1 %cmp52.i, label %land.rhs.i, label %if.end50.i.if.else61.i_crit_edge

if.end50.i.if.else61.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else61.i

land.rhs.i:                                       ; preds = %if.end50.i
  %alg.i = getelementptr i8, ptr %37, i32 300
  %95 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %alg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp54.i = icmp eq i32 %96, 0
  br i1 %cmp54.i, label %if.then58.i, label %land.rhs.i.if.else61.i_crit_edge, !prof !130

land.rhs.i.if.else61.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else61.i

if.then58.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %state59.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %97 = ptrtoint ptr %state59.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %state59.i, align 8
  %neg.i = xor i32 %98, -1
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 3
  %99 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %result.i, align 32
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %neg.i, ptr %100, align 4
  br label %if.end67.i

if.else61.i:                                      ; preds = %land.rhs.i.if.else61.i_crit_edge, %if.end50.i.if.else61.i_crit_edge
  %result62.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 0, i32 3
  %102 = ptrtoint ptr %result62.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %result62.i, align 32
  %state63.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 1
  %__crt_alg.i.i4.i = getelementptr i8, ptr %37, i32 12
  %104 = ptrtoint ptr %__crt_alg.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %__crt_alg.i.i4.i, align 4
  %add.ptr.i.i.i5.i = getelementptr i8, ptr %105, i32 -128
  %106 = ptrtoint ptr %add.ptr.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i.i.i5.i, align 128
  %108 = call ptr @memcpy(ptr %103, ptr %state63.i, i32 %107)
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else61.i, %if.then58.i, %if.end26.i.if.end67.i_crit_edge
  %len.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 56
  %109 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %len.i.i, align 8
  %processed.i.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 64
  %111 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %processed.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %112)
  %tobool69.not.i = icmp eq i64 %110, %112
  br i1 %tobool69.not.i, label %if.end67.i.if.end17_crit_edge, label %if.then70.i

if.end67.i.if.end17_crit_edge:                    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i64 %110, %112
  %cache71.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 1, i32 5, i32 72
  %cache_next.i = getelementptr inbounds %struct.ahash_request, ptr %async, i32 2, i32 5, i32 80
  %conv74.i = trunc i64 %sub.i.i to i32
  %113 = call ptr @memcpy(ptr %cache71.i, ptr %cache_next.i, i32 %conv74.i)
  br label %if.end17

if.end17:                                         ; preds = %if.then70.i, %if.end67.i.if.end17_crit_edge, %if.end48.i, %if.end24.i, %if.then8.i
  %storemerge = phi i8 [ 0, %if.end24.i ], [ 1, %if.then8.i ], [ 0, %if.end48.i ], [ 1, %if.then70.i ], [ 1, %if.end67.i.if.end17_crit_edge ]
  %114 = ptrtoint ptr %should_complete to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %storemerge, ptr %should_complete, align 1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_invalidate_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_cdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_rdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_rdr_req_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_ring_rollback_wptr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_ring_next_rptr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_rdesc_check_errors(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_complete(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_inv_complete(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_hmac_init_iv(ptr noundef %areq, i32 noundef %blocksize, ptr noundef %pad, ptr noundef %state) unnamed_addr #1 align 64 {
entry:
  %result = alloca %struct.safexcel_ahash_result, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result) #11
  %0 = call ptr @memset(ptr %result, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 1
  %1 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %2 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @safexcel_ahash_complete, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 2
  %3 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %result, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %4 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %flags4.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %pad, i32 noundef %blocksize) #11
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %5 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %6 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %blocksize, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %7 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pad, ptr %result3.i, align 32
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #11
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

crypto_ahash_init.exit:                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -128
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = call i32 %14(ptr noundef %areq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %crypto_ahash_init.exit.cleanup_crit_edge

crypto_ahash_init.exit.cleanup_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %crypto_ahash_init.exit
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %hmac = getelementptr inbounds %struct.safexcel_ahash_req, ptr %__ctx.i, i32 0, i32 2
  %15 = ptrtoint ptr %hmac to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hmac, align 2
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %__ctx.i, align 8
  %17 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i, align 4
  %21 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %20) #11
  %23 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %24, i32 -124
  %25 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %26(ptr noundef %areq) #11
  call void @crypto_stats_ahash_update(i32 noundef %22, i32 noundef %call3.i, ptr noundef %20) #11
  %27 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call3.i, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end7_crit_edge
    i32 -115, label %if.end.if.end7_crit_edge35
    i32 -16, label %if.end.if.end7_crit_edge36
  ]

if.end.if.end7_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.if.end7_crit_edge35:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge35, %if.end.if.end7_crit_edge36
  %call9 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %result) #11
  %error = getelementptr inbounds %struct.safexcel_ahash_result, ptr %result, i32 0, i32 1
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not = icmp eq i32 %29, 0
  br i1 %tobool10.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm.i.i, align 16
  %export.i = getelementptr i8, ptr %31, i32 -108
  %32 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %33(ptr noundef %areq, ptr noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %crypto_ahash_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end13 ], [ %call2.i, %crypto_ahash_init.exit.cleanup_crit_edge ], [ %call3.i, %if.end.cleanup_crit_edge ], [ %29, %if.end7.cleanup_crit_edge ], [ -126, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_ahash_complete(ptr nocapture noundef readonly %req, i32 noundef %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %error)
  %cmp = icmp eq i32 %error, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %error1 = getelementptr inbounds %struct.safexcel_ahash_result, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %error, ptr %error1, align 4
  tail call void @complete(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_sha3_fbcheck(ptr noundef %req) unnamed_addr #1 align 64 {
entry:
  %key = alloca [144 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %do_fallback = getelementptr i8, ptr %1, i32 306
  %2 = ptrtoint ptr %do_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_fallback, align 2, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then:                                          ; preds = %entry
  %fback = getelementptr i8, ptr %1, i32 316
  %4 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %result, align 32
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbytes, align 8
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 2
  %22 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %23 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 3
  %24 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %result3.i, align 32
  %fb_init_done = getelementptr i8, ptr %1, i32 307
  %25 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fb_init_done, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not = icmp eq i8 %26, 0
  br i1 %tobool5.not, label %if.then6, label %if.then.if.end33_crit_edge

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then6:                                         ; preds = %if.then
  %fb_do_setkey = getelementptr i8, ptr %1, i32 308
  %27 = ptrtoint ptr %fb_do_setkey to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fb_do_setkey, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not = icmp eq i8 %28, 0
  br i1 %tobool7.not, label %if.then6.cond.false_crit_edge, label %if.end

if.then6.cond.false_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

if.end:                                           ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %key) #11
  %29 = call ptr @memset(ptr %key, i32 255, i32 144)
  %ipad = getelementptr i8, ptr %1, i32 148
  %30 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fback, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %31, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cra_blocksize.i.i, align 4
  %div58 = lshr i32 %35, 1
  %36 = call ptr @memcpy(ptr %key, ptr %ipad, i32 %div58)
  %37 = load ptr, ptr %fback, align 4
  %__crt_alg.i.i61 = getelementptr inbounds %struct.crypto_ahash, ptr %37, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %__crt_alg.i.i61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i61, align 4
  %cra_blocksize.i.i62 = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cra_blocksize.i.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cra_blocksize.i.i62, align 4
  %div1559 = lshr i32 %41, 1
  %add.ptr = getelementptr i8, ptr %key, i32 %div1559
  %opad = getelementptr i8, ptr %1, i32 220
  %42 = call ptr @memcpy(ptr %add.ptr, ptr %opad, i32 %div1559)
  %43 = load ptr, ptr %fback, align 4
  %__crt_alg.i.i65 = getelementptr inbounds %struct.crypto_ahash, ptr %43, i32 0, i32 10, i32 3
  %44 = ptrtoint ptr %__crt_alg.i.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_alg.i.i65, align 4
  %cra_blocksize.i.i66 = getelementptr inbounds %struct.crypto_alg, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cra_blocksize.i.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cra_blocksize.i.i66, align 4
  %call24 = call i32 @crypto_ahash_setkey(ptr noundef %43, ptr noundef nonnull %key, i32 noundef %47) #11
  %48 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fback, align 4
  %__crt_alg.i.i67 = getelementptr inbounds %struct.crypto_ahash, ptr %49, i32 0, i32 10, i32 3
  %50 = ptrtoint ptr %__crt_alg.i.i67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__crt_alg.i.i67, align 4
  %cra_blocksize.i.i68 = getelementptr inbounds %struct.crypto_alg, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cra_blocksize.i.i68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cra_blocksize.i.i68, align 4
  %54 = call ptr @memset(ptr %key, i32 0, i32 %53)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #11, !srcloc !131
  %55 = ptrtoint ptr %fb_do_setkey to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %fb_do_setkey, align 4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool29.not = icmp eq i32 %call24, 0
  br i1 %tobool29.not, label %if.end.cond.false_crit_edge, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %if.end.cond.false_crit_edge, %if.then6.cond.false_crit_edge
  %56 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tfm1.i, align 16
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 128
  %and.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 -128
  %60 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = call i32 %61(ptr noundef %__ctx.i) #11
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.false.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call24, %if.end.cond.end_crit_edge ], [ %call2.i, %if.end.i ], [ -126, %cond.false.cond.end_crit_edge ]
  %62 = ptrtoint ptr %fb_init_done to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %fb_init_done, align 1
  br label %if.end33

if.end33:                                         ; preds = %cond.end, %if.then.if.end33_crit_edge, %entry.if.end33_crit_edge
  %ret.1 = phi i32 [ 0, %if.then.if.end33_crit_edge ], [ %cond, %cond.end ], [ 0, %entry.if.end33_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_hmac_sha3_cra_init(ptr nocapture noundef %tfm, ptr noundef %alg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %1, i32 -384
  %2 = ptrtoint ptr %add.ptr.i25.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i25.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv2.i.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @safexcel_ahash_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_handle_result, ptr %handle_result.i.i, align 4
  %fb_do_setkey.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %7 = ptrtoint ptr %fb_do_setkey.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fb_do_setkey.i.i, align 4
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 376, ptr %reqsize1.i.i.i, align 32
  %cra_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call4.i = tail call ptr @crypto_alloc_ahash(ptr noundef %cra_name.i.i, i32 noundef 0, i32 noundef 384) #11
  %fback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %9 = ptrtoint ptr %fback.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4.i, ptr %fback.i, align 4
  %cmp.i.i31 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i31, label %safexcel_sha3_cra_init.exit, label %safexcel_sha3_cra_init.exit.thread

safexcel_sha3_cra_init.exit.thread:               ; preds = %entry
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call4.i, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %statesize.i.i = getelementptr i8, ptr %11, i32 -124
  %12 = ptrtoint ptr %statesize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %statesize.i.i, align 4
  %14 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i, align 4
  %statesize.i = getelementptr i8, ptr %15, i32 -124
  %16 = ptrtoint ptr %statesize.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %statesize.i, align 4
  %17 = ptrtoint ptr %fback.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fback.i, align 4
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %20, 128
  %21 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 376) #11
  %22 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reqsize1.i.i.i, align 32
  %call2 = tail call ptr @crypto_alloc_shash(ptr noundef %alg, i32 noundef 0, i32 noundef 256) #11
  %shpre = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %23 = ptrtoint ptr %shpre to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2, ptr %shpre, align 4
  %cmp.i34 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.then5, label %if.end8.i

safexcel_sha3_cra_init.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call4.i to i32
  br label %cleanup

if.then5:                                         ; preds = %safexcel_sha3_cra_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8.i:                                        ; preds = %safexcel_sha3_cra_init.exit.thread
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call2, align 128
  %add = add i32 %27, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %shdesc = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %28 = ptrtoint ptr %shdesc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %shdesc, align 4
  %tobool13.not = icmp eq ptr %call9.i, null
  %29 = ptrtoint ptr %shpre to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shpre, align 4
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %30, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %30, ptr noundef %base.i.i) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call9.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then5, %safexcel_sha3_cra_init.exit
  %retval.0 = phi i32 [ %25, %if.then5 ], [ 0, %if.end16 ], [ -12, %if.then14 ], [ %24, %safexcel_sha3_cra_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @safexcel_alg_sha1, !1, !"safexcel_alg_sha1", i1 false, i1 false}
!1 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 981, i32 30}
!2 = !{ptr @safexcel_alg_hmac_sha1, !3, !"safexcel_alg_hmac_sha1", i1 false, i1 false}
!3 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1232, i32 30}
!4 = !{ptr @safexcel_alg_sha256, !5, !"safexcel_alg_sha256", i1 false, i1 false}
!5 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1290, i32 30}
!6 = !{ptr @safexcel_alg_sha224, !7, !"safexcel_alg_sha224", i1 false, i1 false}
!7 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1347, i32 30}
!8 = !{ptr @safexcel_alg_hmac_sha224, !9, !"safexcel_alg_hmac_sha224", i1 false, i1 false}
!9 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1418, i32 30}
!10 = !{ptr @safexcel_alg_hmac_sha256, !11, !"safexcel_alg_hmac_sha256", i1 false, i1 false}
!11 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1490, i32 30}
!12 = !{ptr @safexcel_alg_sha512, !13, !"safexcel_alg_sha512", i1 false, i1 false}
!13 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1548, i32 30}
!14 = !{ptr @safexcel_alg_sha384, !15, !"safexcel_alg_sha384", i1 false, i1 false}
!15 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1605, i32 30}
!16 = !{ptr @safexcel_alg_hmac_sha512, !17, !"safexcel_alg_hmac_sha512", i1 false, i1 false}
!17 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1676, i32 30}
!18 = !{ptr @safexcel_alg_hmac_sha384, !19, !"safexcel_alg_hmac_sha384", i1 false, i1 false}
!19 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1748, i32 30}
!20 = !{ptr @safexcel_alg_md5, !21, !"safexcel_alg_md5", i1 false, i1 false}
!21 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1806, i32 30}
!22 = !{ptr @safexcel_alg_hmac_md5, !23, !"safexcel_alg_hmac_md5", i1 false, i1 false}
!23 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1878, i32 30}
!24 = !{ptr @safexcel_alg_crc32, !25, !"safexcel_alg_crc32", i1 false, i1 false}
!25 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1959, i32 30}
!26 = !{ptr @safexcel_alg_cbcmac, !27, !"safexcel_alg_cbcmac", i1 false, i1 false}
!27 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2050, i32 30}
!28 = !{ptr @safexcel_alg_xcbcmac, !29, !"safexcel_alg_xcbcmac", i1 false, i1 false}
!29 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2145, i32 30}
!30 = !{ptr @safexcel_alg_cmac, !31, !"safexcel_alg_cmac", i1 false, i1 false}
!31 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2241, i32 30}
!32 = !{ptr @safexcel_alg_sm3, !33, !"safexcel_alg_sm3", i1 false, i1 false}
!33 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2299, i32 30}
!34 = !{ptr @safexcel_alg_hmac_sm3, !35, !"safexcel_alg_hmac_sm3", i1 false, i1 false}
!35 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2370, i32 30}
!36 = !{ptr @safexcel_alg_sha3_224, !37, !"safexcel_alg_sha3_224", i1 false, i1 false}
!37 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2564, i32 30}
!38 = !{ptr @safexcel_alg_sha3_256, !39, !"safexcel_alg_sha3_256", i1 false, i1 false}
!39 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2622, i32 30}
!40 = !{ptr @safexcel_alg_sha3_384, !41, !"safexcel_alg_sha3_384", i1 false, i1 false}
!41 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2680, i32 30}
!42 = !{ptr @safexcel_alg_sha3_512, !43, !"safexcel_alg_sha3_512", i1 false, i1 false}
!43 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2738, i32 30}
!44 = !{ptr @safexcel_alg_hmac_sha3_224, !45, !"safexcel_alg_hmac_sha3_224", i1 false, i1 false}
!45 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2900, i32 30}
!46 = !{ptr @safexcel_alg_hmac_sha3_256, !47, !"safexcel_alg_hmac_sha3_256", i1 false, i1 false}
!47 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2971, i32 30}
!48 = !{ptr @safexcel_alg_hmac_sha3_384, !49, !"safexcel_alg_hmac_sha3_384", i1 false, i1 false}
!49 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 3042, i32 30}
!50 = !{ptr @safexcel_alg_hmac_sha3_512, !51, !"safexcel_alg_hmac_sha3_512", i1 false, i1 false}
!51 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 3112, i32 30}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 800, i32 11}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!56 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 176, i32 5}
!60 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.6, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @safexcel_context_control._entry, !59, !"_entry", i1 false, i1 false}
!65 = !{ptr @safexcel_context_control._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 532, i32 3}
!68 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @safexcel_handle_inv_result._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @safexcel_handle_inv_result._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 242, i32 3}
!74 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @safexcel_handle_req_result._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @safexcel_handle_req_result._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 974, i32 4}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @safexcel_ahash_cra_exit._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @safexcel_ahash_cra_exit._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 653, i32 3}
!84 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @safexcel_ahash_exit_inv._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @safexcel_ahash_exit_inv._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @init_completion.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../include/linux/completion.h", i32 87, i32 2}
!89 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1228, i32 52}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1381, i32 52}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1453, i32 52}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1639, i32 52}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1711, i32 52}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 1864, i32 52}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2103, i32 3}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2105, i32 3}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2107, i32 3}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2133, i32 34}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2333, i32 52}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2897, i32 42}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 2968, i32 42}
!116 = !{ptr @.str.31, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 3039, i32 42}
!118 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/inside-secure/safexcel_hash.c", i32 3110, i32 42}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i8 0, i8 2}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2149298660}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"auto-init"}
!134 = !{i64 2154166837, i64 2154167346, i64 2154166874, i64 2154166930, i64 2154166964, i64 2154166988, i64 2154167029, i64 2154167050, i64 2154167078, i64 2154167112}
