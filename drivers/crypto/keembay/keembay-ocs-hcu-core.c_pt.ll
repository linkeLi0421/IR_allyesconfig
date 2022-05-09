; ModuleID = '/llk/IR_all_yes/drivers/crypto/keembay/keembay-ocs-hcu-core.c_pt.bc'
source_filename = "../drivers/crypto/keembay/keembay-ocs-hcu-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocs_hcu_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocs_hcu_dev = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.completion, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.ocs_hcu_ctx = type { %struct.crypto_engine_ctx, ptr, [128 x i8], i32, i8, i8 }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.ocs_hcu_rctx = type { ptr, i32, i32, i32, i32, ptr, %struct.ocs_hcu_hash_ctx, [256 x i8], i32, i32, i32, ptr, i32, i32, i32 }
%struct.ocs_hcu_hash_ctx = type { i32, %struct.ocs_hcu_idata }
%struct.ocs_hcu_idata = type { i32, i32, [64 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_keembay_ocs_hcu__252_1262_kmb_ocs_hcu_driver_init6 = internal global ptr @kmb_ocs_hcu_driver_init, section ".initcall6.init", align 4
@kmb_ocs_hcu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kmb_ocs_hcu_probe, ptr @kmb_ocs_hcu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kmb_ocs_hcu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kmb_ocs_hcu_driver_exit = internal global ptr @kmb_ocs_hcu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [60 x i8] c"keembay_ocs_hcu.file=drivers/crypto/keembay/keembay-ocs-hcu\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [28 x i8] c"keembay_ocs_hcu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keembay-ocs-hcu\00", [16 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-ocs-hcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not retrieve io mem resource.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_ocs_hcu_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/crypto/keembay/keembay-ocs-hcu-core.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry_ptr = internal global ptr @kmb_ocs_hcu_probe._entry, section ".printk_index", align 4
@kmb_ocs_hcu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not request IRQ.\0A\00", [40 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry_ptr.8 = internal global ptr @kmb_ocs_hcu_probe._entry.6, section ".printk_index", align 4
@ocs_hcu = internal global { %struct.ocs_hcu_drv, [44 x i8] } { %struct.ocs_hcu_drv { %struct.list_head { ptr @ocs_hcu, ptr @ocs_hcu }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not start engine.\0A\00", [39 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry_ptr.11 = internal global ptr @kmb_ocs_hcu_probe._entry.9, section ".printk_index", align 4
@ocs_hcu_algs = internal global [10 x %struct.ahash_alg] [%struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr @kmb_ocs_hcu_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_hmac_cra_init, ptr @kmb_ocs_hcu_hmac_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr @kmb_ocs_hcu_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_hmac_cra_init, ptr @kmb_ocs_hcu_hmac_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"sm3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sm3-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_sm3_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr @kmb_ocs_hcu_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sm3)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sm3-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_hmac_sm3_cra_init, ptr @kmb_ocs_hcu_hmac_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 128, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr @kmb_ocs_hcu_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 128, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_hmac_cra_init, ptr @kmb_ocs_hcu_hmac_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 128, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_sha_cra_init, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @kmb_ocs_hcu_init, ptr @kmb_ocs_hcu_update, ptr @kmb_ocs_hcu_final, ptr @kmb_ocs_hcu_finup, ptr @kmb_ocs_hcu_digest, ptr @kmb_ocs_hcu_export, ptr @kmb_ocs_hcu_import, ptr @kmb_ocs_hcu_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 384, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 128, i32 152, i32 0, i32 255, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @kmb_ocs_hcu_hmac_cra_init, ptr @kmb_ocs_hcu_hmac_cra_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }], align 128
@kmb_ocs_hcu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not register algorithms.\0A\00", [32 x i8] zeroinitializer }, align 32
@kmb_ocs_hcu_probe._entry_ptr.14 = internal global ptr @kmb_ocs_hcu_probe._entry.12, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ocs_hcu.lock\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Context buffer is not empty\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.prepare_ipad = private unnamed_addr constant [13 x i8] c"prepare_ipad\00", align 1
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: HMAC_SW flag is not set\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Invalid key length in tfm context\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: sg data does not fit in buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.flush_sg_to_ocs_buffer = private unnamed_addr constant [23 x i8] c"flush_sg_to_ocs_buffer\00", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: unexpected NULL sg\0A\00", [40 x i8] zeroinitializer }, align 32
@kmb_ocs_dma_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to MAP SG\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kmb_ocs_dma_prepare\00", [44 x i8] zeroinitializer }, align 32
@kmb_ocs_dma_prepare._entry_ptr = internal global ptr @kmb_ocs_dma_prepare._entry, section ".printk_index", align 4
@kmb_ocs_dma_prepare._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to map request context buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@kmb_ocs_dma_prepare._entry_ptr.26 = internal global ptr @kmb_ocs_dma_prepare._entry.24, section ".printk_index", align 4
@kmb_ocs_dma_prepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to prepare DMA.\0A\00", [40 x i8] zeroinitializer }, align 32
@kmb_ocs_dma_prepare._entry_ptr.29 = internal global ptr @kmb_ocs_dma_prepare._entry.27, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sha224-keembay-ocs\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm3-keembay-ocs\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sha256-keembay-ocs\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sha384-keembay-ocs\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sha512-keembay-ocs\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 9]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"kmb_ocs_hcu_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1253, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1257, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"kmb_ocs_hcu_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1142, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1190, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1209, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"ocs_hcu\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 106, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1228, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1236, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 87, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 108, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 382, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 383, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 391, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 126, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 132, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 259, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 279, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 351, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 326, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 776, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 780, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 781, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 784, i32 14 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [49 x i8] c"../drivers/crypto/keembay/keembay-ocs-hcu-core.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 787, i32 14 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_kmb_ocs_hcu_driver_exit, ptr @__initcall__kmod_keembay_ocs_hcu__252_1262_kmb_ocs_hcu_driver_init6, ptr @kmb_ocs_dma_prepare._entry, ptr @kmb_ocs_dma_prepare._entry.24, ptr @kmb_ocs_dma_prepare._entry.27, ptr @kmb_ocs_dma_prepare._entry_ptr, ptr @kmb_ocs_dma_prepare._entry_ptr.26, ptr @kmb_ocs_dma_prepare._entry_ptr.29, ptr @kmb_ocs_hcu_driver_exit, ptr @kmb_ocs_hcu_probe._entry, ptr @kmb_ocs_hcu_probe._entry.12, ptr @kmb_ocs_hcu_probe._entry.6, ptr @kmb_ocs_hcu_probe._entry.9, ptr @kmb_ocs_hcu_probe._entry_ptr, ptr @kmb_ocs_hcu_probe._entry_ptr.11, ptr @kmb_ocs_hcu_probe._entry_ptr.14, ptr @kmb_ocs_hcu_probe._entry_ptr.8, ptr @kmb_ocs_hcu_driver, ptr @.str, ptr @kmb_ocs_hcu_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ocs_hcu, ptr @.str.10, ptr @.str.13, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_hcu to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_hcu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_dma_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_dma_prepare._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_dma_prepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kmb_ocs_hcu_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmb_ocs_hcu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @kmb_ocs_hcu_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i98 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i = icmp eq i32 %call.i98, 0
  br i1 %cmp.i, label %if.end7, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end7:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup57

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call8) #8
  %io_base = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %io_base, align 4
  %cmp.i99 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call12 to i32
  br label %cleanup57

if.end18:                                         ; preds = %if.end11
  %irq_done = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq_done, align 4
  %wait.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call19, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup57_crit_edge, label %if.end23

if.end18.cleanup57_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end23:                                         ; preds = %if.end18
  %call26 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call19, ptr noundef nonnull @ocs_hcu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup57

if.end32:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %prev.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %8 = load ptr, ptr getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %8, ptr noundef nonnull @ocs_hcu) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_add_tail.exit_crit_edge

if.end32.list_add_tail.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call.i, ptr getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ocs_hcu, ptr %call.i, align 4
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end32.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %call34 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #8
  %engine = getelementptr inbounds %struct.ocs_hcu_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call34, ptr %engine, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %list_add_tail.exit.list_del_crit_edge, label %if.end38

list_add_tail.exit.list_del_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del

if.end38:                                         ; preds = %list_add_tail.exit
  %call40 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %call47 = tail call i32 @crypto_register_ahashes(ptr noundef nonnull @ocs_hcu_algs, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.cleanup57_crit_edge, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46.cleanup57_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

cleanup:                                          ; preds = %if.end46.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %.str.13.sink = phi ptr [ @.str.10, %if.end38.cleanup_crit_edge ], [ @.str.13, %if.end46.cleanup_crit_edge ]
  %rc.0 = phi i32 [ %call40, %if.end38.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.13.sink) #11
  %13 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine, align 4
  %call55 = tail call i32 @crypto_engine_exit(ptr noundef %14) #8
  br label %list_del

list_del:                                         ; preds = %cleanup, %list_add_tail.exit.list_del_crit_edge
  %rc.1 = phi i32 [ %rc.0, %cleanup ], [ -12, %list_add_tail.exit.list_del_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %call.i.i100 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #8
  br i1 %call.i.i100, label %if.end.i.i101, label %list_del.list_del.exit_crit_edge

list_del.list_del.exit_crit_edge:                 ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i101:                                    ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i101, %list_del.list_del.exit_crit_edge
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  br label %cleanup57

cleanup57:                                        ; preds = %list_del.exit, %if.end46.cleanup57_crit_edge, %do.end31, %if.end18.cleanup57_crit_edge, %if.then15, %do.end, %if.end.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ %3, %if.then15 ], [ %call26, %do.end31 ], [ %rc.1, %list_del.exit ], [ -19, %do.end ], [ -12, %entry.cleanup57_crit_edge ], [ %call19, %if.end18.cleanup57_crit_edge ], [ 0, %if.end46.cleanup57_crit_edge ], [ %call.i98, %if.end.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @crypto_unregister_ahashes(ptr noundef nonnull @ocs_hcu_algs, i32 noundef 10) #8
  %engine = getelementptr inbounds %struct.ocs_hcu_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 4
  %call1 = tail call i32 @crypto_engine_exit(ptr noundef %3) #8
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %list_del.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_init(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %hcu_dev.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %kmb_ocs_hcu_find_dev.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit:                        ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %4 = load volatile ptr, ptr @ocs_hcu, align 4
  %cmp.not.i = icmp eq ptr %4, @ocs_hcu
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hcu_dev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %6 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge, label %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge

kmb_ocs_hcu_find_dev.exit.if.end_crit_edge:       ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge:      ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i49 = phi ptr [ %7, %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %__ctx.i50 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 380)
  %12 = ptrtoint ptr %__ctx.i50 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i49, ptr %__ctx.i50, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %9, i32 12
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 128
  %dig_sz = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %dig_sz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dig_sz, align 4
  %18 = add i32 %16, -28
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 30)
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 5, label %sw.bb11
    i32 9, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %blk_sz = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %blk_sz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %blk_sz, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %blk_sz8 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %blk_sz8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %blk_sz8, align 4
  %is_sm3_tfm = getelementptr i8, ptr %9, i32 276
  %23 = ptrtoint ptr %is_sm3_tfm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_sm3_tfm, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool9.not, i32 2, i32 6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %blk_sz12 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %blk_sz12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %blk_sz12, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %blk_sz15 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %blk_sz15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %blk_sz15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb7, %sw.bb
  %.sink = phi i32 [ 5, %sw.bb14 ], [ 4, %sw.bb11 ], [ %cond, %sw.bb7 ], [ 3, %sw.bb ]
  %algo16 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %algo16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %algo16, align 4
  %hash_ctx = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 1
  %call18 = tail call i32 @ocs_hcu_hash_init(ptr noundef %hash_ctx, i32 noundef %.sink) #8
  %is_hmac_tfm = getelementptr i8, ptr %9, i32 277
  %28 = ptrtoint ptr %is_hmac_tfm to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_hmac_tfm, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool19.not = icmp eq i8 %29, 0
  br i1 %tobool19.not, label %sw.epilog.cleanup_crit_edge, label %if.then20

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or = or i32 %31, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sg_data_total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %2 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sg_data_total, align 4
  %sg_data_offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  %3 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sg_data_offset, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sg, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %9 = and i32 %8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %or = or i32 %8, 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags, align 4
  %call8 = tail call fastcc i32 @prepare_ipad(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %12 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_data_total, align 4
  %buf_cnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 60
  %14 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_cnt, align 4
  %sub = sub i32 256, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp.not = icmp ugt i32 %13, %sub
  br i1 %cmp.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call fastcc i32 @flush_sg_to_ocs_buffer(ptr noundef %__ctx.i)
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm.i.i.i, align 16
  %hcu_dev.i.i = getelementptr i8, ptr %17, i32 140
  %18 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcu_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %kmb_ocs_hcu_find_dev.exit.i, label %if.end16.if.end.i_crit_edge

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmb_ocs_hcu_find_dev.exit.i:                      ; preds = %if.end16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %20 = load volatile ptr, ptr @ocs_hcu, align 4
  %cmp.not.i.i = icmp eq ptr %20, @ocs_hcu
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %20
  %21 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i.i, ptr %hcu_dev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %22 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcu_dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge, label %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge

kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge:   ; preds = %kmb_ocs_hcu_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge:    ; preds = %kmb_ocs_hcu_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge, %if.end16.if.end.i_crit_edge
  %retval.0.i6.i = phi ptr [ %23, %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge ], [ %19, %if.end16.if.end.i_crit_edge ]
  %engine.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %retval.0.i6.i, i32 0, i32 3
  %24 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %engine.i, align 4
  %call1.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %25, ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge, %if.then14, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -2, %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_data_total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %0 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sg_data_total, align 4
  %sg_data_offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  %1 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sg_data_offset, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sg, align 4
  %call1 = tail call fastcc i32 @kmb_ocs_hcu_fin_common(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  %sg_data_total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %2 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sg_data_total, align 4
  %sg_data_offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  %3 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sg_data_offset, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sg, align 4
  %call1 = tail call fastcc i32 @kmb_ocs_hcu_fin_common(ptr noundef %req)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %hcu_dev.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %kmb_ocs_hcu_find_dev.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit:                        ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %4 = load volatile ptr, ptr @ocs_hcu, align 4
  %cmp.not.i = icmp eq ptr %4, @ocs_hcu
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hcu_dev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %6 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge, label %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge

kmb_ocs_hcu_find_dev.exit.if.end_crit_edge:       ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge:      ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @kmb_ocs_hcu_init(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes.i, align 8
  %sg_data_total.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %10 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sg_data_total.i, align 4
  %sg_data_offset.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  %11 = ptrtoint ptr %sg_data_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sg_data_offset.i, align 4
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src.i, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %14 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sg.i, align 4
  %call1.i = tail call fastcc i32 @kmb_ocs_hcu_fin_common(ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end4 ], [ -2, %kmb_ocs_hcu_find_dev.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_hcu_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 384)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_hcu_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 384)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_sha_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 152)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #8, !srcloc !90
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_hcu_do_one_request, ptr %do_one_request.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %wait = alloca %struct.crypto_wait, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #8
  %6 = call ptr @memset(ptr %wait, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %keylen)
  %cmp.not = icmp ult i32 %5, %keylen
  %7 = call ptr @memset(ptr %sg, i32 255, i32 20)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %key3 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 4
  %8 = call ptr @memcpy(ptr %key3, ptr %key, i32 %keylen)
  %key_len = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4
  %9 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %keylen, ptr %key_len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = add i32 %3, -28
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 5, label %sw.bb5
    i32 9, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %is_sm3_tfm = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 4
  %13 = ptrtoint ptr %is_sm3_tfm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_sm3_tfm, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool.not, ptr @.str.34, ptr @.str.33
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %if.end.sw.epilog_crit_edge
  %alg_name.0 = phi ptr [ @.str.36, %sw.bb6 ], [ @.str.35, %sw.bb5 ], [ %cond, %sw.bb4 ], [ @.str.32, %if.end.sw.epilog_crit_edge ]
  %call7 = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull %alg_name.0, i32 noundef 0, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end8.i.i

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.epilog
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call7, i32 0, i32 8
  %16 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %17, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.err_free_ahash_crit_edge, label %if.end15, !prof !91

if.end8.i.i.err_free_ahash_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_ahash

if.end15:                                         ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call7, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %19 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1024, ptr %flags4.i, align 4
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %base.i.i.i, align 128
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %key, i32 noundef %keylen) #8
  %key16 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %keylen, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call9.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %key16, ptr %result3.i, align 32
  %call18 = call i32 @crypto_ahash_digest(ptr noundef nonnull %call9.i.i) #8
  %27 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call18, label %if.end15.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end15.sw.bb.i_crit_edge
    i32 -16, label %if.end15.sw.bb.i_crit_edge57
  ]

if.end15.sw.bb.i_crit_edge57:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end15.sw.bb.i_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end15.crypto_wait_req.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end15.sw.bb.i_crit_edge, %if.end15.sw.bb.i_crit_edge57
  call void @wait_for_completion(ptr noundef nonnull %wait) #8
  %28 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %29 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end15.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call18, %if.end15.crypto_wait_req.exit_crit_edge ], [ %30, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %cmp20 = icmp eq i32 %err.addr.0.i, 0
  br i1 %cmp20, label %if.then21, label %crypto_wait_req.exit.if.end23_crit_edge

crypto_wait_req.exit.if.end23_crit_edge:          ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  %key_len22 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4
  %31 = ptrtoint ptr %key_len22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %3, ptr %key_len22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %crypto_wait_req.exit.if.end23_crit_edge
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #8
  br label %err_free_ahash

err_free_ahash:                                   ; preds = %if.end23, %if.end8.i.i.err_free_ahash_crit_edge
  %rc.0 = phi i32 [ %err.addr.0.i, %if.end23 ], [ -12, %if.end8.i.i.err_free_ahash_crit_edge ]
  %base.i.i54 = getelementptr inbounds %struct.crypto_ahash, ptr %call7, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %call7, ptr noundef %base.i.i54) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_ahash, %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %15, %if.then9 ], [ %rc.0, %err_free_ahash ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_hmac_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 152)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #8, !srcloc !90
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_hcu_do_one_request, ptr %do_one_request.i, align 4
  %is_hmac_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 5
  %3 = ptrtoint ptr %is_hmac_tfm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_hmac_tfm, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_ocs_hcu_hmac_cra_exit(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %0 = call ptr @memset(ptr %key, i32 0, i32 128)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %key) #8, !srcloc !90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_sm3_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 152)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #8, !srcloc !90
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_hcu_do_one_request, ptr %do_one_request.i, align 4
  %is_sm3_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 4
  %3 = ptrtoint ptr %is_sm3_tfm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_sm3_tfm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_hmac_sm3_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 384, ptr %reqsize1.i.i, align 32
  %1 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 152)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i) #8, !srcloc !90
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_hcu_do_one_request, ptr %do_one_request.i, align 4
  %is_sm3_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 4
  %3 = ptrtoint ptr %is_sm3_tfm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_sm3_tfm, align 4
  %is_hmac_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 5
  %4 = ptrtoint ptr %is_hmac_tfm to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_hmac_tfm, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_hash_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_ipad(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %buf_cnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 60
  %2 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !92

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 382, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.prepare_ipad) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end41, label %if.end.if.end47_crit_edge, !prof !91

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 384, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.prepare_ipad) #8
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %key_len = getelementptr i8, ptr %1, i32 272
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_len, align 4
  %blk_sz = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blk_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp ult i32 %9, %7
  br i1 %cmp, label %do.end68, label %if.end82

