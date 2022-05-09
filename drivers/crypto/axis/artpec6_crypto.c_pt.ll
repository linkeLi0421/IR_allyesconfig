; ModuleID = '/llk/IR_all_yes/drivers/crypto/axis/artpec6_crypto.c_pt.bc'
source_filename = "../drivers/crypto/axis/artpec6_crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.72, ptr, ptr, ptr, ptr, %union.anon.73, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.artpec6_crypto = type { ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.tasklet_struct, ptr, i32, %struct.timer_list, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.artpec6_crypto_req_common = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.artpec6_crypto_dma_descriptors = type { [64 x %struct.pdma_descr], [64 x %struct.pdma_descr], [64 x i32], %struct.list_head, [130 x %struct.artpec6_crypto_dma_map], i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.pdma_descr = type { %struct.pdma_descr_ctrl, %union.anon.76 }
%struct.pdma_descr_ctrl = type { i8 }
%union.anon.76 = type { %struct.pdma_data_descr }
%struct.pdma_data_descr = type { [7 x i8] }
%struct.artpec6_crypto_dma_map = type { i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.artpec6_crypto_bounce_buffer = type { %struct.list_head, i32, ptr, i32, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.artpec6_hash_export_state = type { [64 x i8], [32 x i8], i32, i64, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.artpec6_crypto_walk = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@__initcall__kmod_artpec6_crypto__449_2992_artpec6_crypto_driver_init6 = internal global ptr @artpec6_crypto_driver_init, section ".initcall6.init", align 4
@artpec6_crypto_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @artpec6_crypto_probe, ptr @artpec6_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @artpec6_crypto_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_artpec6_crypto_driver_exit = internal global ptr @artpec6_crypto_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author450 = internal constant [45 x i8] c"artpec6_crypto.author=Axis Communications AB\00", section ".modinfo", align 1
@__UNIQUE_ID_description451 = internal constant [50 x i8] c"artpec6_crypto.description=ARTPEC-6 Crypto driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file452 = internal constant [55 x i8] c"artpec6_crypto.file=drivers/crypto/axis/artpec6_crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license453 = internal constant [27 x i8] c"artpec6_crypto.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"artpec6-crypto\00", [17 x i8] zeroinitializer }, align 32
@artpec6_crypto_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec7-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@artpec6_crypto_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@artpec6_crypto_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ac->queue_lock\00", [16 x i8] zeroinitializer }, align 32
@artpec6_crypto_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ac->timer)\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"artpec6_crypto_dma\00", [45 x i8] zeroinitializer }, align 32
@hash_algos = internal global [3 x %struct.ahash_alg] [%struct.ahash_alg { ptr @artpec6_crypto_sha1_init, ptr @artpec6_crypto_hash_update, ptr @artpec6_crypto_hash_final, ptr null, ptr @artpec6_crypto_sha1_digest, ptr @artpec6_crypto_hash_export, ptr @artpec6_crypto_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 120, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 64, i32 72, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr @artpec6_crypto_ahash_init, ptr @artpec6_crypto_ahash_exit, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @artpec6_crypto_sha256_init, ptr @artpec6_crypto_hash_update, ptr @artpec6_crypto_hash_final, ptr null, ptr @artpec6_crypto_sha256_digest, ptr @artpec6_crypto_hash_export, ptr @artpec6_crypto_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 120, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 64, i32 72, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr @artpec6_crypto_ahash_init, ptr @artpec6_crypto_ahash_exit, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @artpec6_crypto_hmac_sha256_init, ptr @artpec6_crypto_hash_update, ptr @artpec6_crypto_hash_final, ptr null, ptr @artpec6_crypto_hmac_sha256_digest, ptr @artpec6_crypto_hash_export, ptr @artpec6_crypto_hash_import, ptr @artpec6_crypto_hash_set_key, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 120, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 64, i32 72, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr @artpec6_crypto_ahash_init_hmac_sha256, ptr @artpec6_crypto_ahash_exit, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } } }], align 128
@artpec6_crypto_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2931, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register ahashes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"artpec6_crypto_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/crypto/axis/artpec6_crypto.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@artpec6_crypto_probe._entry_ptr = internal global ptr @artpec6_crypto_probe._entry, section ".printk_index", align 4
@crypto_algos = internal global [4 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @artpec6_crypto_cipher_set_key, ptr @artpec6_crypto_encrypt, ptr @artpec6_crypto_decrypt, ptr @artpec6_crypto_aes_ecb_init, ptr @artpec6_crypto_aes_exit, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 80, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec6-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @artpec6_crypto_cipher_set_key, ptr @artpec6_crypto_ctr_encrypt, ptr @artpec6_crypto_ctr_decrypt, ptr @artpec6_crypto_aes_ctr_init, ptr @artpec6_crypto_aes_ctr_exit, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 1, i32 80, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec6-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @artpec6_crypto_cipher_set_key, ptr @artpec6_crypto_encrypt, ptr @artpec6_crypto_decrypt, ptr @artpec6_crypto_aes_cbc_init, ptr @artpec6_crypto_aes_exit, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 80, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec6-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @artpec6_crypto_xts_set_key, ptr @artpec6_crypto_encrypt, ptr @artpec6_crypto_decrypt, ptr @artpec6_crypto_aes_xts_init, ptr @artpec6_crypto_aes_exit, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 1, i32 80, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec6-xts-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } }], align 128
@artpec6_crypto_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 2937, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register ciphers\0A\00", [36 x i8] zeroinitializer }, align 32
@artpec6_crypto_probe._entry_ptr.12 = internal global ptr @artpec6_crypto_probe._entry.10, section ".printk_index", align 4
@aead_algos = internal global [1 x %struct.aead_alg] [%struct.aead_alg { ptr @artpec6_crypto_aead_set_key, ptr null, ptr @artpec6_crypto_aead_encrypt, ptr @artpec6_crypto_aead_decrypt, ptr @artpec6_crypto_aead_init, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 80, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"artpec-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.73 zeroinitializer, [120 x i8] undef } }], align 128
@artpec6_crypto_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 2943, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to register aeads\0A\00", [38 x i8] zeroinitializer }, align 32
@artpec6_crypto_probe._entry_ptr.15 = internal global ptr @artpec6_crypto_probe._entry.13, section ".printk_index", align 4
@artpec6_crypto_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.artpec6_crypto_timeout = private unnamed_addr constant [23 x i8] c"artpec6_crypto_timeout\00", align 1
@artpec6_crypto_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.artpec6_crypto_timeout, ptr @.str.7, i32 2073, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@artpec6_crypto_timeout._entry_ptr = internal global ptr @artpec6_crypto_timeout._entry, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"artpec6_crypto\00", [17 x i8] zeroinitializer }, align 32
@dbgfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fail_status_read\00", [47 x i8] zeroinitializer }, align 32
@artpec6_crypto_fail_status_read = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fail_dma_array_full\00", [44 x i8] zeroinitializer }, align 32
@artpec6_crypto_fail_dma_array_full = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@artpec6_crypto_task.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.7, ptr @.str.24, i8 2, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"artpec6_crypto_task\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Spurious IRQ\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"artpec6_crypto: Spurious IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@artpec6_crypto_task.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.7, ptr @.str.26, i8 2, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request %p status is %X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"artpec6_crypto: Request %p status is %X\0A\00", [55 x i8] zeroinitializer }, align 32
@artpec6_crypto_task.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.7, ptr @.str.28, i8 2, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Completing request %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"artpec6_crypto: Completing request %p\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@artpec6_crypto_copy_bounce_buffers.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.30, ptr @.str.7, ptr @.str.31, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"artpec6_crypto_copy_bounce_buffers\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bounce entry %p: %zu bytes @ %zu from %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"artpec6_crypto: bounce entry %p: %zu bytes @ %zu from %p\0A\00", [38 x i8] zeroinitializer }, align 32
@artpec6_crypto_init_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 2279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013artpec6_crypto: %s: Unsupported hash type 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"artpec6_crypto_init_hash\00", [39 x i8] zeroinitializer }, align 32
@artpec6_crypto_init_hash._entry_ptr = internal global ptr @artpec6_crypto_init_hash._entry, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Artpec-6 CA\00", [20 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_out_descr_short._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013artpec6_crypto: No free OUT DMA descriptors available!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"artpec6_crypto_setup_out_descr_short\00", [59 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_out_descr_short._entry_ptr = internal global ptr @artpec6_crypto_setup_out_descr_short._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@artpec6_crypto_setup_out_descr_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.7, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"artpec6_crypto_setup_out_descr_phys\00", [60 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_out_descr_phys._entry_ptr = internal global ptr @artpec6_crypto_setup_out_descr_phys._entry, section ".printk_index", align 4
@artpec6_crypto_setup_in_descr_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013artpec6_crypto: No free IN DMA descriptors available!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"artpec6_crypto_setup_in_descr_phys\00", [61 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_in_descr_phys._entry_ptr = internal global ptr @artpec6_crypto_setup_in_descr_phys._entry, section ".printk_index", align 4
@artpec6_crypto_setup_sg_descrs_out.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"artpec6_crypto_setup_sg_descrs_out\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT-CHUNK %pad:%zu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"artpec6_crypto: OUT-CHUNK %pad:%zu\0A\00", [60 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_sg_descrs_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.7, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013artpec6_crypto: EOL unexpected %zu bytes left\0A\00", [47 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_sg_descrs_out._entry_ptr = internal global ptr @artpec6_crypto_setup_sg_descrs_out._entry, section ".printk_index", align 4
@artpec6_crypto_terminate_in_descrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013artpec6_crypto: %s: IN descriptor list is %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"artpec6_crypto_terminate_in_descrs\00", [61 x i8] zeroinitializer }, align 32
@artpec6_crypto_terminate_in_descrs._entry_ptr = internal global ptr @artpec6_crypto_terminate_in_descrs._entry, section ".printk_index", align 4
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@artpec6_crypto_terminate_out_descrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013artpec6_crypto: %s: OUT descriptor list is %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"artpec6_crypto_terminate_out_descrs\00", [60 x i8] zeroinitializer }, align 32
@artpec6_crypto_terminate_out_descrs._entry_ptr = internal global ptr @artpec6_crypto_terminate_out_descrs._entry, section ".printk_index", align 4
@artpec6_crypto_hash_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013artpec6_crypto: Invalid length (%d) of HMAC key\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"artpec6_crypto_hash_set_key\00", [36 x i8] zeroinitializer }, align 32
@artpec6_crypto_hash_set_key._entry_ptr = internal global ptr @artpec6_crypto_hash_set_key._entry, section ".printk_index", align 4
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@artpec6_crypto_prepare_crypto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013artpec6_crypto: %s: Invalid key length %d!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"artpec6_crypto_prepare_crypto\00", [34 x i8] zeroinitializer }, align 32
@artpec6_crypto_prepare_crypto._entry_ptr = internal global ptr @artpec6_crypto_prepare_crypto._entry, section ".printk_index", align 4
@artpec6_crypto_prepare_crypto._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.7, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013artpec6_crypto: %s: Invalid cipher mode %d!\0A\00", [49 x i8] zeroinitializer }, align 32
@artpec6_crypto_prepare_crypto._entry_ptr.58 = internal global ptr @artpec6_crypto_prepare_crypto._entry.56, section ".printk_index", align 4
@artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.7, ptr @.str.60, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"artpec6_crypto_setup_sg_descrs_in\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CHUNK-b %pad:%zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"artpec6_crypto: CHUNK-b %pad:%zu\0A\00", [62 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.7, ptr @.str.60, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.7, ptr @.str.62, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CHUNK %pad:%zu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"artpec6_crypto: CHUNK %pad:%zu\0A\00", [32 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_sg_descrs_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.59, ptr @.str.7, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@artpec6_crypto_setup_sg_descrs_in._entry_ptr = internal global ptr @artpec6_crypto_setup_sg_descrs_in._entry, section ".printk_index", align 4
@setup_bounce_buffer_in.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.64, ptr @.str.7, ptr @.str.65, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setup_bounce_buffer_in\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BOUNCE %zu offset %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"artpec6_crypto: BOUNCE %zu offset %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@artpec6_crypto_ctr_crypt.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.67, ptr @.str.7, ptr @.str.68, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"artpec6_crypto_ctr_crypt\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"counter %x will overflow (nblks %u), falling back\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"artpec6_crypto: counter %x will overflow (nblks %u), falling back\0A\00", [61 x i8] zeroinitializer }, align 32
@artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.70, ptr @.str.7, ptr @.str.71, i8 2, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"artpec6_crypto_complete_aead\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"***EBADMSG:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"artpec6_crypto: ***EBADMSG:\0A\00", [35 x i8] zeroinitializer }, align 32
@artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.70, ptr @.str.7, ptr @.str.73, i8 2, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ref:\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.70, ptr @.str.7, ptr @.str.75, i8 2, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"out:\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 48, i64 64]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"artpec6_crypto_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2983, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2987, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"artpec6_crypto_of_match\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2842, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"artpec6_crypto_dev\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 348, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2884, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2887, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2891, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2931, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2937, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2943, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2073, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2824, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"dbgfs_root\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2820, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2827, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant [32 x i8] c"artpec6_crypto_fail_status_read\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2830, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant [35 x i8] c"artpec6_crypto_fail_dma_array_full\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 352, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 351, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2090, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2112, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2122, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 436, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2279, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 586, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 553, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 745, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 898, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 937, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 982, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 958, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2233, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2419, i32 47 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1715, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1747, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 845, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 855, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 880, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 817, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1196, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2203, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2204, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [40 x i8] c"../drivers/crypto/axis/artpec6_crypto.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2206, i32 4 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author450, ptr @__UNIQUE_ID_description451, ptr @__UNIQUE_ID_file452, ptr @__UNIQUE_ID_license453, ptr @__exitcall_artpec6_crypto_driver_exit, ptr @__initcall__kmod_artpec6_crypto__449_2992_artpec6_crypto_driver_init6, ptr @artpec6_crypto_driver_exit, ptr @artpec6_crypto_hash_set_key._entry, ptr @artpec6_crypto_hash_set_key._entry_ptr, ptr @artpec6_crypto_init_hash._entry, ptr @artpec6_crypto_init_hash._entry_ptr, ptr @artpec6_crypto_prepare_crypto._entry, ptr @artpec6_crypto_prepare_crypto._entry.56, ptr @artpec6_crypto_prepare_crypto._entry_ptr, ptr @artpec6_crypto_prepare_crypto._entry_ptr.58, ptr @artpec6_crypto_probe._entry, ptr @artpec6_crypto_probe._entry.10, ptr @artpec6_crypto_probe._entry.13, ptr @artpec6_crypto_probe._entry_ptr, ptr @artpec6_crypto_probe._entry_ptr.12, ptr @artpec6_crypto_probe._entry_ptr.15, ptr @artpec6_crypto_setup_in_descr_phys._entry, ptr @artpec6_crypto_setup_in_descr_phys._entry_ptr, ptr @artpec6_crypto_setup_out_descr_phys._entry, ptr @artpec6_crypto_setup_out_descr_phys._entry_ptr, ptr @artpec6_crypto_setup_out_descr_short._entry, ptr @artpec6_crypto_setup_out_descr_short._entry_ptr, ptr @artpec6_crypto_setup_sg_descrs_in._entry, ptr @artpec6_crypto_setup_sg_descrs_in._entry_ptr, ptr @artpec6_crypto_setup_sg_descrs_out._entry, ptr @artpec6_crypto_setup_sg_descrs_out._entry_ptr, ptr @artpec6_crypto_terminate_in_descrs._entry, ptr @artpec6_crypto_terminate_in_descrs._entry_ptr, ptr @artpec6_crypto_terminate_out_descrs._entry, ptr @artpec6_crypto_terminate_out_descrs._entry_ptr, ptr @artpec6_crypto_timeout._entry, ptr @artpec6_crypto_timeout._entry_ptr, ptr @artpec6_crypto_driver, ptr @.str, ptr @artpec6_crypto_of_match, ptr @artpec6_crypto_dev, ptr @artpec6_crypto_probe.__key, ptr @.str.1, ptr @artpec6_crypto_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @artpec6_crypto_timeout._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dbgfs_root, ptr @.str.20, ptr @artpec6_crypto_fail_status_read, ptr @.str.21, ptr @artpec6_crypto_fail_dma_array_full, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_fail_status_read to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_fail_dma_array_full to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_init_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_setup_out_descr_short._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_setup_out_descr_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_setup_in_descr_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_setup_sg_descrs_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_terminate_in_descrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_terminate_out_descrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_hash_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_prepare_crypto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_prepare_crypto._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_crypto_setup_sg_descrs_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @artpec6_crypto_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @artpec6_crypto_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @artpec6_crypto_of_match, ptr noundef %2) #12
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #12
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %variant18 = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %variant18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %variant18, align 4
  %queue_lock = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @artpec6_crypto_probe.__key, i16 noundef signext 3) #12
  %queue = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %prev.i, align 4
  %pending = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i128 = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending, ptr %prev.i128, align 4
  %timer = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @artpec6_crypto_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @artpec6_crypto_probe.__key.2) #12
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %call.i, align 4
  %call24 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 2880, i32 noundef 64, i32 noundef 0, ptr noundef null) #12
  %dma_cache = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %dma_cache to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %dma_cache, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end17.cleanup_crit_edge, label %if.end28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call.i129 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.19, ptr noundef null) #12
  store ptr %call.i129, ptr @dbgfs_root, align 4
  %call1.i = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.20, ptr noundef %call.i129, ptr noundef nonnull @artpec6_crypto_fail_status_read) #12
  %15 = load ptr, ptr @dbgfs_root, align 4
  %call2.i = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.21, ptr noundef %15, ptr noundef nonnull @artpec6_crypto_fail_dma_array_full) #12
  %task = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %task, ptr noundef nonnull @artpec6_crypto_task, i32 noundef %16) #12
  %call.i130 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #12
  %pad_buffer = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i130, ptr %pad_buffer, align 4
  %tobool32.not = icmp eq ptr %call.i130, null
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %call.i130 to i32
  %add = add i32 %18, 31
  %and = and i32 %add, -32
  %19 = inttoptr i32 %and to ptr
  %20 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pad_buffer, align 4
  %call.i131 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #12
  %zero_buffer = getelementptr inbounds %struct.artpec6_crypto, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %zero_buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i131, ptr %zero_buffer, align 4
  %tobool40.not = icmp eq ptr %call.i131, null
  br i1 %tobool40.not, label %if.end34.cleanup_crit_edge, label %if.end42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %call.i131 to i32
  %add44 = add i32 %22, 31
  %and45 = and i32 %add44, -32
  %23 = inttoptr i32 %and45 to ptr
  %24 = ptrtoint ptr %zero_buffer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %zero_buffer, align 4
  tail call fastcc void @init_crypto_hw(ptr noundef nonnull %call.i)
  %call.i132 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @artpec6_crypto_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool53.not = icmp eq i32 %call.i132, 0
  br i1 %tobool53.not, label %if.end55, label %if.end42.disable_hw_crit_edge

if.end42.disable_hw_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_hw

