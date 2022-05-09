; ModuleID = '/llk/IR_all_yes/drivers/crypto/s5p-sss.c_pt.bc'
source_filename = "../drivers/crypto/s5p-sss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.samsung_aes_variant = type { i32, i32, [2 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.s5p_aes_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tasklet_struct, %struct.crypto_queue, i8, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, %struct.crypto_queue, %struct.tasklet_struct, [64 x i8], ptr, ptr, i32, i8 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.s5p_aes_ctx = type { ptr, [32 x i8], [4 x i8], i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.scatter_walk = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.s5p_hash_reqctx = type { ptr, i8, i64, [32 x i8], i32, i32, ptr, i32, [2 x %struct.scatterlist], i32, i32, i8, i8, i32, [0 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }

@__initcall__kmod_s5p_sss__256_2357_s5p_aes_crypto_init6 = internal global ptr @s5p_aes_crypto_init, section ".initcall6.init", align 4
@s5p_aes_crypto = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5p_aes_probe, ptr @s5p_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5p_sss_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5p_aes_crypto_exit = internal global ptr @s5p_aes_crypto_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description257 = internal constant [57 x i8] c"s5p_sss.description=S5PV210 AES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [36 x i8] c"s5p_sss.file=drivers/crypto/s5p-sss\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [23 x i8] c"s5p_sss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [57 x i8] c"s5p_sss.author=Vladimir Zapolskiy <vzapolskiy@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [65 x i8] c"s5p_sss.author=Kamil Konieczny <k.konieczny@partner.samsung.com>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s5p-secss\00", [22 x i8] zeroinitializer }, align 32
@s5p_sss_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-secss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_aes_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-secss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_aes_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-slim-sss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_slim_aes_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@s5p_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find secss clock %s\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enabling clock %s failed, err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_aes_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/crypto/s5p-sss.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr = internal global ptr @s5p_aes_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find clock %s\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.9 = internal global ptr @s5p_aes_probe._entry.8, section ".printk_index", align 4
@s5p_aes_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pdata->lock\00", [19 x i8] zeroinitializer }, align 32
@s5p_aes_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->hash_lock\00", [46 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 2244, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"feed control interrupt is not available.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.16 = internal global ptr @s5p_aes_probe._entry.13, section ".printk_index", align 4
@s5p_aes_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 2251, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.18 = internal global ptr @s5p_aes_probe._entry.17, section ".printk_index", align 4
@algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_ecb_encrypt, ptr @s5p_aes_ecb_decrypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_cbc_encrypt, ptr @s5p_aes_cbc_decrypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_ctr_crypt, ptr @s5p_aes_ctr_crypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@algs_sha1_md5_sha256 = internal global [3 x %struct.ahash_alg] [%struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 184, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 184, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 184, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }], align 128
@s5p_aes_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 2282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't register '%s': %d\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.21 = internal global ptr @s5p_aes_probe._entry.19, section ".printk_index", align 4
@s5p_aes_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 2288, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5p-sss driver registered\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.25 = internal global ptr @s5p_aes_probe._entry.22, section ".printk_index", align 4
@s5p_aes_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 2302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@s5p_aes_probe._entry_ptr.27 = internal global ptr @s5p_aes_probe._entry.26, section ".printk_index", align 4
@s5p_sg_done.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p_sss\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5p_sg_done\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Copying %d bytes of output data back to original place\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_set_indata_start.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_set_indata_start\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"At least one unaligned source scatter list, making a copy\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@s5p_set_outdata_start.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_set_outdata_start\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"At least one unaligned dest scatter list, making a copy\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_aes_crypt.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 1, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_aes_crypt\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"request size is not exact amount of AES blocks\0A\00", [48 x i8] zeroinitializer }, align 32
@s5p_hash_handle_queue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_hash_handle_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"handling new req, op_update: %u, nbytes: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@s5p_hash_copy_sgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1034, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"alloc pages for unaligned case.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_hash_copy_sgs\00", [46 x i8] zeroinitializer }, align 32
@s5p_hash_copy_sgs._entry_ptr = internal global ptr @s5p_hash_copy_sgs._entry, section ".printk_index", align 4
@s5p_hash_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 990, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_map_sg error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5p_hash_xmit_dma\00", [46 x i8] zeroinitializer }, align 32
@s5p_hash_xmit_dma._entry_ptr = internal global ptr @s5p_hash_xmit_dma._entry, section ".printk_index", align 4
@s5p_hash_finish.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5p_hash_finish\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hash_finish digcnt: %lld\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_hash_init.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_hash_init\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init: digest size: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_hash_cra_init_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fallback alloc fails for '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5p_hash_cra_init_alg\00", [42 x i8] zeroinitializer }, align 32
@s5p_hash_cra_init_alg._entry_ptr = internal global ptr @s5p_hash_cra_init_alg._entry, section ".printk_index", align 4
@s5p_aes_data = internal constant { %struct.samsung_aes_variant, [16 x i8] } { %struct.samsung_aes_variant { i32 16384, i32 24576, [2 x ptr] [ptr @.str.49, ptr null] }, [16 x i8] zeroinitializer }, align 32
@exynos_aes_data = internal constant { %struct.samsung_aes_variant, [16 x i8] } { %struct.samsung_aes_variant { i32 512, i32 1024, [2 x ptr] [ptr @.str.49, ptr null] }, [16 x i8] zeroinitializer }, align 32
@exynos5433_slim_aes_data = internal constant { %struct.samsung_aes_variant, [16 x i8] } { %struct.samsung_aes_variant { i32 1024, i32 2048, [2 x ptr] [ptr @.str.50, ptr @.str.51] }, [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"secss\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 32]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 32]
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"s5p_aes_crypto\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2348, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2352, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"s5p_sss_dt_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 408, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"s5p_dev\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 435, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2206, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2211, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2220, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2227, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2235, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2236, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2244, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2251, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2281, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2288, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2301, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 484, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1853, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1880, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2036, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1410, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1034, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 990, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1318, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1610, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1659, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"s5p_aes_data\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 390, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"exynos_aes_data\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 396, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant [25 x i8] c"exynos5433_slim_aes_data\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 402, i32 41 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 393, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 405, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [28 x i8] c"../drivers/crypto/s5p-sss.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 405, i32 25 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_s5p_aes_crypto_exit, ptr @__initcall__kmod_s5p_sss__256_2357_s5p_aes_crypto_init6, ptr @s5p_aes_crypto_exit, ptr @s5p_aes_probe._entry, ptr @s5p_aes_probe._entry.13, ptr @s5p_aes_probe._entry.17, ptr @s5p_aes_probe._entry.19, ptr @s5p_aes_probe._entry.22, ptr @s5p_aes_probe._entry.26, ptr @s5p_aes_probe._entry.8, ptr @s5p_aes_probe._entry_ptr, ptr @s5p_aes_probe._entry_ptr.16, ptr @s5p_aes_probe._entry_ptr.18, ptr @s5p_aes_probe._entry_ptr.21, ptr @s5p_aes_probe._entry_ptr.25, ptr @s5p_aes_probe._entry_ptr.27, ptr @s5p_aes_probe._entry_ptr.9, ptr @s5p_hash_copy_sgs._entry, ptr @s5p_hash_copy_sgs._entry_ptr, ptr @s5p_hash_cra_init_alg._entry, ptr @s5p_hash_cra_init_alg._entry_ptr, ptr @s5p_hash_xmit_dma._entry, ptr @s5p_hash_xmit_dma._entry_ptr, ptr @s5p_aes_crypto, ptr @.str, ptr @s5p_sss_dt_match, ptr @s5p_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @s5p_aes_probe.__key, ptr @.str.10, ptr @s5p_aes_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @s5p_aes_data, ptr @exynos_aes_data, ptr @exynos5433_slim_aes_data, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_crypto to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_sss_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_hash_copy_sgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_hash_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_hash_cra_init_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_aes_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_aes_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_slim_aes_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_crypto_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_aes_crypto, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5p_aes_crypto_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_aes_crypto) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr @s5p_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup159_crit_edge

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup159_crit_edge, label %if.end4

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

if.end4:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i268 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  br label %find_s5p_sss_version.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data.i, align 4
  %7 = inttoptr i32 %6 to ptr
  br label %find_s5p_sss_version.exit

find_s5p_sss_version.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i268, %if.then.i ], [ %7, %if.end.i ]
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %find_s5p_sss_version.exit.cleanup159_crit_edge, label %if.end9

find_s5p_sss_version.exit.cleanup159_crit_edge:   ; preds = %find_s5p_sss_version.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

if.end9:                                          ; preds = %find_s5p_sss_version.exit
  %res10 = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %res10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %res10, align 4
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call6) #12
  %ioaddr = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %ioaddr, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then14:                                        ; preds = %if.end9
  %use_hash = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 26
  %10 = ptrtoint ptr %use_hash to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_hash, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call11 to i32
  br label %cleanup159

if.end19:                                         ; preds = %if.then14
  %end = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  %sub = add i32 %14, -768
  store i32 %sub, ptr %end, align 4
  %15 = ptrtoint ptr %use_hash to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %use_hash, align 4
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call6) #12
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %ioaddr, align 4
  %cmp.i269 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then25, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call21 to i32
  br label %cleanup159

if.end29:                                         ; preds = %if.end19.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %clk_names = getelementptr inbounds %struct.samsung_aes_variant, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_names, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %19) #12
  %clk = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call30, ptr %clk, align 4
  %cmp.i270 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call30 to i32
  %22 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_names, align 4
  %call38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.1, ptr noundef %23) #12
  br label %cleanup159

if.end39:                                         ; preds = %if.end29
  %call.i271 = tail call i32 @clk_prepare(ptr noundef %call30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool.not.i272 = icmp eq i32 %call.i271, 0
  br i1 %tobool.not.i272, label %if.end.i273, label %if.end39.clk_prepare_enable.exit_crit_edge

if.end39.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i273:                                      ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i273.if.end45_crit_edge, label %if.then3.i

if.end.i273.if.end45_crit_edge:                   ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then3.i:                                       ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %call30) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end39.clk_prepare_enable.exit_crit_edge
  %retval.0.i274 = phi i32 [ %call.i271, %if.end39.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i274)
  %cmp = icmp slt i32 %retval.0.i274, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end45_crit_edge

clk_prepare_enable.exit.if.end45_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_names, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %25, i32 noundef %retval.0.i274) #15
  br label %cleanup159

if.end45:                                         ; preds = %clk_prepare_enable.exit.if.end45_crit_edge, %if.end.i273.if.end45_crit_edge
  %arrayidx47 = getelementptr %struct.samsung_aes_variant, ptr %retval.0.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end45
  %call52 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %27) #12
  %pclk = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call52, ptr %pclk, align 4
  %cmp.i275 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %call52 to i32
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx47, align 4
  %call60 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %29, ptr noundef nonnull @.str.7, ptr noundef %31) #12
  br label %err_clk

if.end61:                                         ; preds = %if.then49
  %call63 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end61.do.body74_crit_edge

if.end61.do.body74_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %clk_names to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_names, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %33, i32 noundef %call63) #15
  br label %err_clk

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %pclk72 = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %pclk72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pclk72, align 4
  br label %do.body74

do.body74:                                        ; preds = %if.else, %if.end61.do.body74_crit_edge
  %lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @s5p_aes_probe.__key, i16 noundef signext 3) #12
  %hash_lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %hash_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @s5p_aes_probe.__key.11, i16 noundef signext 3) #12
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 4
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %38
  %aes_ioaddr = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %aes_ioaddr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr, ptr %aes_ioaddr, align 4
  %hash_offset = getelementptr inbounds %struct.samsung_aes_variant, ptr %retval.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %hash_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash_offset, align 4
  %add.ptr84 = getelementptr i8, ptr %36, i32 %41
  %io_hash_base = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 17
  %42 = ptrtoint ptr %io_hash_base to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr84, ptr %io_hash_base, align 4
  %call85 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq_fc = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %irq_fc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call85, ptr %irq_fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp87 = icmp slt i32 %call85, 0
  br i1 %cmp87, label %if.then88, label %if.end93

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14) #15
  br label %err_irq

if.end93:                                         ; preds = %do.body74
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  %call95 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call85, ptr noundef null, ptr noundef nonnull @s5p_aes_interrupt, i32 noundef 8192, ptr noundef %45, ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end101

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14) #15
  br label %err_irq

if.end101:                                        ; preds = %if.end93
  %busy = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 14
  %46 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %busy, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr @s5p_dev, align 4
  %tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 12
  %49 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @s5p_tasklet_cb, i32 noundef %49) #12
  %queue = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 13
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 1) #12
  %call105 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @algs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %for.inc, label %if.end148

for.inc:                                          ; preds = %if.end101
  %call105.1 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.1)
  %tobool106.not.1 = icmp eq i32 %call105.1, 0
  br i1 %tobool106.not.1, label %for.inc.1, label %for.inc.if.end148.thread310_crit_edge

for.inc.if.end148.thread310_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.thread310

for.inc.1:                                        ; preds = %for.inc
  %call105.2 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.2)
  %tobool106.not.2 = icmp eq i32 %call105.2, 0
  br i1 %tobool106.not.2, label %for.inc.2, label %for.inc.1.if.end148.thread310_crit_edge

for.inc.1.if.end148.thread310_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.thread310

for.inc.2:                                        ; preds = %for.inc.1
  %use_hash109 = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 26
  %50 = ptrtoint ptr %use_hash109 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %use_hash109, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool110.not = icmp eq i8 %51, 0
  br i1 %tobool110.not, label %for.inc.2.do.end129_crit_edge, label %if.then111

for.inc.2.do.end129_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

if.then111:                                       ; preds = %for.inc.2
  %hash_tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 21
  tail call void @tasklet_init(ptr noundef %hash_tasklet, ptr noundef nonnull @s5p_hash_tasklet_cb, i32 noundef %49) #12
  %hash_queue = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 20
  tail call void @crypto_init_queue(ptr noundef %hash_queue, i32 noundef 10) #12
  %call116 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @algs_sha1_md5_sha256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %for.inc123, label %cleanup

cleanup:                                          ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 0, i32 11, i32 3, i32 9), i32 noundef %call116) #15
  br label %if.end148.thread

for.body133.preheader:                            ; preds = %for.inc123.1.for.body133.preheader_crit_edge, %for.inc123.for.body133.preheader_crit_edge
  %hash_i.0288.lcssa.ph = phi i32 [ 2, %for.inc123.1.for.body133.preheader_crit_edge ], [ 1, %for.inc123.for.body133.preheader_crit_edge ]
  %call116.lcssa.ph = phi i32 [ %call116.2, %for.inc123.1.for.body133.preheader_crit_edge ], [ %call116.1, %for.inc123.for.body133.preheader_crit_edge ]
  %cra_driver_name300 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %hash_i.0288.lcssa.ph, i32 11, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %cra_driver_name300, i32 noundef %call116.lcssa.ph) #15
  %j.0291 = add nsw i32 %hash_i.0288.lcssa.ph, -1
  %arrayidx134 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %j.0291
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx134) #12
  br i1 %tobool117.not.1, label %for.body133.1, label %for.body133.preheader.if.end148.thread_crit_edge

for.body133.preheader.if.end148.thread_crit_edge: ; preds = %for.body133.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.thread

for.inc123:                                       ; preds = %if.then111
  %call116.1 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.1)
  %tobool117.not.1 = icmp eq i32 %call116.1, 0
  br i1 %tobool117.not.1, label %for.inc123.1, label %for.inc123.for.body133.preheader_crit_edge

for.inc123.for.body133.preheader_crit_edge:       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body133.preheader

for.inc123.1:                                     ; preds = %for.inc123
  %call116.2 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 2)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.2)
  %tobool117.not.2 = icmp eq i32 %call116.2, 0
  br i1 %tobool117.not.2, label %for.inc123.1.do.end129_crit_edge, label %for.inc123.1.for.body133.preheader_crit_edge