do.end68:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.prepare_ipad) #8
  br label %cleanup

if.end82:                                         ; preds = %if.end47
  %arrayidx = getelementptr %struct.ocs_hcu_ctx, ptr %__crt_ctx.i.i, i32 0, i32 2, i32 %7
  %sub = sub i32 %9, %7
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 %sub)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %arrayidx) #8, !srcloc !90
  %11 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blk_sz, align 4
  %13 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %key_len, align 4
  %14 = load i32, ptr %blk_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp89121.not = icmp eq i32 %14, 0
  br i1 %cmp89121.not, label %if.end82.for.end_crit_edge, label %if.end82.for.body_crit_edge

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  br label %for.body

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end82.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end82.for.body_crit_edge ]
  %arrayidx91 = getelementptr %struct.ocs_hcu_ctx, ptr %__crt_ctx.i.i, i32 0, i32 2, i32 %i.0122
  %15 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx91, align 1
  %17 = xor i8 %16, 54
  %arrayidx93 = getelementptr %struct.ocs_hcu_rctx, ptr %__ctx.i, i32 0, i32 7, i32 %i.0122
  %18 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx93, align 1
  %inc = add nuw i32 %i.0122, 1
  %19 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blk_sz, align 4
  %cmp89 = icmp ult i32 %inc, %20
  br i1 %cmp89, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end82.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end82.for.end_crit_edge ], [ %20, %for.body.for.end_crit_edge ]
  %21 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.lcssa, ptr %buf_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end68
  %retval.0 = phi i32 [ -22, %do.end68 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flush_sg_to_ocs_buffer(ptr noundef %rctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_data_total = getelementptr inbounds %struct.ocs_hcu_rctx, ptr %rctx, i32 0, i32 12
  %0 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_data_total, align 4
  %buf_cnt = getelementptr inbounds %struct.ocs_hcu_rctx, ptr %rctx, i32 0, i32 8
  %2 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_cnt, align 4
  %sub = sub i32 256, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp = icmp ugt i32 %1, %sub
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool18.not98 = icmp eq i32 %1, 0
  br i1 %tobool18.not98, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sg = getelementptr inbounds %struct.ocs_hcu_rctx, ptr %rctx, i32 0, i32 11
  %sg_data_offset = getelementptr inbounds %struct.ocs_hcu_rctx, ptr %rctx, i32 0, i32 13
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.flush_sg_to_ocs_buffer) #8
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %.be, %while.cond.backedge.while.body_crit_edge ]
  %5 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg, align 4
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %do.end33, label %if.end47