if.end55:                                         ; preds = %if.end42
  store ptr %dev1, ptr @artpec6_crypto_dev, align 4
  %call57 = tail call i32 @crypto_register_ahashes(ptr noundef nonnull @hash_algos, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #15
  br label %disable_hw

if.end63:                                         ; preds = %if.end55
  %call64 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @crypto_algos, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end70, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %unregister_ahashes

if.end70:                                         ; preds = %if.end63
  %call71 = tail call i32 @crypto_register_aeads(ptr noundef nonnull @aead_algos, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.cleanup_crit_edge, label %do.end76

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #15
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algos, i32 noundef 4) #12
  br label %unregister_ahashes

unregister_ahashes:                               ; preds = %do.end76, %do.end69
  %err.0 = phi i32 [ %call64, %do.end69 ], [ %call71, %do.end76 ]
  tail call void @crypto_unregister_ahashes(ptr noundef nonnull @hash_algos, i32 noundef 3) #12
  br label %disable_hw

disable_hw:                                       ; preds = %unregister_ahashes, %do.end62, %if.end42.disable_hw_crit_edge
  %err.1 = phi i32 [ %call.i132, %if.end42.disable_hw_crit_edge ], [ %call57, %do.end62 ], [ %err.0, %unregister_ahashes ]
  tail call fastcc void @artpec6_crypto_disable_hw(ptr noundef nonnull %call.i)
  %25 = ptrtoint ptr %dma_cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %disable_hw, %if.end70.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %err.1, %disable_hw ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  tail call void @crypto_unregister_ahashes(ptr noundef nonnull @hash_algos, i32 noundef 3) #12
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algos, i32 noundef 4) #12
  tail call void @crypto_unregister_aeads(ptr noundef nonnull @aead_algos, i32 noundef 1) #12
  %task = getelementptr inbounds %struct.artpec6_crypto, ptr %1, i32 0, i32 4
  %count.i.i = getelementptr inbounds %struct.artpec6_crypto, ptr %1, i32 0, i32 4, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @tasklet_unlock_wait(ptr noundef %task) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !193
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef %1) #12
  tail call void @tasklet_kill(ptr noundef %task) #12
  %timer = getelementptr inbounds %struct.artpec6_crypto, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #12, !srcloc !194
  %add.ptr3.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #12, !srcloc !194
  %add.ptr4.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 134217728) #12, !srcloc !194
  br label %artpec6_crypto_disable_hw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr5.i = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 67108864) #12, !srcloc !194
  %add.ptr6.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #12, !srcloc !194
  %add.ptr7.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 67108864) #12, !srcloc !194
  br label %artpec6_crypto_disable_hw.exit

artpec6_crypto_disable_hw.exit:                   ; preds = %if.else.i, %if.then.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #12, !srcloc !194
  %dma_cache = getelementptr inbounds %struct.artpec6_crypto, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dma_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #12
  %9 = load ptr, ptr @dbgfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %9) #12
  store ptr null, ptr @dbgfs_root, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @artpec6_crypto_timeout._rs, ptr noundef nonnull @__func__.artpec6_crypto_timeout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.17) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %state.i = getelementptr i8, ptr %t, i32 -28
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end3.tasklet_schedule.exit_crit_edge

do.end3.tasklet_schedule.exit_crit_edge:          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  %task = getelementptr i8, ptr %t, i32 -32
  tail call void @__tasklet_schedule(ptr noundef %task) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end3.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_task(i32 noundef %data) #2 align 64 {
entry:
  %complete_done = alloca %struct.list_head, align 4
  %complete_in_progress = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %complete_done) #12
  %1 = getelementptr inbounds %struct.list_head, ptr %complete_done, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %complete_in_progress) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %complete_in_progress, i32 0, i32 1
  %3 = ptrtoint ptr %complete_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %complete_done, ptr %complete_done, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %complete_done, ptr %1, align 4
  %5 = ptrtoint ptr %complete_in_progress to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %complete_in_progress, ptr %complete_in_progress, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %complete_in_progress, ptr %2, align 4
  %pending = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %8, %pending
  br i1 %cmp.i.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_task, %if.then5)) #12
          to label %cleanup120 [label %if.then5], !srcloc !195

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_task.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.25) #12
  br label %cleanup120

if.end6:                                          ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #12
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pending, align 4
  %cmp.not178 = icmp eq ptr %10, %pending
  br i1 %cmp.not178, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %pending_count = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %req.0179 = phi ptr [ %10, %for.body.lr.ph ], [ %n.0181, %cleanup.for.body_crit_edge ]
  %11 = ptrtoint ptr %req.0179 to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0181 = load ptr, ptr %req.0179, align 4
  %dma17 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %req.0179, i32 0, i32 2
  %12 = ptrtoint ptr %dma17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma17, align 4
  %stat_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %stat_dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stat_dma_addr, align 8
  %in_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %in_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_cnt, align 16
  %sub = shl i32 %17, 2
  %mul = add i32 %15, -4
  %add = add i32 %mul, %sub
  %18 = load ptr, ptr @artpec6_crypto_dev, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %18, i32 noundef %add, i32 noundef 4, i32 noundef 0) #12
  %19 = ptrtoint ptr %dma17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma17, align 4
  %in_cnt22 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %in_cnt22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_cnt22, align 16
  %sub23 = add i32 %22, -1
  %arrayidx = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 2, i32 %sub23
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_task, %if.then36)) #12
          to label %do.end39 [label %if.then36], !srcloc !195

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_task.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.27, ptr noundef %req.0179, i32 noundef %24) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %do.end39.for.end_crit_edge, label %if.end42

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end42:                                         ; preds = %do.end39
  %call43 = call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_status_read, i32 noundef 1) #12
  br i1 %call43, label %if.end42.cleanup_crit_edge, label %do.body46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body46:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_task, %if.then58)) #12
          to label %do.end61 [label %if.then58], !srcloc !195

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_task.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.29, ptr noundef %req.0179) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body46
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.0179) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end61.__list_del_entry.exit.i_crit_edge

do.end61.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.0179, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %req.0179 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req.0179, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end61.__list_del_entry.exit.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %req.0179, ptr noundef %32, ptr noundef nonnull %complete_done) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %req.0179, ptr %1, align 4
  %34 = ptrtoint ptr %req.0179 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %complete_done, ptr %req.0179, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.0179, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %req.0179, ptr %32, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %37 = ptrtoint ptr %pending_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pending_count, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %pending_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %if.end42.cleanup_crit_edge
  %cmp.not = icmp eq ptr %n.0181, %pending
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end39.for.end_crit_edge, %if.end6.for.end_crit_edge
  %queue.i = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 2
  %39 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not18.i = icmp eq ptr %40, %queue.i
  br i1 %cmp.i.not18.i, label %for.end.while.end.i_crit_edge, label %land.rhs.lr.ph.i

for.end.while.end.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %for.end
  %prev.i2.i.i = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 3, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %list_add_tail.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %41 = phi ptr [ %40, %land.rhs.lr.ph.i ], [ %66, %list_add_tail.exit.i.land.rhs.i_crit_edge ]
  %42 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i, align 4
  %pending_count.i.i = getelementptr inbounds %struct.artpec6_crypto, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %pending_count.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pending_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp.i15.i = icmp sgt i32 %46, 6
  br i1 %cmp.i15.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i167 = call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #12
  br i1 %call.i.i.i167, label %if.end.i.i.i168, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i168:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i168, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %53 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %41, ptr noundef %54, ptr noundef %pending) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %41, ptr %prev.i2.i.i, align 4
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %pending, ptr %41, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %41, ptr %54, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  call fastcc void @artpec6_crypto_start_dma(ptr noundef %41) #12
  %complete_in_progress.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %41, i32 0, i32 1
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  %call.i.i16.i = call zeroext i1 @__list_add_valid(ptr noundef %complete_in_progress.i, ptr noundef %60, ptr noundef nonnull %complete_in_progress) #12
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %list_move_tail.exit.i.list_add_tail.exit.i_crit_edge

list_move_tail.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i17.i:                                   ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %complete_in_progress.i, ptr %2, align 4
  %62 = ptrtoint ptr %complete_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %complete_in_progress, ptr %complete_in_progress.i, align 4
  %prev3.i.i.i169 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %41, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i169, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %complete_in_progress.i, ptr %60, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i17.i, %list_move_tail.exit.i.list_add_tail.exit.i_crit_edge
  %65 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %66, %queue.i
  br i1 %cmp.i.not.i, label %list_add_tail.exit.i.while.end.i_crit_edge, label %list_add_tail.exit.i.land.rhs.i_crit_edge

list_add_tail.exit.i.land.rhs.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

list_add_tail.exit.i.while.end.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %list_add_tail.exit.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %for.end.while.end.i_crit_edge
  %pending_count.i = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 6
  %67 = ptrtoint ptr %pending_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pending_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool3.not.i = icmp eq i32 %68, 0
  %timer6.i = getelementptr inbounds %struct.artpec6_crypto, ptr %0, i32 0, i32 7
  br i1 %tobool3.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %69, 10
  %call5.i = call i32 @mod_timer(ptr noundef %timer6.i, i32 noundef %add.i) #12
  br label %artpec6_crypto_process_queue.exit

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = call i32 @del_timer(ptr noundef %timer6.i) #12
  br label %artpec6_crypto_process_queue.exit

artpec6_crypto_process_queue.exit:                ; preds = %if.else.i, %if.then.i
  call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #12
  %70 = ptrtoint ptr %complete_done to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %complete_done, align 4
  %cmp82.not182 = icmp eq ptr %71, %complete_done
  br i1 %cmp82.not182, label %artpec6_crypto_process_queue.exit.for.end94_crit_edge, label %artpec6_crypto_process_queue.exit.for.body85_crit_edge

artpec6_crypto_process_queue.exit.for.body85_crit_edge: ; preds = %artpec6_crypto_process_queue.exit
  br label %for.body85

artpec6_crypto_process_queue.exit.for.end94_crit_edge: ; preds = %artpec6_crypto_process_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.body85:                                       ; preds = %artpec6_crypto_dma_unmap_all.exit.for.body85_crit_edge, %artpec6_crypto_process_queue.exit.for.body85_crit_edge
  %req.1183 = phi ptr [ %n.1, %artpec6_crypto_dma_unmap_all.exit.for.body85_crit_edge ], [ %71, %artpec6_crypto_process_queue.exit.for.body85_crit_edge ]
  %72 = ptrtoint ptr %req.1183 to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.1 = load ptr, ptr %req.1183, align 4
  %dma1.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %req.1183, i32 0, i32 2
  %73 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma1.i, align 4
  %75 = load ptr, ptr @artpec6_crypto_dev, align 4
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %74, i32 0, i32 10
  %76 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp9.not.i = icmp eq i32 %77, 0
  br i1 %cmp9.not.i, label %for.body85.artpec6_crypto_dma_unmap_all.exit_crit_edge, label %for.body85.for.body.i_crit_edge

for.body85.for.body.i_crit_edge:                  ; preds = %for.body85
  br label %for.body.i

for.body85.artpec6_crypto_dma_unmap_all.exit_crit_edge: ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_dma_unmap_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body85.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body85.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %74, i32 0, i32 4, i32 %i.010.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %74, i32 0, i32 4, i32 %i.010.i, i32 1
  %80 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i, align 4
  %dir.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %74, i32 0, i32 4, i32 %i.010.i, i32 2
  %82 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dir.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef 0) #12
  %inc.i = add nuw i32 %i.010.i, 1
  %84 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %map_count.i, align 4
  %cmp.i170 = icmp ult i32 %inc.i, %85
  br i1 %cmp.i170, label %for.body.i.for.body.i_crit_edge, label %for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge

for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_dma_unmap_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

artpec6_crypto_dma_unmap_all.exit:                ; preds = %for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge, %for.body85.artpec6_crypto_dma_unmap_all.exit_crit_edge
  %86 = ptrtoint ptr %map_count.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %map_count.i, align 4
  call fastcc void @artpec6_crypto_copy_bounce_buffers(ptr noundef %req.1183)
  call fastcc void @artpec6_crypto_common_destroy(ptr noundef %req.1183)
  %complete = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %req.1183, i32 0, i32 4
  %87 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %complete, align 4
  %req87 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %req.1183, i32 0, i32 3
  %89 = ptrtoint ptr %req87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req87, align 4
  call void %88(ptr noundef %90) #12
  %cmp82.not = icmp eq ptr %n.1, %complete_done
  br i1 %cmp82.not, label %artpec6_crypto_dma_unmap_all.exit.for.end94_crit_edge, label %artpec6_crypto_dma_unmap_all.exit.for.body85_crit_edge

artpec6_crypto_dma_unmap_all.exit.for.body85_crit_edge: ; preds = %artpec6_crypto_dma_unmap_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body85

artpec6_crypto_dma_unmap_all.exit.for.end94_crit_edge: ; preds = %artpec6_crypto_dma_unmap_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end94

for.end94:                                        ; preds = %artpec6_crypto_dma_unmap_all.exit.for.end94_crit_edge, %artpec6_crypto_process_queue.exit.for.end94_crit_edge
  %91 = ptrtoint ptr %complete_in_progress to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %complete_in_progress, align 4
  %cmp106.not184 = icmp eq ptr %92, %complete_in_progress
  br i1 %cmp106.not184, label %for.end94.cleanup120_crit_edge, label %for.end94.for.body109_crit_edge

for.end94.for.body109_crit_edge:                  ; preds = %for.end94
  br label %for.body109

for.end94.cleanup120_crit_edge:                   ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

for.body109:                                      ; preds = %for.body109.for.body109_crit_edge, %for.end94.for.body109_crit_edge
  %.pn.in185 = phi ptr [ %.pn, %for.body109.for.body109_crit_edge ], [ %92, %for.end94.for.body109_crit_edge ]
  %93 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn = load ptr, ptr %.pn.in185, align 4
  %req110 = getelementptr i8, ptr %.pn.in185, i32 12
  %94 = ptrtoint ptr %req110 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %req110, align 4
  %complete111 = getelementptr inbounds %struct.crypto_async_request, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %complete111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %complete111, align 4
  call void %97(ptr noundef %95, i32 noundef -115) #12
  %cmp106.not = icmp eq ptr %.pn, %complete_in_progress
  br i1 %cmp106.not, label %for.body109.cleanup120_crit_edge, label %for.body109.for.body109_crit_edge

for.body109.for.body109_crit_edge:                ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body109

for.body109.cleanup120_crit_edge:                 ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup120

cleanup120:                                       ; preds = %for.body109.cleanup120_crit_edge, %for.end94.cleanup120_crit_edge, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %complete_in_progress) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %complete_done) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_crypto_hw(ptr nocapture noundef readonly %ac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.artpec6_crypto, ptr %ac, i32 0, i32 8
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant1, align 4
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268369920) #12, !srcloc !194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #12, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp129 = icmp eq i32 %1, 0
  br i1 %cmp129, label %if.then130, label %if.else

if.then130:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr131 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 -2012217344) #12, !srcloc !194
  %add.ptr132 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 16777216) #12, !srcloc !194
  %add.ptr133 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 335544320) #12, !srcloc !194
  br label %if.end137

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr134 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 -2012217344) #12, !srcloc !194
  %add.ptr135 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 16777216) #12, !srcloc !194
  %add.ptr136 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 671088640) #12, !srcloc !194
  br label %if.end137

if.end137:                                        ; preds = %if.else, %if.then130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.artpec6_crypto, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant1, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !196
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr4 = getelementptr i8, ptr %3, i32 120
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !196
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %5, %if.else ], [ %4, %if.then ]
  %in_cmd_flush_stat.0 = phi i32 [ 33554432, %if.else ], [ 67108864, %if.then ]
  %in_cmd_reg.0 = phi i32 [ 52, %if.else ], [ 48, %if.then ]
  %ack_intr_reg.0 = phi i32 [ 112, %if.else ], [ 108, %if.then ]
  %mask_in_eop_flush.0 = phi i32 [ 32, %if.else ], [ 16, %if.then ]
  %mask_in_data.0 = phi i32 [ 8, %if.else ], [ 4, %if.then ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %and = and i32 %mask_in_data.0, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %mask_in_data.0
  %and9 = and i32 %mask_in_eop_flush.0, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end
  %or12 = or i32 %spec.select, %mask_in_eop_flush.0
  %7 = shl nuw nsw i32 %or12, 24
  %add.ptr16.c33 = getelementptr i8, ptr %3, i32 %ack_intr_reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.c33, i32 %7) #12, !srcloc !194
  %state.i = getelementptr inbounds %struct.artpec6_crypto, ptr %dev_id, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %task = getelementptr inbounds %struct.artpec6_crypto, ptr %dev_id, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %task) #12
  br label %if.end20

if.else13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14 = getelementptr i8, ptr %3, i32 %in_cmd_reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %in_cmd_flush_stat.0) #12, !srcloc !194
  %8 = shl nuw nsw i32 %spec.select, 24
  %add.ptr16.c = getelementptr i8, ptr %3, i32 %ack_intr_reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.c, i32 %8) #12, !srcloc !194
  br label %if.end20

if.end20:                                         ; preds = %if.else13, %if.then.i, %if.then11.if.end20_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_crypto_disable_hw(ptr nocapture noundef readonly %ac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.artpec6_crypto, ptr %ac, i32 0, i32 8
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant1, align 4
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #12, !srcloc !194
  %add.ptr3 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #12, !srcloc !194
  %add.ptr4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 134217728) #12, !srcloc !194
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr5 = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 67108864) #12, !srcloc !194
  %add.ptr6 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #12, !srcloc !194
  %add.ptr7 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 67108864) #12, !srcloc !194
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #12, !srcloc !194
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fault_create_debugfs_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_crypto_copy_bounce_buffers(ptr nocapture noundef readonly %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %bounce_buffers = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bounce_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bounce_buffers, align 64
  %cmp.not38 = icmp eq ptr %3, %bounce_buffers
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %b.039 = phi ptr [ %next.041, %list_del.exit.do.body_crit_edge ], [ %3, %entry.do.body_crit_edge ]
  %4 = ptrtoint ptr %b.039 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.041 = load ptr, ptr %b.039, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_copy_bounce_buffers.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_copy_bounce_buffers, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 3
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %buf = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_copy_bounce_buffers.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.32, ptr noundef %b.039, i32 noundef %6, i32 noundef %8, ptr noundef %10) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %sg = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 2
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg, align 4
  %buf13 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 4
  %13 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf13, align 4
  %length14 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 1
  %15 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length14, align 4
  %offset15 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %b.039, i32 0, i32 3
  %17 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset15, align 4
  %call16 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %12, i32 noundef 1, ptr noundef %14, i32 noundef %16, i32 noundef %18) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %b.039) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %b.039, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %b.039 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %b.039 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %b.039, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %b.039, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %b.039) #12
  %cmp.not = icmp eq ptr %next.041, %bounce_buffers
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_crypto_common_destroy(ptr nocapture noundef %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %dma1.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %3 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma1.i, align 4
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not.i = icmp eq i32 %6, 0
  br i1 %cmp9.not.i, label %entry.artpec6_crypto_dma_unmap_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.artpec6_crypto_dma_unmap_all.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_dma_unmap_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %4, i32 0, i32 4, i32 %i.010.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %4, i32 0, i32 4, i32 %i.010.i, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %dir.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %4, i32 0, i32 4, i32 %i.010.i, i32 2
  %11 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 0) #12
  %inc.i = add nuw i32 %i.010.i, 1
  %13 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge

for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_dma_unmap_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

artpec6_crypto_dma_unmap_all.exit:                ; preds = %for.body.i.artpec6_crypto_dma_unmap_all.exit_crit_edge, %entry.artpec6_crypto_dma_unmap_all.exit_crit_edge
  %15 = ptrtoint ptr %map_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %map_count.i, align 4
  %16 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma1.i, align 4
  %bounce_buffers.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %bounce_buffers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bounce_buffers.i, align 64
  %cmp.not17.i = icmp eq ptr %19, %bounce_buffers.i
  br i1 %cmp.not17.i, label %artpec6_crypto_dma_unmap_all.exit.artpec6_crypto_bounce_destroy.exit_crit_edge, label %artpec6_crypto_dma_unmap_all.exit.for.body.i1_crit_edge