for.inc123.1.for.body133.preheader_crit_edge:     ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body133.preheader

for.inc123.1.do.end129_crit_edge:                 ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

do.end129:                                        ; preds = %for.inc123.1.do.end129_crit_edge, %for.inc.2.do.end129_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #15
  br label %cleanup159

for.body133.1:                                    ; preds = %for.body133.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %j.0291.1 = add nsw i32 %hash_i.0288.lcssa.ph, -2
  %arrayidx134.1 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %j.0291.1
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx134.1) #12
  br label %if.end148.thread

if.end148.thread:                                 ; preds = %for.body133.1, %for.body133.preheader.if.end148.thread_crit_edge, %cleanup
  %call116.lcssa302 = phi i32 [ %call116, %cleanup ], [ %call116.lcssa.ph, %for.body133.1 ], [ %call116.lcssa.ph, %for.body133.preheader.if.end148.thread_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %hash_tasklet) #12
  %end138 = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %52 = ptrtoint ptr %end138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end138, align 4
  %sub139 = add i32 %53, -768
  store i32 %sub139, ptr %end138, align 4
  br label %for.body151

if.end148.thread310:                              ; preds = %for.inc.1.if.end148.thread310_crit_edge, %for.inc.if.end148.thread310_crit_edge
  %i.0287.lcssa.ph = phi i32 [ 2, %for.inc.1.if.end148.thread310_crit_edge ], [ 1, %for.inc.if.end148.thread310_crit_edge ]
  %call105.lcssa.ph = phi i32 [ %call105.2, %for.inc.1.if.end148.thread310_crit_edge ], [ %call105.1, %for.inc.if.end148.thread310_crit_edge ]
  %cra_name313 = getelementptr [3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 %i.0287.lcssa.ph, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %cra_name313, i32 noundef %call105.lcssa.ph) #15
  br label %for.body151

if.end148:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 0, i32 11, i32 8), i32 noundef %call105) #15
  br label %for.end155

for.body151:                                      ; preds = %if.end148.thread310, %if.end148.thread
  %err.0281308 = phi i32 [ %call116.lcssa302, %if.end148.thread ], [ %call105.lcssa.ph, %if.end148.thread310 ]
  %i.0285307 = phi i32 [ 3, %if.end148.thread ], [ %i.0287.lcssa.ph, %if.end148.thread310 ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @algs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0285307)
  %exitcond.not = icmp eq i32 %i.0285307, 1
  br i1 %exitcond.not, label %for.body151.for.end155_crit_edge, label %for.body151.1

for.body151.for.end155_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end155

for.body151.1:                                    ; preds = %for.body151
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0285307)
  %exitcond.not.1 = icmp eq i32 %i.0285307, 2
  br i1 %exitcond.not.1, label %for.body151.1.for.end155_crit_edge, label %for.body151.2

for.body151.1.for.end155_crit_edge:               ; preds = %for.body151.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end155

for.body151.2:                                    ; preds = %for.body151.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #12
  br label %for.end155

for.end155:                                       ; preds = %for.body151.2, %for.body151.1.for.end155_crit_edge, %for.body151.for.end155_crit_edge, %if.end148
  %err.0281309 = phi i32 [ %call105, %if.end148 ], [ %err.0281308, %for.body151.2 ], [ %err.0281308, %for.body151.1.for.end155_crit_edge ], [ %err.0281308, %for.body151.for.end155_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %tasklet) #12
  br label %err_irq

err_irq:                                          ; preds = %for.end155, %do.end100, %if.then88
  %err.1 = phi i32 [ %call85, %if.then88 ], [ %call95, %do.end100 ], [ %err.0281309, %for.end155 ]
  %pclk157 = getelementptr inbounds %struct.s5p_aes_dev, ptr %call.i, i32 0, i32 2
  %54 = ptrtoint ptr %pclk157 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pclk157, align 4
  tail call void @clk_disable(ptr noundef %55) #12
  tail call void @clk_unprepare(ptr noundef %55) #12
  br label %err_clk

err_clk:                                          ; preds = %err_irq, %do.end68, %if.then55
  %err.2 = phi i32 [ %call60, %if.then55 ], [ %call63, %do.end68 ], [ %err.1, %err_irq ]
  %56 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %57) #12
  tail call void @clk_unprepare(ptr noundef %57) #12
  store ptr null, ptr @s5p_dev, align 4
  br label %cleanup159

cleanup159:                                       ; preds = %err_clk, %do.end129, %do.end, %if.then33, %if.then25, %if.then16, %find_s5p_sss_version.exit.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ %17, %if.then25 ], [ %call38, %if.then33 ], [ %retval.0.i274, %do.end ], [ %err.2, %err_clk ], [ 0, %do.end129 ], [ %12, %if.then16 ], [ -17, %entry.cleanup159_crit_edge ], [ -12, %if.end.cleanup159_crit_edge ], [ -22, %find_s5p_sss_version.exit.cleanup159_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @algs) #12
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #12
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #12
  %tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 12
  tail call void @tasklet_kill(ptr noundef %tasklet) #12
  %use_hash = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %use_hash to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_hash, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.body.preheader.if.end10_crit_edge, label %for.body5.preheader

for.body.preheader.if.end10_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body5.preheader:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 2)) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 1)) #12
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @algs_sha1_md5_sha256) #12
  %res = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  %end = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %sub = add i32 %7, -768
  store i32 %sub, ptr %end, align 4
  %hash_tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %hash_tasklet) #12
  %8 = ptrtoint ptr %use_hash to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %use_hash, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.body5.preheader, %for.body.preheader.if.end10_crit_edge
  %pclk = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  %clk = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #12
  tail call void @clk_unprepare(ptr noundef %12) #12
  store ptr null, ptr @s5p_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %clk) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ioaddr = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !131
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %sg_src.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %sg_src.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg_src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %8, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %9 = ptrtoint ptr %sg_src.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg_src.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call2.i = tail call ptr @sg_next(ptr noundef %10) #12
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %call2.i, i32 0, i32 2
  %13 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.end.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %if.then.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %16, ptr noundef %call2.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end_crit_edge, label %17

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

17:                                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %sg_src.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %sg_src.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %17, %if.end.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp36 = phi i1 [ false, %17 ], [ true, %if.end.i.i.if.end_crit_edge ], [ true, %if.then.i.if.end_crit_edge ], [ false, %if.then.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %cmp57 = phi i1 [ true, %17 ], [ false, %if.end.i.i.if.end_crit_edge ], [ false, %if.then.i.if.end_crit_edge ], [ false, %if.then.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %err_dma_rx.0 = phi i32 [ 1, %17 ], [ -12, %if.end.i.i.if.end_crit_edge ], [ -22, %if.then.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %and8 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.end
  %sg_dst = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_dst, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %24, ptr noundef %20, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %25 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sg_dst, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i.i128 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool.i.not.i129 = icmp eq i32 %and.i.i128, 0
  br i1 %tobool.i.not.i129, label %if.then.i133, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then.i133:                                     ; preds = %if.then10
  %call2.i130 = tail call ptr @sg_next(ptr noundef %26) #12
  %length.i.i131 = getelementptr inbounds %struct.scatterlist, ptr %call2.i130, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i132 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i132, label %if.then.i133.if.end15_crit_edge, label %if.end.i.i136

if.then.i133.if.end15_crit_edge:                  ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i.i136:                                    ; preds = %if.then.i133
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i134 = tail call i32 @dma_map_sg_attrs(ptr noundef %32, ptr noundef %call2.i130, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool2.not.i.i135 = icmp eq i32 %call.i.i134, 0
  br i1 %tobool2.not.i.i135, label %if.end.i.i136.if.end15_crit_edge, label %33

if.end.i.i136.if.end15_crit_edge:                 ; preds = %if.end.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

33:                                               ; preds = %if.end.i.i136
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %sg_dst to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2.i130, ptr %sg_dst, align 4
  br label %if.end15

if.end15:                                         ; preds = %33, %if.end.i.i136.if.end15_crit_edge, %if.then.i133.if.end15_crit_edge, %if.then10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %cmp40 = phi i1 [ false, %33 ], [ true, %if.end.i.i136.if.end15_crit_edge ], [ true, %if.then.i133.if.end15_crit_edge ], [ false, %if.then10.if.end15_crit_edge ], [ false, %if.end.if.end15_crit_edge ]
  %cmp52 = phi i1 [ true, %33 ], [ false, %if.end.i.i136.if.end15_crit_edge ], [ false, %if.then.i133.if.end15_crit_edge ], [ false, %if.then10.if.end15_crit_edge ], [ false, %if.end.if.end15_crit_edge ]
  %err_dma_tx.0 = phi i32 [ 1, %33 ], [ -12, %if.end.i.i136.if.end15_crit_edge ], [ -22, %if.then.i133.if.end15_crit_edge ], [ 0, %if.then10.if.end15_crit_edge ], [ 0, %if.end.if.end15_crit_edge ]
  %tx_end.1.off0 = phi i1 [ %tobool.i, %33 ], [ %tobool.i, %if.end.i.i136.if.end15_crit_edge ], [ %tobool.i, %if.then.i133.if.end15_crit_edge ], [ %tobool.i, %if.then10.if.end15_crit_edge ], [ false, %if.end.if.end15_crit_edge ]
  %and16 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %hash_sg_cnt.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 25
  %35 = ptrtoint ptr %hash_sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hash_sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i138

if.then.i138:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %hash_sg_iter.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 24
  %37 = ptrtoint ptr %hash_sg_iter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hash_sg_iter.i, align 4
  %call.i = tail call ptr @sg_next(ptr noundef %38) #12
  %39 = ptrtoint ptr %hash_sg_iter.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %hash_sg_iter.i, align 4
  br label %if.end20

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %hash_flags.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %hash_flags.i) #12
  %40 = ptrtoint ptr %hash_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %hash_flags.i, align 4
  %42 = and i32 %41, 2
  %43 = xor i32 %42, 2
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %if.then.i138, %if.end15.if.end20_crit_edge
  %err_dma_hx.0 = phi i32 [ 0, %if.end15.if.end20_crit_edge ], [ 1, %if.then.i138 ], [ %43, %if.end.i ]
  %and21 = and i32 %4, 14
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 4
  %add.ptr23 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %and21) #12, !srcloc !132
  %and24 = and i32 %4, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end20.if.end35_crit_edge, label %if.then26

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %and27 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %spec.select = select i1 %tobool28.not, i32 %and21, i32 16
  %and31 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %st_bits.1 = select i1 %tobool32.not, i32 %spec.select, i32 64
  %hash_flags = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 3, ptr noundef %hash_flags) #12
  %io_hash_base.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 17
  %46 = ptrtoint ptr %io_hash_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_hash_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %st_bits.1) #12, !srcloc !132
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.end20.if.end35_crit_edge
  %err_dma_hx.1 = phi i32 [ 0, %if.then26 ], [ %err_dma_hx.0, %if.end20.if.end35_crit_edge ]
  %brmerge = or i1 %cmp36, %cmp40
  %err_dma_rx.0.mux = select i1 %cmp36, i32 %err_dma_rx.0, i32 %err_dma_tx.0
  br i1 %brmerge, label %error, label %if.end43

if.end43:                                         ; preds = %if.end35
  br i1 %tx_end.1.off0, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end43
  tail call fastcc void @s5p_sg_done(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err_dma_hx.1)
  %cmp46 = icmp eq i32 %err_dma_hx.1, 1
  br i1 %cmp46, label %if.then48, label %if.then45.if.end49_crit_edge

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %hash_sg_iter = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 24
  %48 = ptrtoint ptr %hash_sg_iter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hash_sg_iter, align 4
  %hash_sg_cnt.i139 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 25
  %50 = ptrtoint ptr %hash_sg_cnt.i139 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hash_sg_cnt.i139, align 4
  %dec.i = add i32 %51, -1
  store i32 %dec.i, ptr %hash_sg_cnt.i139, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_address.i, align 4
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i140 = getelementptr i8, ptr %55, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %53) #12, !srcloc !132
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 4
  %56 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_length.i, align 4
  %58 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr, align 4
  %add.ptr2.i = getelementptr i8, ptr %59, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %57) #12, !srcloc !132
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45.if.end49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %req51 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %req51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req51, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %61, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %61, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %complete.i, align 8
  tail call void %63(ptr noundef %base.i, i32 noundef 0) #12
  %state.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 12, i32 1
  %call.i141 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %if.then.i142, label %if.end49.hash_irq_end_crit_edge

if.end49.hash_irq_end_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_irq_end

if.then.i142:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #12
  br label %hash_irq_end

if.else:                                          ; preds = %if.end43
  br i1 %cmp52, label %if.then54, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sg_dst55 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 9
  %64 = ptrtoint ptr %sg_dst55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg_dst55, align 4
  %dma_address.i144 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dma_address.i144 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_address.i144, align 4
  %68 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i146 = getelementptr i8, ptr %69, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %67) #12, !srcloc !132
  %dma_length.i147 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 4
  %70 = ptrtoint ptr %dma_length.i147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_length.i147, align 4
  %72 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr, align 4
  %add.ptr2.i148 = getelementptr i8, ptr %73, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i148, i32 %71) #12, !srcloc !132
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.else.if.end56_crit_edge
  br i1 %cmp57, label %if.then59, label %if.end56.if.end60_crit_edge

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %sg_src = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 8
  %74 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sg_src, align 4
  %dma_address.i149 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %dma_address.i149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_address.i149, align 4
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i151 = getelementptr i8, ptr %79, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %77) #12, !srcloc !132
  %dma_length.i152 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 4
  %80 = ptrtoint ptr %dma_length.i152 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_length.i152, align 4
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 4
  %add.ptr2.i153 = getelementptr i8, ptr %83, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i153, i32 %81) #12, !srcloc !132
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end56.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err_dma_hx.1)
  %cmp61 = icmp eq i32 %err_dma_hx.1, 1
  br i1 %cmp61, label %if.then63, label %if.end60.if.end65_crit_edge

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %hash_sg_iter64 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 24
  %84 = ptrtoint ptr %hash_sg_iter64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hash_sg_iter64, align 4
  %hash_sg_cnt.i154 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 25
  %86 = ptrtoint ptr %hash_sg_cnt.i154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hash_sg_cnt.i154, align 4
  %dec.i155 = add i32 %87, -1
  store i32 %dec.i155, ptr %hash_sg_cnt.i154, align 4
  %dma_address.i156 = getelementptr inbounds %struct.scatterlist, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %dma_address.i156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_address.i156, align 4
  %90 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i158 = getelementptr i8, ptr %91, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %89) #12, !srcloc !132
  %dma_length.i159 = getelementptr inbounds %struct.scatterlist, ptr %85, i32 0, i32 4
  %92 = ptrtoint ptr %dma_length.i159 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_length.i159, align 4
  %94 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr, align 4
  %add.ptr2.i160 = getelementptr i8, ptr %95, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i160, i32 %93) #12, !srcloc !132
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %hash_irq_end

error:                                            ; preds = %if.end35
  tail call fastcc void @s5p_sg_done(ptr noundef %1)
  %busy = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 14
  %96 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %busy, align 4
  %req68 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 6
  %97 = ptrtoint ptr %req68 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %req68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err_dma_hx.1)
  %cmp69 = icmp eq i32 %err_dma_hx.1, 1
  br i1 %cmp69, label %if.then71, label %error.if.end73_crit_edge