do.end33:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.flush_sg_to_ocs_buffer) #8
  br label %cleanup

if.end47:                                         ; preds = %while.body
  %7 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg_data_offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp49 = icmp eq i32 %10, %8
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @sg_next(ptr noundef nonnull %6) #8
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %sg, align 4
  %12 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sg_data_offset, align 4
  %13 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %sg_data_total, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end54, %if.then50
  %.be = phi i32 [ %sub67, %if.end54 ], [ %.pr, %if.then50 ]
  %tobool18.not = icmp eq i32 %.be, 0
  br i1 %tobool18.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %sub58 = sub i32 %10, %8
  %14 = tail call i32 @llvm.umin.i32(i32 %sub58, i32 %4)
  %15 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_cnt, align 4
  %arrayidx = getelementptr %struct.ocs_hcu_rctx, ptr %rctx, i32 0, i32 7, i32 %16
  tail call void @scatterwalk_map_and_copy(ptr noundef %arrayidx, ptr noundef nonnull %6, i32 noundef %8, i32 noundef %14, i32 noundef 0) #8
  %17 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_data_offset, align 4
  %add = add i32 %18, %14
  store i32 %add, ptr %sg_data_offset, align 4
  %19 = ptrtoint ptr %sg_data_total to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_data_total, align 4
  %sub67 = sub i32 %20, %14
  store i32 %sub67, ptr %sg_data_total, align 4
  %21 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_cnt, align 4
  %add69 = add i32 %22, %14
  store i32 %add69, ptr %buf_cnt, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %do.end33, %do.end, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_hcu_fin_common(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %flags, align 4
  %4 = and i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then:                                          ; preds = %entry
  %sg_data_total.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %6 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_data_total.i, align 4
  %buf_cnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 60
  %8 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_cnt.i, align 4
  %add.i = sub i32 0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %tobool8.not = icmp eq i32 %9, %add.i
  br i1 %tobool8.not, label %if.then.if.else_crit_edge, label %land.lhs.true9

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true9:                                   ; preds = %if.then
  %key_len = getelementptr i8, ptr %1, i32 272
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %11)
  %cmp = icmp ult i32 %11, 65
  br i1 %cmp, label %if.then10, label %land.lhs.true9.if.else_crit_edge

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %3, 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %flags, align 4
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %if.then.if.else_crit_edge
  %or14 = or i32 %3, 9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or14, ptr %flags, align 4
  %call15 = tail call fastcc i32 @prepare_ipad(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then10, %entry.if.end19_crit_edge
  %14 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.i, align 16
  %hcu_dev.i.i = getelementptr i8, ptr %15, i32 140
  %16 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcu_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %kmb_ocs_hcu_find_dev.exit.i, label %if.end19.if.end.i_crit_edge

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmb_ocs_hcu_find_dev.exit.i:                      ; preds = %if.end19
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %18 = load volatile ptr, ptr @ocs_hcu, align 4
  %cmp.not.i.i = icmp eq ptr %18, @ocs_hcu
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %18
  %19 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i.i, ptr %hcu_dev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %20 = ptrtoint ptr %hcu_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcu_dev.i.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge, label %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge

kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge:   ; preds = %kmb_ocs_hcu_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge:    ; preds = %kmb_ocs_hcu_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge, %if.end19.if.end.i_crit_edge
  %retval.0.i6.i = phi ptr [ %21, %kmb_ocs_hcu_find_dev.exit.i.if.end.i_crit_edge ], [ %17, %if.end19.if.end.i_crit_edge ]
  %engine.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %retval.0.i6.i, i32 0, i32 3
  %22 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %engine.i, align 4
  %call1.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %23, ptr noundef %req) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.else.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -2, %kmb_ocs_hcu_find_dev.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_hcu_do_one_request(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %hcu_dev.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %kmb_ocs_hcu_find_dev.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit:                        ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %4 = load volatile ptr, ptr @ocs_hcu, align 4
  %cmp.not.i = icmp eq ptr %4, @ocs_hcu
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hcu_dev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.ocs_hcu_drv, ptr @ocs_hcu, i32 0, i32 1)) #8
  %6 = ptrtoint ptr %hcu_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcu_dev.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %kmb_ocs_hcu_find_dev.exit.error_crit_edge, label %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge

kmb_ocs_hcu_find_dev.exit.if.end_crit_edge:       ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

kmb_ocs_hcu_find_dev.exit.error_crit_edge:        ; preds = %kmb_ocs_hcu_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i238 = phi ptr [ %7, %kmb_ocs_hcu_find_dev.exit.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i242 = getelementptr i8, ptr %.pn, i32 128
  %__ctx.i240 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @kmb_ocs_dma_prepare(ptr noundef %areq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.error_crit_edge

if.then5.error_crit_edge:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end9:                                          ; preds = %if.then5
  %algo = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %algo, align 4
  %key = getelementptr i8, ptr %.pn, i32 144
  %key_len = getelementptr i8, ptr %.pn, i32 272
  %13 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_len, align 4
  %dma_list = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_list, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %result, align 32
  %dig_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %dig_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dig_sz, align 4
  %call10 = tail call i32 @ocs_hcu_hmac(ptr noundef nonnull %retval.0.i238, i32 noundef %12, ptr noundef %key, i32 noundef %14, ptr noundef %16, ptr noundef %18, i32 noundef %20) #8
  %21 = ptrtoint ptr %__ctx.i240 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__ctx.i240, align 4
  %dev2.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2.i, align 4
  %buf_dma_count.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 68
  %25 = ptrtoint ptr %buf_dma_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_dma_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i197 = icmp eq i32 %26, 0
  br i1 %tobool.not.i197, label %if.end9.if.end.i198_crit_edge, label %if.then.i

if.end9.if.end.i198_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i198

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %buf_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 64
  %27 = ptrtoint ptr %buf_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %28, i32 noundef %26, i32 noundef 1, i32 noundef 0) #8
  %29 = ptrtoint ptr %buf_dma_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buf_dma_count.i, align 4
  br label %if.end.i198

if.end.i198:                                      ; preds = %if.then.i, %if.end9.if.end.i198_crit_edge
  %sg_dma_nents.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 84
  %30 = ptrtoint ptr %sg_dma_nents.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_dma_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not.i = icmp eq i32 %31, 0
  br i1 %tobool5.not.i, label %if.end.i198.if.end9.i_crit_edge, label %if.then6.i

if.end.i198.if.end9.i_crit_edge:                  ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %32 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %24, ptr noundef %33, i32 noundef %31, i32 noundef 1, i32 noundef 0) #8
  %34 = ptrtoint ptr %sg_dma_nents.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sg_dma_nents.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i198.if.end9.i_crit_edge
  %35 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_list, align 4
  %tobool10.not.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i, label %if.end9.i.kmb_ocs_hcu_dma_cleanup.exit_crit_edge, label %if.then11.i