artpec6_crypto_dma_unmap_all.exit.for.body.i1_crit_edge: ; preds = %artpec6_crypto_dma_unmap_all.exit
  br label %for.body.i1

artpec6_crypto_dma_unmap_all.exit.artpec6_crypto_bounce_destroy.exit_crit_edge: ; preds = %artpec6_crypto_dma_unmap_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_bounce_destroy.exit

for.body.i1:                                      ; preds = %for.body.i1.for.body.i1_crit_edge, %artpec6_crypto_dma_unmap_all.exit.for.body.i1_crit_edge
  %b.018.i = phi ptr [ %next.0.i, %for.body.i1.for.body.i1_crit_edge ], [ %19, %artpec6_crypto_dma_unmap_all.exit.for.body.i1_crit_edge ]
  %20 = ptrtoint ptr %b.018.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %next.0.i = load ptr, ptr %b.018.i, align 4
  tail call void @kfree(ptr noundef %b.018.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %bounce_buffers.i
  br i1 %cmp.not.i, label %for.body.i1.artpec6_crypto_bounce_destroy.exit_crit_edge, label %for.body.i1.for.body.i1_crit_edge

for.body.i1.for.body.i1_crit_edge:                ; preds = %for.body.i1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i1

for.body.i1.artpec6_crypto_bounce_destroy.exit_crit_edge: ; preds = %for.body.i1
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_bounce_destroy.exit

artpec6_crypto_bounce_destroy.exit:               ; preds = %for.body.i1.artpec6_crypto_bounce_destroy.exit_crit_edge, %artpec6_crypto_dma_unmap_all.exit.artpec6_crypto_bounce_destroy.exit_crit_edge
  %dma_cache = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 5
  %21 = ptrtoint ptr %dma_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_cache, align 4
  %23 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma1.i, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef %24) #12
  %25 = ptrtoint ptr %dma1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_crypto_start_dma(ptr nocapture noundef readonly %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %variant1 = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %dma3 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %7 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %in_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %in_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_cnt, align 16
  %sub22 = add i32 %10, 63
  %and23 = and i32 %sub22, 63
  %stat_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %stat_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat_dma_addr, align 8
  %shr108 = and i32 %12, -64
  %or111 = or i32 %shr108, %and23
  %out_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %out_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_cnt, align 4
  %in_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %in_dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_dma_addr, align 4
  %shr49 = and i32 %16, -64
  %or = or i32 %shr49, %and23
  %out_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %out_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_dma_addr, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  br i1 %cmp, label %if.then171, label %if.else

if.then171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #12, !srcloc !194
  %20 = tail call i32 @llvm.bswap.i32(i32 %or111)
  %add.ptr172 = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %20) #12, !srcloc !194
  %add.ptr173 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 16777216) #12, !srcloc !194
  br label %if.end177

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr174 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %19) #12, !srcloc !194
  %21 = tail call i32 @llvm.bswap.i32(i32 %or111)
  %add.ptr175 = getelementptr i8, ptr %6, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %21) #12, !srcloc !194
  %add.ptr176 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176, i32 16777216) #12, !srcloc !194
  br label %if.end177

if.end177:                                        ; preds = %if.else, %if.then171
  %sub138 = add i32 %14, 63
  %and140 = and i32 %sub138, 63
  %shr167 = and i32 %18, -64
  %or170 = or i32 %shr167, %and140
  %22 = tail call i32 @llvm.bswap.i32(i32 %or170)
  %add.ptr178 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %22) #12, !srcloc !194
  %add.ptr179 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 16777216) #12, !srcloc !194
  %pending_count = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %pending_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pending_count, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %pending_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_sha1_init(ptr nocapture noundef writeonly %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %5 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 393216, i32 1536
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_hash_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %0 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_flags, align 8
  %or = or i32 %1, 4
  store i32 %or, ptr %hash_flags, align 8
  %call1 = tail call fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_hash_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %0 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_flags, align 8
  %or = or i32 %1, 8
  store i32 %or, ptr %hash_flags, align 8
  %call1 = tail call fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_sha1_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %5 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 393216, i32 1536
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 14, ptr %hash_flags.i, align 8
  %call2 = tail call fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_hash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %variant2 = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant2, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 32
  %5 = ptrtoint ptr %digcnt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %digcnt, align 8
  %digcnt6 = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %out, i32 0, i32 3
  %7 = ptrtoint ptr %digcnt6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %digcnt6, align 8
  %partial_bytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 24
  %8 = ptrtoint ptr %partial_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %partial_bytes, align 8
  %partial_bytes7 = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %out, i32 0, i32 2
  %10 = ptrtoint ptr %partial_bytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %partial_bytes7, align 8
  %hash_flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %11 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_flags, align 8
  %hash_flags8 = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %out, i32 0, i32 5
  %13 = ptrtoint ptr %hash_flags8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hash_flags8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %hash_md = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %14 = ptrtoint ptr %hash_md to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash_md, align 4
  %. = select i1 %cmp, i32 16, i32 8
  %and41 = lshr i32 %15, %.
  %shr42.sink = and i32 %and41, 15
  %16 = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %out, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr42.sink, ptr %16, align 8
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %18 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 64)
  %digeststate = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %out, i32 0, i32 1
  %digeststate47 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 3
  %19 = call ptr @memcpy(ptr %digeststate, ptr %digeststate47, i32 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_hash_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %variant2 = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant2, align 4
  %5 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %digcnt = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %in, i32 0, i32 3
  %6 = ptrtoint ptr %digcnt to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %digcnt, align 8
  %digcnt3 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 32
  %8 = ptrtoint ptr %digcnt3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %digcnt3, align 8
  %partial_bytes = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %in, i32 0, i32 2
  %9 = ptrtoint ptr %partial_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %partial_bytes, align 8
  %partial_bytes4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 24
  %11 = ptrtoint ptr %partial_bytes4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %partial_bytes4, align 8
  %hash_flags = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %in, i32 0, i32 5
  %12 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_flags, align 4
  %hash_flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %14 = ptrtoint ptr %hash_flags5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hash_flags5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %oper = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %in, i32 0, i32 4
  %15 = ptrtoint ptr %oper to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oper, align 8
  %. = select i1 %cmp, i32 16, i32 8
  %.76 = select i1 %cmp, i32 983040, i32 3840
  %shl47 = shl i32 %16, %.
  %and48 = and i32 %shl47, %.76
  %hash_md49 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %17 = ptrtoint ptr %hash_md49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and48, ptr %hash_md49, align 4
  %18 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 64)
  %digeststate = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 3
  %digeststate54 = getelementptr inbounds %struct.artpec6_hash_export_state, ptr %in, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %digeststate, ptr %digeststate54, i32 32)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_crypto_ahash_init(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 72)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_ahash_exit(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %child_hash = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %0 = ptrtoint ptr %child_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 68)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_sha256_init(ptr nocapture noundef writeonly %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %5 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 524288, i32 2048
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_sha256_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %5 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 524288, i32 2048
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 14, ptr %hash_flags.i, align 8
  %call2 = tail call fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_hmac_sha256_init(ptr nocapture noundef writeonly %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %5 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 589824, i32 2304
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_hmac_sha256_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %variant1.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %variant1.i, align 4
  %5 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %6 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %hash_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp.i, i32 589824, i32 2304
  %7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 62, ptr %hash_flags.i, align 8
  %call2 = tail call fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_hash_set_key(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen)
  %tobool.not = icmp eq i32 %keylen, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 0) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 64)
  %__crt_alg.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i, align 4
  %cra_blocksize.i = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cra_blocksize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %keylen)
  %cmp = icmp ult i32 %4, %keylen
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %hmac_key_length = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 28
  %5 = ptrtoint ptr %hmac_key_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %hmac_key_length, align 4
  %child_hash = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 32
  %6 = ptrtoint ptr %child_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child_hash, align 4
  %call7 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %7, ptr noundef %key, i32 noundef %keylen, ptr noundef %__crt_ctx.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.if.end14_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %key, i32 %keylen)
  %hmac_key_length13 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 9, i32 28
  %9 = ptrtoint ptr %hmac_key_length13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %keylen, ptr %hmac_key_length13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %do.end ], [ %call7, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_ahash_init_hmac_sha256(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 72)
  %call2.i = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 256) #12
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call2.i to i32
  br label %artpec6_crypto_ahash_init_common.exit

cleanup.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %child_hash.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 52
  %3 = ptrtoint ptr %child_hash.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %child_hash.i, align 4
  br label %artpec6_crypto_ahash_init_common.exit

artpec6_crypto_ahash_init_common.exit:            ; preds = %cleanup.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %2, %cleanup.thread.i ], [ 0, %cleanup.i ]
  ret i32 %retval.1.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_prepare_submit_hash(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %walk.i = alloca %struct.artpec6_crypto_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %common = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 52
  %dma = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 68
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %gfp_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  %7 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %gfp_flags.i, align 4
  %dma_cache.i = getelementptr inbounds %struct.artpec6_crypto, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %dma_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_cache.i, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef %cond.i) #12
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %dma, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then.cleanup_crit_edge, label %artpec6_crypto_common_init.exit.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

artpec6_crypto_common_init.exit.thread:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %11 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %req.i, align 4
  %complete5.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %12 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @artpec6_crypto_complete_hash, ptr %complete5.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %artpec6_crypto_common_init.exit.thread, %entry.if.end5_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cra_blocksize.i.i, align 4
  %21 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i21 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i21, align 4
  %variant9.i = getelementptr inbounds %struct.artpec6_crypto, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %variant9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %variant9.i, align 4
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma, align 4
  %out_cnt.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %out_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %out_cnt.i.i, align 4
  %in_cnt.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %27, i32 0, i32 9
  %29 = ptrtoint ptr %in_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %in_cnt.i.i, align 16
  %map_count.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %27, i32 0, i32 10
  %30 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %map_count.i.i, align 4
  %bounce_buffers.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %bounce_buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %bounce_buffers.i.i, ptr %bounce_buffers.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %27, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bounce_buffers.i.i, ptr %prev.i.i.i, align 4
  %hash_flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 48
  %33 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash_flags.i, align 8
  %and.i22 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.not.i23, label %if.end5.if.end56.i_crit_edge, label %if.then.i

if.end5.if.end56.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then.i:                                        ; preds = %if.end5
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %spec.select.i = select i1 %cmp.i, i32 655360, i32 3584
  %35 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 40
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i, ptr %35, align 8
  %key_buffer.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %hmac_key_length.i = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 1, i32 4, i32 48
  %37 = ptrtoint ptr %hmac_key_length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hmac_key_length.i, align 4
  %39 = call ptr @memcpy(ptr %key_buffer.i, ptr %__crt_ctx.i.i, i32 %38)
  %40 = load i32, ptr %hmac_key_length.i, align 4
  %add.ptr.i = getelementptr i8, ptr %key_buffer.i, i32 %40
  %sub.i = sub i32 %20, %40
  %41 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %call46.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %35, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.then.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end49.i:                                       ; preds = %if.then.i
  %call52.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %key_buffer.i, i32 noundef %20, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end49.i.if.end56.i_crit_edge, label %if.end49.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.end49.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end49.i.if.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end49.i.if.end56.i_crit_edge, %if.end5.if.end56.i_crit_edge
  %42 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hash_flags.i, align 8
  %and58.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %and58.lobit.i = lshr exact i32 %and58.i, 1
  %44 = xor i32 %and58.lobit.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp63.i = icmp eq i32 %25, 0
  %hash_md.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 44
  %45 = ptrtoint ptr %hash_md.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_md.i, align 4
  br i1 %cmp63.i, label %if.then64.i, label %if.else95.i

if.then64.i:                                      ; preds = %if.end56.i
  %and65.i = and i32 %46, -3145729
  %shl.i = shl nuw nsw i32 %44, 20
  %or.i = or i32 %shl.i, %and65.i
  %47 = ptrtoint ptr %hash_md.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i, ptr %hash_md.i, align 4
  %and89.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.then64.i.if.end131.i_crit_edge, label %if.then91.i

if.then64.i.if.end131.i_crit_edge:                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131.i

if.then91.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  %or93.i = or i32 %or.i, 8388608
  br label %if.end131.sink.split.i

if.else95.i:                                      ; preds = %if.end56.i
  %and97.i = and i32 %46, -12289
  %shl120.i = shl nuw nsw i32 %44, 12
  %or123.i = or i32 %shl120.i, %and97.i
  %48 = ptrtoint ptr %hash_md.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or123.i, ptr %hash_md.i, align 4
  %and125.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.else95.i.if.end131.i_crit_edge, label %if.then127.i

if.else95.i.if.end131.i_crit_edge:                ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131.i

if.then127.i:                                     ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #14
  %or129.i = or i32 %or123.i, 32768
  br label %if.end131.sink.split.i

if.end131.sink.split.i:                           ; preds = %if.then127.i, %if.then91.i
  %or129.sink.i = phi i32 [ %or129.i, %if.then127.i ], [ %or93.i, %if.then91.i ]
  %49 = ptrtoint ptr %hash_md.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or129.sink.i, ptr %hash_md.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end131.sink.split.i, %if.else95.i.if.end131.i_crit_edge, %if.then64.i.if.end131.i_crit_edge
  %call133.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %hash_md.i, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %if.end136.i, label %if.end131.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.end131.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end136.i:                                      ; preds = %if.end131.i
  %pad_buffer.i = getelementptr inbounds %struct.artpec6_crypto, ptr %23, i32 0, i32 9
  %50 = ptrtoint ptr %pad_buffer.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pad_buffer.i, align 4
  %call137.i = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common, ptr noundef %51, i32 noundef 4, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %if.end140.i, label %if.end136.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.end136.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end140.i:                                      ; preds = %if.end136.i
  br i1 %tobool59.not.i, label %if.then142.i, label %if.end140.i.if.end148.i_crit_edge

if.end140.i.if.end148.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.i

if.then142.i:                                     ; preds = %if.end140.i
  %digeststate.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 3
  %call144.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %digeststate.i, i32 noundef %18, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %tobool145.not.i = icmp eq i32 %call144.i, 0
  br i1 %tobool145.not.i, label %if.then142.i.if.end148.i_crit_edge, label %if.then142.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.then142.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.then142.i.if.end148.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then142.i.if.end148.i_crit_edge, %if.end140.i.if.end148.i_crit_edge
  %52 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hash_flags.i, align 8
  %and150.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %if.end201.thread.i, label %if.then152.i

if.then152.i:                                     ; preds = %if.end148.i
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %54 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nbytes.i, align 8
  %partial_bytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 24
  %56 = ptrtoint ptr %partial_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %partial_bytes.i, align 8
  %add.i = add i32 %57, %55
  %neg.i = sub i32 0, %20
  %and154.i = and i32 %add.i, %neg.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk.i) #12
  %58 = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %cmp155.not.i = icmp eq i32 %and154.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool157.not.i = icmp eq i32 %57, 0
  %or.cond.i = select i1 %tobool157.not.i, i1 true, i1 %cmp155.not.i
  br i1 %or.cond.i, label %if.then152.i.if.end173.i_crit_edge, label %if.then159.i

if.then152.i.if.end173.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173.i

if.then159.i:                                     ; preds = %if.then152.i
  %partial_buffer_out.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %59 = call ptr @memcpy(ptr %partial_buffer_out.i, ptr %__ctx.i, i32 %57)
  %60 = ptrtoint ptr %partial_bytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %partial_bytes.i, align 8
  %call166.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %partial_buffer_out.i, i32 noundef %61, i1 noundef zeroext false, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.end169.i, label %if.then159.i.cleanup.thread.i_crit_edge

if.then159.i.cleanup.thread.i_crit_edge:          ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end169.i:                                      ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %partial_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %partial_bytes.i, align 8
  store i32 0, ptr %partial_bytes.i, align 8
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.end169.i, %if.then152.i.if.end173.i_crit_edge
  %done_bytes.0.i = phi i32 [ %63, %if.end169.i ], [ 0, %if.then152.i.if.end173.i_crit_edge ]
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %64 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %src.i, align 4
  %66 = ptrtoint ptr %walk.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %walk.i, align 4
  %67 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %58, align 4
  %sub174.i = sub i32 %and154.i, %done_bytes.0.i
  %call175.i = call fastcc i32 @artpec6_crypto_setup_sg_descrs_out(ptr noundef %common, ptr noundef nonnull %walk.i, i32 noundef %sub174.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  br i1 %tobool176.not.i, label %if.end178.i, label %if.end173.i.cleanup.thread.i_crit_edge

if.end173.i.cleanup.thread.i_crit_edge:           ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end178.i:                                      ; preds = %if.end173.i
  %68 = ptrtoint ptr %walk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %walk.i, align 4
  %tobool179.not.i = icmp eq ptr %69, null
  br i1 %tobool179.not.i, label %if.end178.i.if.end201.i_crit_edge, label %if.then180.i

if.end178.i.if.end201.i_crit_edge:                ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201.i

if.then180.i:                                     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nbytes.i, align 8
  %sub183.i = sub i32 %71, %sub174.i
  %72 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %src.i, align 4
  %call186.i = tail call i32 @sg_nents(ptr noundef %73) #12
  %74 = ptrtoint ptr %partial_bytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %partial_bytes.i, align 8
  %add.ptr190.i = getelementptr i8, ptr %__ctx.i, i32 %75
  %call191.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %73, i32 noundef %call186.i, ptr noundef %add.ptr190.i, i32 noundef %sub183.i, i32 noundef %sub174.i) #12
  %76 = ptrtoint ptr %partial_bytes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %partial_bytes.i, align 8
  %add193.i = add i32 %77, %sub183.i
  store i32 %add193.i, ptr %partial_bytes.i, align 8
  br label %if.end201.i

cleanup.thread.i:                                 ; preds = %if.end173.i.cleanup.thread.i_crit_edge, %if.then159.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call175.i, %if.end173.i.cleanup.thread.i_crit_edge ], [ %call166.i, %if.then159.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk.i) #12
  br label %artpec6_crypto_prepare_hash.exit

if.end201.i:                                      ; preds = %if.then180.i, %if.end178.i.if.end201.i_crit_edge
  %conv.i = zext i32 %and154.i to i64
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 32
  %78 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %digcnt.i, align 8
  %add195.i = add i64 %79, %conv.i
  store i64 %add195.i, ptr %digcnt.i, align 8
  %80 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hash_flags.i, align 8
  %and197.i = and i32 %81, -5
  store i32 %and197.i, ptr %hash_flags.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk.i) #12
  %and203.i = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %if.else300.i, label %if.end201.i.if.then205.i_crit_edge

if.end201.i.if.then205.i_crit_edge:               ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then205.i

if.end201.thread.i:                               ; preds = %if.end148.i
  %and203477.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203477.i)
  %tobool204.not478.i = icmp eq i32 %and203477.i, 0
  br i1 %tobool204.not478.i, label %if.end201.thread.i.sw.default_crit_edge, label %if.end201.thread.i.if.then205.i_crit_edge

if.end201.thread.i.if.then205.i_crit_edge:        ; preds = %if.end201.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then205.i

if.end201.thread.i.sw.default_crit_edge:          ; preds = %if.end201.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