error.if.end73_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then71:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  %hash_sg_iter72 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 24
  %99 = ptrtoint ptr %hash_sg_iter72 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hash_sg_iter72, align 4
  %hash_sg_cnt.i161 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 25
  %101 = ptrtoint ptr %hash_sg_cnt.i161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hash_sg_cnt.i161, align 4
  %dec.i162 = add i32 %102, -1
  store i32 %dec.i162, ptr %hash_sg_cnt.i161, align 4
  %dma_address.i163 = getelementptr inbounds %struct.scatterlist, ptr %100, i32 0, i32 3
  %103 = ptrtoint ptr %dma_address.i163 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_address.i163, align 4
  %105 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i165 = getelementptr i8, ptr %106, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %104) #12, !srcloc !132
  %dma_length.i166 = getelementptr inbounds %struct.scatterlist, ptr %100, i32 0, i32 4
  %107 = ptrtoint ptr %dma_length.i166 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_length.i166, align 4
  %109 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ioaddr, align 4
  %add.ptr2.i167 = getelementptr i8, ptr %110, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i167, i32 %108) #12, !srcloc !132
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %error.if.end73_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %base.i168 = getelementptr inbounds %struct.skcipher_request, ptr %98, i32 0, i32 4
  %complete.i169 = getelementptr inbounds %struct.skcipher_request, ptr %98, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %complete.i169 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %complete.i169, align 8
  tail call void %112(ptr noundef %base.i168, i32 noundef %err_dma_rx.0.mux) #12
  br label %hash_irq_end

hash_irq_end:                                     ; preds = %if.end73, %if.end65, %if.then.i142, %if.end49.hash_irq_end_crit_edge
  br i1 %tobool25.not, label %if.else77, label %if.then76

if.then76:                                        ; preds = %hash_irq_end
  %state.i170 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 21, i32 1
  %call.i171 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i170) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.then.i173, label %if.then76.if.end82_crit_edge

if.then76.if.end82_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then.i173:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %hash_tasklet = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %hash_tasklet) #12
  br label %if.end82

if.else77:                                        ; preds = %hash_irq_end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %err_dma_hx.1)
  %cmp78 = icmp eq i32 %err_dma_hx.1, 2
  br i1 %cmp78, label %if.then80, label %if.else77.if.end82_crit_edge

if.else77.if.end82_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #14
  %io_hash_base.i176 = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 17
  %113 = ptrtoint ptr %io_hash_base.i176 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %io_hash_base.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %114, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 1) #12, !srcloc !132
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.else77.if.end82_crit_edge, %if.then.i173, %if.then76.if.end82_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_tasklet_cb(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %queue = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 13
  %backlog.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %2, %queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %2
  %call7 = tail call ptr @crypto_dequeue_request(ptr noundef %queue) #12
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %busy = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 14
  %3 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %tobool10.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete, align 4
  tail call void %5(ptr noundef nonnull %spec.select.i, i32 noundef -115) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call7, i32 -16
  %req = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 6
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %req, align 4
  %tfm = getelementptr i8, ptr %call7, i32 16
  %7 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 5
  %ctx = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 7
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %__crt_ctx.i, ptr %ctx, align 4
  %__ctx.i = getelementptr i8, ptr %call7, i32 112
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__ctx.i, align 4
  %and.i = and i32 %11, 1
  %12 = or i32 %and.i, 64
  %and2.i = and i32 %11, 6
  %13 = zext i32 %and2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2.i, label %if.end12.if.end13.i_crit_edge [
    i32 2, label %if.then3.i
    i32 4, label %if.then8.i
  ]

if.end12.if.end13.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %or4.i = or i32 %and.i, 66
  %iv5.i = getelementptr i8, ptr %call7, i32 -12
  %14 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv5.i, align 4
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %or9.i = or i32 %and.i, 68
  %iv10.i = getelementptr i8, ptr %call7, i32 -12
  %16 = ptrtoint ptr %iv10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv10.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.then3.i, %if.end12.if.end13.i_crit_edge
  %aes_control.1.i = phi i32 [ %or4.i, %if.then3.i ], [ %or9.i, %if.then8.i ], [ %12, %if.end12.if.end13.i_crit_edge ]
  %iv.0.i = phi ptr [ %15, %if.then3.i ], [ null, %if.then8.i ], [ null, %if.end12.if.end13.i_crit_edge ]
  %ctr.0.i = phi ptr [ null, %if.then3.i ], [ %17, %if.then8.i ], [ null, %if.end12.if.end13.i_crit_edge ]
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 4, i32 24
  %18 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %keylen.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %19, label %if.end13.i.if.end24.i_crit_edge [
    i32 24, label %if.then15.i
    i32 32, label %if.then21.i
  ]

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %or16.i = or i32 %aes_control.1.i, 16
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %or22.i = or i32 %aes_control.1.i, 32
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.then15.i, %if.end13.i.if.end24.i_crit_edge
  %aes_control.2.i = phi i32 [ %or16.i, %if.then15.i ], [ %or22.i, %if.then21.i ], [ %aes_control.1.i, %if.end13.i.if.end24.i_crit_edge ]
  %or26.i = or i32 %aes_control.2.i, 3976
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ioaddr.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 3
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 12) #12, !srcloc !132
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #12, !srcloc !132
  %call34.i = tail call fastcc i32 @s5p_set_indata_start(ptr noundef %0, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end24.i.indata_error.i_crit_edge

if.end24.i.indata_error.i_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %indata_error.i

if.end37.i:                                       ; preds = %if.end24.i
  %call38.i = tail call fastcc i32 @s5p_set_outdata_start(ptr noundef %0, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %outdata_error.i

if.end41.i:                                       ; preds = %if.end37.i
  %aes_ioaddr.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 4
  %25 = ptrtoint ptr %aes_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aes_ioaddr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %or26.i) #12, !srcloc !132
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %aes_key.i = getelementptr inbounds %struct.s5p_aes_ctx, ptr %28, i32 0, i32 1
  %keylen45.i = getelementptr inbounds %struct.s5p_aes_ctx, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %keylen45.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keylen45.i, align 4
  %tobool.not.i.i = icmp eq ptr %iv.0.i, null
  br i1 %tobool.not.i.i, label %if.end41.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end41.i.if.end.i.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %aes_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aes_ioaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 48
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull %iv.0.i, i32 noundef 16) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end41.i.if.end.i.i_crit_edge
  %tobool1.not.i.i = icmp eq ptr %ctr.0.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.s5p_set_aes.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.s5p_set_aes.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_set_aes.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %aes_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aes_ioaddr.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %34, i32 64
  tail call void @mmiocpy(ptr noundef %add.ptr4.i.i, ptr noundef nonnull %ctr.0.i, i32 noundef 16) #12
  br label %s5p_set_aes.exit.i

s5p_set_aes.exit.i:                               ; preds = %if.then2.i.i, %if.end.i.i.s5p_set_aes.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %30)
  %switch.selectcmp.i.i = icmp eq i32 %30, 24
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 136, i32 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %30)
  %switch.selectcmp27.i.i = icmp eq i32 %30, 32
  %switch.select28.i.i = select i1 %switch.selectcmp27.i.i, i32 128, i32 %switch.select.i.i
  %35 = ptrtoint ptr %aes_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aes_ioaddr.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %36, i32 %switch.select28.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr12.i.i, ptr noundef %aes_key.i, i32 noundef %30) #12
  %sg_src.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 8
  %37 = ptrtoint ptr %sg_src.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg_src.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_address.i.i, align 4
  %41 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %40) #12, !srcloc !132
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length.i.i, align 4
  %45 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %44) #12, !srcloc !132
  %sg_dst.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 9
  %47 = ptrtoint ptr %sg_dst.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sg_dst.i, align 4
  %dma_address.i93.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dma_address.i93.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_address.i93.i, align 4
  %51 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 %50) #12, !srcloc !132
  %dma_length.i96.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 4
  %53 = ptrtoint ptr %dma_length.i96.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_length.i96.i, align 4
  %55 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr2.i97.i = getelementptr i8, ptr %56, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i97.i, i32 %54) #12, !srcloc !132
  %57 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 12) #12, !srcloc !132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29.i) #12
  br label %cleanup

outdata_error.i:                                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %sg_src.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 8
  %61 = ptrtoint ptr %sg_src.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sg_src.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  br label %indata_error.i

indata_error.i:                                   ; preds = %outdata_error.i, %if.end24.i.indata_error.i_crit_edge
  %err.0.i = phi i32 [ %call34.i, %if.end24.i.indata_error.i_crit_edge ], [ %call38.i, %outdata_error.i ]
  tail call fastcc void @s5p_sg_done(ptr noundef %0) #12
  %busy.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 14
  %63 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %busy.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29.i) #12
  %complete.i.i = getelementptr i8, ptr %call7, i32 8
  %64 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %complete.i.i, align 8
  tail call void %65(ptr noundef nonnull %call7, i32 noundef %err.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %indata_error.i, %s5p_set_aes.exit.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_hash_tasklet_cb(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %hash_flags = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 19
  %1 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %hash_flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %hash_flags, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %hash_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end10_crit_edge, label %if.then9

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %hash_req.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 23
  %6 = ptrtoint ptr %hash_req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash_req.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 5, i32 16
  %10 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg.i, align 8
  %sg_len.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 5, i32 20
  %12 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %hash_flags) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5.if.end10_crit_edge
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %hash_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %hash_flags) #12
  %hash_req = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 23
  %14 = ptrtoint ptr %hash_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hash_req, align 4
  tail call fastcc void @s5p_hash_finish_req(ptr noundef %15, i32 noundef 0)
  %16 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %hash_flags, align 4
  %and1.i34 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i34)
  %tobool20.not = icmp eq i32 %and1.i34, 0
  br i1 %tobool20.not, label %if.then14.cleanup.sink.split_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call22 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_sg_done(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  %walk.i = alloca %struct.scatter_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 6
  %sg_dst_cpy = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_dst_cpy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_sg_done.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_sg_done, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !133

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_sg_done.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %10 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg_dst_cpy, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !134

do.body2.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit:                                     ; preds = %do.end
  %and.i.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %14) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %17 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req1, align 4
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk.i) #12
  %23 = getelementptr inbounds %struct.scatter_walk, ptr %walk.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %sg_virt.exit.s5p_sg_copy_buf.exit_crit_edge, label %if.end.i

sg_virt.exit.s5p_sg_copy_buf.exit_crit_edge:      ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_sg_copy_buf.exit

if.end.i:                                         ; preds = %sg_virt.exit
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %16
  %24 = ptrtoint ptr %walk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %walk.i, align 4
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %23, align 4
  call void @scatterwalk_copychunks(ptr noundef %add.ptr.i, ptr noundef nonnull %walk.i, i32 noundef %22, i32 noundef 1) #12
  %28 = ptrtoint ptr %walk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %walk.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_page.exit.i.i.i, label %do.body2.i.i.i.i, !prof !134

do.body2.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_page.exit.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i.i = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %23, align 4
  %sub.i.i.i = add i32 %34, -1
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %32, i32 %shr.i.i.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i.i) #12
  br label %s5p_sg_copy_buf.exit

s5p_sg_copy_buf.exit:                             ; preds = %sg_page.exit.i.i.i, %sg_virt.exit.s5p_sg_copy_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk.i) #12
  br label %if.end14

if.end14:                                         ; preds = %s5p_sg_copy_buf.exit, %entry.if.end14_crit_edge
  %sg_src_cpy = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 10
  %35 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sg_src_cpy, align 4
  %tobool.not.i42 = icmp eq ptr %36, null
  br i1 %tobool.not.i42, label %if.end14.s5p_free_sg_cpy.exit_crit_edge, label %if.end.i44

if.end14.s5p_free_sg_cpy.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_free_sg_cpy.exit

if.end.i44:                                       ; preds = %if.end14
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i.i.i.i43 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i43)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i43, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !134

do.body2.i.i.i:                                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit.i:                                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req1, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 128
  %add.i = add i32 %42, 15
  %and.i = and i32 %add.i, -16
  %and.i.i.i45 = and i32 %38, -4
  %43 = inttoptr i32 %and.i.i.i45 to ptr
  %call1.i.i = call ptr @page_address(ptr noundef %43) #12
  %offset.i.i46 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %offset.i.i46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i.i46, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %45
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  %dec.i.i = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %47 = call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !136
  %sub.i.i.i47 = sub nuw nsw i32 32, %47
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i47
  call void @free_pages(i32 noundef %46, i32 noundef %cond.i.i.i) #12
  %48 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg_src_cpy, align 4
  call void @kfree(ptr noundef %49) #12
  %50 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %sg_src_cpy, align 4
  br label %s5p_free_sg_cpy.exit

s5p_free_sg_cpy.exit:                             ; preds = %sg_virt.exit.i, %if.end14.s5p_free_sg_cpy.exit_crit_edge
  %51 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sg_dst_cpy, align 4
  %tobool.not.i48 = icmp eq ptr %52, null
  br i1 %tobool.not.i48, label %s5p_free_sg_cpy.exit.s5p_free_sg_cpy.exit76_crit_edge, label %if.end.i54

s5p_free_sg_cpy.exit.s5p_free_sg_cpy.exit76_crit_edge: ; preds = %s5p_free_sg_cpy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_free_sg_cpy.exit76

if.end.i54:                                       ; preds = %s5p_free_sg_cpy.exit
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %and.i.i.i.i52 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i52)
  %tobool.i.not.i.i.i53 = icmp eq i32 %and.i.i.i.i52, 0
  br i1 %tobool.i.not.i.i.i53, label %sg_virt.exit.i60, label %do.body2.i.i.i55, !prof !134

do.body2.i.i.i55:                                 ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit.i60:                                 ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %req1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 128
  %add.i50 = add i32 %58, 15
  %and.i51 = and i32 %add.i50, -16
  %and.i.i.i56 = and i32 %54, -4
  %59 = inttoptr i32 %and.i.i.i56 to ptr
  %call1.i.i57 = call ptr @page_address(ptr noundef %59) #12
  %offset.i.i58 = getelementptr inbounds %struct.scatterlist, ptr %52, i32 0, i32 1
  %60 = ptrtoint ptr %offset.i.i58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %call1.i.i57, i32 %61
  %62 = ptrtoint ptr %add.ptr.i.i59 to i32
  %dec.i.i68 = add i32 %and.i51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i68)
  %tobool.not.i.i.i70 = icmp ult i32 %dec.i.i68, 4096
  %shr.i.i69 = lshr i32 %dec.i.i68, 12
  %63 = call i32 @llvm.ctlz.i32(i32 %shr.i.i69, i1 true) #12, !range !136
  %sub.i.i.i71 = sub nuw nsw i32 32, %63
  %cond.i.i.i72 = select i1 %tobool.not.i.i.i70, i32 0, i32 %sub.i.i.i71
  call void @free_pages(i32 noundef %62, i32 noundef %cond.i.i.i72) #12
  %64 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg_dst_cpy, align 4
  call void @kfree(ptr noundef %65) #12
  %66 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sg_dst_cpy, align 4
  br label %s5p_free_sg_cpy.exit76

s5p_free_sg_cpy.exit76:                           ; preds = %sg_virt.exit.i60, %s5p_free_sg_cpy.exit.s5p_free_sg_cpy.exit76_crit_edge
  %67 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %__ctx.i, align 4
  %and = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %s5p_free_sg_cpy.exit76.if.end26.sink.split_crit_edge

s5p_free_sg_cpy.exit76.if.end26.sink.split_crit_edge: ; preds = %s5p_free_sg_cpy.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split