if.end9.i.kmb_ocs_hcu_dma_cleanup.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmb_ocs_hcu_dma_cleanup.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ocs_hcu_dma_list_free(ptr noundef %22, ptr noundef nonnull %36) #8
  %37 = ptrtoint ptr %dma_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dma_list, align 4
  br label %kmb_ocs_hcu_dma_cleanup.exit

kmb_ocs_hcu_dma_cleanup.exit:                     ; preds = %if.then11.i, %if.end9.i.kmb_ocs_hcu_dma_cleanup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %kmb_ocs_hcu_dma_cleanup.exit.done_crit_edge, label %kmb_ocs_hcu_dma_cleanup.exit.error_crit_edge

kmb_ocs_hcu_dma_cleanup.exit.error_crit_edge:     ; preds = %kmb_ocs_hcu_dma_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

kmb_ocs_hcu_dma_cleanup.exit.done_crit_edge:      ; preds = %kmb_ocs_hcu_dma_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end14:                                         ; preds = %if.end
  %and16 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %sg_data_total.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 76
  %38 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_data_total.i, align 4
  %buf_cnt.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 60
  %40 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_cnt.i, align 4
  %add.i = sub i32 0, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add.i)
  %tobool20.not = icmp eq i32 %41, %add.i
  br i1 %tobool17.not, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.end14
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %call23 = tail call fastcc i32 @kmb_ocs_dma_prepare(ptr noundef %areq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.error_crit_edge

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end26:                                         ; preds = %if.end22
  %hash_ctx = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %dma_list27 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %dma_list27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_list27, align 4
  %call28 = tail call i32 @ocs_hcu_hash_update(ptr noundef nonnull %retval.0.i238, ptr noundef %hash_ctx, ptr noundef %43) #8
  %44 = ptrtoint ptr %__ctx.i240 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__ctx.i240, align 4
  %dev2.i199 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %dev2.i199 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2.i199, align 4
  %buf_dma_count.i200 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 68
  %48 = ptrtoint ptr %buf_dma_count.i200 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_dma_count.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i201 = icmp eq i32 %49, 0
  br i1 %tobool.not.i201, label %if.end26.if.end.i206_crit_edge, label %if.then.i203

if.end26.if.end.i206_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i206

if.then.i203:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %buf_dma_addr.i202 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 64
  %50 = ptrtoint ptr %buf_dma_addr.i202 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_dma_addr.i202, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %51, i32 noundef %49, i32 noundef 1, i32 noundef 0) #8
  %52 = ptrtoint ptr %buf_dma_count.i200 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %buf_dma_count.i200, align 4
  br label %if.end.i206

if.end.i206:                                      ; preds = %if.then.i203, %if.end26.if.end.i206_crit_edge
  %sg_dma_nents.i204 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 84
  %53 = ptrtoint ptr %sg_dma_nents.i204 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sg_dma_nents.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool5.not.i205 = icmp eq i32 %54, 0
  br i1 %tobool5.not.i205, label %if.end.i206.if.end9.i211_crit_edge, label %if.then6.i208

if.end.i206.if.end9.i211_crit_edge:               ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i211

if.then6.i208:                                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  %src.i207 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %55 = ptrtoint ptr %src.i207 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %src.i207, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %47, ptr noundef %56, i32 noundef %54, i32 noundef 1, i32 noundef 0) #8
  %57 = ptrtoint ptr %sg_dma_nents.i204 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sg_dma_nents.i204, align 4
  br label %if.end9.i211

if.end9.i211:                                     ; preds = %if.then6.i208, %if.end.i206.if.end9.i211_crit_edge
  %58 = ptrtoint ptr %dma_list27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_list27, align 4
  %tobool10.not.i210 = icmp eq ptr %59, null
  br i1 %tobool10.not.i210, label %if.end9.i211.kmb_ocs_hcu_dma_cleanup.exit213_crit_edge, label %if.then11.i212

if.end9.i211.kmb_ocs_hcu_dma_cleanup.exit213_crit_edge: ; preds = %if.end9.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmb_ocs_hcu_dma_cleanup.exit213

if.then11.i212:                                   ; preds = %if.end9.i211
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ocs_hcu_dma_list_free(ptr noundef %45, ptr noundef nonnull %59) #8
  %60 = ptrtoint ptr %dma_list27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %dma_list27, align 4
  br label %kmb_ocs_hcu_dma_cleanup.exit213

kmb_ocs_hcu_dma_cleanup.exit213:                  ; preds = %if.then11.i212, %if.end9.i211.kmb_ocs_hcu_dma_cleanup.exit213_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %kmb_ocs_hcu_dma_cleanup.exit213.error_crit_edge

kmb_ocs_hcu_dma_cleanup.exit213.error_crit_edge:  ; preds = %kmb_ocs_hcu_dma_cleanup.exit213
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end31:                                         ; preds = %kmb_ocs_hcu_dma_cleanup.exit213
  %61 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %buf_cnt.i, align 4
  %call32 = tail call fastcc i32 @flush_sg_to_ocs_buffer(ptr noundef %__ctx.i240)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.done_crit_edge, label %if.end31.error_crit_edge

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end31.done_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end36:                                         ; preds = %if.end14
  br i1 %tobool20.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call40 = tail call fastcc i32 @kmb_ocs_dma_prepare(ptr noundef %areq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.error_crit_edge

if.then39.error_crit_edge:                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end43:                                         ; preds = %if.then39
  %hash_ctx44 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %dma_list45 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %dma_list45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_list45, align 4
  %result46 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %64 = ptrtoint ptr %result46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %result46, align 32
  %dig_sz47 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %66 = ptrtoint ptr %dig_sz47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dig_sz47, align 4
  %call48 = tail call i32 @ocs_hcu_hash_finup(ptr noundef nonnull %retval.0.i238, ptr noundef %hash_ctx44, ptr noundef %63, ptr noundef %65, i32 noundef %67) #8
  %68 = ptrtoint ptr %__ctx.i240 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__ctx.i240, align 4
  %dev2.i217 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %dev2.i217 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2.i217, align 4
  %buf_dma_count.i218 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 68
  %72 = ptrtoint ptr %buf_dma_count.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_dma_count.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i219 = icmp eq i32 %73, 0
  br i1 %tobool.not.i219, label %if.end43.if.end.i224_crit_edge, label %if.then.i221

if.end43.if.end.i224_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i224

if.then.i221:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %buf_dma_addr.i220 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 64
  %74 = ptrtoint ptr %buf_dma_addr.i220 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_dma_addr.i220, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %75, i32 noundef %73, i32 noundef 1, i32 noundef 0) #8
  %76 = ptrtoint ptr %buf_dma_count.i218 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %buf_dma_count.i218, align 4
  br label %if.end.i224