if.then205.i:                                     ; preds = %if.end201.thread.i.if.then205.i_crit_edge, %if.end201.i.if.then205.i_crit_edge
  %82 = ptrtoint ptr %hash_md.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hash_md.i, align 4
  %..i = select i1 %cmp63.i, i32 16, i32 8
  %and245.i = lshr i32 %83, %..i
  %oper.0.i = and i32 %and245.i, 15
  %partial_bytes248.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 24
  %84 = ptrtoint ptr %partial_bytes248.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %partial_bytes248.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool249.not.i = icmp eq i32 %85, 0
  br i1 %tobool249.not.i, label %if.then205.i.if.end268.i_crit_edge, label %if.then250.i

if.then205.i.if.end268.i_crit_edge:               ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end268.i

if.then250.i:                                     ; preds = %if.then205.i
  %partial_buffer_out251.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %86 = call ptr @memcpy(ptr %partial_buffer_out251.i, ptr %__ctx.i, i32 %85)
  %87 = ptrtoint ptr %partial_bytes248.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %partial_bytes248.i, align 8
  %call259.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %partial_buffer_out251.i, i32 noundef %88, i1 noundef zeroext false, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259.i)
  %tobool260.not.i = icmp eq i32 %call259.i, 0
  br i1 %tobool260.not.i, label %if.end262.i, label %if.then250.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.then250.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end262.i:                                      ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %partial_bytes248.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %partial_bytes248.i, align 8
  %conv264.i = zext i32 %90 to i64
  %digcnt265.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 32
  %91 = ptrtoint ptr %digcnt265.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %digcnt265.i, align 8
  %add266.i = add i64 %92, %conv264.i
  store i64 %add266.i, ptr %digcnt265.i, align 8
  store i32 0, ptr %partial_bytes248.i, align 8
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.end262.i, %if.then205.i.if.end268.i_crit_edge
  %93 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hash_flags.i, align 8
  %and270.i = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270.i)
  %tobool271.not.i = icmp eq i32 %and270.i, 0
  %digcnt277.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 32
  %95 = ptrtoint ptr %digcnt277.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %digcnt277.i, align 8
  %narrow.i = select i1 %tobool271.not.i, i32 0, i32 %20
  %add275.i = zext i32 %narrow.i to i64
  %digest_bits.0.in.i = add i64 %96, %add275.i
  %digest_bits.0.i = shl i64 %digest_bits.0.in.i, 3
  %pad_buffer280.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 24
  %oper.off.i.i = add nsw i32 %oper.0.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %oper.off.i.i)
  %switch.i.i = icmp ult i32 %oper.off.i.i, 4
  %.33.i.i = select i1 %switch.i.i, i32 55, i32 111
  %sub1.i.i = select i1 %switch.i.i, i32 63, i32 127
  %97 = trunc i64 %96 to i32
  %conv2.i.i = and i32 %sub1.i.i, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %.33.i.i, i32 %conv2.i.i)
  %cmp.i.i = icmp ult i32 %.33.i.i, %conv2.i.i
  %add.i.i = select i1 %switch.i.i, i32 119, i32 239
  %add.pn.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %.33.i.i
  %cond.i.i = sub nsw i32 %add.pn.i.i, %conv2.i.i
  %add.ptr.i.i = getelementptr %struct.ahash_request, ptr %req, i32 2, i32 5, i32 25
  %98 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %cond.i.i)
  %99 = ptrtoint ptr %pad_buffer280.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -128, ptr %pad_buffer280.i, align 1
  %add.ptr14.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %cond.i.i
  br i1 %switch.i.i, label %if.end268.i.create_hash_pad.exit.i_crit_edge, label %if.then.i.i

if.end268.i.create_hash_pad.exit.i_crit_edge:     ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %create_hash_pad.exit.i

if.then.i.i:                                      ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 0, ptr %add.ptr14.i.i, align 1
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr14.i.i, i32 8
  br label %create_hash_pad.exit.i

create_hash_pad.exit.i:                           ; preds = %if.then.i.i, %if.end268.i.create_hash_pad.exit.i_crit_edge
  %add.ptr14.sink.i.i = phi ptr [ %add.ptr12.i.i, %if.then.i.i ], [ %add.ptr14.i.i, %if.end268.i.create_hash_pad.exit.i_crit_edge ]
  %.35.i.i = phi i32 [ 16, %if.then.i.i ], [ 8, %if.end268.i.create_hash_pad.exit.i_crit_edge ]
  %101 = ptrtoint ptr %add.ptr14.sink.i.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %digest_bits.0.i, ptr %add.ptr14.sink.i.i, align 1
  %add15.i.i = add nsw i32 %cond.i.i, 1
  %add16.i.i = add nsw i32 %add15.i.i, %.35.i.i
  %call286.i = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common, ptr noundef %pad_buffer280.i, i32 noundef %add16.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %102 = ptrtoint ptr %digcnt277.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %digcnt277.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286.i)
  %tobool288.not.i = icmp eq i32 %call286.i, 0
  br i1 %tobool288.not.i, label %cleanup295.i, label %create_hash_pad.exit.i.artpec6_crypto_prepare_hash.exit_crit_edge

create_hash_pad.exit.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %create_hash_pad.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

cleanup295.i:                                     ; preds = %create_hash_pad.exit.i
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %103 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %result.i, align 32
  %call291.i = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common, ptr noundef %104, i32 noundef %18, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %tobool292.not.i = icmp eq i32 %call291.i, 0
  br i1 %tobool292.not.i, label %cleanup295.i.if.end310.i_crit_edge, label %cleanup295.i.artpec6_crypto_prepare_hash.exit_crit_edge

cleanup295.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %cleanup295.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

cleanup295.i.if.end310.i_crit_edge:               ; preds = %cleanup295.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310.i

if.else300.i:                                     ; preds = %if.end201.i
  br i1 %cmp155.not.i, label %if.else300.i.sw.default_crit_edge, label %if.end303.i

if.else300.i.sw.default_crit_edge:                ; preds = %if.else300.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

if.end303.i:                                      ; preds = %if.else300.i
  %digeststate304.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 3
  %call306.i = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common, ptr noundef %digeststate304.i, i32 noundef %18, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306.i)
  %tobool307.not.i = icmp eq i32 %call306.i, 0
  br i1 %tobool307.not.i, label %if.end303.i.if.end310.i_crit_edge, label %if.end303.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.end303.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end303.i.if.end310.i_crit_edge:                ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.end303.i.if.end310.i_crit_edge, %cleanup295.i.if.end310.i_crit_edge
  %105 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hash_flags.i, align 8
  %and312.i = and i32 %106, -15
  store i32 %and312.i, ptr %hash_flags.i, align 8
  %107 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma, align 4
  %in_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %in_cnt.i, align 16
  %111 = add i32 %110, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %111)
  %112 = icmp ult i32 %111, -64
  br i1 %112, label %if.end310.i.sw.default.sink.split_crit_edge, label %if.end316.i

if.end310.i.sw.default.sink.split_crit_edge:      ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.sink.split

if.end316.i:                                      ; preds = %if.end310.i
  %sub.i34 = add nsw i32 %110, -1
  %arrayidx.i35 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %108, i32 0, i32 1, i32 %sub.i34
  %113 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i36 = load i8, ptr %arrayidx.i35, align 1
  %bf.set.i37 = or i8 %bf.load.i36, 16
  store i8 %bf.set.i37, ptr %arrayidx.i35, align 1
  %114 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dma, align 4
  %out_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %out_cnt.i, align 4
  %118 = add i32 %117, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %118)
  %119 = icmp ult i32 %118, -64
  br i1 %119, label %if.end316.i.sw.default.sink.split_crit_edge, label %if.end320.i

if.end316.i.sw.default.sink.split_crit_edge:      ; preds = %if.end316.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.sink.split

if.end320.i:                                      ; preds = %if.end316.i
  %sub.i26 = add nsw i32 %117, -1
  %arrayidx.i = getelementptr [64 x %struct.pdma_descr], ptr %115, i32 0, i32 %sub.i26
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load.i = load i8, ptr %arrayidx.i, align 1
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %arrayidx.i, align 1
  %call321.i = tail call fastcc i32 @artpec6_crypto_dma_map_descs(ptr noundef %common) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321.i)
  %tobool322.not.i = icmp eq i32 %call321.i, 0
  br i1 %tobool322.not.i, label %if.end320.i.sw.bb_crit_edge, label %if.end320.i.artpec6_crypto_prepare_hash.exit_crit_edge

if.end320.i.artpec6_crypto_prepare_hash.exit_crit_edge: ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_prepare_hash.exit

if.end320.i.sw.bb_crit_edge:                      ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

artpec6_crypto_prepare_hash.exit:                 ; preds = %if.end320.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.end303.i.artpec6_crypto_prepare_hash.exit_crit_edge, %cleanup295.i.artpec6_crypto_prepare_hash.exit_crit_edge, %create_hash_pad.exit.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.then250.i.artpec6_crypto_prepare_hash.exit_crit_edge, %cleanup.thread.i, %if.then142.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.end136.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.end131.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.end49.i.artpec6_crypto_prepare_hash.exit_crit_edge, %if.then.i.artpec6_crypto_prepare_hash.exit_crit_edge
  %retval.3.i = phi i32 [ %call291.i, %cleanup295.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call46.i, %if.then.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call52.i, %if.end49.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call133.i, %if.end131.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call137.i, %if.end136.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call144.i, %if.then142.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call306.i, %if.end303.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call321.i, %if.end320.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call286.i, %create_hash_pad.exit.i.artpec6_crypto_prepare_hash.exit_crit_edge ], [ %call259.i, %if.then250.i.artpec6_crypto_prepare_hash.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.3.i)
  %cond = icmp eq i32 %retval.3.i, 1
  br i1 %cond, label %artpec6_crypto_prepare_hash.exit.sw.bb_crit_edge, label %artpec6_crypto_prepare_hash.exit.sw.default_crit_edge

artpec6_crypto_prepare_hash.exit.sw.default_crit_edge: ; preds = %artpec6_crypto_prepare_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

artpec6_crypto_prepare_hash.exit.sw.bb_crit_edge: ; preds = %artpec6_crypto_prepare_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %artpec6_crypto_prepare_hash.exit.sw.bb_crit_edge, %if.end320.i.sw.bb_crit_edge
  %call8 = tail call fastcc i32 @artpec6_crypto_submit(ptr noundef %common)
  br label %cleanup

sw.default.sink.split:                            ; preds = %if.end316.i.sw.default.sink.split_crit_edge, %if.end310.i.sw.default.sink.split_crit_edge
  %.sink = phi i32 [ %110, %if.end310.i.sw.default.sink.split_crit_edge ], [ %117, %if.end316.i.sw.default.sink.split_crit_edge ]
  %.str.49.sink = phi ptr [ @.str.45, %if.end310.i.sw.default.sink.split_crit_edge ], [ @.str.49, %if.end316.i.sw.default.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %tobool.not.i24 = icmp eq i32 %.sink, 0
  %cond.i25 = select i1 %tobool.not.i24, ptr @.str.48, ptr @.str.47
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond.i25) #15
  br label %sw.default

sw.default:                                       ; preds = %sw.default.sink.split, %artpec6_crypto_prepare_hash.exit.sw.default_crit_edge, %if.else300.i.sw.default_crit_edge, %if.end201.thread.i.sw.default_crit_edge
  %ret.0 = phi i32 [ %retval.3.i, %artpec6_crypto_prepare_hash.exit.sw.default_crit_edge ], [ 0, %if.end201.thread.i.sw.default_crit_edge ], [ 0, %if.else300.i.sw.default_crit_edge ], [ -22, %sw.default.sink.split ]
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.default ], [ %call8, %sw.bb ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_complete_hash(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  tail call void %1(ptr noundef %req, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_submit(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %queue_lock = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #12
  %3 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pending_count.i = getelementptr inbounds %struct.artpec6_crypto, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pending_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp.i = icmp sgt i32 %7, 6
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pending = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %9, ptr noundef %pending) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %prev.i, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending, ptr %req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %req, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call fastcc void @artpec6_crypto_start_dma(ptr noundef %req)
  br label %if.end7

if.else:                                          ; preds = %entry
  %req2 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req2, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  %queue = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 2
  %prev.i16 = getelementptr inbounds %struct.artpec6_crypto, ptr %2, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i16, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %19, ptr noundef %queue) #12
  br i1 %call.i.i17, label %if.end.i.i19, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.i.i19:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %req, ptr %prev.i16, align 4
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue, ptr %req, align 4
  %prev3.i.i18 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %req, ptr %19, align 4
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %req)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.end.i.i19, %if.then3.if.end7_crit_edge, %list_add_tail.exit
  %ret.0 = phi i32 [ -16, %if.else5 ], [ -115, %list_add_tail.exit ], [ -16, %if.then3.if.end7_crit_edge ], [ -16, %if.end.i.i19 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_setup_out_descr(ptr nocapture noundef readonly %common, ptr noundef %dst, i32 noundef %len, i1 noundef zeroext %eop, i1 noundef zeroext %use_short) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len)
  %cmp = icmp ult i32 %len, 7
  %or.cond = and i1 %cmp, %use_short
  %dma1.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1.i, align 4
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %out_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp.i = icmp ugt i32 %3, 63
  br i1 %cmp.i, label %if.then.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then
  %call.i.i = tail call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %return

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp5.i = icmp eq i32 %len, 0
  br i1 %cmp5.i, label %lor.lhs.false4.i.return_crit_edge, label %if.end7.i

lor.lhs.false4.i.return_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7.i:                                        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_cnt.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %out_cnt.i, align 4
  %arrayidx.i = getelementptr [64 x %struct.pdma_descr], ptr %1, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %arrayidx.i, align 1
  %conv.i = trunc i32 %len to i8
  %bf.value.i = shl nuw nsw i8 %conv.i, 1
  %bf.shl.i = and i8 %bf.value.i, 14
  %bf.set12.i = select i1 %eop, i8 -96, i8 -128
  %bf.set19.i = or i8 %bf.shl.i, %bf.set12.i
  store i8 %bf.set19.i, ptr %arrayidx.i, align 1
  %7 = getelementptr [64 x %struct.pdma_descr], ptr %1, i32 0, i32 %5, i32 1
  %8 = call ptr @memcpy(ptr %7, ptr %dst, i32 %len)
  br label %return

if.else:                                          ; preds = %entry
  %map_count.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %10)
  %cmp.i.i = icmp ugt i32 %10, 129
  br i1 %cmp.i.i, label %if.else.return_crit_edge, label %if.end.i.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i:                                       ; preds = %if.else
  %11 = load ptr, ptr @artpec6_crypto_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %dst to i32
  %and.i = and i32 %13, 4095
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %call.i.i17 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef 1, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call.i.i17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i17)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i17, -1
  br i1 %cmp.i.not.i.i, label %if.end.i.i.return_crit_edge, label %if.end

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %map_count.i.i, align 4
  %inc.i.i = add i32 %15, 1
  store i32 %inc.i.i, ptr %map_count.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %15
  %size6.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %15, i32 1
  %16 = ptrtoint ptr %size6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %size6.i.i, align 4
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i.i17, ptr %arrayidx.i.i, align 4
  %dir8.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %15, i32 2
  %18 = ptrtoint ptr %dir8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %dir8.i.i, align 4
  %19 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma1.i, align 4
  %out_cnt.i19 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %out_cnt.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_cnt.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %22)
  %cmp.i20 = icmp ugt i32 %22, 63
  br i1 %cmp.i20, label %if.end.do.end.i24_crit_edge, label %lor.lhs.false.i22

if.end.do.end.i24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i24

lor.lhs.false.i22:                                ; preds = %if.end
  %call.i.i21 = tail call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i21, label %lor.lhs.false.i22.do.end.i24_crit_edge, label %if.end.i

lor.lhs.false.i22.do.end.i24_crit_edge:           ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i24

do.end.i24:                                       ; preds = %lor.lhs.false.i22.do.end.i24_crit_edge, %if.end.do.end.i24_crit_edge
  %call2.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %out_cnt.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_cnt.i19, align 4
  %inc.i25 = add i32 %24, 1
  store i32 %inc.i25, ptr %out_cnt.i19, align 4
  %arrayidx.i26 = getelementptr [64 x %struct.pdma_descr], ptr %20, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %arrayidx.i26, align 1
  %bf.shl.i27 = select i1 %eop, i8 32, i8 0
  store i8 %bf.shl.i27, ptr %arrayidx.i26, align 1
  %26 = getelementptr [64 x %struct.pdma_descr], ptr %20, i32 0, i32 %24, i32 1
  %bf.value9.i = zext i32 %len to i56
  %bf.shl10.i = shl i56 %bf.value9.i, 32
  %27 = zext i32 %call.i.i17 to i56
  %bf.set16.i = or i56 %bf.shl10.i, %27
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 7)
  store i56 %bf.set16.i, ptr %26, align 1
  br label %return

return:                                           ; preds = %if.end.i, %do.end.i24, %if.end.i.i.return_crit_edge, %if.else.return_crit_edge, %if.end7.i, %lor.lhs.false4.i.return_crit_edge, %do.end.i
  %retval.1 = phi i32 [ -28, %do.end.i ], [ 0, %if.end7.i ], [ -22, %lor.lhs.false4.i.return_crit_edge ], [ -28, %do.end.i24 ], [ 0, %if.end.i ], [ -12, %if.else.return_crit_edge ], [ -12, %if.end.i.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_setup_in_descr(ptr nocapture noundef readonly %common, ptr noundef %buffer, i32 noundef %len, i1 noundef zeroext %last) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1.i.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1.i.i, align 4
  %map_count.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 129
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %4 = load ptr, ptr @artpec6_crypto_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %buffer to i32
  %and.i = and i32 %6, 4095
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %5, i32 %shr.i
  %call.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef 2, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %4, i32 noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %7 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_count.i.i, align 4
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr %map_count.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %8
  %size6.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %8, i32 1
  %9 = ptrtoint ptr %size6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %size6.i.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %dir8.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %8, i32 2
  %11 = ptrtoint ptr %dir8.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %dir8.i.i, align 4
  %12 = ptrtoint ptr %dma1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma1.i.i, align 4
  %in_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_cnt.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %15)
  %cmp.i = icmp ugt i32 %15, 63
  br i1 %cmp.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %call.i.i7 = tail call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i7, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_cnt.i, align 16
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %in_cnt.i, align 16
  %arrayidx.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 1, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %arrayidx.i, align 1
  %bf.shl.i = select i1 %last, i8 16, i8 0
  store i8 %bf.shl.i, ptr %arrayidx.i, align 1
  %19 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 1, i32 %17, i32 1
  %bf.value5.i = zext i32 %len to i56
  %bf.shl6.i = shl i56 %bf.value5.i, 32
  %20 = zext i32 %call.i.i to i56
  %bf.set12.i = or i56 %bf.shl6.i, %20
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 7)
  store i56 %bf.set12.i, ptr %19, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %do.end.i ], [ 0, %if.end.i ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_setup_sg_descrs_out(ptr nocapture noundef readonly %common, ptr nocapture noundef %walk, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %addr = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !198
  %1 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %walk, align 4
  %tobool.not145 = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not146 = icmp eq i32 %count, 0
  %or.cond147 = or i1 %tobool.not145, %tobool1.not146
  br i1 %or.cond147, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %offset.i = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %dma1.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %artpec6_crypto_walk_advance.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %2, %while.body.lr.ph ], [ %91, %artpec6_crypto_walk_advance.exit.while.body_crit_edge ]
  %count.addr.0148 = phi i32 [ %count, %while.body.lr.ph ], [ %sub35132, %artpec6_crypto_walk_advance.exit.while.body_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %do.end.i, label %while.body.artpec6_crypto_walk_chunklen.exit_crit_edge, !prof !199

while.body.artpec6_crypto_walk_chunklen.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_chunklen.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 417, i32 noundef 9, ptr noundef null) #12
  br label %artpec6_crypto_walk_chunklen.exit

artpec6_crypto_walk_chunklen.exit:                ; preds = %do.end.i, %while.body.artpec6_crypto_walk_chunklen.exit_crit_edge
  %10 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %walk, align 4
  %length20.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %length20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length20.i, align 4
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %13, %15
  %16 = call i32 @llvm.umin.i32(i32 %count.addr.0148, i32 %sub.i)
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %artpec6_crypto_walk_chunk_phys.exit, label %do.body2.i.i.i, !prof !200

do.body2.i.i.i:                                   ; preds = %artpec6_crypto_walk_chunklen.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !201
  unreachable

artpec6_crypto_walk_chunk_phys.exit:              ; preds = %artpec6_crypto_walk_chunklen.exit
  %and.i.i.i = and i32 %18, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %20
  %shl.i.i = shl i32 %add.i.i, 12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i.i, align 4
  %add1.i.i = add i32 %22, %15
  %add.i = add i32 %add1.i.i, %shl.i.i
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_setup_sg_descrs_out.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_setup_sg_descrs_out, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %artpec6_crypto_walk_chunk_phys.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_setup_sg_descrs_out.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.43, ptr noundef nonnull %addr, i32 noundef %16) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %artpec6_crypto_walk_chunk_phys.exit
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %and = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #12
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %buf, align 1, !annotation !198
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %3, align 1, !annotation !198
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %4, align 1, !annotation !198
  %sub = sub nuw nsw i32 4, %and
  %29 = call i32 @llvm.umin.i32(i32 %16, i32 %sub)
  %30 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %walk, align 4
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %call18 = call i32 @sg_pcopy_to_buffer(ptr noundef %31, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef %29, i32 noundef %33) #12
  %34 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma1.i, align 4
  %out_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %37)
  %cmp.i81 = icmp ugt i32 %37, 63
  br i1 %cmp.i81, label %if.then9.do.end.i82_crit_edge, label %lor.lhs.false.i