if.else:                                          ; preds = %s5p_free_sg_cpy.exit76
  %and19 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.if.end26_crit_edge, label %if.else.if.end26.sink.split_crit_edge

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.else.if.end26.sink.split_crit_edge, %s5p_free_sg_cpy.exit76.if.end26.sink.split_crit_edge
  %.sink79 = phi i32 [ 48, %s5p_free_sg_cpy.exit76.if.end26.sink.split_crit_edge ], [ 64, %if.else.if.end26.sink.split_crit_edge ]
  %iv22 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %iv22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iv22, align 4
  %aes_ioaddr23 = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 4
  %71 = ptrtoint ptr %aes_ioaddr23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %aes_ioaddr23, align 4
  %add.ptr24 = getelementptr i8, ptr %72, i32 %.sink79
  call void @mmiocpy(ptr noundef %70, ptr noundef %add.ptr24, i32 noundef 16) #12
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_set_indata_start(ptr nocapture noundef %dev, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_src_cpy = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sg_src_cpy, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %src, align 8
  %tobool.not3.i = icmp eq ptr %2, null
  br i1 %tobool.not3.i, label %entry.if.end12_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg.addr.04.i = phi ptr [ %call.i, %if.end.i.while.body.i_crit_edge ], [ %2, %entry.while.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.04.i, i32 0, i32 2
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  %and.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i, label %do.body

if.end.i:                                         ; preds = %while.body.i
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.04.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end12_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_set_indata_start.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_set_indata_start, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !133

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_set_indata_start.__UNIQUE_ID_ddebug253, ptr noundef %6, ptr noundef nonnull @.str.32) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %call7 = tail call fastcc i32 @s5p_make_sg_cpy(ptr noundef %dev, ptr noundef nonnull %2, ptr noundef %sg_src_cpy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg_src_cpy, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %sg.0 = phi ptr [ %8, %if.end10 ], [ null, %entry.if.end12_crit_edge ], [ %2, %if.end.i.if.end12_crit_edge ]
  %length.i31 = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 2
  %9 = ptrtoint ptr %length.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i32 = icmp eq i32 %10, 0
  br i1 %tobool.not.i32, label %if.end12.if.then15_crit_edge, label %if.end.i34

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i34:                                       ; preds = %if.end12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i33 = tail call i32 @dma_map_sg_attrs(ptr noundef %12, ptr noundef %sg.0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool2.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool2.not.i, label %if.end.i34.if.then15_crit_edge, label %s5p_set_indata.exit

if.end.i34.if.then15_crit_edge:                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

s5p_set_indata.exit:                              ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  %sg_src.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %sg_src.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sg.0, ptr %sg_src.i, align 4
  br label %cleanup

if.then15:                                        ; preds = %if.end.i34.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  %retval.0.i35.ph = phi i32 [ -12, %if.end.i34.if.then15_crit_edge ], [ -22, %if.end12.if.then15_crit_edge ]
  %14 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_src_cpy, align 4
  %tobool.not.i36 = icmp eq ptr %15, null
  br i1 %tobool.not.i36, label %if.then15.cleanup_crit_edge, label %if.end.i38

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i38:                                       ; preds = %if.then15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !134

do.body2.i.i.i:                                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit.i:                                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 128
  %add.i = add i32 %21, 15
  %and.i37 = and i32 %add.i, -16
  %and.i.i.i = and i32 %17, -4
  %22 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %22) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  %dec.i.i = add i32 %and.i37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %26 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !136
  %sub.i.i.i = sub nuw nsw i32 32, %26
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @free_pages(i32 noundef %25, i32 noundef %cond.i.i.i) #12
  %27 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg_src_cpy, align 4
  tail call void @kfree(ptr noundef %28) #12
  %29 = ptrtoint ptr %sg_src_cpy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sg_src_cpy, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_virt.exit.i, %if.then15.cleanup_crit_edge, %s5p_set_indata.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end.cleanup_crit_edge ], [ 0, %s5p_set_indata.exit ], [ %retval.0.i35.ph, %if.then15.cleanup_crit_edge ], [ %retval.0.i35.ph, %sg_virt.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_set_outdata_start(ptr nocapture noundef %dev, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_dst_cpy = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sg_dst_cpy, align 4
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst, align 4
  %tobool.not3.i = icmp eq ptr %2, null
  br i1 %tobool.not3.i, label %entry.if.end12_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg.addr.04.i = phi ptr [ %call.i, %if.end.i.while.body.i_crit_edge ], [ %2, %entry.while.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.04.i, i32 0, i32 2
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  %and.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.i, label %do.body

if.end.i:                                         ; preds = %while.body.i
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.04.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end12_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_set_outdata_start.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_set_outdata_start, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !133

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_set_outdata_start.__UNIQUE_ID_ddebug254, ptr noundef %6, ptr noundef nonnull @.str.34) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %call7 = tail call fastcc i32 @s5p_make_sg_cpy(ptr noundef %dev, ptr noundef nonnull %2, ptr noundef %sg_dst_cpy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg_dst_cpy, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %sg.0 = phi ptr [ %8, %if.end10 ], [ null, %entry.if.end12_crit_edge ], [ %2, %if.end.i.if.end12_crit_edge ]
  %length.i31 = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 2
  %9 = ptrtoint ptr %length.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i32 = icmp eq i32 %10, 0
  br i1 %tobool.not.i32, label %if.end12.if.then15_crit_edge, label %if.end.i34

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i34:                                       ; preds = %if.end12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i33 = tail call i32 @dma_map_sg_attrs(ptr noundef %12, ptr noundef %sg.0, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool2.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool2.not.i, label %if.end.i34.if.then15_crit_edge, label %s5p_set_outdata.exit

if.end.i34.if.then15_crit_edge:                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

s5p_set_outdata.exit:                             ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  %sg_dst.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %sg_dst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sg.0, ptr %sg_dst.i, align 4
  br label %cleanup

if.then15:                                        ; preds = %if.end.i34.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  %retval.0.i35.ph = phi i32 [ -12, %if.end.i34.if.then15_crit_edge ], [ -22, %if.end12.if.then15_crit_edge ]
  %14 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_dst_cpy, align 4
  %tobool.not.i36 = icmp eq ptr %15, null
  br i1 %tobool.not.i36, label %if.then15.cleanup_crit_edge, label %if.end.i38

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i38:                                       ; preds = %if.then15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !134

do.body2.i.i.i:                                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit.i:                                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 128
  %add.i = add i32 %21, 15
  %and.i37 = and i32 %add.i, -16
  %and.i.i.i = and i32 %17, -4
  %22 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %22) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  %dec.i.i = add i32 %and.i37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %26 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #12, !range !136
  %sub.i.i.i = sub nuw nsw i32 32, %26
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  tail call void @free_pages(i32 noundef %25, i32 noundef %cond.i.i.i) #12
  %27 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg_dst_cpy, align 4
  tail call void @kfree(ptr noundef %28) #12
  %29 = ptrtoint ptr %sg_dst_cpy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sg_dst_cpy, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_virt.exit.i, %if.then15.cleanup_crit_edge, %s5p_set_outdata.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end.cleanup_crit_edge ], [ 0, %s5p_set_outdata.exit ], [ %retval.0.i35.ph, %if.then15.cleanup_crit_edge ], [ %retval.0.i35.ph, %sg_virt.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_make_sg_cpy(ptr nocapture noundef readonly %dev, ptr noundef %src, ptr nocapture noundef %dst) unnamed_addr #2 align 64 {
entry:
  %walk.i = alloca %struct.scatter_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 20) #16
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %dst, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.s5p_aes_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %add = add i32 %5, 15
  %and = and i32 %add, -16
  %dec.i = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #12, !range !136
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call2 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %cond.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  tail call void @kfree(ptr noundef %8) #12
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dst, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = inttoptr i32 %call2 to ptr
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i18 = icmp eq i32 %14, 0
  br i1 %tobool.not.i18, label %if.end5.s5p_sg_copy_buf.exit_crit_edge, label %if.end.i19

if.end5.s5p_sg_copy_buf.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_sg_copy_buf.exit

if.end.i19:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %15 = getelementptr inbounds %struct.scatter_walk, ptr %walk.i, i32 0, i32 1
  %16 = ptrtoint ptr %walk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %src, ptr %walk.i, align 4
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 1
  %17 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %15, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %10, ptr noundef nonnull %walk.i, i32 noundef %14, i32 noundef 0) #12
  br label %s5p_sg_copy_buf.exit

s5p_sg_copy_buf.exit:                             ; preds = %if.end.i19, %if.end5.s5p_sg_copy_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk.i) #12
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 4
  call void @sg_init_table(ptr noundef %21, i32 noundef 1) #12
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 4
  %cmp.i20 = icmp ugt ptr %10, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i20, label %land.lhs.true.i, label %s5p_sg_copy_buf.exit.do.body5.i_crit_edge, !prof !134

s5p_sg_copy_buf.exit.do.body5.i_crit_edge:        ; preds = %s5p_sg_copy_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %s5p_sg_copy_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %24 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %24, %10
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !134

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i21 = add i32 %call2, 1073741824
  %shr.i22 = lshr i32 %sub.i21, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i23 = add i32 %25, %shr.i22
  %call.i = call i32 @pfn_valid(i32 noundef %add.i23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !137

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %s5p_sg_copy_buf.exit.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i22
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !134

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !134

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %call2, 4095
  %and.i.i.i = and i32 %28, 3
  %or.i.i.i = or i32 %and.i.i.i, %29
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.i.i, ptr %23, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %length.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sg_set_buf.exit ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_aes_setkey(ptr nocapture noundef writeonly %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge12
    i32 32, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13
  %aes_key = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1
  %1 = call ptr @memcpy(ptr %aes_key, ptr %key, i32 %keylen)
  %keylen5 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 36
  %2 = ptrtoint ptr %keylen5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_aes_init_tfm(ptr nocapture noundef writeonly %tfm) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = load ptr, ptr @s5p_dev, align 4
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %__crt_ctx.i.i, align 4
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %tfm, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_aes_ctr_crypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_aes_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %and5 = and i32 %mode, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 4
  %or.cond = or i1 %cmp6.not, %cmp
  br i1 %or.cond, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_aes_crypt.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_aes_crypt, %if.then12)) #12
          to label %cleanup [label %if.then12], !srcloc !133

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_aes_crypt.__UNIQUE_ID_ddebug255, ptr noundef %7, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mode, ptr %__ctx.i, align 4
  %lock.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %queue.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 13
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call5.i = tail call i32 @crypto_enqueue_request(ptr noundef %queue.i, ptr noundef %base.i) #12
  %busy.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %busy.i, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %busy.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %state.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 12, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %tasklet.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then12, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body ], [ %call5.i, %if.then.i ], [ %call5.i, %if.end.i.cleanup_crit_edge ], [ %call5.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_hash_handle_queue(ptr noundef %dd, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 18
  %hash_queue = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 20
  %hash_flags = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 19
  %backlog.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 20, i32 1
  %hash_req = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 23
  %ioaddr.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 3
  %io_hash_base.i.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 17
  %lock.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 15
  br label %retry

retry:                                            ; preds = %if.then72, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %ret.1, %if.then72 ]
  %req.addr.0 = phi ptr [ %req, %entry ], [ null, %if.then72 ]
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hash_lock) #12
  %tobool.not = icmp eq ptr %req.addr.0, null
  br i1 %tobool.not, label %retry.if.end_crit_edge, label %if.then

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @crypto_enqueue_request(ptr noundef %hash_queue, ptr noundef nonnull %req.addr.0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %retry.if.end_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then ], [ %ret.0, %retry.if.end_crit_edge ]
  %0 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hash_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %if.end10, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %hash_queue
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call14 = tail call ptr @crypto_dequeue_request(ptr noundef %hash_queue) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.then16

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then16:                                        ; preds = %if.end10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %hash_flags) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hash_lock, i32 noundef %call2) #12
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %if.then16.if.end25_crit_edge, label %if.then24

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete, align 4
  tail call void %5(ptr noundef nonnull %spec.select.i, i32 noundef -115) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %6 = ptrtoint ptr %hash_req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %hash_req, align 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 6
  %op_update = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %op_update to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %op_update, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  %finup.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 72
  %9 = ptrtoint ptr %finup.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %finup.i, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i = icmp ne i8 %10, 0
  br i1 %tobool28.not, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %if.end25
  %nbytes3.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 1
  %11 = ptrtoint ptr %nbytes3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes3.i, align 8
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 76
  %13 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bufcnt.i, align 4
  %add.i = add i32 %14, %12
  %total.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 68
  %15 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool5.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool5.not.i, label %if.end.i.lor.lhs.false_crit_edge, label %if.end7.i

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.thread.i:                                  ; preds = %if.end25
  %bufcnt158.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 76
  %16 = ptrtoint ptr %bufcnt158.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufcnt158.i, align 4
  %total160.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 68
  %18 = ptrtoint ptr %total160.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %total160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not161.i = icmp eq i32 %17, 0
  br i1 %tobool5.not161.i, label %if.end.thread.i.lor.lhs.false_crit_edge, label %if.end.thread.i.if.else19.i_crit_edge

if.end.thread.i.if.else19.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

if.end.thread.i.lor.lhs.false_crit_edge:          ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i = icmp eq i32 %12, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.else19.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.else19.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %and.i = and i32 %14, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i119 = icmp eq i32 %and.i, 0
  br i1 %cmp.i119, label %land.lhs.true.i.if.else19.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.else19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else19.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub nuw nsw i32 64, %and.i
  %19 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %12) #12
  %buffer.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 80
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %14
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 2
  %20 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src.i, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i, ptr noundef %21, i32 noundef 0, i32 noundef %19, i32 noundef 0) #12
  %22 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufcnt.i, align 4
  %add17.i = add i32 %23, %19
  store i32 %add17.i, ptr %bufcnt.i, align 4
  %sub18.i = sub i32 %12, %19
  %skip.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 64
  %24 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %skip.i, align 8
  br label %if.end21.i

if.else19.i:                                      ; preds = %land.lhs.true.i.if.else19.i_crit_edge, %if.end7.i.if.else19.i_crit_edge, %if.end.thread.i.if.else19.i_crit_edge
  %nbytes.0162173.i = phi i32 [ %12, %land.lhs.true.i.if.else19.i_crit_edge ], [ 0, %if.end7.i.if.else19.i_crit_edge ], [ 0, %if.end.thread.i.if.else19.i_crit_edge ]
  %total166172.i = phi ptr [ %total.i, %land.lhs.true.i.if.else19.i_crit_edge ], [ %total.i, %if.end7.i.if.else19.i_crit_edge ], [ %total160.i, %if.end.thread.i.if.else19.i_crit_edge ]
  %bufcnt165.i = phi ptr [ %bufcnt.i, %land.lhs.true.i.if.else19.i_crit_edge ], [ %bufcnt.i, %if.end7.i.if.else19.i_crit_edge ], [ %bufcnt158.i, %if.end.thread.i.if.else19.i_crit_edge ]
  %skip20.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 64
  %25 = ptrtoint ptr %skip20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %skip20.i, align 8
  %26 = ptrtoint ptr %bufcnt165.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %bufcnt165.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else19.i, %if.then10.i
  %27 = phi i32 [ %.pr.i, %if.else19.i ], [ %add17.i, %if.then10.i ]
  %total166171.i = phi ptr [ %total166172.i, %if.else19.i ], [ %total.i, %if.then10.i ]
  %bufcnt164.i = phi ptr [ %bufcnt165.i, %if.else19.i ], [ %bufcnt.i, %if.then10.i ]
  %nbytes.1.i = phi i32 [ %nbytes.0162173.i, %if.else19.i ], [ %sub18.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not.i = icmp eq i32 %27, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end29.i_crit_edge, label %if.then24.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %29, i32 0, i32 22
  %buffer26.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 80
  %30 = call ptr @memcpy(ptr %xmit_buf.i, ptr %buffer26.i, i32 %27)
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end29.i_crit_edge
  %31 = ptrtoint ptr %total166171.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total166171.i, align 4
  br i1 %tobool.i, label %if.end29.i.if.end49.i_crit_edge, label %if.else33.i

if.end29.i.if.end49.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.else33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %and34.i = and i32 %32, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %cmp35.i = icmp eq i32 %and34.i, 0
  %sub37.i = add i32 %32, -64
  %sub40.i = and i32 %32, -64
  %xmit_len.0.i = select i1 %cmp35.i, i32 %sub37.i, i32 %sub40.i
  %sub43.i = sub i32 %32, %xmit_len.0.i
  %buffer44.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 80
  %src46.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 2
  %33 = ptrtoint ptr %src46.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src46.i, align 4
  %nbytes47.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 1
  %35 = ptrtoint ptr %nbytes47.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbytes47.i, align 8
  %sub48.i = sub i32 %36, %sub43.i
  tail call void @scatterwalk_map_and_copy(ptr noundef %buffer44.i, ptr noundef %34, i32 noundef %sub48.i, i32 noundef %sub43.i, i32 noundef 0) #12
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else33.i, %if.end29.i.if.end49.i_crit_edge
  %xmit_len.1.i = phi i32 [ %xmit_len.0.i, %if.else33.i ], [ %32, %if.end29.i.if.end49.i_crit_edge ]
  %hash_later.0.i = phi i32 [ %sub43.i, %if.else33.i ], [ 0, %if.end29.i.if.end49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %xmit_len.1.i)
  %cmp50.i = icmp sgt i32 %xmit_len.1.i, 64
  br i1 %cmp50.i, label %if.then51.i, label %if.else59.i

if.then51.i:                                      ; preds = %if.end49.i
  %src52.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 2
  %37 = ptrtoint ptr %src52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src52.i, align 4
  %sub53.i = sub i32 %nbytes.1.i, %hash_later.0.i
  %skip1.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 64
  %39 = ptrtoint ptr %skip1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %skip1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then51.i.if.end79.i_crit_edge, label %lor.lhs.false.i.i

if.then51.i.if.end79.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

lor.lhs.false.i.i:                                ; preds = %if.then51.i
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool2.not.i.i = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub53.i)
  %tobool4.not.i.i = icmp eq i32 %sub53.i, 0
  %or.cond.i.i = or i1 %tobool4.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.if.end79.i_crit_edge, label %while.body.preheader.i.i