if.end.i224:                                      ; preds = %if.then.i221, %if.end43.if.end.i224_crit_edge
  %sg_dma_nents.i222 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 5, i32 84
  %77 = ptrtoint ptr %sg_dma_nents.i222 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sg_dma_nents.i222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool5.not.i223 = icmp eq i32 %78, 0
  br i1 %tobool5.not.i223, label %if.end.i224.if.end9.i229_crit_edge, label %if.then6.i226

if.end.i224.if.end9.i229_crit_edge:               ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i229

if.then6.i226:                                    ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #10
  %src.i225 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %79 = ptrtoint ptr %src.i225 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %src.i225, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %71, ptr noundef %80, i32 noundef %78, i32 noundef 1, i32 noundef 0) #8
  %81 = ptrtoint ptr %sg_dma_nents.i222 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %sg_dma_nents.i222, align 4
  br label %if.end9.i229

if.end9.i229:                                     ; preds = %if.then6.i226, %if.end.i224.if.end9.i229_crit_edge
  %82 = ptrtoint ptr %dma_list45 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_list45, align 4
  %tobool10.not.i228 = icmp eq ptr %83, null
  br i1 %tobool10.not.i228, label %if.end9.i229.kmb_ocs_hcu_dma_cleanup.exit231_crit_edge, label %if.then11.i230

if.end9.i229.kmb_ocs_hcu_dma_cleanup.exit231_crit_edge: ; preds = %if.end9.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmb_ocs_hcu_dma_cleanup.exit231

if.then11.i230:                                   ; preds = %if.end9.i229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ocs_hcu_dma_list_free(ptr noundef %69, ptr noundef nonnull %83) #8
  %84 = ptrtoint ptr %dma_list45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %dma_list45, align 4
  br label %kmb_ocs_hcu_dma_cleanup.exit231

kmb_ocs_hcu_dma_cleanup.exit231:                  ; preds = %if.then11.i230, %if.end9.i229.kmb_ocs_hcu_dma_cleanup.exit231_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %kmb_ocs_hcu_dma_cleanup.exit231.if.end59_crit_edge, label %kmb_ocs_hcu_dma_cleanup.exit231.error_crit_edge

kmb_ocs_hcu_dma_cleanup.exit231.error_crit_edge:  ; preds = %kmb_ocs_hcu_dma_cleanup.exit231
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

kmb_ocs_hcu_dma_cleanup.exit231.if.end59_crit_edge: ; preds = %kmb_ocs_hcu_dma_cleanup.exit231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else:                                          ; preds = %if.end36
  %hash_ctx52 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %result53 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %85 = ptrtoint ptr %result53 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %result53, align 32
  %dig_sz54 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %87 = ptrtoint ptr %dig_sz54 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dig_sz54, align 4
  %call55 = tail call i32 @ocs_hcu_hash_final(ptr noundef nonnull %retval.0.i238, ptr noundef %hash_ctx52, ptr noundef %86, i32 noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else.if.end59_crit_edge, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.else.if.end59_crit_edge, %kmb_ocs_hcu_dma_cleanup.exit231.if.end59_crit_edge
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and61 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end117_crit_edge, label %if.then63

if.end59.if.end117_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then63:                                        ; preds = %if.end59
  %key_len64 = getelementptr i8, ptr %.pn, i32 272
  %91 = ptrtoint ptr %key_len64 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %key_len64, align 4
  %blk_sz = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %blk_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp.not = icmp eq i32 %92, %94
  br i1 %cmp.not, label %if.then63.if.end79_crit_edge, label %do.end, !prof !92

if.then63.if.end79_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end:                                           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 534, i32 noundef 9, ptr noundef null) #8
  %95 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr = load i32, ptr %blk_sz, align 4
  br label %if.end79

if.end79:                                         ; preds = %do.end, %if.then63.if.end79_crit_edge
  %96 = phi i32 [ %.pr, %do.end ], [ %94, %if.then63.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp88243.not = icmp eq i32 %96, 0
  br i1 %cmp88243.not, label %if.end79.for.cond92.preheader_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

if.end79.for.cond92.preheader_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.body.for.cond92.preheader_crit_edge, %if.end79.for.cond92.preheader_crit_edge
  %dig_sz93 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %97 = ptrtoint ptr %dig_sz93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dig_sz93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp94245.not = icmp eq i32 %98, 0
  br i1 %cmp94245.not, label %for.cond92.preheader.for.end104_crit_edge, label %for.body96.lr.ph

for.cond92.preheader.for.end104_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.body96.lr.ph:                                 ; preds = %for.cond92.preheader
  %result97 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  br label %for.body96

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end79.for.body_crit_edge
  %i.0244 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end79.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ocs_hcu_ctx, ptr %__crt_ctx.i.i242, i32 0, i32 2, i32 %i.0244
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx, align 1
  %101 = xor i8 %100, 92
  %arrayidx91 = getelementptr %struct.ocs_hcu_rctx, ptr %__ctx.i240, i32 0, i32 7, i32 %i.0244
  %102 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx91, align 1
  %inc = add nuw i32 %i.0244, 1
  %103 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %blk_sz, align 4
  %cmp88 = icmp ult i32 %inc, %104
  br i1 %cmp88, label %for.body.for.body_crit_edge, label %for.body.for.cond92.preheader_crit_edge

for.body.for.cond92.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond92.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.body96.lr.ph
  %i.1246 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc103, %for.body96.for.body96_crit_edge ]
  %105 = ptrtoint ptr %result97 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %result97, align 32
  %arrayidx98 = getelementptr i8, ptr %106, i32 %i.1246
  %107 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx98, align 1
  %109 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %blk_sz, align 4
  %add = add i32 %110, %i.1246
  %arrayidx101 = getelementptr %struct.ocs_hcu_rctx, ptr %__ctx.i240, i32 0, i32 7, i32 %add
  %111 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %108, ptr %arrayidx101, align 1
  %inc103 = add nuw i32 %i.1246, 1
  %112 = ptrtoint ptr %dig_sz93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dig_sz93, align 4
  %cmp94 = icmp ult i32 %inc103, %113
  br i1 %cmp94, label %for.body96.for.body96_crit_edge, label %for.body96.for.end104_crit_edge

for.body96.for.end104_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96