if.then9.do.end.i82_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i82

lor.lhs.false.i:                                  ; preds = %if.then9
  %call.i.i = call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i, label %lor.lhs.false.i.do.end.i82_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.end.i82_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i82

do.end.i82:                                       ; preds = %lor.lhs.false.i.do.end.i82_crit_edge, %if.then9.do.end.i82_crit_edge
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %if.end31.thread124

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.i = icmp eq i32 %29, 0
  br i1 %cmp5.i, label %lor.lhs.false4.i.if.end31.thread124_crit_edge, label %if.end34.thread

lor.lhs.false4.i.if.end31.thread124_crit_edge:    ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.thread124

if.else:                                          ; preds = %do.end
  %38 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %walk, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !200

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !201
  unreachable

sg_page.exit:                                     ; preds = %if.else
  %42 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma1.i, align 4
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %45)
  %cmp.i85 = icmp ugt i32 %45, 129
  br i1 %cmp.i85, label %sg_page.exit.cleanup47_crit_edge, label %if.end.i

sg_page.exit.cleanup47_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end.i:                                         ; preds = %sg_page.exit
  %46 = load ptr, ptr @artpec6_crypto_dev, align 4
  %offset24 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %offset24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset24, align 4
  %49 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i, align 4
  %add = add i32 %50, %48
  %and.i = and i32 %41, -4
  %51 = inttoptr i32 %and.i to ptr
  %call.i = call i32 @dma_map_page_attrs(ptr noundef %46, ptr noundef %51, i32 noundef %add, i32 noundef %16, i32 noundef 1, i32 noundef 0) #12
  call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %if.end.i.cleanup47_crit_edge, label %if.end29

if.end.i.cleanup47_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end29:                                         ; preds = %if.end.i
  %52 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %map_count.i, align 4
  %inc.i86 = add i32 %53, 1
  store i32 %inc.i86, ptr %map_count.i, align 4
  %arrayidx.i87 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 4, i32 %53
  %size6.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 4, i32 %53, i32 1
  %54 = ptrtoint ptr %size6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %16, ptr %size6.i, align 4
  %55 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i, ptr %arrayidx.i87, align 4
  %dir8.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 4, i32 %53, i32 2
  %56 = ptrtoint ptr %dir8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %dir8.i, align 4
  %57 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma1.i, align 4
  %out_cnt.i90 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %out_cnt.i90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_cnt.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %60)
  %cmp.i91 = icmp ugt i32 %60, 63
  br i1 %cmp.i91, label %if.end29.if.end31.thread120_crit_edge, label %lor.lhs.false.i93

if.end29.if.end31.thread120_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.thread120

lor.lhs.false.i93:                                ; preds = %if.end29
  %call.i.i92 = call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i92, label %lor.lhs.false.i93.if.end31.thread120_crit_edge, label %if.end34

lor.lhs.false.i93.if.end31.thread120_crit_edge:   ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.thread120

if.end31.thread120:                               ; preds = %lor.lhs.false.i93.if.end31.thread120_crit_edge, %if.end29.if.end31.thread120_crit_edge
  %call2.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %cleanup47

if.end31.thread124:                               ; preds = %lor.lhs.false4.i.if.end31.thread124_crit_edge, %do.end.i82
  %retval.0.i83.ph = phi i32 [ -28, %do.end.i82 ], [ -22, %lor.lhs.false4.i.if.end31.thread124_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #12
  br label %cleanup47

if.end34.thread:                                  ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %out_cnt.i, align 4
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %out_cnt.i, align 4
  %arrayidx.i = getelementptr [64 x %struct.pdma_descr], ptr %35, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 0, ptr %arrayidx.i, align 1
  %conv.i = trunc i32 %29 to i8
  %bf.value.i = shl nuw nsw i8 %conv.i, 1
  %bf.set19.i = or i8 %bf.value.i, -128
  store i8 %bf.set19.i, ptr %arrayidx.i, align 1
  %64 = getelementptr [64 x %struct.pdma_descr], ptr %35, i32 0, i32 %62, i32 1
  %65 = call ptr @memcpy(ptr %64, ptr %buf, i32 %29)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #12
  %sub35128 = sub i32 %count.addr.0148, %29
  br label %land.rhs.lr.ph.i

if.end34:                                         ; preds = %lor.lhs.false.i93
  %66 = ptrtoint ptr %out_cnt.i90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_cnt.i90, align 4
  %inc.i96 = add i32 %67, 1
  store i32 %inc.i96, ptr %out_cnt.i90, align 4
  %arrayidx.i97 = getelementptr [64 x %struct.pdma_descr], ptr %58, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %arrayidx.i97, align 1
  %69 = getelementptr [64 x %struct.pdma_descr], ptr %58, i32 0, i32 %67, i32 1
  %bf.value9.i = zext i32 %16 to i56
  %bf.shl10.i = shl i56 %bf.value9.i, 32
  %70 = zext i32 %call.i to i56
  %bf.set16.i = or i56 %bf.shl10.i, %70
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 7)
  store i56 %bf.set16.i, ptr %69, align 1
  %sub35 = sub i32 %count.addr.0148, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not55.i = icmp eq i32 %16, 0
  br i1 %tobool.not55.i, label %if.end34.artpec6_crypto_walk_advance.exit_crit_edge, label %if.end34.land.rhs.lr.ph.i_crit_edge

if.end34.land.rhs.lr.ph.i_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph.i

if.end34.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end34.land.rhs.lr.ph.i_crit_edge, %if.end34.thread
  %sub35131 = phi i32 [ %sub35128, %if.end34.thread ], [ %sub35, %if.end34.land.rhs.lr.ph.i_crit_edge ]
  %chunk.0119130 = phi i32 [ %29, %if.end34.thread ], [ %16, %if.end34.land.rhs.lr.ph.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end37.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %nbytes.addr.056.i = phi i32 [ %chunk.0119130, %land.rhs.lr.ph.i ], [ %sub27.i, %if.end37.i.land.rhs.i_crit_edge ]
  %72 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %walk, align 4
  %tobool1.not.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i, label %land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge, label %while.body.i

land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

while.body.i:                                     ; preds = %land.rhs.i
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i, align 4
  %length.i101 = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %length.i101 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length.i101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.i102 = icmp ugt i32 %75, %77
  br i1 %cmp.i102, label %do.end.i103, label %while.body.i.if.end.i106_crit_edge, !prof !199

while.body.i.if.end.i106_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i106

do.end.i103:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 399, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i106

if.end.i106:                                      ; preds = %do.end.i103, %while.body.i.if.end.i106_crit_edge
  %78 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %walk, align 4
  %length23.i = getelementptr inbounds %struct.scatterlist, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %length23.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length23.i, align 4
  %82 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset.i, align 4
  %sub.i104 = sub i32 %81, %83
  %84 = call i32 @llvm.umin.i32(i32 %nbytes.addr.056.i, i32 %sub.i104) #12
  %sub27.i = sub i32 %nbytes.addr.056.i, %84
  %add.i105 = add i32 %84, %83
  %85 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add.i105, ptr %offset.i, align 4
  %86 = ptrtoint ptr %length23.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i105, i32 %87)
  %cmp32.i = icmp eq i32 %add.i105, %87
  br i1 %cmp32.i, label %if.then33.i, label %if.end.i106.if.end37.i_crit_edge

if.end.i106.if.end37.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #14
  %call.i107 = call ptr @sg_next(ptr noundef %79) #12
  %88 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i107, ptr %walk, align 4
  %89 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %offset.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end.i106.if.end37.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub27.i, 0
  br i1 %tobool.not.i, label %if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge, label %if.end37.i.land.rhs.i_crit_edge

if.end37.i.land.rhs.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

artpec6_crypto_walk_advance.exit:                 ; preds = %if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge, %land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge, %if.end34.artpec6_crypto_walk_advance.exit_crit_edge
  %sub35132 = phi i32 [ %sub35, %if.end34.artpec6_crypto_walk_advance.exit_crit_edge ], [ %sub35131, %if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge ], [ %sub35131, %land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge ]
  %90 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %walk, align 4
  %tobool.not = icmp eq ptr %91, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35132)
  %tobool1.not = icmp eq i32 %sub35132, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %artpec6_crypto_walk_advance.exit.while.end_crit_edge, label %artpec6_crypto_walk_advance.exit.while.body_crit_edge

artpec6_crypto_walk_advance.exit.while.body_crit_edge: ; preds = %artpec6_crypto_walk_advance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

artpec6_crypto_walk_advance.exit.while.end_crit_edge: ; preds = %artpec6_crypto_walk_advance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %artpec6_crypto_walk_advance.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %entry.while.end_crit_edge ], [ %sub35132, %artpec6_crypto_walk_advance.exit.while.end_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not146, %entry.while.end_crit_edge ], [ %tobool1.not, %artpec6_crypto_walk_advance.exit.while.end_crit_edge ]
  br i1 %tobool1.not.lcssa, label %while.end.cleanup47_crit_edge, label %do.end41

while.end.cleanup47_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

do.end41:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %count.addr.0.lcssa) #15
  br label %cleanup47

cleanup47:                                        ; preds = %do.end41, %while.end.cleanup47_crit_edge, %if.end31.thread124, %if.end31.thread120, %if.end.i.cleanup47_crit_edge, %sg_page.exit.cleanup47_crit_edge
  %retval.3 = phi i32 [ -22, %do.end41 ], [ 0, %while.end.cleanup47_crit_edge ], [ -28, %if.end31.thread120 ], [ %retval.0.i83.ph, %if.end31.thread124 ], [ -12, %sg_page.exit.cleanup47_crit_edge ], [ -12, %if.end.i.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_terminate_in_descrs(ptr nocapture noundef readonly %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %in_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %in_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_cnt, align 16
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.48, ptr @.str.47
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %3, -1
  %arrayidx = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 1, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %arrayidx, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_terminate_out_descrs(ptr nocapture noundef readonly %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %out_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %out_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_cnt, align 4
  %4 = add i32 %3, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %4)
  %5 = icmp ult i32 %4, -64
  br i1 %5, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.48, ptr @.str.47
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %3, -1
  %arrayidx = getelementptr [64 x %struct.pdma_descr], ptr %1, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %arrayidx, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_dma_map_descs(ptr nocapture noundef readonly %common) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %in_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %in_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_cnt, align 16
  %mul = shl i32 %3, 3
  %in_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = load ptr, ptr @artpec6_crypto_dev, align 4
  %6 = ptrtoint ptr %in_dma_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %in_dma_addr, align 4
  %map_count.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %8)
  %cmp.i.i = icmp ugt i32 %8, 129
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %in = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %in to i32
  %and.i = and i32 %9, 4095
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %4, i32 %shr.i
  %call.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_count.i.i, align 4
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %map_count.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %11
  %size6.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %11, i32 1
  %12 = ptrtoint ptr %size6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %size6.i.i, align 4
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %dir8.i.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 4, i32 %11, i32 2
  %14 = ptrtoint ptr %dir8.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir8.i.i, align 4
  %15 = ptrtoint ptr %in_dma_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i.i, ptr %in_dma_addr, align 4
  %out_cnt = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %out_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_cnt, align 4
  %mul3 = shl i32 %17, 3
  %out_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma1, align 4
  %21 = load ptr, ptr @artpec6_crypto_dev, align 4
  %22 = ptrtoint ptr %out_dma_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %out_dma_addr, align 4
  %map_count.i.i32 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 10
  %23 = ptrtoint ptr %map_count.i.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %map_count.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %24)
  %cmp.i.i33 = icmp ugt i32 %24, 129
  br i1 %cmp.i.i33, label %if.end.cleanup_crit_edge, label %if.end.i.i40

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i40:                                     ; preds = %if.end
  %25 = ptrtoint ptr %1 to i32
  %and.i34 = and i32 %25, 4095
  %sub.i35 = add i32 %25, 1073741824
  %shr.i36 = lshr i32 %sub.i35, 12
  %add.ptr.i37 = getelementptr %struct.page, ptr %18, i32 %shr.i36
  %call.i.i38 = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %add.ptr.i37, i32 noundef %and.i34, i32 noundef %mul3, i32 noundef 1, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %call.i.i38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i38)
  %cmp.i.not.i.i39 = icmp eq i32 %call.i.i38, -1
  br i1 %cmp.i.not.i.i39, label %if.end.i.i40.cleanup_crit_edge, label %if.end7

if.end.i.i40.cleanup_crit_edge:                   ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i40
  %26 = ptrtoint ptr %map_count.i.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %map_count.i.i32, align 4
  %inc.i.i41 = add i32 %27, 1
  store i32 %inc.i.i41, ptr %map_count.i.i32, align 4
  %arrayidx.i.i42 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 4, i32 %27
  %size6.i.i43 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 4, i32 %27, i32 1
  %28 = ptrtoint ptr %size6.i.i43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul3, ptr %size6.i.i43, align 4
  %29 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i.i38, ptr %arrayidx.i.i42, align 4
  %dir8.i.i44 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %20, i32 0, i32 4, i32 %27, i32 2
  %30 = ptrtoint ptr %dir8.i.i44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %dir8.i.i44, align 4
  %31 = ptrtoint ptr %out_dma_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i.i38, ptr %out_dma_addr, align 4
  %32 = ptrtoint ptr %in_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_cnt, align 16
  %sub = add i32 %33, -1
  %arrayidx = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 2, i32 %sub
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx, align 4
  %35 = load i32, ptr %in_cnt, align 16
  %mul12 = shl i32 %35, 2
  %stat_dma_addr = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma1, align 4
  %39 = load ptr, ptr @artpec6_crypto_dev, align 4
  %40 = ptrtoint ptr %stat_dma_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %stat_dma_addr, align 4
  %map_count.i.i49 = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %38, i32 0, i32 10
  %41 = ptrtoint ptr %map_count.i.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %map_count.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %42)
  %cmp.i.i50 = icmp ugt i32 %42, 129
  br i1 %cmp.i.i50, label %if.end7.cleanup_crit_edge, label %if.end.i.i57

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i57:                                     ; preds = %if.end7
  %stat = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %stat to i32
  %and.i51 = and i32 %43, 4095
  %sub.i52 = add i32 %43, 1073741824
  %shr.i53 = lshr i32 %sub.i52, 12
  %add.ptr.i54 = getelementptr %struct.page, ptr %36, i32 %shr.i53
  %call.i.i55 = tail call i32 @dma_map_page_attrs(ptr noundef %39, ptr noundef %add.ptr.i54, i32 noundef %and.i51, i32 noundef %mul12, i32 noundef 0, i32 noundef 0) #12
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef %call.i.i55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i55)
  %cmp.i.not.i.i56 = icmp eq i32 %call.i.i55, -1
  br i1 %cmp.i.not.i.i56, label %if.end.i.i57.cleanup_crit_edge, label %if.end4.i.i62