lor.lhs.false.i.i.if.end79.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

while.body.preheader.i.i:                         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool5.not.i.i = icmp eq i32 %40, 0
  %43 = and i1 %tobool.i, %tobool5.not.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end32.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sg_tmp.0177.i.i = phi ptr [ %call.i.i, %if.end32.i.i.while.body.i.i_crit_edge ], [ %38, %while.body.preheader.i.i ]
  %n.0176.i.i = phi i32 [ %inc.i.i, %if.end32.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %nbytes.0175.i.i = phi i32 [ %nbytes.1.i.i, %if.end32.i.i.while.body.i.i_crit_edge ], [ %sub53.i, %while.body.preheader.i.i ]
  %skip.0174.i.i = phi i32 [ %skip.1.i.i, %if.end32.i.i.while.body.i.i_crit_edge ], [ %40, %while.body.preheader.i.i ]
  %inc.i.i = add i32 %n.0176.i.i, 1
  %length11.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0177.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %length11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.0174.i.i, i32 %45)
  %cmp12.not.i.i = icmp ult i32 %skip.0174.i.i, %45
  br i1 %cmp12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %while.body.i.i
  %sub.i.i = sub i32 %skip.0174.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool16.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool16.not.i.i, label %if.then13.i.i.if.then34.i.i_crit_edge, label %if.then13.i.i.if.end32.i.i_crit_edge

if.then13.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.i

if.then13.i.i.if.then34.i.i_crit_edge:            ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %sub20.i.i = sub i32 %45, %skip.0174.i.i
  %and.i.i = and i32 %sub20.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp21.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp21.i.i, label %if.end23.i.i, label %if.else.i.i.if.then34.i.i_crit_edge

if.else.i.i.if.then34.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i.i

if.end23.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.0175.i.i, i32 %sub20.i.i)
  %cmp26.i.i = icmp ult i32 %nbytes.0175.i.i, %sub20.i.i
  br i1 %cmp26.i.i, label %if.end23.i.i.if.then38.i.i_crit_edge, label %if.end28.i.i

if.end23.i.i.if.then38.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i.i

if.end28.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub31.i.i = sub i32 %nbytes.0175.i.i, %sub20.i.i
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end28.i.i, %if.then13.i.i.if.end32.i.i_crit_edge
  %skip.1.i.i = phi i32 [ %sub.i.i, %if.then13.i.i.if.end32.i.i_crit_edge ], [ 0, %if.end28.i.i ]
  %nbytes.1.i.i = phi i32 [ %nbytes.0175.i.i, %if.then13.i.i.if.end32.i.i_crit_edge ], [ %sub31.i.i, %if.end28.i.i ]
  %call.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg_tmp.0177.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.1.i.i)
  %cmp.not.i.i = icmp eq i32 %nbytes.1.i.i, 0
  %tobool10.not.i.i = icmp eq ptr %call.i.i, null
  %or.cond106.i.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool10.not.i.i
  br i1 %or.cond106.i.i, label %if.else36.i.i, label %if.end32.i.i.while.body.i.i_crit_edge

if.end32.i.i.while.body.i.i_crit_edge:            ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.then34.i.i:                                    ; preds = %if.else.i.i.if.then34.i.i_crit_edge, %if.then13.i.i.if.then34.i.i_crit_edge
  %46 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bufcnt164.i, align 4
  %add.i.i.i = add i32 %47, %sub53.i
  %dec.i.i.i.i = add i32 %add.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp ult i32 %dec.i.i.i.i, 4096
  %shr.i.i.i.i = lshr i32 %dec.i.i.i.i, 12
  %48 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.i.i, i1 true) #12, !range !136
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %48
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 0, i32 %sub.i.i.i.i.i
  %call1.i.i.i = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %cond.i.i.i.i.i) #12
  %49 = inttoptr i32 %call1.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__ctx.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.39) #15
  br label %if.then72.sink.split

if.end.i.i.i:                                     ; preds = %if.then34.i.i
  %54 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bufcnt164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf.i.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %57, i32 0, i32 22
  %58 = call ptr @memcpy(ptr %49, ptr %xmit_buf.i.i.i, i32 %55)
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %59 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bufcnt164.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 %60
  %61 = ptrtoint ptr %skip1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %skip1.i.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %38, i32 noundef %62, i32 noundef %sub53.i, i32 noundef 0) #12
  %sgl.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 24
  tail call void @sg_init_table(ptr noundef %sgl.i.i.i, i32 noundef 1) #12
  %cmp.i41.i.i.i = icmp ugt ptr %49, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i41.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end7.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !134

if.end7.i.i.i.do.body5.i.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end7.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %63 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i.i = icmp ugt ptr %63, %49
  br i1 %cmp1.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, !prof !134

land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %sub.i42.i.i.i = add i32 %call1.i.i.i, 1073741824
  %shr.i43.i.i.i = lshr i32 %sub.i42.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i44.i.i.i = add i32 %64, %shr.i43.i.i.i
  %call.i.i.i.i = tail call i32 @pfn_valid(i32 noundef %add.i44.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, label %do.end8.i.i.i.i, !prof !137

land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.do.body5.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.body5.i.i.i.i_crit_edge, %if.end7.i.i.i.do.body5.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end8.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i43.i.i.i
  %66 = ptrtoint ptr %sgl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sgl.i.i.i, align 4
  %68 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %and2.i.i.i.i.i.i = and i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body11.i.i.i.i.i.i, label %do.body5.i.i.i.i.i.i, !prof !134

do.body5.i.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.body11.i.i.i.i.i.i:                            ; preds = %do.end8.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %sg_set_buf.exit.i.i.i, label %do.body19.i.i.i.i.i.i, !prof !134

do.body19.i.i.i.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_buf.exit.i.i.i:                            ; preds = %do.body11.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i.i = and i32 %call1.i.i.i, 4095
  %and.i.i.i.i.i.i = and i32 %67, 3
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %68
  %69 = ptrtoint ptr %sgl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i.i.i.i.i.i, ptr %sgl.i.i.i, align 4
  %offset1.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 28
  %70 = ptrtoint ptr %offset1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and.i.i.i.i, ptr %offset1.i.i.i.i.i, align 4
  %length.i.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 32
  %71 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i.i.i, ptr %length.i.i.i.i.i, align 4
  %sg14.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %72 = ptrtoint ptr %sg14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %sgl.i.i.i, ptr %sg14.i.i.i, align 8
  %sg_len.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 20
  %73 = ptrtoint ptr %sg_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %sg_len.i.i.i, align 4
  %74 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %bufcnt164.i, align 4
  %75 = ptrtoint ptr %skip1.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %skip1.i.i, align 8
  %76 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__ctx.i, align 8
  %hash_flags.i.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %77, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %hash_flags.i.i.i) #12
  br label %if.end79.i

if.else36.i.i:                                    ; preds = %if.end32.i.i
  br i1 %43, label %if.end41.i.i, label %if.else36.i.i.if.then38.i.i_crit_edge

if.else36.i.i.if.then38.i.i_crit_edge:            ; preds = %if.else36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.else36.i.i.if.then38.i.i_crit_edge, %if.end23.i.i.if.then38.i.i_crit_edge
  %78 = ptrtoint ptr %skip1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %skip1.i.i, align 8
  %call.i.i.i = tail call i32 @sg_nents(ptr noundef nonnull %38) #12
  %80 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bufcnt164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i108.i.i = icmp ne i32 %81, 0
  %inc.i.i.i = zext i1 %tobool.not.i108.i.i to i32
  %spec.select.i.i.i = add i32 %call.i.i.i, %inc.i.i.i
  %82 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i.i.i, i32 20) #12
  %83 = extractvalue { i32, i1 } %82, 1
  br i1 %83, label %kmalloc_array.exit.thread.i.i.i, label %if.end7.i.i.i.i, !prof !137

kmalloc_array.exit.thread.i.i.i:                  ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg391.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %84 = ptrtoint ptr %sg391.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %sg391.i.i.i, align 8
  br label %if.then72.sink.split

if.end7.i.i.i.i:                                  ; preds = %if.then38.i.i
  %85 = extractvalue { i32, i1 } %82, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %85, i32 noundef 3264) #17
  %sg3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %86 = ptrtoint ptr %sg3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call8.i.i.i.i, ptr %sg3.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i.i.if.then72.sink.split_crit_edge, label %if.end7.i114.i.i

if.end7.i.i.i.i.if.then72.sink.split_crit_edge:   ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72.sink.split

if.end7.i114.i.i:                                 ; preds = %if.end7.i.i.i.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i.i.i, i32 noundef %spec.select.i.i.i) #12
  %87 = ptrtoint ptr %sg3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg3.i.i.i, align 8
  %sg_len.i113.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 20
  %89 = ptrtoint ptr %sg_len.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sg_len.i113.i.i, align 4
  %90 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bufcnt164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool11.not.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool11.not.i.i.i, label %if.end7.i114.i.i.if.end17.i.i.i_crit_edge, label %if.then12.i.i.i

if.end7.i114.i.i.if.end17.i.i.i_crit_edge:        ; preds = %if.end7.i114.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end7.i114.i.i
  %92 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf.i115.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %93, i32 0, i32 22
  %94 = ptrtoint ptr %xmit_buf.i115.i.i to i32
  %cmp.i.i116.i.i = icmp ugt ptr %xmit_buf.i115.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i116.i.i, label %land.lhs.true.i.i118.i.i, label %if.then12.i.i.i.do.body5.i.i125.i.i_crit_edge, !prof !134

if.then12.i.i.i.do.body5.i.i125.i.i_crit_edge:    ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i125.i.i

land.lhs.true.i.i118.i.i:                         ; preds = %if.then12.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %95 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i117.i.i = icmp ugt ptr %95, %xmit_buf.i115.i.i
  br i1 %cmp1.i.i117.i.i, label %land.rhs.i.i124.i.i, label %land.lhs.true.i.i118.i.i.do.body5.i.i125.i.i_crit_edge, !prof !134

land.lhs.true.i.i118.i.i.do.body5.i.i125.i.i_crit_edge: ; preds = %land.lhs.true.i.i118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i125.i.i

land.rhs.i.i124.i.i:                              ; preds = %land.lhs.true.i.i118.i.i
  %sub.i.i119.i.i = add i32 %94, 1073741824
  %shr.i.i120.i.i = lshr i32 %sub.i.i119.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %96 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i121.i.i = add i32 %96, %shr.i.i120.i.i
  %call.i.i122.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i121.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122.i.i)
  %tobool.i.i123.i.i = icmp eq i32 %call.i.i122.i.i, 0
  br i1 %tobool.i.i123.i.i, label %land.rhs.i.i124.i.i.do.body5.i.i125.i.i_crit_edge, label %do.end8.i.i128.i.i, !prof !137

land.rhs.i.i124.i.i.do.body5.i.i125.i.i_crit_edge: ; preds = %land.rhs.i.i124.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i125.i.i

do.body5.i.i125.i.i:                              ; preds = %land.rhs.i.i124.i.i.do.body5.i.i125.i.i_crit_edge, %land.lhs.true.i.i118.i.i.do.body5.i.i125.i.i_crit_edge, %if.then12.i.i.i.do.body5.i.i125.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end8.i.i128.i.i:                               ; preds = %land.rhs.i.i124.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %97 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i126.i.i = getelementptr %struct.page, ptr %97, i32 %shr.i.i120.i.i
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %88, align 4
  %100 = ptrtoint ptr %add.ptr.i.i126.i.i to i32
  %and2.i.i.i.i127.i.i = and i32 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i127.i.i)
  %tobool.not.i.i.i85.i.i.i = icmp eq i32 %and2.i.i.i.i127.i.i, 0
  br i1 %tobool.not.i.i.i85.i.i.i, label %do.body11.i.i.i.i132.i.i, label %do.body5.i.i.i.i129.i.i, !prof !134

do.body5.i.i.i.i129.i.i:                          ; preds = %do.end8.i.i128.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.body11.i.i.i.i132.i.i:                         ; preds = %do.end8.i.i128.i.i
  %and.i.i.i.i.i130.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i130.i.i)
  %tobool.i.not.i.i.i.i131.i.i = icmp eq i32 %and.i.i.i.i.i130.i.i, 0
  br i1 %tobool.i.not.i.i.i.i131.i.i, label %sg_set_buf.exit.i139.i.i, label %do.body19.i.i.i.i133.i.i, !prof !134

do.body19.i.i.i.i133.i.i:                         ; preds = %do.body11.i.i.i.i132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_buf.exit.i139.i.i:                         ; preds = %do.body11.i.i.i.i132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i134.i.i = and i32 %94, 4095
  %and.i.i.i.i135.i.i = and i32 %99, 3
  %or.i.i.i.i136.i.i = or i32 %and.i.i.i.i135.i.i, %100
  %101 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i.i.i.i136.i.i, ptr %88, align 4
  %offset1.i.i.i137.i.i = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 1
  %102 = ptrtoint ptr %offset1.i.i.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and.i.i134.i.i, ptr %offset1.i.i.i137.i.i, align 4
  %length.i.i.i138.i.i = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 2
  %103 = ptrtoint ptr %length.i.i.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %91, ptr %length.i.i.i138.i.i, align 4
  %call14.i.i.i = tail call ptr @sg_next(ptr noundef %88) #12
  %104 = ptrtoint ptr %sg_len.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sg_len.i113.i.i, align 4
  %inc16.i.i.i = add i32 %105, 1
  store i32 %inc16.i.i.i, ptr %sg_len.i113.i.i, align 4
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %sg_set_buf.exit.i139.i.i, %if.end7.i114.i.i.if.end17.i.i.i_crit_edge
  %tmp.0.i.i.i = phi ptr [ %call14.i.i.i, %sg_set_buf.exit.i139.i.i ], [ %88, %if.end7.i114.i.i.if.end17.i.i.i_crit_edge ]
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %if.end17.i.i.i
  %skip.0101.i.i.i = phi i32 [ %sub.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %79, %if.end17.i.i.i ]
  %sg.addr.0100.i.i.i = phi ptr [ %call20.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %38, %if.end17.i.i.i ]
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0100.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.0101.i.i.i, i32 %107)
  %cmp.not.i.i.i = icmp ult i32 %skip.0101.i.i.i, %107
  br i1 %cmp.not.i.i.i, label %while.body26.preheader.i.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %sub.i.i.i = sub i32 %skip.0101.i.i.i, %107
  %call20.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0100.i.i.i) #12
  %tobool18.not.i.i.i = icmp eq ptr %call20.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %while.body.i.i.i.while.end41.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i