for.end104:                                       ; preds = %for.body96.for.end104_crit_edge, %for.cond92.preheader.for.end104_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond92.preheader.for.end104_crit_edge ], [ %113, %for.body96.for.end104_crit_edge ]
  %algo105 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %114 = ptrtoint ptr %algo105 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %algo105, align 4
  %buffer106 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %116 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %blk_sz, align 4
  %add110 = add i32 %117, %.lcssa
  %result111 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %118 = ptrtoint ptr %result111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %result111, align 32
  %call113 = tail call i32 @ocs_hcu_digest(ptr noundef nonnull %retval.0.i238, i32 noundef %115, ptr noundef %buffer106, i32 noundef %add110, ptr noundef %119, i32 noundef %.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %for.end104.if.end117_crit_edge, label %for.end104.error_crit_edge

for.end104.error_crit_edge:                       ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.end104.if.end117_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.end117:                                        ; preds = %for.end104.if.end117_crit_edge, %if.end59.if.end117_crit_edge
  %buffer.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %120 = call ptr @memset(ptr %buffer.i, i32 0, i32 256)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %buffer.i) #8, !srcloc !90
  br label %done

done:                                             ; preds = %if.end117, %if.end31.done_crit_edge, %kmb_ocs_hcu_dma_cleanup.exit.done_crit_edge
  %engine118 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %retval.0.i238, i32 0, i32 3
  %121 = ptrtoint ptr %engine118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %engine118, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %122, ptr noundef %areq, i32 noundef 0) #8
  br label %cleanup

error:                                            ; preds = %for.end104.error_crit_edge, %if.else.error_crit_edge, %kmb_ocs_hcu_dma_cleanup.exit231.error_crit_edge, %if.then39.error_crit_edge, %if.end31.error_crit_edge, %kmb_ocs_hcu_dma_cleanup.exit213.error_crit_edge, %if.end22.error_crit_edge, %kmb_ocs_hcu_dma_cleanup.exit.error_crit_edge, %if.then5.error_crit_edge, %kmb_ocs_hcu_find_dev.exit.error_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then5.error_crit_edge ], [ %call10, %kmb_ocs_hcu_dma_cleanup.exit.error_crit_edge ], [ %call40, %if.then39.error_crit_edge ], [ %call48, %kmb_ocs_hcu_dma_cleanup.exit231.error_crit_edge ], [ %call113, %for.end104.error_crit_edge ], [ %call55, %if.else.error_crit_edge ], [ %call23, %if.end22.error_crit_edge ], [ %call28, %kmb_ocs_hcu_dma_cleanup.exit213.error_crit_edge ], [ %call32, %if.end31.error_crit_edge ], [ -2, %kmb_ocs_hcu_find_dev.exit.error_crit_edge ]
  %buffer.i232 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %123 = call ptr @memset(ptr %buffer.i232, i32 0, i32 256)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %buffer.i232) #8, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %error, %done, %if.then18.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %error ], [ 0, %done ], [ -22, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_dma_prepare(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %dev1 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %sg_data_total.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 76
  %4 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_data_total.i, align 4
  %buf_cnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 60
  %6 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_cnt.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %entry.cleanup113_crit_edge, label %if.end

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %blk_sz = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %blk_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blk_sz, align 4
  %rem = urem i32 %add.i, %11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %remainder.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %rem, %if.then4 ]
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 4
  %sub = sub i32 %5, %remainder.0
  %conv = zext i32 %sub to i64
  %call6 = tail call i32 @sg_nents_for_len(ptr noundef %13, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end16_crit_edge, label %if.then8

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 4
  %call10 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %15, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #8
  %sg_dma_nents = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 84
  %16 = ptrtoint ptr %sg_dma_nents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call10, ptr %sg_dma_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.then8.do.end112.sink.split_crit_edge, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8.do.end112.sink.split_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112.sink.split

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %nents.0 = phi i32 [ 0, %if.end5.if.end16_crit_edge ], [ %call10, %if.then8.if.end16_crit_edge ]
  %17 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end16.if.end30_crit_edge, label %if.then18

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 60
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buffer) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !92

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %buf_dma_addr187 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %23 = ptrtoint ptr %buf_dma_addr187 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf_dma_addr187, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #8
  br label %do.end112.sink.split

dma_map_single_attrs.exit:                        ; preds = %if.then18
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %buffer, i32 noundef %18) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %buffer to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %18, i32 noundef 1, i32 noundef 0) #8
  %buf_dma_addr = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %26 = ptrtoint ptr %buf_dma_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call41.i, ptr %buf_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end112.sink.split_crit_edge, label %if.end28

dma_map_single_attrs.exit.do.end112.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112.sink.split

if.end28:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %buf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_cnt.i, align 4
  %buf_dma_count = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 68
  %29 = ptrtoint ptr %buf_dma_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buf_dma_count, align 4
  %inc = add i32 %nents.0, 1
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end16.if.end30_crit_edge
  %nents.1 = phi i32 [ %inc, %if.end28 ], [ %nents.0, %if.end16.if.end30_crit_edge ]
  %30 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__ctx.i, align 4
  %call32 = tail call ptr @ocs_hcu_dma_list_alloc(ptr noundef %31, i32 noundef %nents.1) #8
  %dma_list = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %dma_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call32, ptr %dma_list, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end30.do.end112_crit_edge, label %if.end36

if.end30.do.end112_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112

if.end36:                                         ; preds = %if.end30
  %buf_dma_count37 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 68
  %33 = ptrtoint ptr %buf_dma_count37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_dma_count37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool38.not = icmp eq i32 %34, 0
  br i1 %tobool38.not, label %if.end36.if.end48_crit_edge, label %if.then39

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then39:                                        ; preds = %if.end36
  %35 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__ctx.i, align 4
  %buf_dma_addr42 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %37 = ptrtoint ptr %buf_dma_addr42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_dma_addr42, align 4
  %call44 = tail call i32 @ocs_hcu_dma_list_add_tail(ptr noundef %36, ptr noundef nonnull %call32, i32 noundef %38, i32 noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then39.if.end48_crit_edge, label %if.then39.do.end112_crit_edge

if.then39.do.end112_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %if.then39.if.end48_crit_edge, %if.end36.if.end48_crit_edge
  %39 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 72
  %sg_dma_nents50 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 84
  %41 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %sg, align 4
  %42 = ptrtoint ptr %sg_dma_nents50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_dma_nents50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp193.not = icmp eq i32 %43, 0
  br i1 %cmp193.not, label %if.end48.cleanup113_crit_edge, label %for.body.lr.ph

if.end48.cleanup113_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.body.lr.ph:                                   ; preds = %if.end48
  %sg_data_offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 80
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0195 = phi i32 [ 0, %for.body.lr.ph ], [ %inc106, %for.inc.for.body_crit_edge ]
  %storemerge194 = phi ptr [ %40, %for.body.lr.ph ], [ %call108, %for.inc.for.body_crit_edge ]
  %44 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sg_data_total.i, align 4
  %sub53 = sub i32 %45, %remainder.0
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %storemerge194, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length, align 4
  %48 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_data_offset, align 4
  %sub55 = sub i32 %47, %49
  %50 = tail call i32 @llvm.umin.i32(i32 %sub53, i32 %sub55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp58 = icmp eq i32 %50, 0
  br i1 %cmp58, label %for.body.for.inc_crit_edge, label %if.end61

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end61:                                         ; preds = %for.body
  %51 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__ctx.i, align 4
  %53 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_list, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %storemerge194, i32 0, i32 3
  %55 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_address, align 4
  %call65 = tail call i32 @ocs_hcu_dma_list_add_tail(ptr noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.do.end112_crit_edge

if.end61.do.end112_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112

if.end68:                                         ; preds = %if.end61
  %57 = ptrtoint ptr %sg_data_total.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sg_data_total.i, align 4
  %sub70 = sub i32 %58, %50
  store i32 %sub70, ptr %sg_data_total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub70, i32 %remainder.0)
  %cmp72.not = icmp ugt i32 %sub70, %remainder.0
  br i1 %cmp72.not, label %if.end104, label %if.then74

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub70, i32 %remainder.0)
  %cmp76 = icmp ult i32 %sub70, %remainder.0
  br i1 %cmp76, label %do.end89, label %if.then74.if.end95_crit_edge, !prof !91

if.then74.if.end95_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

do.end89:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 337, i32 noundef 9, ptr noundef null) #8
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.then74.if.end95_crit_edge
  %59 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_data_offset, align 4
  %add = add i32 %60, %50
  store i32 %add, ptr %sg_data_offset, align 4
  br label %cleanup113