if.end.i.i57.cleanup_crit_edge:                   ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i.i62:                                    ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %map_count.i.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %map_count.i.i49, align 4
  %inc.i.i58 = add i32 %45, 1
  store i32 %inc.i.i58, ptr %map_count.i.i49, align 4
  %arrayidx.i.i59 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %38, i32 0, i32 4, i32 %45
  %size6.i.i60 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %38, i32 0, i32 4, i32 %45, i32 1
  %46 = ptrtoint ptr %size6.i.i60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul12, ptr %size6.i.i60, align 4
  %47 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i.i55, ptr %arrayidx.i.i59, align 4
  %dir8.i.i61 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %38, i32 0, i32 4, i32 %45, i32 2
  %48 = ptrtoint ptr %dir8.i.i61 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %dir8.i.i61, align 4
  %49 = ptrtoint ptr %stat_dma_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i.i55, ptr %stat_dma_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.i62, %if.end.i.i57.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.i.i40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.i.i62 ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end.i.i57.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.i40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_walk_advance(ptr nocapture noundef %awalk, i32 noundef %nbytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not55 = icmp eq i32 %nbytes, 0
  br i1 %tobool.not55, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %offset = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %awalk, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end37.land.rhs_crit_edge, %land.rhs.lr.ph
  %nbytes.addr.056 = phi i32 [ %nbytes, %land.rhs.lr.ph ], [ %sub27, %if.end37.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %awalk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %awalk, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %do.end, label %while.body.if.end_crit_edge, !prof !199

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 399, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %6 = ptrtoint ptr %awalk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %awalk, align 4
  %length23 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %length23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length23, align 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %sub = sub i32 %9, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %nbytes.addr.056, i32 %sub)
  %sub27 = sub i32 %nbytes.addr.056, %12
  %add = add i32 %12, %11
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %offset, align 4
  %14 = ptrtoint ptr %length23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp32 = icmp eq i32 %add, %15
  br i1 %cmp32, label %if.then33, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @sg_next(ptr noundef %7) #12
  %16 = ptrtoint ptr %awalk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %awalk, align 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %offset, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end.if.end37_crit_edge
  %tobool.not = icmp eq i32 %sub27, 0
  br i1 %tobool.not, label %if.end37.while.end_crit_edge, label %if.end37.land.rhs_crit_edge

if.end37.land.rhs_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %nbytes.addr.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %if.end37.while.end_crit_edge ], [ %nbytes.addr.056, %land.rhs.while.end_crit_edge ]
  ret i32 %nbytes.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_cipher_set_key(ptr nocapture noundef writeonly %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %entry.sw.epilog_crit_edge4
    i32 32, label %entry.sw.epilog_crit_edge5
  ]

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %1 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %key_length = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 60
  %2 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %key_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %crypto_type = getelementptr i8, ptr %1, i32 200
  %2 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crypto_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge34
    i32 5, label %entry.sw.bb_crit_edge35
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35
  %decrypt = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %5 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %decrypt, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %6 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crypto_type, align 4
  %common = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %8 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %gfp_flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %13 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %gfp_flags.i, align 4
  %dma_cache.i = getelementptr inbounds %struct.artpec6_crypto, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %dma_cache.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_cache.i, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef %cond.i) #12
  %dma.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %dma.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cond = icmp eq i32 %7, 2
  %artpec6_crypto_complete_cbc_encrypt.artpec6_crypto_complete_crypto = select i1 %cond, ptr @artpec6_crypto_complete_cbc_encrypt, ptr @artpec6_crypto_complete_crypto
  %req.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %17 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %base, ptr %req.i, align 4
  %complete5.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %18 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %artpec6_crypto_complete_cbc_encrypt.artpec6_crypto_complete_crypto, ptr %complete5.i, align 4
  %call8 = tail call fastcc i32 @artpec6_crypto_prepare_crypto(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %common)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call fastcc i32 @artpec6_crypto_submit(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call15, %if.end13 ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %crypto_type = getelementptr i8, ptr %1, i32 200
  %2 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crypto_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge34
    i32 5, label %entry.sw.bb_crit_edge35
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35
  %decrypt = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %5 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %decrypt, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %6 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crypto_type, align 4
  %common = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %8 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %gfp_flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %13 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %gfp_flags.i, align 4
  %dma_cache.i = getelementptr inbounds %struct.artpec6_crypto, ptr %10, i32 0, i32 5
  %14 = ptrtoint ptr %dma_cache.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_cache.i, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef %cond.i) #12
  %dma.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %dma.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cond = icmp eq i32 %7, 2
  %artpec6_crypto_complete_cbc_decrypt.artpec6_crypto_complete_crypto = select i1 %cond, ptr @artpec6_crypto_complete_cbc_decrypt, ptr @artpec6_crypto_complete_crypto
  %req.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %17 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %base, ptr %req.i, align 4
  %complete5.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %18 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %artpec6_crypto_complete_cbc_decrypt.artpec6_crypto_complete_crypto, ptr %complete5.i, align 4
  %call8 = tail call fastcc i32 @artpec6_crypto_prepare_crypto(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %common)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call fastcc i32 @artpec6_crypto_submit(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call15, %if.end13 ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_crypto_aes_ecb_init(ptr nocapture noundef writeonly %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 40, ptr %tfm, align 128
  %crypto_type = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %1 = ptrtoint ptr %crypto_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %crypto_type, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @artpec6_crypto_aes_exit(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 80)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @artpec6_crypto_ctr_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @artpec6_crypto_ctr_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_aes_ctr_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #12
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %fallback, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 40, ptr %tfm, align 128
  %crypto_type = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %5 = ptrtoint ptr %crypto_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %crypto_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_aes_ctr_exit(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i.i) #12
  %2 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 80)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_crypto_aes_cbc_init(ptr nocapture noundef writeonly %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 40, ptr %tfm, align 128
  %crypto_type = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %1 = ptrtoint ptr %crypto_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %crypto_type, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_xts_set_key(ptr nocapture noundef writeonly %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %keylen, label %if.end.cleanup_crit_edge [
    i32 32, label %if.end.sw.epilog_crit_edge
    i32 48, label %if.end.sw.epilog_crit_edge10
    i32 64, label %if.end.sw.epilog_crit_edge11
  ]

if.end.sw.epilog_crit_edge11:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge10:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge10, %if.end.sw.epilog_crit_edge11
  %1 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %key_length = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 60
  %2 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %key_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_crypto_aes_xts_init(ptr nocapture noundef writeonly %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 40, ptr %tfm, align 128
  %crypto_type = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 68
  %1 = ptrtoint ptr %crypto_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %crypto_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_complete_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %req, i32 -16
  %iv = getelementptr i8, ptr %req, i32 -12
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 4
  %dst = getelementptr i8, ptr %req, i32 -4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 128
  %sub = add i32 %5, -16
  tail call void @scatterwalk_map_and_copy(ptr noundef %1, ptr noundef %3, i32 noundef %sub, i32 noundef 16, i32 noundef 0) #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  tail call void %7(ptr noundef %req, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_complete_crypto(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  tail call void %1(ptr noundef %req, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_prepare_crypto(ptr noundef %areq) unnamed_addr #2 align 64 {
entry:
  %walk = alloca %struct.artpec6_crypto_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk) #12
  %0 = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk, i32 0, i32 1
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %2, i32 12
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %4, i32 -100
  %5 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ivsize.i, align 4
  %7 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %variant4 = getelementptr inbounds %struct.artpec6_crypto, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %variant4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %variant4, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %common6 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 2
  %dma1.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 4, i32 1
  %12 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma1.i, align 4
  %out_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %out_cnt.i, align 4
  %in_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 9
  %15 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %in_cnt.i, align 16
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %map_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %map_count.i, align 4
  %bounce_buffers.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %bounce_buffers.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %bounce_buffers.i, ptr %bounce_buffers.i, align 4
  %prev.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %13, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bounce_buffers.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %spec.select = select i1 %cmp, i32 655360, i32 3584
  %19 = getelementptr i8, ptr %2, i32 196
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  %call37 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common6, ptr noundef %19, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool.not = icmp eq i32 %call37, 0
  br i1 %tobool.not, label %if.end39, label %entry.cleanup255_crit_edge

entry.cleanup255_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end39:                                         ; preds = %entry
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  %key_length = getelementptr i8, ptr %2, i32 192
  %21 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_length, align 4
  %call40 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common6, ptr noundef %__crt_ctx.i.i, i32 noundef %22, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup255_crit_edge

if.end39.cleanup255_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end43:                                         ; preds = %if.end39
  %23 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %__ctx.i, align 4
  %crypto_type = getelementptr i8, ptr %2, i32 200
  %24 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crypto_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp44 = icmp eq i32 %25, 5
  %26 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_length, align 4
  %div357 = zext i1 %cmp44 to i32
  %cipher_klen.0 = lshr i32 %27, %div357
  %28 = zext i32 %cipher_klen.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %cipher_klen.0, label %do.end54 [
    i32 16, label %if.end43.sw.epilog_crit_edge
    i32 24, label %sw.bb50
    i32 32, label %sw.bb51
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %key_length, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.35, i32 noundef %30) #15
  br label %cleanup255

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb50, %if.end43.sw.epilog_crit_edge
  %cipher_len.0 = phi i32 [ 2, %sw.bb51 ], [ 1, %sw.bb50 ], [ 0, %if.end43.sw.epilog_crit_edge ]
  %31 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %25, label %do.end80 [
    i32 1, label %sw.epilog.sw.epilog84_crit_edge
    i32 2, label %sw.epilog.sw.epilog84_crit_edge394
    i32 3, label %sw.epilog84.thread378
    i32 5, label %sw.bb66
  ]

sw.epilog.sw.epilog84_crit_edge394:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog84

sw.epilog.sw.epilog84_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog84

sw.bb66:                                          ; preds = %sw.epilog
  %decrypt67 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %32 = ptrtoint ptr %decrypt67 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %decrypt67, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %extract.t.not = icmp eq i8 %33, 0
  br i1 %cmp, label %sw.epilog84.thread, label %sw.epilog84.thread361

sw.epilog84.thread:                               ; preds = %sw.bb66
  %shl131367 = shl nuw nsw i32 %cipher_len.0, 20
  %or134368 = or i32 %shl131367, 17104896
  %34 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or134368, ptr %__ctx.i, align 4
  br i1 %extract.t.not, label %sw.epilog84.thread.if.end198_crit_edge, label %sw.epilog84.thread.if.then136_crit_edge

sw.epilog84.thread.if.then136_crit_edge:          ; preds = %sw.epilog84.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

sw.epilog84.thread.if.end198_crit_edge:           ; preds = %sw.epilog84.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

sw.epilog84.thread361:                            ; preds = %sw.bb66
  %shl189373 = shl nuw nsw i32 %cipher_len.0, 12
  %or192374 = or i32 %shl189373, 66816
  %35 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or192374, ptr %__ctx.i, align 4
  br i1 %extract.t.not, label %sw.epilog84.thread361.if.end198_crit_edge, label %sw.epilog84.thread361.if.then194_crit_edge

sw.epilog84.thread361.if.then194_crit_edge:       ; preds = %sw.epilog84.thread361
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then194

sw.epilog84.thread361.if.end198_crit_edge:        ; preds = %sw.epilog84.thread361
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

do.end80:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.35, i32 noundef %25) #15
  br label %cleanup255

sw.epilog84:                                      ; preds = %sw.epilog.sw.epilog84_crit_edge, %sw.epilog.sw.epilog84_crit_edge394
  %decrypt62 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %36 = ptrtoint ptr %decrypt62 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %decrypt62, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool63.not = icmp eq i8 %37, 0
  br i1 %cmp, label %do.body93, label %do.body147

sw.epilog84.thread378:                            ; preds = %sw.epilog
  br i1 %cmp, label %do.body93.thread, label %do.body147.thread

do.body147.thread:                                ; preds = %sw.epilog84.thread378
  call void @__sanitizer_cov_trace_pc() #14
  %shl163389 = shl nuw nsw i32 %25, 8
  %and164390 = and i32 %shl163389, 3840
  %38 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %__ctx.i, align 4
  %shl189391 = shl nuw nsw i32 %cipher_len.0, 12
  %or166392 = or i32 %shl189391, %and164390
  %or192393 = or i32 %or166392, %39
  br label %if.end198.sink.split

do.body93.thread:                                 ; preds = %sw.epilog84.thread378
  call void @__sanitizer_cov_trace_pc() #14
  %shl383 = shl nuw nsw i32 %25, 16
  %and106384 = and i32 %shl383, 983040
  %40 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__ctx.i, align 4
  %shl131385 = shl nuw nsw i32 %cipher_len.0, 20
  %or108386 = or i32 %shl131385, %and106384
  %or134387 = or i32 %or108386, %41
  br label %if.end198.sink.split

do.body93:                                        ; preds = %sw.epilog84
  %shl = shl nuw nsw i32 %25, 16
  %and106 = and i32 %shl, 983040
  %42 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__ctx.i, align 4
  %shl131 = shl nuw nsw i32 %cipher_len.0, 20
  %or108 = or i32 %shl131, %and106
  %or134 = or i32 %or108, %43
  store i32 %or134, ptr %__ctx.i, align 4
  br i1 %tobool63.not, label %do.body93.if.end198_crit_edge, label %do.body93.if.then136_crit_edge

do.body93.if.then136_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

do.body93.if.end198_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then136:                                       ; preds = %do.body93.if.then136_crit_edge, %sw.epilog84.thread.if.then136_crit_edge
  %or134369 = phi i32 [ %or134368, %sw.epilog84.thread.if.then136_crit_edge ], [ %or134, %do.body93.if.then136_crit_edge ]
  %or138 = or i32 %or134369, 4194304
  br label %if.end198.sink.split

do.body147:                                       ; preds = %sw.epilog84
  %shl163 = shl nuw nsw i32 %25, 8
  %and164 = and i32 %shl163, 3840
  %44 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %__ctx.i, align 4
  %shl189 = shl nuw nsw i32 %cipher_len.0, 12
  %or166 = or i32 %shl189, %and164
  %or192 = or i32 %or166, %45
  store i32 %or192, ptr %__ctx.i, align 4
  br i1 %tobool63.not, label %do.body147.if.end198_crit_edge, label %do.body147.if.then194_crit_edge

do.body147.if.then194_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then194

do.body147.if.end198_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then194:                                       ; preds = %do.body147.if.then194_crit_edge, %sw.epilog84.thread361.if.then194_crit_edge
  %or192375 = phi i32 [ %or192374, %sw.epilog84.thread361.if.then194_crit_edge ], [ %or192, %do.body147.if.then194_crit_edge ]
  %or196 = or i32 %or192375, 16384
  br label %if.end198.sink.split

if.end198.sink.split:                             ; preds = %if.then194, %if.then136, %do.body93.thread, %do.body147.thread
  %or192393.sink = phi i32 [ %or192393, %do.body147.thread ], [ %or134387, %do.body93.thread ], [ %or196, %if.then194 ], [ %or138, %if.then136 ]
  %46 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or192393.sink, ptr %__ctx.i, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.end198.sink.split, %do.body147.if.end198_crit_edge, %do.body93.if.end198_crit_edge, %sw.epilog84.thread361.if.end198_crit_edge, %sw.epilog84.thread.if.end198_crit_edge
  %call200 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common6, ptr noundef %__ctx.i, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %if.end198.cleanup255_crit_edge

if.end198.cleanup255_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end203:                                        ; preds = %if.end198
  %pad_buffer = getelementptr inbounds %struct.artpec6_crypto, ptr %9, i32 0, i32 9
  %47 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pad_buffer, align 4
  %call204 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common6, ptr noundef %48, i32 noundef 4, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end203.cleanup255_crit_edge

if.end203.cleanup255_crit_edge:                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end207:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool208.not = icmp eq i32 %6, 0
  br i1 %tobool208.not, label %if.end207.if.end214_crit_edge, label %if.then209

if.end207.if.end214_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

if.then209:                                       ; preds = %if.end207
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %49 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iv, align 4
  %call210 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common6, ptr noundef %50, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then209.if.end214_crit_edge, label %if.then209.cleanup255_crit_edge

if.then209.cleanup255_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.then209.if.end214_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

if.end214:                                        ; preds = %if.then209.if.end214_crit_edge, %if.end207.if.end214_crit_edge
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %51 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %src, align 8
  %53 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %walk, align 4
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %0, align 4
  %55 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %areq, align 128
  %call215 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_out(ptr noundef %common6, ptr noundef nonnull %walk, i32 noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %if.end214.cleanup255_crit_edge

if.end214.cleanup255_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end218:                                        ; preds = %if.end214
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dst, align 4
  %59 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %walk, align 4
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %0, align 4
  %61 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %areq, align 128
  %call220 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_in(ptr noundef %common6, ptr noundef nonnull %walk, i32 noundef %62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end223, label %if.end218.cleanup255_crit_edge

if.end218.cleanup255_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end223:                                        ; preds = %if.end218
  %63 = ptrtoint ptr %crypto_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crypto_type, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %64, label %if.end223.if.end245_crit_edge [
    i32 3, label %if.end223.if.then228_crit_edge
    i32 5, label %if.end223.if.then228_crit_edge395
  ]

if.end223.if.then228_crit_edge395:                ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then228

if.end223.if.then228_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then228

if.end223.if.end245_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then228:                                       ; preds = %if.end223.if.then228_crit_edge, %if.end223.if.then228_crit_edge395
  %66 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %areq, align 128
  %add = add i32 %67, 15
  %and230 = and i32 %add, -16
  %sub = sub i32 %and230, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %and230, i32 %67)
  %tobool232.not = icmp eq i32 %and230, %67
  br i1 %tobool232.not, label %if.then228.if.end245_crit_edge, label %if.then233

if.then228.if.end245_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then233:                                       ; preds = %if.then228
  %68 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pad_buffer, align 4
  %call235 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common6, ptr noundef %69, i32 noundef %sub, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end238, label %if.then233.cleanup255_crit_edge

if.then233.cleanup255_crit_edge:                  ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end238:                                        ; preds = %if.then233
  %70 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pad_buffer, align 4
  %call240 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common6, ptr noundef %71, i32 noundef %sub, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end238.if.end245_crit_edge, label %if.end238.cleanup255_crit_edge

if.end238.cleanup255_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end238.if.end245_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.end245:                                        ; preds = %if.end238.if.end245_crit_edge, %if.then228.if.end245_crit_edge, %if.end223.if.end245_crit_edge
  %call246 = tail call fastcc i32 @artpec6_crypto_terminate_out_descrs(ptr noundef %common6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end249, label %if.end245.cleanup255_crit_edge

if.end245.cleanup255_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end249:                                        ; preds = %if.end245
  %call250 = tail call fastcc i32 @artpec6_crypto_terminate_in_descrs(ptr noundef %common6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end253, label %if.end249.cleanup255_crit_edge

if.end249.cleanup255_crit_edge:                   ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup255

if.end253:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  %call254 = tail call fastcc i32 @artpec6_crypto_dma_map_descs(ptr noundef %common6)
  br label %cleanup255

cleanup255:                                       ; preds = %if.end253, %if.end249.cleanup255_crit_edge, %if.end245.cleanup255_crit_edge, %if.end238.cleanup255_crit_edge, %if.then233.cleanup255_crit_edge, %if.end218.cleanup255_crit_edge, %if.end214.cleanup255_crit_edge, %if.then209.cleanup255_crit_edge, %if.end203.cleanup255_crit_edge, %if.end198.cleanup255_crit_edge, %do.end80, %do.end54, %if.end39.cleanup255_crit_edge, %entry.cleanup255_crit_edge
  %retval.1 = phi i32 [ -22, %do.end54 ], [ -22, %do.end80 ], [ %call254, %if.end253 ], [ %call37, %entry.cleanup255_crit_edge ], [ %call40, %if.end39.cleanup255_crit_edge ], [ %call200, %if.end198.cleanup255_crit_edge ], [ %call204, %if.end203.cleanup255_crit_edge ], [ %call210, %if.then209.cleanup255_crit_edge ], [ %call215, %if.end214.cleanup255_crit_edge ], [ %call220, %if.end218.cleanup255_crit_edge ], [ %call246, %if.end245.cleanup255_crit_edge ], [ %call250, %if.end249.cleanup255_crit_edge ], [ %call240, %if.end238.cleanup255_crit_edge ], [ %call235, %if.then233.cleanup255_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_setup_sg_descrs_in(ptr nocapture noundef readonly %common, ptr nocapture noundef %walk, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !198
  %1 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %walk, align 4
  %tobool.not170 = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not171 = icmp eq i32 %count, 0
  %or.cond172 = or i1 %tobool.not170, %tobool1.not171
  br i1 %or.cond172, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %offset.i = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk, i32 0, i32 1
  %dma1.i = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %artpec6_crypto_walk_advance.exit.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %2, %while.body.lr.ph ], [ %71, %artpec6_crypto_walk_advance.exit.while.body_crit_edge ]
  %count.addr.0173 = phi i32 [ %count, %while.body.lr.ph ], [ %sub70, %artpec6_crypto_walk_advance.exit.while.body_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %do.end.i, label %while.body.artpec6_crypto_walk_chunklen.exit_crit_edge, !prof !199

while.body.artpec6_crypto_walk_chunklen.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_chunklen.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 417, i32 noundef 9, ptr noundef null) #12
  br label %artpec6_crypto_walk_chunklen.exit

artpec6_crypto_walk_chunklen.exit:                ; preds = %do.end.i, %while.body.artpec6_crypto_walk_chunklen.exit_crit_edge
  %8 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %walk, align 4
  %length20.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %length20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length20.i, align 4
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %11, %13
  %14 = call i32 @llvm.umin.i32(i32 %count.addr.0173, i32 %sub.i)
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %artpec6_crypto_walk_chunk_phys.exit, label %do.body2.i.i.i, !prof !200

do.body2.i.i.i:                                   ; preds = %artpec6_crypto_walk_chunklen.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !201
  unreachable

artpec6_crypto_walk_chunk_phys.exit:              ; preds = %artpec6_crypto_walk_chunklen.exit
  %and.i.i.i = and i32 %16, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %18
  %shl.i.i = shl i32 %add.i.i, 12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i.i, align 4
  %add1.i.i = add i32 %20, %13
  %add.i = add i32 %add1.i.i, %shl.i.i
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %addr, align 4
  %and = and i32 %add.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.else, label %if.then

if.then:                                          ; preds = %artpec6_crypto_walk_chunk_phys.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %add.i, 31
  %and4 = and i32 %add, -32
  %sub = sub i32 %and4, %add.i
  %22 = call i32 @llvm.umin.i32(i32 %14, i32 %sub)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_setup_sg_descrs_in, %if.then16)) #12
          to label %if.end66 [label %if.then16], !srcloc !195

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.61, ptr noundef nonnull %addr, i32 noundef %22) #12
  br label %if.end66

if.else:                                          ; preds = %artpec6_crypto_walk_chunk_phys.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp18 = icmp ult i32 %14, 32
  br i1 %cmp18, label %do.body20, label %if.else37

do.body20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_setup_sg_descrs_in, %if.then32)) #12
          to label %if.end66 [label %if.then32], !srcloc !195

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.61, ptr noundef nonnull %addr, i32 noundef %14) #12
  br label %if.end66