while.body.i.i.i.while.end41.i.i.i_crit_edge:     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end41.i.i.i

while.body26.preheader.i.i.i:                     ; preds = %land.rhs.i.i.i
  %sub28.peel.i.i.i = sub i32 %107, %skip.0101.i.i.i
  %108 = tail call i32 @llvm.umin.i32(i32 %sub53.i, i32 %sub28.peel.i.i.i) #12
  %sub32.peel.i.i.i = sub i32 %sub53.i, %108
  %109 = ptrtoint ptr %sg.addr.0100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sg.addr.0100.i.i.i, align 4
  %and.i.i.peel.i.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.peel.i.i.i)
  %tobool.i.not.i.peel.i.i.i = icmp eq i32 %and.i.i.peel.i.i.i, 0
  br i1 %tobool.i.not.i.peel.i.i.i, label %sg_page.exit.peel.i.i.i, label %while.body26.preheader.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !134

while.body26.preheader.i.i.i.do.body2.i.i.i.i_crit_edge: ; preds = %while.body26.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i.i

sg_page.exit.peel.i.i.i:                          ; preds = %while.body26.preheader.i.i.i
  %and.i86.peel.i.i.i = and i32 %110, -4
  %111 = ptrtoint ptr %tmp.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tmp.0.i.i.i, align 4
  %and.i.i.i87.peel.i.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87.peel.i.i.i)
  %tobool.i.not.i.i.peel.i.i.i = icmp eq i32 %and.i.i.i87.peel.i.i.i, 0
  br i1 %tobool.i.not.i.i.peel.i.i.i, label %sg_set_page.exit.peel.i.i.i, label %sg_page.exit.peel.i.i.i.do.body19.i.i.i.i.i_crit_edge, !prof !134

sg_page.exit.peel.i.i.i.do.body19.i.i.i.i.i_crit_edge: ; preds = %sg_page.exit.peel.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i.i.i.i

sg_set_page.exit.peel.i.i.i:                      ; preds = %sg_page.exit.peel.i.i.i
  %offset.peel.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0100.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %offset.peel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset.peel.i.i.i, align 4
  %add.peel.i.i.i = add i32 %114, %skip.0101.i.i.i
  %and.i.i88.peel.i.i.i = and i32 %112, 3
  %or.i.i.peel.i.i.i = or i32 %and.i.i88.peel.i.i.i, %and.i86.peel.i.i.i
  %115 = ptrtoint ptr %tmp.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i.i.peel.i.i.i, ptr %tmp.0.i.i.i, align 4
  %offset1.i.peel.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.0.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %offset1.i.peel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add.peel.i.i.i, ptr %offset1.i.peel.i.i.i, align 4
  %length.i.peel.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.0.i.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %length.i.peel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %108, ptr %length.i.peel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32.peel.i.i.i)
  %cmp34.peel.i.i.i = icmp eq i32 %sub32.peel.i.i.i, 0
  br i1 %cmp34.peel.i.i.i, label %if.then35.peel.i.i.i, label %sg_set_page.exit.peel.i.i.i.if.end36.peel.i.i.i_crit_edge

sg_set_page.exit.peel.i.i.i.if.end36.peel.i.i.i_crit_edge: ; preds = %sg_set_page.exit.peel.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.peel.i.i.i

if.then35.peel.i.i.i:                             ; preds = %sg_set_page.exit.peel.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i89.peel.i.i.i = or i32 %and.i86.peel.i.i.i, 2
  %118 = ptrtoint ptr %tmp.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and.i89.peel.i.i.i, ptr %tmp.0.i.i.i, align 4
  br label %if.end36.peel.i.i.i

if.end36.peel.i.i.i:                              ; preds = %if.then35.peel.i.i.i, %sg_set_page.exit.peel.i.i.i.if.end36.peel.i.i.i_crit_edge
  %call37.peel.i.i.i = tail call ptr @sg_next(ptr noundef %tmp.0.i.i.i) #12
  %119 = ptrtoint ptr %sg_len.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sg_len.i113.i.i, align 4
  %inc39.peel.i.i.i = add i32 %120, 1
  store i32 %inc39.peel.i.i.i, ptr %sg_len.i113.i.i, align 4
  %call40.peel.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0100.i.i.i) #12
  %tobool22.not.peel.i.i.i = icmp eq ptr %call40.peel.i.i.i, null
  %or.cond.peel.i.i.i = select i1 %tobool22.not.peel.i.i.i, i1 true, i1 %cmp34.peel.i.i.i
  br i1 %or.cond.peel.i.i.i, label %if.end36.peel.i.i.i.while.end41.i.i.i_crit_edge, label %if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge

if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge: ; preds = %if.end36.peel.i.i.i
  br label %while.body26.i.i.i

if.end36.peel.i.i.i.while.end41.i.i.i_crit_edge:  ; preds = %if.end36.peel.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end41.i.i.i

while.body26.i.i.i:                               ; preds = %if.end36.i.i.i.while.body26.i.i.i_crit_edge, %if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge
  %tmp.1111.i.i.i = phi ptr [ %call37.i.i.i, %if.end36.i.i.i.while.body26.i.i.i_crit_edge ], [ %call37.peel.i.i.i, %if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge ]
  %new_len.addr.0109.i.i.i = phi i32 [ %sub32.i.i.i, %if.end36.i.i.i.while.body26.i.i.i_crit_edge ], [ %sub32.peel.i.i.i, %if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge ]
  %sg.addr.1108.i.i.i = phi ptr [ %call40.i.i.i, %if.end36.i.i.i.while.body26.i.i.i_crit_edge ], [ %call40.peel.i.i.i, %if.end36.peel.i.i.i.while.body26.i.i.i_crit_edge ]
  %length27.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1108.i.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %length27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length27.i.i.i, align 4
  %123 = tail call i32 @llvm.umin.i32(i32 %new_len.addr.0109.i.i.i, i32 %122) #12
  %sub32.i.i.i = sub i32 %new_len.addr.0109.i.i.i, %123
  %124 = ptrtoint ptr %sg.addr.1108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sg.addr.1108.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_page.exit.i.i.i, label %while.body26.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !134

while.body26.i.i.i.do.body2.i.i.i.i_crit_edge:    ; preds = %while.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i.i

do.body2.i.i.i.i:                                 ; preds = %while.body26.i.i.i.do.body2.i.i.i.i_crit_edge, %while.body26.preheader.i.i.i.do.body2.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_page.exit.i.i.i:                               ; preds = %while.body26.i.i.i
  %and.i86.i.i.i = and i32 %125, -4
  %126 = ptrtoint ptr %tmp.1111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tmp.1111.i.i.i, align 4
  %and.i.i.i87.i.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i87.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_page.exit.i.i.i, label %sg_page.exit.i.i.i.do.body19.i.i.i.i.i_crit_edge, !prof !134

sg_page.exit.i.i.i.do.body19.i.i.i.i.i_crit_edge: ; preds = %sg_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i.i.i.i

do.body19.i.i.i.i.i:                              ; preds = %sg_page.exit.i.i.i.do.body19.i.i.i.i.i_crit_edge, %sg_page.exit.peel.i.i.i.do.body19.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_page.exit.i.i.i:                           ; preds = %sg_page.exit.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1108.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset.i.i.i, align 4
  %and.i.i88.i.i.i = and i32 %127, 3
  %or.i.i.i.i.i = or i32 %and.i.i88.i.i.i, %and.i86.i.i.i
  %130 = ptrtoint ptr %tmp.1111.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i.i.i.i.i, ptr %tmp.1111.i.i.i, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.1111.i.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.1111.i.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %123, ptr %length.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32.i.i.i)
  %cmp34.i.i.i = icmp eq i32 %sub32.i.i.i, 0
  br i1 %cmp34.i.i.i, label %if.then35.i.i.i, label %sg_set_page.exit.i.i.i.if.end36.i.i.i_crit_edge

sg_set_page.exit.i.i.i.if.end36.i.i.i_crit_edge:  ; preds = %sg_set_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i.i.i

if.then35.i.i.i:                                  ; preds = %sg_set_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i89.i.i.i = or i32 %and.i86.i.i.i, 2
  %133 = ptrtoint ptr %tmp.1111.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and.i89.i.i.i, ptr %tmp.1111.i.i.i, align 4
  br label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %if.then35.i.i.i, %sg_set_page.exit.i.i.i.if.end36.i.i.i_crit_edge
  %call37.i.i.i = tail call ptr @sg_next(ptr noundef %tmp.1111.i.i.i) #12
  %134 = ptrtoint ptr %sg_len.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sg_len.i113.i.i, align 4
  %inc39.i.i.i = add i32 %135, 1
  store i32 %inc39.i.i.i, ptr %sg_len.i113.i.i, align 4
  %call40.i.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.1108.i.i.i) #12
  %tobool22.not.i.i.i = icmp eq ptr %call40.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool22.not.i.i.i, i1 true, i1 %cmp34.i.i.i
  br i1 %or.cond.i.i.i, label %if.end36.i.i.i.while.end41.i.i.i_crit_edge, label %if.end36.i.i.i.while.body26.i.i.i_crit_edge, !llvm.loop !141

if.end36.i.i.i.while.body26.i.i.i_crit_edge:      ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body26.i.i.i

if.end36.i.i.i.while.end41.i.i.i_crit_edge:       ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end41.i.i.i

while.end41.i.i.i:                                ; preds = %if.end36.i.i.i.while.end41.i.i.i_crit_edge, %if.end36.peel.i.i.i.while.end41.i.i.i_crit_edge, %while.body.i.i.i.while.end41.i.i.i_crit_edge
  %136 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %__ctx.i, align 8
  %hash_flags.i140.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %137, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 6, ptr noundef %hash_flags.i140.i.i) #12
  br label %if.end79.i

if.end41.i.i:                                     ; preds = %if.else36.i.i
  %138 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bufcnt164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool42.not.i.i = icmp eq i32 %139, 0
  br i1 %tobool42.not.i.i, label %if.else55.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.end41.i.i
  %sg_len.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 20
  %140 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %inc.i.i, ptr %sg_len.i.i, align 4
  %sgl.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 24
  tail call void @sg_init_table(ptr noundef %sgl.i.i, i32 noundef 2) #12
  %141 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %142, i32 0, i32 22
  %143 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bufcnt164.i, align 4
  %145 = ptrtoint ptr %xmit_buf.i.i to i32
  %cmp.i.i.i = icmp ugt ptr %xmit_buf.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then43.i.i.do.body5.i.i.i_crit_edge, !prof !134

if.then43.i.i.do.body5.i.i.i_crit_edge:           ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then43.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %146 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %146, %xmit_buf.i.i
  br i1 %cmp1.i.i.i, label %land.rhs.i145.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !134

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.rhs.i145.i.i:                                ; preds = %land.lhs.true.i.i.i
  %sub.i142.i.i = add i32 %145, 1073741824
  %shr.i.i.i = lshr i32 %sub.i142.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %147 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i143.i.i = add i32 %147, %shr.i.i.i
  %call.i144.i.i = tail call i32 @pfn_valid(i32 noundef %add.i143.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i.i)
  %tobool.i.i.i = icmp eq i32 %call.i144.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i145.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !137

land.rhs.i145.i.i.do.body5.i.i.i_crit_edge:       ; preds = %land.rhs.i145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i145.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.then43.i.i.do.body5.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i145.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %148 = load ptr, ptr @mem_map, align 4
  %add.ptr.i146.i.i = getelementptr %struct.page, ptr %148, i32 %shr.i.i.i
  %149 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sgl.i.i, align 4
  %151 = ptrtoint ptr %add.ptr.i146.i.i to i32
  %and2.i.i.i.i.i = and i32 %151, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i147.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i147.i.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !134

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i148.i.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i148.i.i)
  %tobool.i.not.i.i.i149.i.i = icmp eq i32 %and.i.i.i.i148.i.i, 0
  br i1 %tobool.i.not.i.i.i149.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i150.i.i, !prof !134

do.body19.i.i.i150.i.i:                           ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i = and i32 %145, 4095
  %and.i.i.i151.i.i = and i32 %150, 3
  %or.i.i.i152.i.i = or i32 %and.i.i.i151.i.i, %151
  %152 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or.i.i.i152.i.i, ptr %sgl.i.i, align 4
  %offset1.i.i153.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 28
  %153 = ptrtoint ptr %offset1.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %and.i.i.i, ptr %offset1.i.i153.i.i, align 4
  %length.i.i154.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 32
  %154 = ptrtoint ptr %length.i.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %144, ptr %length.i.i154.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 44
  %offset.i.i.i.i = getelementptr %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 48
  %155 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %offset.i.i.i.i, align 4
  %length.i.i156.i.i = getelementptr %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 52
  %156 = ptrtoint ptr %length.i.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %length.i.i156.i.i, align 4
  %157 = ptrtoint ptr %38 to i32
  %or.i.i.i.i = and i32 %157, -4
  %and.i.i157.i.i = or i32 %or.i.i.i.i, 1
  %158 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %and.i.i157.i.i, ptr %arrayidx.i.i.i, align 4
  %sg52.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %159 = ptrtoint ptr %sg52.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %sgl.i.i, ptr %sg52.i.i, align 8
  %160 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sg_len.i.i, align 4
  %inc54.i.i = add i32 %161, 1
  store i32 %inc54.i.i, ptr %sg_len.i.i, align 4
  br label %if.end79.i

if.else55.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg56.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %162 = ptrtoint ptr %sg56.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %38, ptr %sg56.i.i, align 8
  %sg_len57.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 20
  %163 = ptrtoint ptr %sg_len57.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %inc.i.i, ptr %sg_len57.i.i, align 4
  br label %if.end79.i

if.else59.i:                                      ; preds = %if.end49.i
  %164 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bufcnt164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool61.not.i = icmp eq i32 %165, 0
  br i1 %tobool61.not.i, label %if.then65.i, label %if.else59.i.if.end70.i_crit_edge, !prof !137

if.else59.i.if.end70.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then65.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf67.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %167, i32 0, i32 22
  %src69.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 2
  %168 = ptrtoint ptr %src69.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %src69.i, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %xmit_buf67.i, ptr noundef %169, i32 noundef 0, i32 noundef %xmit_len.1.i, i32 noundef 0) #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i, %if.else59.i.if.end70.i_crit_edge
  %sgl.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 24
  tail call void @sg_init_table(ptr noundef %sgl.i, i32 noundef 1) #12
  %170 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %__ctx.i, align 8
  %xmit_buf75.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %171, i32 0, i32 22
  %172 = ptrtoint ptr %xmit_buf75.i to i32
  %cmp.i.i = icmp ugt ptr %xmit_buf75.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end70.i.do.body5.i.i_crit_edge, !prof !134

if.end70.i.do.body5.i.i_crit_edge:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %173 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %173, %xmit_buf75.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !134

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i147.i = add i32 %172, 1073741824
  %shr.i.i = lshr i32 %sub.i147.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %174 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %174, %shr.i.i
  %call.i148.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148.i)
  %tobool.i.i = icmp eq i32 %call.i148.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !137

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end70.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %175 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %175, i32 %shr.i.i
  %176 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sgl.i, align 4
  %178 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %178, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i149.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i149.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i150.i, !prof !134