if.end104:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %sg_data_offset to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %sg_data_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end104, %for.body.for.inc_crit_edge
  %inc106 = add nuw i32 %i.0195, 1
  %62 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg, align 4
  %call108 = tail call ptr @sg_next(ptr noundef %63) #8
  %64 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call108, ptr %sg, align 4
  %65 = ptrtoint ptr %sg_dma_nents50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sg_dma_nents50, align 4
  %cmp = icmp ult i32 %inc106, %66
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup113_crit_edge

for.inc.cleanup113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end112.sink.split:                             ; preds = %dma_map_single_attrs.exit.do.end112.sink.split_crit_edge, %dma_map_single_attrs.exit.thread, %if.then8.do.end112.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %if.then8.do.end112.sink.split_crit_edge ], [ @.str.25, %dma_map_single_attrs.exit.thread ], [ @.str.25, %dma_map_single_attrs.exit.do.end112.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.22.sink) #11
  br label %do.end112

do.end112:                                        ; preds = %do.end112.sink.split, %if.end61.do.end112_crit_edge, %if.then39.do.end112_crit_edge, %if.end30.do.end112_crit_edge
  %rc.0 = phi i32 [ %call44, %if.then39.do.end112_crit_edge ], [ -12, %if.end30.do.end112_crit_edge ], [ -12, %do.end112.sink.split ], [ %call65, %if.end61.do.end112_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #11
  %67 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__ctx.i, align 4
  %dev2.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev2.i, align 4
  %buf_dma_count.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 68
  %71 = ptrtoint ptr %buf_dma_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_dma_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %do.end112.if.end.i_crit_edge, label %if.then.i185

do.end112.if.end.i_crit_edge:                     ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i185:                                     ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  %buf_dma_addr.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %73 = ptrtoint ptr %buf_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %70, i32 noundef %74, i32 noundef %72, i32 noundef 1, i32 noundef 0) #8
  %75 = ptrtoint ptr %buf_dma_count.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %buf_dma_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i185, %do.end112.if.end.i_crit_edge
  %sg_dma_nents.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 84
  %76 = ptrtoint ptr %sg_dma_nents.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg_dma_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool5.not.i = icmp eq i32 %77, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then6.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %70, ptr noundef %79, i32 noundef %77, i32 noundef 1, i32 noundef 0) #8
  %80 = ptrtoint ptr %sg_dma_nents.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sg_dma_nents.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %dma_list.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %81 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_list.i, align 4
  %tobool10.not.i = icmp eq ptr %82, null
  br i1 %tobool10.not.i, label %if.end9.i.cleanup113_crit_edge, label %if.then11.i

if.end9.i.cleanup113_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup113

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ocs_hcu_dma_list_free(ptr noundef %68, ptr noundef nonnull %82) #8
  %83 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %dma_list.i, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %if.then11.i, %if.end9.i.cleanup113_crit_edge, %for.inc.cleanup113_crit_edge, %if.end95, %if.end48.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup113_crit_edge ], [ 0, %if.end95 ], [ %rc.0, %if.end9.i.cleanup113_crit_edge ], [ %rc.0, %if.then11.i ], [ 0, %if.end48.cleanup113_crit_edge ], [ 0, %for.inc.cleanup113_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_hmac(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_hash_finup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_hash_final(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_digest(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocs_hcu_dma_list_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_hcu_dma_list_add_tail(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocs_hcu_dma_list_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_keembay_ocs_hcu__252_1262_kmb_ocs_hcu_driver_init6, !1, !"__initcall__kmod_keembay_ocs_hcu__252_1262_kmb_ocs_hcu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1262, i32 1}
!2 = !{ptr @__exitcall_kmb_ocs_hcu_driver_exit, !1, !"__exitcall_kmb_ocs_hcu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file253, !4, !"__UNIQUE_ID_file253", i1 false, i1 false}
!4 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1264, i32 1}
!5 = !{ptr @__UNIQUE_ID_license254, !4, !"__UNIQUE_ID_license254", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1257, i32 12}
!8 = !{ptr @kmb_ocs_hcu_driver, !9, !"kmb_ocs_hcu_driver", i1 false, i1 false}
!9 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1253, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1190, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @kmb_ocs_hcu_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @kmb_ocs_hcu_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1209, i32 3}
!20 = !{ptr @kmb_ocs_hcu_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @kmb_ocs_hcu_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1228, i32 3}
!24 = !{ptr @kmb_ocs_hcu_probe._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @kmb_ocs_hcu_probe._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1236, i32 3}
!28 = !{ptr @kmb_ocs_hcu_probe._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @kmb_ocs_hcu_probe._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @init_completion.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/completion.h", i32 87, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 108, i32 10}
!35 = !{ptr @ocs_hcu, !36, !"ocs_hcu", i1 false, i1 false}
!36 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 106, i32 27}
!37 = !{ptr @ocs_hcu_algs, !38, !"ocs_hcu_algs", i1 false, i1 false}
!38 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 886, i32 25}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 382, i32 2}
!41 = !{ptr @__func__.prepare_ipad, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 383, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 391, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 126, i32 3}
!48 = !{ptr @__func__.flush_sg_to_ocs_buffer, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 132, i32 4}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 259, i32 4}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @kmb_ocs_dma_prepare._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @kmb_ocs_dma_prepare._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 279, i32 4}
!58 = !{ptr @kmb_ocs_dma_prepare._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @kmb_ocs_dma_prepare._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 351, i32 2}
!62 = !{ptr @kmb_ocs_dma_prepare._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @kmb_ocs_dma_prepare._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 776, i32 14}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 780, i32 32}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 781, i32 11}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 784, i32 14}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 787, i32 14}
!78 = !{ptr @kmb_ocs_hcu_of_match, !79, !"kmb_ocs_hcu_of_match", i1 false, i1 false}
!79 = !{!"../drivers/crypto/keembay/keembay-ocs-hcu-core.c", i32 1142, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{i64 2149102882}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{!"branch_weights", i32 2000, i32 1}