if.else37:                                        ; preds = %if.else
  %and38 = and i32 %14, -32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_setup_sg_descrs_in, %if.then51)) #12
          to label %do.end54 [label %if.then51], !srcloc !195

if.then51:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.63, ptr noundef nonnull %addr, i32 noundef %and38) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.else37
  %23 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %walk, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !200

do.body2.i:                                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !201
  unreachable

sg_page.exit:                                     ; preds = %do.end54
  %27 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma1.i, align 4
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %30)
  %cmp.i127 = icmp ugt i32 %30, 129
  br i1 %cmp.i127, label %sg_page.exit.cleanup82_crit_edge, label %if.end.i

sg_page.exit.cleanup82_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.end.i:                                         ; preds = %sg_page.exit
  %31 = load ptr, ptr @artpec6_crypto_dev, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %add59 = add i32 %35, %33
  %and.i = and i32 %26, -4
  %36 = inttoptr i32 %and.i to ptr
  %call.i = call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %36, i32 noundef %add59, i32 noundef %and38, i32 noundef 2, i32 noundef 0) #12
  call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %if.end.i.cleanup82_crit_edge, label %if.end63

if.end.i.cleanup82_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.end63:                                         ; preds = %if.end.i
  %37 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %map_count.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %map_count.i, align 4
  %arrayidx.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %28, i32 0, i32 4, i32 %38
  %size6.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %28, i32 0, i32 4, i32 %38, i32 1
  %39 = ptrtoint ptr %size6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and38, ptr %size6.i, align 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i, ptr %arrayidx.i, align 4
  %dir8.i = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %28, i32 0, i32 4, i32 %38, i32 2
  %41 = ptrtoint ptr %dir8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %dir8.i, align 4
  %42 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma1.i, align 4
  %in_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %in_cnt.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %45)
  %cmp.i130 = icmp ugt i32 %45, 63
  br i1 %cmp.i130, label %if.end63.if.end66.thread158_crit_edge, label %lor.lhs.false.i

if.end63.if.end66.thread158_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.thread158

lor.lhs.false.i:                                  ; preds = %if.end63
  %call.i.i = call zeroext i1 @should_fail(ptr noundef nonnull @artpec6_crypto_fail_dma_array_full, i32 noundef 1) #12
  br i1 %call.i.i, label %lor.lhs.false.i.if.end66.thread158_crit_edge, label %if.end66.thread

lor.lhs.false.i.if.end66.thread158_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.thread158

if.end66.thread158:                               ; preds = %lor.lhs.false.i.if.end66.thread158_crit_edge, %if.end63.if.end66.thread158_crit_edge
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  br label %cleanup82

if.end66.thread:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_cnt.i, align 16
  %inc.i132 = add i32 %47, 1
  store i32 %inc.i132, ptr %in_cnt.i, align 16
  %arrayidx.i133 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 0, ptr %arrayidx.i133, align 1
  %49 = getelementptr %struct.artpec6_crypto_dma_descriptors, ptr %43, i32 0, i32 1, i32 %47, i32 1
  %bf.value5.i = zext i32 %and38 to i56
  %bf.shl6.i = shl i56 %bf.value5.i, 32
  %50 = zext i32 %call.i to i56
  %bf.set12.i = or i56 %bf.shl6.i, %50
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 7)
  store i56 %bf.set12.i, ptr %49, align 1
  br label %if.end69

if.end66:                                         ; preds = %if.then32, %do.body20, %if.then16, %if.then
  %.sink = phi i32 [ %22, %if.then ], [ %22, %if.then16 ], [ %14, %do.body20 ], [ %14, %if.then32 ]
  %call36 = call fastcc i32 @setup_bounce_buffer_in(ptr noundef %common, ptr noundef %walk, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool67.not = icmp eq i32 %call36, 0
  br i1 %tobool67.not, label %if.end66.if.end69_crit_edge, label %if.end66.cleanup82_crit_edge

if.end66.cleanup82_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.end66.if.end69_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end69:                                         ; preds = %if.end66.if.end69_crit_edge, %if.end66.thread
  %chunk.0157 = phi i32 [ %and38, %if.end66.thread ], [ %.sink, %if.end66.if.end69_crit_edge ]
  %sub70 = sub i32 %count.addr.0173, %chunk.0157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk.0157)
  %tobool.not55.i = icmp eq i32 %chunk.0157, 0
  br i1 %tobool.not55.i, label %if.end69.artpec6_crypto_walk_advance.exit_crit_edge, label %if.end69.land.rhs.i_crit_edge

if.end69.land.rhs.i_crit_edge:                    ; preds = %if.end69
  br label %land.rhs.i

if.end69.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

land.rhs.i:                                       ; preds = %if.end37.i.land.rhs.i_crit_edge, %if.end69.land.rhs.i_crit_edge
  %nbytes.addr.056.i = phi i32 [ %sub27.i, %if.end37.i.land.rhs.i_crit_edge ], [ %chunk.0157, %if.end69.land.rhs.i_crit_edge ]
  %52 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %walk, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge, label %while.body.i

land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

while.body.i:                                     ; preds = %land.rhs.i
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  %length.i137 = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %length.i137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length.i137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.i138 = icmp ugt i32 %55, %57
  br i1 %cmp.i138, label %do.end.i139, label %while.body.i.if.end.i142_crit_edge, !prof !199

while.body.i.if.end.i142_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142

do.end.i139:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 399, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i142

if.end.i142:                                      ; preds = %do.end.i139, %while.body.i.if.end.i142_crit_edge
  %58 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %walk, align 4
  %length23.i = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %length23.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length23.i, align 4
  %62 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset.i, align 4
  %sub.i140 = sub i32 %61, %63
  %64 = call i32 @llvm.umin.i32(i32 %nbytes.addr.056.i, i32 %sub.i140) #12
  %sub27.i = sub i32 %nbytes.addr.056.i, %64
  %add.i141 = add i32 %64, %63
  %65 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i141, ptr %offset.i, align 4
  %66 = ptrtoint ptr %length23.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141, i32 %67)
  %cmp32.i = icmp eq i32 %add.i141, %67
  br i1 %cmp32.i, label %if.then33.i, label %if.end.i142.if.end37.i_crit_edge

if.end.i142.if.end37.i_crit_edge:                 ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  %call.i143 = call ptr @sg_next(ptr noundef %59) #12
  %68 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i143, ptr %walk, align 4
  %69 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %offset.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end.i142.if.end37.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub27.i, 0
  br i1 %tobool.not.i, label %if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge, label %if.end37.i.land.rhs.i_crit_edge

if.end37.i.land.rhs.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %artpec6_crypto_walk_advance.exit

artpec6_crypto_walk_advance.exit:                 ; preds = %if.end37.i.artpec6_crypto_walk_advance.exit_crit_edge, %land.rhs.i.artpec6_crypto_walk_advance.exit_crit_edge, %if.end69.artpec6_crypto_walk_advance.exit_crit_edge
  %70 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %walk, align 4
  %tobool.not = icmp eq ptr %71, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70)
  %tobool1.not = icmp eq i32 %sub70, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %artpec6_crypto_walk_advance.exit.while.end_crit_edge, label %artpec6_crypto_walk_advance.exit.while.body_crit_edge

artpec6_crypto_walk_advance.exit.while.body_crit_edge: ; preds = %artpec6_crypto_walk_advance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

artpec6_crypto_walk_advance.exit.while.end_crit_edge: ; preds = %artpec6_crypto_walk_advance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %artpec6_crypto_walk_advance.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %entry.while.end_crit_edge ], [ %sub70, %artpec6_crypto_walk_advance.exit.while.end_crit_edge ]
  %tobool1.not.lcssa = phi i1 [ %tobool1.not171, %entry.while.end_crit_edge ], [ %tobool1.not, %artpec6_crypto_walk_advance.exit.while.end_crit_edge ]
  br i1 %tobool1.not.lcssa, label %while.end.cleanup82_crit_edge, label %do.end76

while.end.cleanup82_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

do.end76:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %count.addr.0.lcssa) #15
  br label %cleanup82

cleanup82:                                        ; preds = %do.end76, %while.end.cleanup82_crit_edge, %if.end66.cleanup82_crit_edge, %if.end66.thread158, %if.end.i.cleanup82_crit_edge, %sg_page.exit.cleanup82_crit_edge
  %retval.3 = phi i32 [ -22, %do.end76 ], [ 0, %while.end.cleanup82_crit_edge ], [ -28, %if.end66.thread158 ], [ -12, %if.end.i.cleanup82_crit_edge ], [ -12, %sg_page.exit.cleanup82_crit_edge ], [ %call36, %if.end66.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_bounce_buffer_in(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %walk, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gfp_flags = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 5
  %0 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gfp_flags, align 4
  %and.i.i.i.i = and i32 %1, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !200

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %1, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i.i, i32 noundef 88) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.cleanup_crit_edge, label %if.end

kzalloc.exit.i.cleanup_crit_edge:                 ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit.i
  %add.ptr.i = getelementptr %struct.artpec6_crypto_bounce_buffer, ptr %call7.i.i.i, i32 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %4, 31
  %and.i = and i32 %add.i, -32
  %5 = inttoptr i32 %and.i to ptr
  %buf.i = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %buf.i, align 4
  %length = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %length, align 8
  %8 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %walk, align 4
  %sg1 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %sg1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sg1, align 4
  %offset = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %offset2 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset2, align 8
  %call3 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common, ptr noundef %5, i32 noundef %size, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_bounce_buffer_in.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_bounce_buffer_in, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !195

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_bounce_buffer_in.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.66, i32 noundef %size, i32 noundef %15) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %dma = getelementptr inbounds %struct.artpec6_crypto_req_common, ptr %common, i32 0, i32 2
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma, align 4
  %bounce_buffers = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %17, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %17, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %19, ptr noundef %bounce_buffers) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bounce_buffers, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.cleanup_crit_edge, %if.then5, %kzalloc.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -12, %kzalloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_complete_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %req, i32 -16
  %iv = getelementptr i8, ptr %req, i32 -12
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 4
  %src = getelementptr i8, ptr %req, i32 -8
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 128
  %sub = add i32 %5, -16
  tail call void @scatterwalk_map_and_copy(ptr noundef %1, ptr noundef %3, i32 noundef %sub, i32 noundef 16, i32 noundef 0) #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  tail call void %7(ptr noundef %req, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_ctr_crypt(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #2 align 64 {
entry:
  %__subreq_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %5
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 -4
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr3, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 128
  %add = add i32 %11, 15
  %div61 = lshr i32 %add, 4
  %add5 = add i32 %div61, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %9)
  %cmp = icmp ult i32 %add5, %9
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_ctr_crypt.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_ctr_crypt, %if.then10)) #12
          to label %do.end [label %if.then10], !srcloc !195

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_ctr_crypt.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.69, i32 noundef %9, i32 noundef %add5) #12
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then
  %fallback = getelementptr i8, ptr %1, i32 204
  %12 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback, align 4
  %key_length = getelementptr i8, ptr %1, i32 192
  %14 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_length, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %13, ptr noundef %__crt_ctx.i.i, i32 noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup31_crit_edge

do.end.cleanup31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.end15:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__subreq_desc) #12
  %16 = call ptr @memset(ptr %__subreq_desc, i32 255, i32 512)
  %17 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fallback, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %18, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst, align 4
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req, align 128
  %31 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 2
  %33 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %26, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 3
  %34 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %dst2.i, align 4
  %35 = ptrtoint ptr %__subreq_desc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %__subreq_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 1
  %36 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %iv4.i, align 4
  br i1 %encrypt, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__subreq_desc) #12
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__subreq_desc) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call21, %cond.true ], [ %call22, %cond.false ]
  %37 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 -128
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %40, 128
  %41 = call ptr @memset(ptr %__subreq_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__subreq_desc) #12, !srcloc !203
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__subreq_desc) #12
  br label %cleanup31

if.end23:                                         ; preds = %entry
  br i1 %encrypt, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @artpec6_crypto_encrypt(ptr noundef %req)
  br label %cleanup31

cond.false27:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 @artpec6_crypto_decrypt(ptr noundef %req)
  br label %cleanup31

cleanup31:                                        ; preds = %cond.false27, %cond.true25, %cond.end, %do.end.cleanup31_crit_edge
  %retval.1 = phi i32 [ %cond, %cond.end ], [ %call.i, %do.end.cleanup31_crit_edge ], [ %call26, %cond.true25 ], [ %call28, %cond.false27 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @artpec6_crypto_aead_set_key(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge9
    i32 32, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge9, %entry.if.end_crit_edge10
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %key_length = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 56
  %1 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %key_length, align 4
  %2 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %key, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %decrypt = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %0 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %decrypt, align 4
  %common = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %1 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %gfp_flags.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 24
  %6 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %gfp_flags.i, align 4
  %dma_cache.i = getelementptr inbounds %struct.artpec6_crypto, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %dma_cache.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_cache.i, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef %cond.i) #12
  %dma.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 12
  %9 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2.i, ptr %dma.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %req.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %req.i, align 4
  %complete5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 20
  %11 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @artpec6_crypto_complete_aead, ptr %complete5.i, align 4
  %call2 = tail call fastcc i32 @artpec6_crypto_prepare_aead(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %common)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call fastcc i32 @artpec6_crypto_submit(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call9, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_crypto_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %decrypt = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %0 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %decrypt, align 4
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ult i32 %2, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %common = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %3 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  %gfp_flags.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 24
  %8 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %gfp_flags.i, align 4
  %dma_cache.i = getelementptr inbounds %struct.artpec6_crypto, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %dma_cache.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_cache.i, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef %cond.i) #12
  %dma.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 12
  %11 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.i, ptr %dma.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %req.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 16
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req, ptr %req.i, align 4
  %complete5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 20
  %13 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @artpec6_crypto_complete_aead, ptr %complete5.i, align 4
  %call4 = tail call fastcc i32 @artpec6_crypto_prepare_aead(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @artpec6_crypto_common_destroy(ptr noundef %common)
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @artpec6_crypto_submit(ptr noundef %common)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call11, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @artpec6_crypto_aead_init(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 80)
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %1 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %reqsize1.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_crypto_complete_aead(ptr noundef %req) #2 align 64 {
entry:
  %input_tag = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %decrypt = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %0 = ptrtoint ptr %decrypt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %decrypt, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then:                                          ; preds = %entry
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %input_tag) #12
  %4 = call ptr @memset(ptr %input_tag, i32 255, i32 16)
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 128
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 4
  %call4 = tail call i32 @sg_nents(ptr noundef %8) #12
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cryptlen, align 4
  %add = sub i32 %10, %6
  %sub = add i32 %add, %12
  %call5 = call i32 @sg_pcopy_to_buffer(ptr noundef %8, i32 noundef %call4, ptr noundef nonnull %input_tag, i32 noundef %6, i32 noundef %sub) #12
  %decryption_tag = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %call.i = call i32 @__crypto_memneq(ptr noundef %decryption_tag, ptr noundef nonnull %input_tag, i32 noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.then.if.end52_crit_edge, label %do.body

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_complete_aead, %if.then16)) #12
          to label %do.body17 [label %if.then16], !srcloc !195

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.72) #12
  br label %do.body17