do.body5.i.i.i150.i:                              ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i151.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i151.i)
  %tobool.i.not.i.i.i152.i = icmp eq i32 %and.i.i.i.i151.i, 0
  br i1 %tobool.i.not.i.i.i152.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !134

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i153.i = and i32 %172, 4095
  %and.i.i.i154.i = and i32 %177, 3
  %or.i.i.i155.i = or i32 %and.i.i.i154.i, %178
  %179 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i.i.i155.i, ptr %sgl.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 28
  %180 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %and.i153.i, ptr %offset1.i.i.i, align 4
  %length.i.i156.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 32
  %181 = ptrtoint ptr %length.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %xmit_len.1.i, ptr %length.i.i156.i, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 16
  %182 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %sgl.i, ptr %sg.i, align 8
  %sg_len.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 20
  %183 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %sg_len.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %sg_set_buf.exit.i, %if.else55.i.i, %sg_set_buf.exit.i.i, %while.end41.i.i.i, %sg_set_buf.exit.i.i.i, %lor.lhs.false.i.i.if.end79.i_crit_edge, %if.then51.i.if.end79.i_crit_edge
  %184 = ptrtoint ptr %bufcnt164.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %hash_later.0.i, ptr %bufcnt164.i, align 4
  br i1 %tobool.i, label %if.end79.i.lor.lhs.false_crit_edge, label %if.then82.i

if.end79.i.lor.lhs.false_crit_edge:               ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %total166171.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %xmit_len.1.i, ptr %total166171.i, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then82.i, %if.end79.i.lor.lhs.false_crit_edge, %if.end.thread.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge
  %total = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 68
  %186 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool31.not = icmp eq i32 %187, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.then72_crit_edge, label %do.body34

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

do.body34:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_hash_handle_queue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_hash_handle_queue, %if.then40)) #12
          to label %do.end46 [label %if.then40], !srcloc !133

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dd, align 4
  %190 = ptrtoint ptr %op_update to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %op_update, align 4, !range !130
  %192 = zext i8 %191 to i32
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 0, i32 1
  %193 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_hash_handle_queue.__UNIQUE_ID_ddebug251, ptr noundef %189, ptr noundef nonnull @.str.38, i32 noundef %192, i32 noundef %194) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body34
  %195 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %196, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 162) #12, !srcloc !132
  %197 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %198, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1) #12, !srcloc !132
  %199 = ptrtoint ptr %io_hash_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io_hash_base.i.i.i, align 4
  %add.ptr.i.i.i122 = getelementptr i8, ptr %200, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i122, i32 1) #12, !srcloc !132
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %201 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %202, i32 20
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #12, !srcloc !131
  %and.i.i123 = and i32 %203, -4
  %204 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %205, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %and.i.i123) #12, !srcloc !132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #12
  %206 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %207, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 162) #12, !srcloc !132
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 0, i32 1
  %208 = ptrtoint ptr %digcnt to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %digcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %209)
  %tobool47.not = icmp eq i64 %209, 0
  br i1 %tobool47.not, label %do.end46.if.end49_crit_edge, label %if.then48

do.end46.if.end49_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %do.end46
  %digest.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 0, i32 3
  %nregs.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 8
  %210 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %nregs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp5.not.i.i = icmp eq i32 %211, 0
  br i1 %cmp5.not.i.i, label %if.then48.if.end49_crit_edge, label %for.body.lr.ph.i.i

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.body.lr.ph.i.i:                               ; preds = %if.then48
  %212 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %__ctx.i, align 8
  %io_hash_base.i.i.i125 = getelementptr inbounds %struct.s5p_aes_dev, ptr %213, i32 0, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i128, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %i.06.i.i, 2
  %add.i.i126 = add i32 %shl.i.i, 176
  %arrayidx.i.i = getelementptr i32, ptr %digest.i.i, i32 %i.06.i.i
  %214 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx.i.i, align 4
  %216 = ptrtoint ptr %io_hash_base.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %io_hash_base.i.i.i125, align 4
  %add.ptr.i.i.i127 = getelementptr i8, ptr %217, i32 %add.i.i126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i127, i32 %215) #12, !srcloc !132
  %inc.i.i128 = add nuw i32 %i.06.i.i, 1
  %218 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %nregs.i.i, align 8
  %cmp.i.i129 = icmp ult i32 %inc.i.i128, %219
  br i1 %cmp.i.i129, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end49_crit_edge

for.body.i.i.if.end49_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end49:                                         ; preds = %for.body.i.i.if.end49_crit_edge, %if.then48.if.end49_crit_edge, %do.end46.if.end49_crit_edge
  %220 = ptrtoint ptr %op_update to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %op_update, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool51.not = icmp eq i8 %221, 0
  %222 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %total, align 4
  br i1 %tobool51.not, label %if.end49.out_crit_edge, label %if.then52

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then52:                                        ; preds = %if.end49
  %224 = ptrtoint ptr %finup.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %finup.i, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool54 = icmp ne i8 %225, 0
  %call55 = tail call fastcc i32 @s5p_hash_xmit_dma(ptr noundef %dd, i32 noundef %223, i1 noundef zeroext %tobool54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, -115
  br i1 %cmp56.not, label %if.then52.cleanup_crit_edge, label %land.lhs.true

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then52
  %226 = ptrtoint ptr %finup.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %finup.i, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool59.not = icmp eq i8 %227, 0
  br i1 %tobool59.not, label %land.lhs.true.if.then72_crit_edge, label %land.lhs.true61

land.lhs.true.if.then72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

land.lhs.true61:                                  ; preds = %land.lhs.true
  %error = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 73
  %228 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %error, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool62.not = icmp eq i8 %229, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true61.if.then72_crit_edge

land.lhs.true61.if.then72_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %total, align 4
  br label %out

out:                                              ; preds = %if.then63, %if.end49.out_crit_edge
  %.sink = phi i32 [ %231, %if.then63 ], [ %223, %if.end49.out_crit_edge ]
  %call68 = tail call fastcc i32 @s5p_hash_xmit_dma(ptr noundef %dd, i32 noundef %.sink, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call68)
  %cmp70.not = icmp eq i32 %call68, -115
  br i1 %cmp70.not, label %out.cleanup_crit_edge, label %out.if.then72_crit_edge

out.if.then72_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then72.sink.split:                             ; preds = %if.end7.i.i.i.i.if.then72.sink.split_crit_edge, %kmalloc_array.exit.thread.i.i.i, %do.end.i.i.i
  %error.i112.i.i = getelementptr inbounds %struct.ahash_request, ptr %call14, i32 1, i32 5, i32 73
  %232 = ptrtoint ptr %error.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 1, ptr %error.i112.i.i, align 1
  br label %if.then72

if.then72:                                        ; preds = %if.then72.sink.split, %out.if.then72_crit_edge, %land.lhs.true61.if.then72_crit_edge, %land.lhs.true.if.then72_crit_edge, %lor.lhs.false.if.then72_crit_edge
  %err.0135 = phi i32 [ %call68, %out.if.then72_crit_edge ], [ 0, %lor.lhs.false.if.then72_crit_edge ], [ %call55, %land.lhs.true.if.then72_crit_edge ], [ %call55, %land.lhs.true61.if.then72_crit_edge ], [ -12, %if.then72.sink.split ]
  tail call fastcc void @s5p_hash_finish_req(ptr noundef %call14, i32 noundef %err.0135)
  br label %retry

cleanup.sink.split:                               ; preds = %if.end10.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hash_lock, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %if.then52.cleanup_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_hash_finish_req(ptr noundef %req, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 8
  %hash_flags = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hash_flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %5 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !134

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

sg_virt.exit:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %9) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 8
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %dec.i = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i56 = lshr i32 %dec.i, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %shr.i56, i1 true) #12, !range !136
  %sub.i.i = sub nuw nsw i32 32, %17
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @free_pages(i32 noundef %12, i32 noundef %cond.i.i) #12
  br label %if.end

if.end:                                           ; preds = %sg_virt.exit, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %hash_flags, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sg10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %21 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg10, align 8
  tail call void @kfree(ptr noundef %22) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %sg12 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %23 = ptrtoint ptr %sg12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sg12, align 8
  %24 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_flags, align 4
  %and = and i32 %25, -97
  store i32 %and, ptr %hash_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool14.not = icmp eq i32 %err, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %error = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %error, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not = icmp eq i8 %27, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %nregs.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %28 = ptrtoint ptr %nregs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nregs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.not.i = icmp eq i32 %29, 0
  br i1 %cmp8.not.i, label %if.then16.s5p_hash_read_msg.exit_crit_edge, label %for.body.lr.ph.i

if.then16.s5p_hash_read_msg.exit_crit_edge:       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_read_msg.exit

for.body.lr.ph.i:                                 ; preds = %if.then16
  %30 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__ctx.i, align 8
  %io_hash_base.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %31, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.09.i, 2
  %add.i61 = add i32 %shl.i, 256
  %32 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %add.i61
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !131
  %arrayidx.i = getelementptr i32, ptr %digest.i, i32 %i.09.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %36 = ptrtoint ptr %nregs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nregs.i, align 8
  %cmp.i62 = icmp ult i32 %inc.i, %37
  br i1 %cmp.i62, label %for.body.i.for.body.i_crit_edge, label %for.body.i.s5p_hash_read_msg.exit_crit_edge

for.body.i.s5p_hash_read_msg.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_read_msg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

s5p_hash_read_msg.exit:                           ; preds = %for.body.i.s5p_hash_read_msg.exit_crit_edge, %if.then16.s5p_hash_read_msg.exit_crit_edge
  %38 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %hash_flags, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool19.not = icmp eq i32 %40, 0
  br i1 %tobool19.not, label %s5p_hash_read_msg.exit.do.body24_crit_edge, label %if.then20

s5p_hash_read_msg.exit.do.body24_crit_edge:       ; preds = %s5p_hash_read_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.then20:                                        ; preds = %s5p_hash_read_msg.exit
  %41 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__ctx.i, align 8
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %digcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool.not.i64 = icmp eq i64 %44, 0
  br i1 %tobool.not.i64, label %if.then20.do.body.i_crit_edge, label %if.then.i66

if.then20.do.body.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then.i66:                                      ; preds = %if.then20
  %result.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %45 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %result.i.i, align 32
  %tobool.not.i.i65 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i65, label %if.then.i66.do.body.i_crit_edge, label %if.end.i.i

if.then.i66.do.body.i_crit_edge:                  ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %nregs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nregs.i, align 8
  %mul.i.i = shl i32 %48, 2
  %49 = call ptr @memcpy(ptr %46, ptr %digest.i, i32 %mul.i.i)
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i, %if.then.i66.do.body.i_crit_edge, %if.then20.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_hash_finish.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_hash_finish_req, %if.then6.i)) #12
          to label %do.body24 [label %if.then6.i], !srcloc !133

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %42, align 4
  %52 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %digcnt.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_hash_finish.__UNIQUE_ID_ddebug250, ptr noundef %51, ptr noundef nonnull @.str.44, i64 noundef %53) #12
  br label %do.body24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %error22 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %54 = ptrtoint ptr %error22 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %error22, align 1
  br label %do.body24

do.body24:                                        ; preds = %if.else, %if.then6.i, %do.body.i, %s5p_hash_read_msg.exit.do.body24_crit_edge
  %hash_lock = getelementptr inbounds %struct.s5p_aes_dev, ptr %1, i32 0, i32 18
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hash_lock) #12
  %55 = ptrtoint ptr %hash_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hash_flags, align 4
  %and30 = and i32 %56, -28
  store i32 %and30, ptr %hash_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hash_lock, i32 noundef %call26) #12
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %57 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %complete, align 8
  %tobool32.not = icmp eq ptr %58, null
  br i1 %tobool32.not, label %do.body24.if.end37_crit_edge, label %if.then33

do.body24.if.end37_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %58(ptr noundef %req, i32 noundef %err) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body24.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_hash_xmit_dma(ptr noundef %dd, i32 noundef %length, i1 noundef zeroext %final) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_req = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 23
  %0 = ptrtoint ptr %hash_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_req, align 4
  %2 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 16
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 8
  %sg_len = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 20
  %6 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_len, align 4
  %call1 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41) #15
  %error = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 73
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %error, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %hash_flags = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %hash_flags) #12
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg, align 8
  %hash_sg_iter = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 24
  %13 = ptrtoint ptr %hash_sg_iter to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %hash_sg_iter, align 4
  %hash_sg_cnt = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 25
  %14 = ptrtoint ptr %hash_sg_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1, ptr %hash_sg_cnt, align 4
  %15 = ptrtoint ptr %hash_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hash_req, align 4
  %engine.i = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 5, i32 12
  %17 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %engine.i, align 4
  %or.i = or i32 %18, 16
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %digcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i, !prof !137

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %digest.i.i = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 0, i32 3
  %nregs.i.i = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 5, i32 8
  %21 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nregs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp5.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp5.not.i.i, label %if.then.i.s5p_hash_write_ctx_iv.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.s5p_hash_write_ctx_iv.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_write_ctx_iv.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %io_hash_base.i.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %i.06.i.i, 2
  %add.i.i = add i32 %shl.i.i, 176
  %arrayidx.i.i = getelementptr i32, ptr %digest.i.i, i32 %i.06.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %io_hash_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_hash_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %24) #12, !srcloc !132
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %27 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nregs.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %28
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.s5p_hash_write_ctx_iv.exit.i_crit_edge

for.body.i.i.s5p_hash_write_ctx_iv.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_write_ctx_iv.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

s5p_hash_write_ctx_iv.exit.i:                     ; preds = %for.body.i.i.s5p_hash_write_ctx_iv.exit.i_crit_edge, %if.then.i.s5p_hash_write_ctx_iv.exit.i_crit_edge
  %or3.i = or i32 %18, 48
  br label %if.end.i

if.end.i:                                         ; preds = %s5p_hash_write_ctx_iv.exit.i, %if.end.if.end.i_crit_edge
  %configflags.0.i = phi i32 [ %or3.i, %s5p_hash_write_ctx_iv.exit.i ], [ %or.i, %if.end.if.end.i_crit_edge ]
  br i1 %final, label %if.then5.i, label %if.end.i.s5p_hash_write_ctrl.exit_crit_edge

if.end.i.s5p_hash_write_ctrl.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_write_ctrl.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %digcnt.i, align 8
  %mul.i = shl i64 %30, 3
  %conv.i = trunc i64 %mul.i to i32
  %shr.i = lshr i64 %mul.i, 32
  %conv7.i = trunc i64 %shr.i to i32
  br label %s5p_hash_write_ctrl.exit

s5p_hash_write_ctrl.exit:                         ; preds = %if.then5.i, %if.end.i.s5p_hash_write_ctrl.exit_crit_edge
  %prelow.0.i = phi i32 [ %conv.i, %if.then5.i ], [ 0, %if.end.i.s5p_hash_write_ctrl.exit_crit_edge ]
  %prehigh.0.i = phi i32 [ %conv7.i, %if.then5.i ], [ 0, %if.end.i.s5p_hash_write_ctrl.exit_crit_edge ]
  %low.0.i = phi i32 [ %length, %if.then5.i ], [ 0, %if.end.i.s5p_hash_write_ctrl.exit_crit_edge ]
  %high.0.i = phi i32 [ 0, %if.then5.i ], [ -2147483648, %if.end.i.s5p_hash_write_ctrl.exit_crit_edge ]
  %io_hash_base.i.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 17
  %31 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %low.0.i) #12, !srcloc !132
  %33 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %34, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %high.0.i) #12, !srcloc !132
  %35 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %prelow.0.i) #12, !srcloc !132
  %37 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %prehigh.0.i) #12, !srcloc !132
  %39 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_hash_base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 15) #12, !srcloc !132
  %41 = ptrtoint ptr %io_hash_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_hash_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %configflags.0.i) #12, !srcloc !132
  %conv = zext i32 %length to i64
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %digcnt to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %digcnt, align 8
  %add = add i64 %44, %conv
  store i64 %add, ptr %digcnt, align 8
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 68
  %45 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %total, align 4
  %sub = sub i32 %46, %length
  store i32 %sub, ptr %total, align 4
  br i1 %final, label %if.then6, label %s5p_hash_write_ctrl.exit.if.end8_crit_edge