do.body17:                                        ; preds = %if.then16, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_complete_aead, %if.then29)) #12
          to label %do.body34 [label %if.then29], !srcloc !195

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  call void @print_hex_dump(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i32 noundef 1, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %input_tag, i32 noundef %6, i1 noundef zeroext true) #12
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %do.body17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@artpec6_crypto_complete_aead, %if.then46)) #12
          to label %if.end52 [label %if.then46], !srcloc !195

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  call void @print_hex_dump(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 32, i32 noundef 1, ptr noundef %decryption_tag, i32 noundef %6, i1 noundef zeroext true) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %do.body34, %if.then.if.end52_crit_edge
  %result.0 = phi i32 [ 0, %if.then.if.end52_crit_edge ], [ -74, %if.then46 ], [ -74, %do.body34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %input_tag) #12
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %entry.if.end53_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end52 ], [ 0, %entry.if.end53_crit_edge ]
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %complete, align 4
  call void %14(ptr noundef %req, i32 noundef %result.1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @artpec6_crypto_prepare_aead(ptr noundef %areq) unnamed_addr #2 align 64 {
entry:
  %walk = alloca %struct.artpec6_crypto_walk, align 4
  %walk211 = alloca %struct.artpec6_crypto_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %common3 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 5
  %2 = load ptr, ptr @artpec6_crypto_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %variant5 = getelementptr inbounds %struct.artpec6_crypto, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %variant5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %variant5, align 4
  %dma1.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 12
  %7 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma1.i, align 4
  %out_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %out_cnt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out_cnt.i, align 4
  %in_cnt.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 9
  %10 = ptrtoint ptr %in_cnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %in_cnt.i, align 16
  %map_count.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %map_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %map_count.i, align 4
  %bounce_buffers.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %bounce_buffers.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %bounce_buffers.i, ptr %bounce_buffers.i, align 4
  %prev.i.i = getelementptr inbounds %struct.artpec6_crypto_dma_descriptors, ptr %8, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bounce_buffers.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %spec.select = select i1 %cmp, i32 655360, i32 3584
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 52
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %call36 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %14, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %if.end38, label %entry.cleanup285_crit_edge

entry.cleanup285_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end38:                                         ; preds = %entry
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %key_length = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 48
  %16 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_length, align 4
  %call39 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %__crt_ctx.i, i32 noundef %17, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup285_crit_edge

if.end38.cleanup285_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end42:                                         ; preds = %if.end38
  %cipher_md = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 3
  %18 = ptrtoint ptr %cipher_md to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cipher_md, align 32
  %19 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_length, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %20, label %if.end42.cleanup285_crit_edge [
    i32 16, label %if.end42.sw.epilog_crit_edge
    i32 24, label %sw.bb44
    i32 32, label %sw.bb45
  ]

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end42.cleanup285_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

sw.bb44:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb44, %if.end42.sw.epilog_crit_edge
  %md_cipher_len.0 = phi i32 [ 2, %sw.bb45 ], [ 1, %sw.bb44 ], [ 0, %if.end42.sw.epilog_crit_edge ]
  br i1 %cmp, label %do.end62, label %do.end107

do.end62:                                         ; preds = %sw.epilog
  %shl = shl nuw nsw i32 %md_cipher_len.0, 20
  %or86 = or i32 %shl, 262144
  %22 = ptrtoint ptr %cipher_md to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or86, ptr %cipher_md, align 32
  %decrypt = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 4
  %23 = ptrtoint ptr %decrypt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %decrypt, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool87.not = icmp eq i8 %24, 0
  br i1 %tobool87.not, label %do.end62.if.end143_crit_edge, label %if.then88

do.end62.if.end143_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then88:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  %or90 = or i32 %shl, 4456448
  br label %if.end143.sink.split

do.end107:                                        ; preds = %sw.epilog
  %shl133 = shl nuw nsw i32 %md_cipher_len.0, 12
  %or136 = or i32 %shl133, 1024
  %25 = ptrtoint ptr %cipher_md to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or136, ptr %cipher_md, align 32
  %decrypt137 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 4
  %26 = ptrtoint ptr %decrypt137 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %decrypt137, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool138.not = icmp eq i8 %27, 0
  br i1 %tobool138.not, label %do.end107.if.end143_crit_edge, label %if.then139

do.end107.if.end143_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then139:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  %or141 = or i32 %shl133, 17408
  br label %if.end143.sink.split

if.end143.sink.split:                             ; preds = %if.then139, %if.then88
  %or141.sink = phi i32 [ %or141, %if.then139 ], [ %or90, %if.then88 ]
  %28 = ptrtoint ptr %cipher_md to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or141.sink, ptr %cipher_md, align 32
  br label %if.end143

if.end143:                                        ; preds = %if.end143.sink.split, %do.end107.if.end143_crit_edge, %do.end62.if.end143_crit_edge
  %call145 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %cipher_md, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end143.cleanup285_crit_edge

if.end143.cleanup285_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end148:                                        ; preds = %if.end143
  %pad_buffer = getelementptr inbounds %struct.artpec6_crypto, ptr %4, i32 0, i32 9
  %29 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad_buffer, align 4
  %call149 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common3, ptr noundef %30, i32 noundef 4, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end148.cleanup285_crit_edge

if.end148.cleanup285_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end152:                                        ; preds = %if.end148
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 2
  %31 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cryptlen, align 4
  %decrypt153 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 4
  %33 = ptrtoint ptr %decrypt153 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %decrypt153, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool154.not = icmp eq i8 %34, 0
  br i1 %tobool154.not, label %if.end152.if.end157_crit_edge, label %if.then155

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 128
  %sub = sub i32 %32, %36
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end152.if.end157_crit_edge
  %input_length.0 = phi i32 [ %sub, %if.then155 ], [ %32, %if.end152.if.end157_crit_edge ]
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 1
  %37 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen, align 8
  %mul = shl i32 %38, 3
  %conv = zext i32 %mul to i64
  %39 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv, ptr %__ctx.i, align 128
  %mul158 = shl i32 %input_length.0, 3
  %conv159 = zext i32 %mul158 to i64
  %text_length_bits = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %text_length_bits to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv159, ptr %text_length_bits, align 8
  %J0 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 3
  %iv = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 3
  %41 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv, align 32
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %43 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %44, i32 -104
  %45 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ivsize.i.i, align 8
  %47 = call ptr @memcpy(ptr %J0, ptr %42, i32 %46)
  %add.ptr = getelementptr %struct.aead_request, ptr %areq, i32 1, i32 2
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 1, ptr %add.ptr, align 1
  %call168 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %__ctx.i, i32 noundef 32, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end157.cleanup285_crit_edge

if.end157.cleanup285_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end171:                                        ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk) #12
  %49 = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk, i32 0, i32 1
  %src = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %50 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src, align 4
  %52 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %walk, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %49, align 4
  %54 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %assoclen, align 8
  %call173 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_out(ptr noundef %common3, ptr noundef nonnull %walk, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end171.cleanup208.thread_crit_edge

if.end171.cleanup208.thread_crit_edge:            ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208.thread

if.end176:                                        ; preds = %if.end171
  %56 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %assoclen, align 8
  %and178 = and i32 %57, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %cmp179 = icmp eq i32 %and178, 0
  br i1 %cmp179, label %if.end176.if.end188_crit_edge, label %if.then181

if.end176.if.end188_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then181:                                       ; preds = %if.end176
  %sub183 = sub nuw nsw i32 16, %and178
  %zero_buffer = getelementptr inbounds %struct.artpec6_crypto, ptr %4, i32 0, i32 10
  %58 = ptrtoint ptr %zero_buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %zero_buffer, align 4
  %call184 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %59, i32 noundef %sub183, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then181.if.end188_crit_edge, label %if.then181.cleanup208.thread_crit_edge

if.then181.cleanup208.thread_crit_edge:           ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208.thread

if.then181.if.end188_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.end188:                                        ; preds = %if.then181.if.end188_crit_edge, %if.end176.if.end188_crit_edge
  %call189 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_out(ptr noundef %common3, ptr noundef nonnull %walk, i32 noundef %input_length.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.end188.cleanup208.thread_crit_edge

if.end188.cleanup208.thread_crit_edge:            ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208.thread

if.end192:                                        ; preds = %if.end188
  %and193 = and i32 %input_length.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %cmp194 = icmp eq i32 %and193, 0
  br i1 %cmp194, label %if.end192.cleanup.cont210_crit_edge, label %if.then196

if.end192.cleanup.cont210_crit_edge:              ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont210

if.then196:                                       ; preds = %if.end192
  %sub198 = sub nuw nsw i32 16, %and193
  %zero_buffer199 = getelementptr inbounds %struct.artpec6_crypto, ptr %4, i32 0, i32 10
  %60 = ptrtoint ptr %zero_buffer199 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %zero_buffer199, align 4
  %call200 = tail call fastcc i32 @artpec6_crypto_setup_out_descr(ptr noundef %common3, ptr noundef %61, i32 noundef %sub198, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then196.cleanup.cont210_crit_edge, label %if.then196.cleanup208.thread_crit_edge

if.then196.cleanup208.thread_crit_edge:           ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208.thread

if.then196.cleanup.cont210_crit_edge:             ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont210

cleanup208.thread:                                ; preds = %if.then196.cleanup208.thread_crit_edge, %if.end188.cleanup208.thread_crit_edge, %if.then181.cleanup208.thread_crit_edge, %if.end171.cleanup208.thread_crit_edge
  %retval.4.ph = phi i32 [ %call189, %if.end188.cleanup208.thread_crit_edge ], [ %call173, %if.end171.cleanup208.thread_crit_edge ], [ %call184, %if.then181.cleanup208.thread_crit_edge ], [ %call200, %if.then196.cleanup208.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk) #12
  br label %cleanup285

cleanup.cont210:                                  ; preds = %if.then196.cleanup.cont210_crit_edge, %if.end192.cleanup.cont210_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk211) #12
  %62 = getelementptr inbounds %struct.artpec6_crypto_walk, ptr %walk211, i32 0, i32 1
  %63 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cryptlen, align 4
  %65 = ptrtoint ptr %decrypt153 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %decrypt153, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool214.not = icmp eq i8 %66, 0
  br i1 %tobool214.not, label %cleanup.cont210.if.end218_crit_edge, label %if.then215

cleanup.cont210.if.end218_crit_edge:              ; preds = %cleanup.cont210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then215:                                       ; preds = %cleanup.cont210
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i, align 128
  %sub217 = sub i32 %64, %68
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %cleanup.cont210.if.end218_crit_edge
  %output_len.0 = phi i32 [ %sub217, %if.then215 ], [ %64, %cleanup.cont210.if.end218_crit_edge ]
  %dst = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 5
  %69 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dst, align 8
  %71 = ptrtoint ptr %walk211 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %walk211, align 4
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %62, align 4
  %73 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %assoclen, align 8
  %call220 = call fastcc i32 @artpec6_crypto_walk_advance(ptr noundef nonnull %walk211, i32 noundef %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end223, label %if.end218.cleanup272.thread_crit_edge

if.end218.cleanup272.thread_crit_edge:            ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.end223:                                        ; preds = %if.end218
  %call224 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_in(ptr noundef %common3, ptr noundef nonnull %walk211, i32 noundef %output_len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end227, label %if.end223.cleanup272.thread_crit_edge

if.end223.cleanup272.thread_crit_edge:            ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.end227:                                        ; preds = %if.end223
  %and228 = and i32 %output_len.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %cmp229 = icmp eq i32 %and228, 0
  br i1 %cmp229, label %if.end227.if.end243_crit_edge, label %if.then231

if.end227.if.end243_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then231:                                       ; preds = %if.end227
  %sub234 = sub nuw nsw i32 16, %and228
  %75 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pad_buffer, align 4
  %call236 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common3, ptr noundef %76, i32 noundef %sub234, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.then231.if.end243_crit_edge, label %if.then231.cleanup272.thread_crit_edge

if.then231.cleanup272.thread_crit_edge:           ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.then231.if.end243_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.end243:                                        ; preds = %if.then231.if.end243_crit_edge, %if.end227.if.end243_crit_edge
  %77 = ptrtoint ptr %decrypt153 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %decrypt153, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool245.not = icmp eq i8 %78, 0
  br i1 %tobool245.not, label %if.else252, label %if.then246

if.then246:                                       ; preds = %if.end243
  %decryption_tag = getelementptr inbounds %struct.aead_request, ptr %areq, i32 2
  %call248 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common3, ptr noundef %decryption_tag, i32 noundef 16, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.then246.cleanup.cont275_crit_edge, label %if.then246.cleanup272.thread_crit_edge

if.then246.cleanup272.thread_crit_edge:           ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.then246.cleanup.cont275_crit_edge:             ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont275

if.else252:                                       ; preds = %if.end243
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i, align 128
  %call254 = call fastcc i32 @artpec6_crypto_setup_sg_descrs_in(ptr noundef %common3, ptr noundef nonnull %walk211, i32 noundef %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.end257, label %if.else252.cleanup272.thread_crit_edge

if.else252.cleanup272.thread_crit_edge:           ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.end257:                                        ; preds = %if.else252
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %80)
  %cmp258 = icmp ult i32 %80, 16
  br i1 %cmp258, label %if.then260, label %if.end257.cleanup.cont275_crit_edge

if.end257.cleanup.cont275_crit_edge:              ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont275

if.then260:                                       ; preds = %if.end257
  %sub261 = sub nuw nsw i32 16, %80
  %81 = ptrtoint ptr %pad_buffer to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pad_buffer, align 4
  %call263 = tail call fastcc i32 @artpec6_crypto_setup_in_descr(ptr noundef %common3, ptr noundef %82, i32 noundef %sub261, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.then260.cleanup.cont275_crit_edge, label %if.then260.cleanup272.thread_crit_edge

if.then260.cleanup272.thread_crit_edge:           ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup272.thread

if.then260.cleanup.cont275_crit_edge:             ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont275

cleanup272.thread:                                ; preds = %if.then260.cleanup272.thread_crit_edge, %if.else252.cleanup272.thread_crit_edge, %if.then246.cleanup272.thread_crit_edge, %if.then231.cleanup272.thread_crit_edge, %if.end223.cleanup272.thread_crit_edge, %if.end218.cleanup272.thread_crit_edge
  %retval.9.ph = phi i32 [ %call248, %if.then246.cleanup272.thread_crit_edge ], [ %call224, %if.end223.cleanup272.thread_crit_edge ], [ -22, %if.end218.cleanup272.thread_crit_edge ], [ %call236, %if.then231.cleanup272.thread_crit_edge ], [ %call263, %if.then260.cleanup272.thread_crit_edge ], [ %call254, %if.else252.cleanup272.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk211) #12
  br label %cleanup285

cleanup.cont275:                                  ; preds = %if.then260.cleanup.cont275_crit_edge, %if.end257.cleanup.cont275_crit_edge, %if.then246.cleanup.cont275_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk211) #12
  %call276 = tail call fastcc i32 @artpec6_crypto_terminate_in_descrs(ptr noundef %common3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end279, label %cleanup.cont275.cleanup285_crit_edge

cleanup.cont275.cleanup285_crit_edge:             ; preds = %cleanup.cont275
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end279:                                        ; preds = %cleanup.cont275
  %call280 = tail call fastcc i32 @artpec6_crypto_terminate_out_descrs(ptr noundef %common3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %if.end283, label %if.end279.cleanup285_crit_edge

if.end279.cleanup285_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup285

if.end283:                                        ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  %call284 = tail call fastcc i32 @artpec6_crypto_dma_map_descs(ptr noundef %common3)
  br label %cleanup285

cleanup285:                                       ; preds = %if.end283, %if.end279.cleanup285_crit_edge, %cleanup.cont275.cleanup285_crit_edge, %cleanup272.thread, %cleanup208.thread, %if.end157.cleanup285_crit_edge, %if.end148.cleanup285_crit_edge, %if.end143.cleanup285_crit_edge, %if.end42.cleanup285_crit_edge, %if.end38.cleanup285_crit_edge, %entry.cleanup285_crit_edge
  %retval.10 = phi i32 [ %call284, %if.end283 ], [ %call36, %entry.cleanup285_crit_edge ], [ %call39, %if.end38.cleanup285_crit_edge ], [ -22, %if.end42.cleanup285_crit_edge ], [ %call145, %if.end143.cleanup285_crit_edge ], [ %call149, %if.end148.cleanup285_crit_edge ], [ %call168, %if.end157.cleanup285_crit_edge ], [ %call276, %cleanup.cont275.cleanup285_crit_edge ], [ %call280, %if.end279.cleanup285_crit_edge ], [ %retval.4.ph, %cleanup208.thread ], [ %retval.9.ph, %cleanup272.thread ]
  ret i32 %retval.10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_artpec6_crypto__449_2992_artpec6_crypto_driver_init6, !1, !"__initcall__kmod_artpec6_crypto__449_2992_artpec6_crypto_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2992, i32 1}
!2 = !{ptr @__exitcall_artpec6_crypto_driver_exit, !1, !"__exitcall_artpec6_crypto_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author450, !4, !"__UNIQUE_ID_author450", i1 false, i1 false}
!4 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2994, i32 1}
!5 = !{ptr @__UNIQUE_ID_description451, !6, !"__UNIQUE_ID_description451", i1 false, i1 false}
!6 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2995, i32 1}
!7 = !{ptr @__UNIQUE_ID_file452, !8, !"__UNIQUE_ID_file452", i1 false, i1 false}
!8 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2996, i32 1}
!9 = !{ptr @__UNIQUE_ID_license453, !8, !"__UNIQUE_ID_license453", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2987, i32 12}
!12 = !{ptr @artpec6_crypto_driver, !13, !"artpec6_crypto_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2983, i32 31}
!14 = !{ptr @artpec6_crypto_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2884, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @artpec6_crypto_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2887, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2891, i32 36}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2931, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @artpec6_crypto_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @artpec6_crypto_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2937, i32 3}
!32 = !{ptr @artpec6_crypto_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @artpec6_crypto_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2943, i32 3}
!36 = !{ptr @artpec6_crypto_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @artpec6_crypto_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @artpec6_crypto_dev, !39, !"artpec6_crypto_dev", i1 false, i1 false}
!39 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 348, i32 23}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2073, i32 2}
!42 = !{ptr @artpec6_crypto_timeout._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @__func__.artpec6_crypto_timeout, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @artpec6_crypto_timeout._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @artpec6_crypto_timeout._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2824, i32 34}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2827, i32 28}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2830, i32 28}
!54 = !{ptr @dbgfs_root, !55, !"dbgfs_root", i1 false, i1 false}
!55 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2820, i32 23}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 351, i32 8}
!58 = !{ptr @artpec6_crypto_fail_status_read, !57, !"artpec6_crypto_fail_status_read", i1 false, i1 false}
!59 = !{ptr @artpec6_crypto_fail_dma_array_full, !60, !"artpec6_crypto_fail_dma_array_full", i1 false, i1 false}
!60 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 352, i32 8}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2090, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug384, !62, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!65 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2112, i32 3}
!68 = !{ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug385, !67, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!69 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2122, i32 3}
!72 = !{ptr @artpec6_crypto_task.__UNIQUE_ID_ddebug386, !71, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!73 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 436, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @artpec6_crypto_copy_bounce_buffers.__UNIQUE_ID_ddebug249, !75, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!78 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hash_algos, !80, !"hash_algos", i1 false, i1 false}
!80 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2619, i32 25}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2279, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @artpec6_crypto_init_hash._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @artpec6_crypto_init_hash._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 586, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @artpec6_crypto_setup_out_descr_short._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @artpec6_crypto_setup_out_descr_short._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 553, i32 3}
!94 = !{ptr @artpec6_crypto_setup_out_descr_phys._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @artpec6_crypto_setup_out_descr_phys._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 745, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @artpec6_crypto_setup_in_descr_phys._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @artpec6_crypto_setup_in_descr_phys._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 898, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @artpec6_crypto_setup_sg_descrs_out.__UNIQUE_ID_ddebug290, !102, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!105 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 937, i32 3}
!108 = !{ptr @artpec6_crypto_setup_sg_descrs_out._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @artpec6_crypto_setup_sg_descrs_out._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 982, i32 3}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @artpec6_crypto_terminate_in_descrs._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @artpec6_crypto_terminate_in_descrs._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 958, i32 3}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @artpec6_crypto_terminate_out_descrs._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @artpec6_crypto_terminate_out_descrs._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2233, i32 3}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @artpec6_crypto_hash_set_key._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @artpec6_crypto_hash_set_key._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2419, i32 47}
!129 = !{ptr @crypto_algos, !130, !"crypto_algos", i1 false, i1 false}
!130 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2696, i32 28}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 1715, i32 3}
!133 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @artpec6_crypto_prepare_crypto._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @artpec6_crypto_prepare_crypto._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 1747, i32 3}
!138 = !{ptr @artpec6_crypto_prepare_crypto._entry.56, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @artpec6_crypto_prepare_crypto._entry_ptr.58, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 845, i32 4}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug285, !141, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!144 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug286, !146, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!146 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 848, i32 4}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 855, i32 4}
!149 = !{ptr @artpec6_crypto_setup_sg_descrs_in.__UNIQUE_ID_ddebug287, !148, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!150 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @artpec6_crypto_setup_sg_descrs_in._entry, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 880, i32 3}
!153 = !{ptr @artpec6_crypto_setup_sg_descrs_in._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 817, i32 2}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @setup_bounce_buffer_in.__UNIQUE_ID_ddebug280, !155, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!158 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 1196, i32 3}
!161 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @artpec6_crypto_ctr_crypt.__UNIQUE_ID_ddebug293, !160, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!163 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @aead_algos, !165, !"aead_algos", i1 false, i1 false}
!165 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2787, i32 24}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2203, i32 4}
!168 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug387, !167, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!170 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2204, i32 4}
!173 = !{ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug388, !172, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!174 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2206, i32 4}
!177 = !{ptr @artpec6_crypto_complete_aead.__UNIQUE_ID_ddebug389, !176, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 1917, i32 47}
!180 = !{ptr @artpec6_crypto_of_match, !181, !"artpec6_crypto_of_match", i1 false, i1 false}
!181 = !{!"../drivers/crypto/axis/artpec6_crypto.c", i32 2842, i32 34}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 2148285302, i64 2148285328, i64 2148285357, i64 2148285391, i64 2148285422, i64 2148285445}
!192 = !{i64 2154263286}
!193 = !{i64 2154263928}
!194 = !{i64 6441028}
!195 = !{i64 2148828287, i64 2148828292, i64 2148828305, i64 2148828349, i64 2148828383, i64 2148828404}
!196 = !{i64 6441446}
!197 = !{i64 2154692021}
!198 = !{!"auto-init"}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2154002712, i64 2154003204, i64 2154002749, i64 2154002805, i64 2154002839, i64 2154002863, i64 2154002904, i64 2154002925, i64 2154002953, i64 2154002987}
!202 = !{i8 0, i8 2}
!203 = !{i64 2149313289}