s5p_hash_write_ctrl.exit.if.end8_crit_edge:       ; preds = %s5p_hash_write_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %s5p_hash_write_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %hash_flags) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %s5p_hash_write_ctrl.exit.if.end8_crit_edge
  %47 = ptrtoint ptr %hash_sg_iter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hash_sg_iter, align 4
  %49 = ptrtoint ptr %hash_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hash_sg_cnt, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %hash_sg_cnt, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_address.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.s5p_aes_dev, ptr %dd, i32 0, i32 3
  %53 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #12, !srcloc !132
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length.i, align 4
  %57 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %58, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %56) #12, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ -115, %if.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__ctx.i, align 8
  %error = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %5 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bufcnt, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %digcnt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %digcnt, align 8
  %skip = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = call ptr @memset(ptr %skip, i32 0, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_hash_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_hash_init, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %12 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 -128
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_hash_init.__UNIQUE_ID_ddebug252, ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef %15) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %__crt_alg.i.i36 = getelementptr i8, ptr %1, i32 12
  %16 = ptrtoint ptr %__crt_alg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i36, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i37, align 128
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %19, label %sw.default [
    i32 16, label %sw.bb
    i32 20, label %sw.bb10
    i32 32, label %sw.bb13
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %engine = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %21 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %engine, align 4
  %nregs = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %22 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %nregs, align 8
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %engine11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %23 = ptrtoint ptr %engine11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %engine11, align 4
  %nregs12 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %24 = ptrtoint ptr %nregs12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %nregs12, align 8
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %engine14 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %25 = ptrtoint ptr %engine14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %engine14, align 4
  %nregs15 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %26 = ptrtoint ptr %nregs15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %nregs15, align 8
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %error, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb13, %sw.bb10, %sw.bb
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %2 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufcnt, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add)
  %cmp = icmp ult i32 %add, 65
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 80
  %add.ptr = getelementptr i8, ptr %buffer, i32 %3
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %5, i32 noundef 0, i32 noundef %1, i32 noundef 0) #12
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 8
  %8 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bufcnt, align 4
  %add7 = add i32 %9, %7
  store i32 %add7, ptr %bufcnt, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 0, i32 5
  %op_update.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %op_update.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %op_update.i, align 4
  %13 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call3.i = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %14, ptr noundef %req) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call3.i, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 72
  %0 = ptrtoint ptr %finup to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %finup, align 8
  %error = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %error, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %digcnt to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %digcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %5 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp = icmp ult i32 %6, 64
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm, align 16
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 2
  %9 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback, align 4
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 80
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %result, align 32
  %call5 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %10, ptr noundef %buffer, i32 noundef %6, ptr noundef %12) #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 5
  %op_update.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %op_update.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %op_update.i, align 4
  %16 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call3.i = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %17, ptr noundef %req) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.end6 ], [ %call5, %if.then2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %finup = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 72
  %0 = ptrtoint ptr %finup to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %finup, align 8
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %3 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bufcnt.i, align 4
  %add.i = add i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 65
  br i1 %cmp.i, label %if.then2.i, label %s5p_hash_update.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %buffer.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 80
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %4
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src.i, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i, ptr noundef %6, i32 noundef 0, i32 noundef %2, i32 noundef 0) #12
  %7 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes.i, align 8
  %9 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bufcnt.i, align 4
  %add7.i = add i32 %10, %8
  store i32 %add7.i, ptr %bufcnt.i, align 4
  br label %if.end

s5p_hash_update.exit:                             ; preds = %if.end.i
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %12, i32 0, i32 5
  %op_update.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %op_update.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %op_update.i.i, align 4
  %14 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call3.i.i = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %15, ptr noundef %req) #12
  %16 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call3.i.i, label %s5p_hash_update.exit.if.end_crit_edge [
    i32 -115, label %s5p_hash_update.exit.cleanup_crit_edge
    i32 -16, label %s5p_hash_update.exit.cleanup_crit_edge24
  ]

s5p_hash_update.exit.cleanup_crit_edge24:         ; preds = %s5p_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

s5p_hash_update.exit.cleanup_crit_edge:           ; preds = %s5p_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

s5p_hash_update.exit.if.end_crit_edge:            ; preds = %s5p_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %s5p_hash_update.exit.if.end_crit_edge, %if.then2.i, %entry.if.end_crit_edge
  %retval.0.i23 = phi i32 [ %call3.i.i, %s5p_hash_update.exit.if.end_crit_edge ], [ 0, %if.then2.i ], [ 0, %entry.if.end_crit_edge ]
  %17 = ptrtoint ptr %finup to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %finup, align 8
  %error.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %error.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i11 = icmp eq i8 %19, 0
  br i1 %tobool.not.i11, label %if.end.i12, label %if.end.s5p_hash_final.exit_crit_edge

if.end.s5p_hash_final.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5p_hash_final.exit

if.end.i12:                                       ; preds = %if.end
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %digcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool1.not.i = icmp eq i64 %21, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i12.if.end6.i_crit_edge

if.end.i12.if.end6.i_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i12
  %bufcnt.i13 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %22 = ptrtoint ptr %bufcnt.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufcnt.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp.i14 = icmp ult i32 %23, 64
  br i1 %cmp.i14, label %if.then2.i16, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then2.i16:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tfm.i, align 16
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %25, i32 1, i32 2
  %26 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fallback.i, align 4
  %buffer.i15 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 80
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %28 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %result.i, align 32
  %call5.i = tail call i32 @crypto_shash_tfm_digest(ptr noundef %27, ptr noundef %buffer.i15, i32 noundef %23, ptr noundef %29) #12
  br label %s5p_hash_final.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i12.if.end6.i_crit_edge
  %tfm.i.i17 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %30 = ptrtoint ptr %tfm.i.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tfm.i.i17, align 16
  %__crt_ctx.i.i.i18 = getelementptr inbounds %struct.crypto_tfm, ptr %31, i32 0, i32 5
  %op_update.i.i19 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %op_update.i.i19 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %op_update.i.i19, align 4
  %33 = ptrtoint ptr %__crt_ctx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_ctx.i.i.i18, align 4
  %call3.i.i20 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %34, ptr noundef %req) #12
  br label %s5p_hash_final.exit

s5p_hash_final.exit:                              ; preds = %if.end6.i, %if.then2.i16, %if.end.s5p_hash_final.exit_crit_edge
  %retval.0.i21 = phi i32 [ %call3.i.i20, %if.end6.i ], [ %call5.i, %if.then2.i16 ], [ -22, %if.end.s5p_hash_final.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i23)
  %tobool.not = icmp eq i32 %retval.0.i23, 0
  %spec.select = select i1 %tobool.not, i32 %retval.0.i21, i32 %retval.0.i23
  br label %cleanup

cleanup:                                          ; preds = %s5p_hash_final.exit, %s5p_hash_update.exit.cleanup_crit_edge, %s5p_hash_update.exit.cleanup_crit_edge24
  %retval.0 = phi i32 [ %spec.select, %s5p_hash_final.exit ], [ %call3.i.i, %s5p_hash_update.exit.cleanup_crit_edge ], [ %call3.i.i, %s5p_hash_update.exit.cleanup_crit_edge24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %4 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__ctx.i.i, align 8
  %error.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %5 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bufcnt.i, align 4
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %digcnt.i, align 8
  %skip.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %7 = call ptr @memset(ptr %skip.i, i32 0, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_hash_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_hash_digest, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !133

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 -128
  %14 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_hash_init.__UNIQUE_ID_ddebug252, ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef %15) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %__crt_alg.i.i36.i = getelementptr i8, ptr %1, i32 12
  %16 = ptrtoint ptr %__crt_alg.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i36.i, align 4
  %add.ptr.i.i.i37.i = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i37.i, align 128
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %19, label %s5p_hash_init.exit [
    i32 16, label %do.end.i.cond.false_crit_edge
    i32 20, label %sw.bb10.i
    i32 32, label %sw.bb13.i
  ]

do.end.i.cond.false_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

sw.bb10.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

sw.bb13.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

s5p_hash_init.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %error.i, align 1
  br label %cond.end

cond.false:                                       ; preds = %sw.bb13.i, %sw.bb10.i, %do.end.i.cond.false_crit_edge
  %.sink5 = phi i32 [ 4, %sw.bb13.i ], [ 0, %sw.bb10.i ], [ 2, %do.end.i.cond.false_crit_edge ]
  %.sink = phi i32 [ 8, %sw.bb13.i ], [ 5, %sw.bb10.i ], [ 4, %do.end.i.cond.false_crit_edge ]
  %engine14.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %22 = ptrtoint ptr %engine14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink5, ptr %engine14.i, align 4
  %nregs15.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %23 = ptrtoint ptr %nregs15.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %nregs15.i, align 8
  %call1 = tail call i32 @s5p_hash_finup(ptr noundef %req)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %s5p_hash_init.exit
  %cond = phi i32 [ %call1, %cond.false ], [ -22, %s5p_hash_init.exit ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_hash_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 76
  %0 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bufcnt, align 4
  %add = add i32 %1, 120
  %2 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 %add)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_hash_import(ptr nocapture noundef %req, ptr nocapture noundef readonly %in) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 184)
  %bufcnt = getelementptr inbounds %struct.s5p_hash_reqctx, ptr %in, i32 0, i32 13
  %3 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %7 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %__ctx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi i8 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  %8 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 73
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_hash_cra_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr @s5p_dev, align 4
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__crt_ctx.i.i, align 4
  %call2.i = tail call ptr @crypto_alloc_shash(ptr noundef %cra_name.i.i, i32 noundef 0, i32 noundef 256) #12
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %cra_name.i.i) #15
  %5 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fallback.i, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %s5p_hash_cra_init_alg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %8 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 184, ptr %reqsize1.i.i, align 32
  br label %s5p_hash_cra_init_alg.exit

s5p_hash_cra_init_alg.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %7, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_hash_cra_exit(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #12
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fallback, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_s5p_sss__256_2357_s5p_aes_crypto_init6, !1, !"__initcall__kmod_s5p_sss__256_2357_s5p_aes_crypto_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/s5p-sss.c", i32 2357, i32 1}
!2 = !{ptr @__exitcall_s5p_aes_crypto_exit, !1, !"__exitcall_s5p_aes_crypto_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description257, !4, !"__UNIQUE_ID_description257", i1 false, i1 false}
!4 = !{!"../drivers/crypto/s5p-sss.c", i32 2359, i32 1}
!5 = !{ptr @__UNIQUE_ID_file258, !6, !"__UNIQUE_ID_file258", i1 false, i1 false}
!6 = !{!"../drivers/crypto/s5p-sss.c", i32 2360, i32 1}
!7 = !{ptr @__UNIQUE_ID_license259, !6, !"__UNIQUE_ID_license259", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author260, !9, !"__UNIQUE_ID_author260", i1 false, i1 false}
!9 = !{!"../drivers/crypto/s5p-sss.c", i32 2361, i32 1}
!10 = !{ptr @__UNIQUE_ID_author261, !11, !"__UNIQUE_ID_author261", i1 false, i1 false}
!11 = !{!"../drivers/crypto/s5p-sss.c", i32 2362, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/s5p-sss.c", i32 2352, i32 11}
!14 = !{ptr @s5p_aes_crypto, !15, !"s5p_aes_crypto", i1 false, i1 false}
!15 = !{!"../drivers/crypto/s5p-sss.c", i32 2348, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/s5p-sss.c", i32 2206, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/s5p-sss.c", i32 2211, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @s5p_aes_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @s5p_aes_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/s5p-sss.c", i32 2220, i32 10}
!28 = !{ptr @s5p_aes_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/crypto/s5p-sss.c", i32 2227, i32 4}
!30 = !{ptr @s5p_aes_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @s5p_aes_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/crypto/s5p-sss.c", i32 2235, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @s5p_aes_probe.__key.11, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/crypto/s5p-sss.c", i32 2236, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/s5p-sss.c", i32 2244, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s5p_aes_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5p_aes_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @s5p_aes_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/crypto/s5p-sss.c", i32 2251, i32 3}
!44 = !{ptr @s5p_aes_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/s5p-sss.c", i32 2281, i32 5}
!47 = !{ptr @s5p_aes_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @s5p_aes_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/s5p-sss.c", i32 2288, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @s5p_aes_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @s5p_aes_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @s5p_aes_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/crypto/s5p-sss.c", i32 2301, i32 3}
!56 = !{ptr @s5p_aes_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @s5p_dev, !58, !"s5p_dev", i1 false, i1 false}
!58 = !{!"../drivers/crypto/s5p-sss.c", i32 435, i32 28}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/s5p-sss.c", i32 484, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @s5p_sg_done.__UNIQUE_ID_ddebug249, !60, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/s5p-sss.c", i32 1853, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @s5p_set_indata_start.__UNIQUE_ID_ddebug253, !65, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/s5p-sss.c", i32 1880, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @s5p_set_outdata_start.__UNIQUE_ID_ddebug254, !69, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!72 = !{ptr @algs, !73, !"algs", i1 false, i1 false}
!73 = !{!"../drivers/crypto/s5p-sss.c", i32 2097, i32 28}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/s5p-sss.c", i32 2036, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @s5p_aes_crypt.__UNIQUE_ID_ddebug255, !75, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/s5p-sss.c", i32 1410, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @s5p_hash_handle_queue.__UNIQUE_ID_ddebug251, !79, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/s5p-sss.c", i32 1034, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @s5p_hash_copy_sgs._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @s5p_hash_copy_sgs._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/s5p-sss.c", i32 990, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @s5p_hash_xmit_dma._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @s5p_hash_xmit_dma._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/s5p-sss.c", i32 1318, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s5p_hash_finish.__UNIQUE_ID_ddebug250, !93, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!96 = !{ptr @algs_sha1_md5_sha256, !97, !"algs_sha1_md5_sha256", i1 false, i1 false}
!97 = !{!"../drivers/crypto/s5p-sss.c", i32 1730, i32 25}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/s5p-sss.c", i32 1610, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @s5p_hash_init.__UNIQUE_ID_ddebug252, !99, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/s5p-sss.c", i32 1659, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @s5p_hash_cra_init_alg._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @s5p_hash_cra_init_alg._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @s5p_sss_dt_match, !108, !"s5p_sss_dt_match", i1 false, i1 false}
!108 = !{!"../drivers/crypto/s5p-sss.c", i32 408, i32 34}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/s5p-sss.c", i32 393, i32 17}
!111 = !{ptr @s5p_aes_data, !112, !"s5p_aes_data", i1 false, i1 false}
!112 = !{!"../drivers/crypto/s5p-sss.c", i32 390, i32 41}
!113 = !{ptr @exynos_aes_data, !114, !"exynos_aes_data", i1 false, i1 false}
!114 = !{!"../drivers/crypto/s5p-sss.c", i32 396, i32 41}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/s5p-sss.c", i32 405, i32 17}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/s5p-sss.c", i32 405, i32 25}
!119 = !{ptr @exynos5433_slim_aes_data, !120, !"exynos5433_slim_aes_data", i1 false, i1 false}
!120 = !{!"../drivers/crypto/s5p-sss.c", i32 402, i32 41}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i8 0, i8 2}
!131 = !{i64 6380273}
!132 = !{i64 6379855}
!133 = !{i64 2148780510, i64 2148780515, i64 2148780528, i64 2148780572, i64 2148780606, i64 2148780627}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2153941539, i64 2153942031, i64 2153941576, i64 2153941632, i64 2153941666, i64 2153941690, i64 2153941731, i64 2153941752, i64 2153941780, i64 2153941814}
!136 = !{i32 0, i32 33}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 2153944300, i64 2153944792, i64 2153944337, i64 2153944393, i64 2153944427, i64 2153944451, i64 2153944492, i64 2153944513, i64 2153944541, i64 2153944575}
!139 = !{i64 2153937981, i64 2153938473, i64 2153938018, i64 2153938074, i64 2153938108, i64 2153938132, i64 2153938173, i64 2153938194, i64 2153938222, i64 2153938256}
!140 = !{i64 2153939591, i64 2153940083, i64 2153939628, i64 2153939684, i64 2153939718, i64 2153939742, i64 2153939783, i64 2153939804, i64 2153939832, i64 2153939866}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.peeled.count", i32 1}
