; ModuleID = '/llk/IR_all_yes/drivers/crypto/keembay/keembay-ocs-aes-core.c_pt.bc'
source_filename = "../drivers/crypto/keembay/keembay-ocs-aes-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocs_aes_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
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
%struct.ocs_aes_dev = type { %struct.list_head, ptr, i32, ptr, %struct.completion, i32, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }

@__initcall__kmod_keembay_ocs_aes__249_1690_kmb_ocs_aes_driver_init6 = internal global ptr @kmb_ocs_aes_driver_init, section ".initcall6.init", align 4
@kmb_ocs_aes_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kmb_ocs_aes_probe, ptr @kmb_ocs_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kmb_ocs_aes_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kmb_ocs_aes_driver_exit = internal global ptr @kmb_ocs_aes_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [93 x i8] c"keembay_ocs_aes.description=Intel Keem Bay Offload and Crypto Subsystem (OCS) AES/SM4 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [60 x i8] c"keembay_ocs_aes.file=drivers/crypto/keembay/keembay-ocs-aes\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [28 x i8] c"keembay_ocs_aes.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace253 = internal constant [42 x i8] c"keembay_ocs_aes.alias=cbc-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto254 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-cbc-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace255 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ctr-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto256 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ctr-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace257 = internal constant [42 x i8] c"keembay_ocs_aes.alias=gcm-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto258 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-gcm-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace259 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ccm-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto260 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ccm-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace261 = internal constant [42 x i8] c"keembay_ocs_aes.alias=cbc-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto262 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-cbc-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace263 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ctr-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto264 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ctr-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace265 = internal constant [42 x i8] c"keembay_ocs_aes.alias=gcm-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto266 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-gcm-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace267 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ccm-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto268 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ccm-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace269 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ecb-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto270 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ecb-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace271 = internal constant [42 x i8] c"keembay_ocs_aes.alias=ecb-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto272 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-ecb-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace273 = internal constant [42 x i8] c"keembay_ocs_aes.alias=cts-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto274 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-cts-aes-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace275 = internal constant [42 x i8] c"keembay_ocs_aes.alias=cts-sm4-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto276 = internal constant [49 x i8] c"keembay_ocs_aes.alias=crypto-cts-sm4-keembay-ocs\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keembay-ocs-aes\00", [16 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-ocs-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set 32 bit dma mask %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_ocs_aes_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/crypto/keembay/keembay-ocs-aes-core.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry_ptr = internal global ptr @kmb_ocs_aes_probe._entry, section ".printk_index", align 4
@kmb_ocs_aes_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not retrieve io mem resource\0A\00", [60 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry_ptr.8 = internal global ptr @kmb_ocs_aes_probe._entry.6, section ".printk_index", align 4
@kmb_ocs_aes_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry_ptr.11 = internal global ptr @kmb_ocs_aes_probe._entry.9, section ".printk_index", align 4
@ocs_aes = internal global { %struct.ocs_aes_drv, [44 x i8] } { %struct.ocs_aes_drv { %struct.list_head { ptr @ocs_aes, ptr @ocs_aes }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1657, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not start crypto engine\0A\00", [33 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry_ptr.14 = internal global ptr @kmb_ocs_aes_probe._entry.12, section ".printk_index", align 4
@kmb_ocs_aes_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not register OCS algorithms with Crypto API\0A\00", [45 x i8] zeroinitializer }, align 32
@kmb_ocs_aes_probe._entry_ptr.17 = internal global ptr @kmb_ocs_aes_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ocs_aes.lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@algs_aead = internal global [4 x %struct.aead_alg] [%struct.aead_alg { ptr @kmb_ocs_aes_aead_set_key, ptr @kmb_ocs_aead_gcm_setauthsize, ptr @kmb_ocs_aes_gcm_encrypt, ptr @kmb_ocs_aes_gcm_decrypt, ptr @ocs_aes_aead_cra_init, ptr @ocs_aead_cra_exit, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @kmb_ocs_aes_aead_set_key, ptr @kmb_ocs_aead_ccm_setauthsize, ptr @kmb_ocs_aes_ccm_encrypt, ptr @kmb_ocs_aes_ccm_decrypt, ptr @ocs_aes_aead_cra_init, ptr @ocs_aead_cra_exit, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @kmb_ocs_sm4_aead_set_key, ptr @kmb_ocs_aead_gcm_setauthsize, ptr @kmb_ocs_sm4_gcm_encrypt, ptr @kmb_ocs_sm4_gcm_decrypt, ptr @ocs_sm4_aead_cra_init, ptr @ocs_aead_cra_exit, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @kmb_ocs_sm4_aead_set_key, ptr @kmb_ocs_aead_ccm_setauthsize, ptr @kmb_ocs_sm4_ccm_encrypt, ptr @kmb_ocs_sm4_ccm_decrypt, ptr @ocs_sm4_aead_cra_init, ptr @ocs_aead_cra_exit, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@algs = internal global [8 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @kmb_ocs_aes_set_key, ptr @kmb_ocs_aes_ecb_encrypt, ptr @kmb_ocs_aes_ecb_decrypt, ptr @ocs_aes_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_aes_set_key, ptr @kmb_ocs_aes_cbc_encrypt, ptr @kmb_ocs_aes_cbc_decrypt, ptr @ocs_aes_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_aes_set_key, ptr @kmb_ocs_aes_ctr_encrypt, ptr @kmb_ocs_aes_ctr_decrypt, ptr @ocs_aes_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_aes_set_key, ptr @kmb_ocs_aes_cts_encrypt, ptr @kmb_ocs_aes_cts_decrypt, ptr @ocs_aes_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"cts(cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cts-aes-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_sm4_set_key, ptr @kmb_ocs_sm4_ecb_encrypt, ptr @kmb_ocs_sm4_ecb_decrypt, ptr @ocs_sm4_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 16, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_sm4_set_key, ptr @kmb_ocs_sm4_cbc_encrypt, ptr @kmb_ocs_sm4_cbc_decrypt, ptr @ocs_sm4_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_sm4_set_key, ptr @kmb_ocs_sm4_ctr_encrypt, ptr @kmb_ocs_sm4_ctr_decrypt, ptr @ocs_sm4_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @kmb_ocs_sm4_set_key, ptr @kmb_ocs_sm4_cts_encrypt, ptr @kmb_ocs_sm4_cts_decrypt, ptr @ocs_sm4_init_tfm, ptr @ocs_exit_tfm, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 64, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"cts(cbc(sm4))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cts-sm4-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@kmb_ocs_aead_dma_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 798, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map destination sg\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kmb_ocs_aead_dma_prepare\00", [39 x i8] zeroinitializer }, align 32
@kmb_ocs_aead_dma_prepare._entry_ptr = internal global ptr @kmb_ocs_aead_dma_prepare._entry, section ".printk_index", align 4
@kmb_ocs_aead_dma_prepare._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map source sg\0A\00", [39 x i8] zeroinitializer }, align 32
@kmb_ocs_aead_dma_prepare._entry_ptr.24 = internal global ptr @kmb_ocs_aead_dma_prepare._entry.22, section ".printk_index", align 4
@kmb_ocs_aead_dma_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 885, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to copy source AAD to destination AAD\0A\00", [50 x i8] zeroinitializer }, align 32
@kmb_ocs_aead_dma_prepare._entry_ptr.27 = internal global ptr @kmb_ocs_aead_dma_prepare._entry.25, section ".printk_index", align 4
@kmb_ocs_sk_prepare_inplace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.28, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kmb_ocs_sk_prepare_inplace\00", [37 x i8] zeroinitializer }, align 32
@kmb_ocs_sk_prepare_inplace._entry_ptr = internal global ptr @kmb_ocs_sk_prepare_inplace._entry, section ".printk_index", align 4
@kmb_ocs_sk_prepare_notinplace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.29, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kmb_ocs_sk_prepare_notinplace\00", [34 x i8] zeroinitializer }, align 32
@kmb_ocs_sk_prepare_notinplace._entry_ptr = internal global ptr @kmb_ocs_sk_prepare_notinplace._entry, section ".printk_index", align 4
@kmb_ocs_sk_prepare_notinplace._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.29, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@kmb_ocs_sk_prepare_notinplace._entry_ptr.31 = internal global ptr @kmb_ocs_sk_prepare_notinplace._entry.30, section ".printk_index", align 4
@switch.table.kmb_ocs_aead_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.kmb_ocs_aead_ccm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 9]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"kmb_ocs_aes_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1681, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1685, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"kmb_ocs_aes_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1571, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1614, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1621, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1637, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"ocs_aes\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 117, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1657, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1663, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 119, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 798, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 857, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 884, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 430, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 465, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private constant [49 x i8] c"../drivers/crypto/keembay/keembay-ocs-aes-core.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 480, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [42 x i8] c"switch.table.kmb_ocs_aead_gcm_setauthsize\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [42 x i8] c"switch.table.kmb_ocs_aead_ccm_setauthsize\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias_crypto254, ptr @__UNIQUE_ID_alias_crypto256, ptr @__UNIQUE_ID_alias_crypto258, ptr @__UNIQUE_ID_alias_crypto260, ptr @__UNIQUE_ID_alias_crypto262, ptr @__UNIQUE_ID_alias_crypto264, ptr @__UNIQUE_ID_alias_crypto266, ptr @__UNIQUE_ID_alias_crypto268, ptr @__UNIQUE_ID_alias_crypto270, ptr @__UNIQUE_ID_alias_crypto272, ptr @__UNIQUE_ID_alias_crypto274, ptr @__UNIQUE_ID_alias_crypto276, ptr @__UNIQUE_ID_alias_userspace253, ptr @__UNIQUE_ID_alias_userspace255, ptr @__UNIQUE_ID_alias_userspace257, ptr @__UNIQUE_ID_alias_userspace259, ptr @__UNIQUE_ID_alias_userspace261, ptr @__UNIQUE_ID_alias_userspace263, ptr @__UNIQUE_ID_alias_userspace265, ptr @__UNIQUE_ID_alias_userspace267, ptr @__UNIQUE_ID_alias_userspace269, ptr @__UNIQUE_ID_alias_userspace271, ptr @__UNIQUE_ID_alias_userspace273, ptr @__UNIQUE_ID_alias_userspace275, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_kmb_ocs_aes_driver_exit, ptr @__initcall__kmod_keembay_ocs_aes__249_1690_kmb_ocs_aes_driver_init6, ptr @kmb_ocs_aead_dma_prepare._entry, ptr @kmb_ocs_aead_dma_prepare._entry.22, ptr @kmb_ocs_aead_dma_prepare._entry.25, ptr @kmb_ocs_aead_dma_prepare._entry_ptr, ptr @kmb_ocs_aead_dma_prepare._entry_ptr.24, ptr @kmb_ocs_aead_dma_prepare._entry_ptr.27, ptr @kmb_ocs_aes_driver_exit, ptr @kmb_ocs_aes_probe._entry, ptr @kmb_ocs_aes_probe._entry.12, ptr @kmb_ocs_aes_probe._entry.15, ptr @kmb_ocs_aes_probe._entry.6, ptr @kmb_ocs_aes_probe._entry.9, ptr @kmb_ocs_aes_probe._entry_ptr, ptr @kmb_ocs_aes_probe._entry_ptr.11, ptr @kmb_ocs_aes_probe._entry_ptr.14, ptr @kmb_ocs_aes_probe._entry_ptr.17, ptr @kmb_ocs_aes_probe._entry_ptr.8, ptr @kmb_ocs_sk_prepare_inplace._entry, ptr @kmb_ocs_sk_prepare_inplace._entry_ptr, ptr @kmb_ocs_sk_prepare_notinplace._entry, ptr @kmb_ocs_sk_prepare_notinplace._entry.30, ptr @kmb_ocs_sk_prepare_notinplace._entry_ptr, ptr @kmb_ocs_sk_prepare_notinplace._entry_ptr.31, ptr @kmb_ocs_aes_driver, ptr @.str, ptr @kmb_ocs_aes_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ocs_aes, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @switch.table.kmb_ocs_aead_gcm_setauthsize, ptr @switch.table.kmb_ocs_aead_ccm_setauthsize], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_aes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aes_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aead_dma_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aead_dma_prepare._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_aead_dma_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_sk_prepare_inplace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_sk_prepare_notinplace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_sk_prepare_notinplace._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kmb_ocs_aead_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kmb_ocs_aead_ccm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kmb_ocs_aes_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmb_ocs_aes_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @kmb_ocs_aes_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i103 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i = icmp eq i32 %call.i103, 0
  br i1 %cmp.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i103) #12
  br label %cleanup59

if.end6:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %cleanup59

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call7) #9
  %base_reg = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %base_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %base_reg, align 4
  %cmp.i104 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call15 to i32
  br label %cleanup59

if.end21:                                         ; preds = %if.end13
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call22, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end21.cleanup59_crit_edge, label %if.end26

if.end21.cleanup59_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59

if.end26:                                         ; preds = %if.end21
  %call28 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call22, ptr noundef nonnull @ocs_aes_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end34

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup59

if.end34:                                         ; preds = %if.end26
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %prev.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %7, ptr noundef nonnull @ocs_aes) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_add_tail.exit_crit_edge

if.end34.list_add_tail.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call.i, ptr getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ocs_aes, ptr %call.i, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end34.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %irq_completion = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %irq_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %irq_completion, align 4
  %wait.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #9
  %call36 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #9
  %engine = getelementptr inbounds %struct.ocs_aes_dev, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call36, ptr %engine, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %list_add_tail.exit.list_del_crit_edge, label %if.end40

list_add_tail.exit.list_del_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del

if.end40:                                         ; preds = %list_add_tail.exit
  %call42 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call.i105 = tail call i32 @crypto_register_aeads(ptr noundef nonnull @algs_aead, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end48
  %call1.i106 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @algs, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool2.not.i = icmp eq i32 %call1.i106, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup59_crit_edge, label %if.then3.i

if.end.i.cleanup59_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup59

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aeads(ptr noundef nonnull @algs_aead, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end48.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  %.str.16.sink = phi ptr [ @.str.13, %if.end40.cleanup_crit_edge ], [ @.str.16, %if.end48.cleanup_crit_edge ], [ @.str.16, %if.then3.i ]
  %rc.0 = phi i32 [ %call42, %if.end40.cleanup_crit_edge ], [ %call.i105, %if.end48.cleanup_crit_edge ], [ %call1.i106, %if.then3.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.16.sink) #12
  %13 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine, align 4
  %call57 = tail call i32 @crypto_engine_exit(ptr noundef %14) #9
  br label %list_del

list_del:                                         ; preds = %cleanup, %list_add_tail.exit.list_del_crit_edge
  %rc.1 = phi i32 [ %rc.0, %cleanup ], [ -12, %list_add_tail.exit.list_del_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #9
  br i1 %call.i.i107, label %if.end.i.i108, label %list_del.list_del.exit_crit_edge

list_del.list_del.exit_crit_edge:                 ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i108:                                    ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #11
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

list_del.exit:                                    ; preds = %if.end.i.i108, %list_del.list_del.exit_crit_edge
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  br label %cleanup59

cleanup59:                                        ; preds = %list_del.exit, %if.end.i.cleanup59_crit_edge, %do.end33, %if.end21.cleanup59_crit_edge, %if.then18, %do.end12, %do.end, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ %call.i103, %do.end ], [ %3, %if.then18 ], [ %call28, %do.end33 ], [ %rc.1, %list_del.exit ], [ -19, %do.end12 ], [ -12, %entry.cleanup59_crit_edge ], [ %call22, %if.end21.cleanup59_crit_edge ], [ 0, %if.end.i.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @crypto_unregister_aeads(ptr noundef nonnull @algs_aead, i32 noundef 4) #9
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @algs, i32 noundef 8) #9
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %engine = getelementptr inbounds %struct.ocs_aes_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine, align 4
  %call1 = tail call i32 @crypto_engine_exit(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_aes_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_aead_set_key(ptr nocapture noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %key_len)
  %cmp1.i = icmp eq i32 %key_len, 24
  %use_fallback.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 52
  %frombool.i = zext i1 %cmp1.i to i8
  %0 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool.i, ptr %use_fallback.i, align 4
  br i1 %cmp1.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i.i.i = icmp eq ptr %in_key, null
  br i1 %tobool.not.i.i.i, label %if.then.i.kmb_ocs_aead_set_key.exit_crit_edge, label %if.end.i.i.i

if.then.i.kmb_ocs_aead_set_key.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_aead_set_key.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %1 = add i32 %key_len, -16
  %switch.and.i.i.i = and i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.end.i.i, label %if.end.i.i.i.kmb_ocs_aead_set_key.exit_crit_edge

if.end.i.i.i.kmb_ocs_aead_set_key.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_aead_set_key.exit

if.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %key.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %2 = call ptr @memcpy(ptr %key.i.i, ptr %in_key, i32 %key_len)
  %key_len1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %3 = ptrtoint ptr %key_len1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %key_len, ptr %key_len1.i.i, align 4
  %cipher2.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 44
  %4 = ptrtoint ptr %cipher2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cipher2.i.i, align 4
  br label %kmb_ocs_aead_set_key.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sw_cipher.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %5 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i, align 128
  %and.i.i.i = and i32 %8, -1048321
  store i32 %and.i.i.i, ptr %base.i.i.i, align 128
  %9 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i18.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i18.i, align 128
  %and.i = and i32 %11, 1048320
  %base.i.i19.i = getelementptr inbounds %struct.crypto_aead, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %base.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i19.i, align 128
  %or.i.i.i = or i32 %13, %and.i
  store i32 %or.i.i.i, ptr %base.i.i19.i, align 128
  %14 = load ptr, ptr %sw_cipher.i, align 4
  %call7.i = tail call i32 @crypto_aead_setkey(ptr noundef %14, ptr noundef %in_key, i32 noundef 24) #9
  br label %kmb_ocs_aead_set_key.exit

kmb_ocs_aead_set_key.exit:                        ; preds = %if.end.i, %if.end.i.i, %if.end.i.i.i.kmb_ocs_aead_set_key.exit_crit_edge, %if.then.i.kmb_ocs_aead_set_key.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ 0, %if.end.i.i ], [ -22, %if.then.i.kmb_ocs_aead_set_key.exit_crit_edge ], [ -22, %if.end.i.i.i.kmb_ocs_aead_set_key.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_aead_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.crypto_gcm_check_authsize.exit_crit_edge

entry.crypto_gcm_check_authsize.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_gcm_check_authsize.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.kmb_ocs_aead_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %crypto_gcm_check_authsize.exit

crypto_gcm_check_authsize.exit:                   ; preds = %switch.lookup, %entry.crypto_gcm_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.crypto_gcm_check_authsize.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_gcm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_gcm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocs_aes_aead_cra_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %sw_cipher, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %5)
  %cmp = icmp ugt i32 %5, -129
  %add = add i32 %5, 128
  %cond = select i1 %cmp, i32 128, i32 %add
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %6 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %reqsize1.i, align 4
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %__crt_ctx.i.i, align 4
  %do_one_request.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %8 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kmb_ocs_aes_aead_do_one_request, ptr %do_one_request.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %9 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %unprepare_request.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocs_aead_cra_exit(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %0 = call ptr @memset(ptr %key.i, i32 0, i32 32)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %key.i) #9, !srcloc !118
  %aes_dev.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %1 = ptrtoint ptr %aes_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aes_dev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.clear_key.exit_crit_edge, label %if.then.i

entry.clear_key.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_key.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ocs_aes_set_key(ptr noundef nonnull %2, i32 noundef 32, ptr noundef %key.i, i32 noundef 0) #9
  br label %clear_key.exit

clear_key.exit:                                   ; preds = %if.then.i, %entry.clear_key.exit_crit_edge
  %sw_cipher = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_cipher, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %clear_key.exit.if.end_crit_edge, label %if.then

clear_key.exit.if.end_crit_edge:                  ; preds = %clear_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %clear_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i) #9
  %5 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sw_cipher, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %clear_key.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_aead_ccm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.kmb_ocs_aead_ccm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ccm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ccm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_sm4_aead_set_key(ptr nocapture noundef writeonly %tfm, ptr noundef readonly %in_key, i32 noundef %key_len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %use_fallback.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 52
  %0 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %use_fallback.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %in_key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %key_len)
  %cmp7.old.i.i.i = icmp eq i32 %key_len, 16
  %or.cond = and i1 %tobool.not.i.i.i, %cmp7.old.i.i.i
  br i1 %or.cond, label %if.end.i.i, label %entry.kmb_ocs_aead_set_key.exit_crit_edge

entry.kmb_ocs_aead_set_key.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_aead_set_key.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %key.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %1 = call ptr @memcpy(ptr %key.i.i, ptr %in_key, i32 16)
  %key_len1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %2 = ptrtoint ptr %key_len1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %key_len1.i.i, align 4
  %cipher2.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 44
  %3 = ptrtoint ptr %cipher2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %cipher2.i.i, align 4
  br label %kmb_ocs_aead_set_key.exit

kmb_ocs_aead_set_key.exit:                        ; preds = %if.end.i.i, %entry.kmb_ocs_aead_set_key.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.i ], [ -22, %entry.kmb_ocs_aead_set_key.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_gcm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_gcm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 7)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ocs_sm4_aead_cra_init(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %0 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %reqsize1.i, align 4
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %__crt_ctx.i.i, align 4
  %do_one_request.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_aes_aead_do_one_request, ptr %do_one_request.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ccm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ccm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_aead_common(ptr noundef %req, i32 noundef %cipher, i32 noundef %instruction, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %use_fallback = getelementptr i8, ptr %1, i32 188
  %2 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_fallback, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %sw_cipher = getelementptr i8, ptr %1, i32 184
  %4 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_cipher, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
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
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cryptlen, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %26 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i, align 32
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %assoclen, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %30 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %assoclen1.i, align 8
  %31 = load ptr, ptr %sw_cipher, align 4
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i, align 128
  %call9 = tail call i32 @crypto_aead_setauthsize(ptr noundef %31, i32 noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %if.then.cleanup30_crit_edge

if.then.cleanup30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instruction)
  %cmp = icmp eq i32 %instruction, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #9
  br label %cleanup30

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #9
  br label %cleanup30

if.end14:                                         ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %34 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %35, i32 -104
  %36 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ivsize.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %instruction)
  %cmp.i = icmp eq i32 %instruction, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end14.if.end.i_crit_edge

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end14
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %40 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cryptlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp3.i = icmp ult i32 %41, %39
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup30_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.cleanup30_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iv.i, align 32
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end.i.cleanup30_crit_edge, label %if.end5.i

if.end.i.cleanup30_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end5.i:                                        ; preds = %if.end.i
  %44 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end5.i.cleanup30_crit_edge [
    i32 7, label %sw.bb.i
    i32 6, label %sw.bb9.i
  ]

if.end5.i.cleanup30_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %37)
  %cmp6.not.i = icmp eq i32 %37, 12
  br i1 %cmp6.not.i, label %sw.bb.i.if.end18_crit_edge, label %sw.bb.i.cleanup30_crit_edge

sw.bb.i.cleanup30_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

sw.bb.i.if.end18_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.bb9.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %37)
  %cmp10.not.i = icmp eq i32 %37, 16
  br i1 %cmp10.not.i, label %sw.bb9.i.if.end18_crit_edge, label %sw.bb9.i.cleanup30_crit_edge

sw.bb9.i.cleanup30_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

sw.bb9.i.if.end18_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %sw.bb9.i.if.end18_crit_edge, %sw.bb.i.if.end18_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %aes_dev1.i = getelementptr i8, ptr %1, i32 140
  %45 = ptrtoint ptr %aes_dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %aes_dev1.i, align 4
  %tobool.not.i68 = icmp eq ptr %46, null
  br i1 %tobool.not.i68, label %kmb_ocs_aes_find_dev.exit, label %kmb_ocs_aes_find_dev.exit.thread

kmb_ocs_aes_find_dev.exit.thread:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  br label %if.end22

kmb_ocs_aes_find_dev.exit:                        ; preds = %if.end18
  %47 = load ptr, ptr @ocs_aes, align 4
  %48 = ptrtoint ptr %aes_dev1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %aes_dev1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %tobool20.not = icmp eq ptr %47, null
  br i1 %tobool20.not, label %kmb_ocs_aes_find_dev.exit.cleanup30_crit_edge, label %kmb_ocs_aes_find_dev.exit.if.end22_crit_edge

kmb_ocs_aes_find_dev.exit.if.end22_crit_edge:     ; preds = %kmb_ocs_aes_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

kmb_ocs_aes_find_dev.exit.cleanup30_crit_edge:    ; preds = %kmb_ocs_aes_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end22:                                         ; preds = %kmb_ocs_aes_find_dev.exit.if.end22_crit_edge, %kmb_ocs_aes_find_dev.exit.thread
  %aes_dev.0.i75 = phi ptr [ %46, %kmb_ocs_aes_find_dev.exit.thread ], [ %47, %kmb_ocs_aes_find_dev.exit.if.end22_crit_edge ]
  %cipher23 = getelementptr i8, ptr %1, i32 180
  %49 = ptrtoint ptr %cipher23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cipher23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %cipher)
  %cmp24.not = icmp eq i32 %50, %cipher
  br i1 %cmp24.not, label %if.end26, label %if.end22.cleanup30_crit_edge

if.end22.cleanup30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %51 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %52 = call ptr @memset(ptr %51, i32 0, i32 120)
  %dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %53 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %dma_addr.i, align 4
  %dma_addr1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6
  %54 = ptrtoint ptr %dma_addr1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %dma_addr1.i, align 4
  %dma_addr2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %55 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %dma_addr2.i, align 4
  %dma_addr3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %56 = ptrtoint ptr %dma_addr3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %dma_addr3.i, align 4
  %57 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %instruction, ptr %__ctx.i, align 4
  %mode28 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %mode28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mode, ptr %mode28, align 4
  %engine = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev.0.i75, i32 0, i32 6
  %59 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %engine, align 4
  %call29 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %60, ptr noundef %req) #9
  br label %cleanup30

cleanup30:                                        ; preds = %if.end26, %if.end22.cleanup30_crit_edge, %kmb_ocs_aes_find_dev.exit.cleanup30_crit_edge, %sw.bb9.i.cleanup30_crit_edge, %sw.bb.i.cleanup30_crit_edge, %if.end5.i.cleanup30_crit_edge, %if.end.i.cleanup30_crit_edge, %land.lhs.true.i.cleanup30_crit_edge, %cond.false, %cond.true, %if.then.cleanup30_crit_edge
  %retval.1 = phi i32 [ %call29, %if.end26 ], [ %call9, %if.then.cleanup30_crit_edge ], [ %call12, %cond.true ], [ %call13, %cond.false ], [ -19, %kmb_ocs_aes_find_dev.exit.cleanup30_crit_edge ], [ -22, %if.end22.cleanup30_crit_edge ], [ -22, %land.lhs.true.i.cleanup30_crit_edge ], [ -22, %if.end.i.cleanup30_crit_edge ], [ -22, %sw.bb.i.cleanup30_crit_edge ], [ -22, %sw.bb9.i.cleanup30_crit_edge ], [ -22, %if.end5.i.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_aead_do_one_request(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %aes_dev = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aes_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_len = getelementptr i8, ptr %1, i32 176
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_len, align 4
  %key = getelementptr i8, ptr %1, i32 144
  %cipher = getelementptr i8, ptr %1, i32 180
  %6 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher, align 4
  %call3 = tail call i32 @ocs_aes_set_key(ptr noundef nonnull %3, i32 noundef %5, ptr noundef %key, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  %src.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %12 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src.i.i, align 4
  %assoclen.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen.i.i, align 8
  %cryptlen.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 2
  %16 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cryptlen.i.i, align 4
  %add.i.i = add i32 %17, %15
  %conv.i.i = zext i32 %add.i.i to i64
  %call5.i.i = tail call i32 @sg_nents_for_len(ptr noundef %13, i64 noundef %conv.i.i) #9
  %src_nents.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call5.i.i, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %if.end6.exit.i_crit_edge, label %if.end.i.i

if.end6.exit.i_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end.i.i:                                       ; preds = %if.end6
  %19 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp8.i.i = icmp eq i32 %20, 1
  %21 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cryptlen.i.i, align 4
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %22, %11
  %23 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %assoclen.i.i, align 8
  %add13.i.i = add i32 %24, %sub.i.i
  %25 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src.i.i, align 4
  %in_tag.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 52
  %call18.i.i = tail call i32 @sg_pcopy_to_buffer(ptr noundef %26, i32 noundef %call5.i.i, ptr noundef %in_tag.i.i, i32 noundef %11, i32 noundef %add13.i.i) #9
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mode.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp20.i.i = icmp eq i32 %28, 6
  %add22.i.i = select i1 %cmp20.i.i, i32 %11, i32 0
  %cond.i.i = add i32 %add22.i.i, %22
  %29 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assoclen.i.i, align 8
  %add24.i.i = add i32 %22, %11
  %add25.i.i = add i32 %add24.i.i, %30
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.else.i.i, %if.then10.i.i
  %in_size.0.i.i = phi i32 [ %sub.i.i, %if.then10.i.i ], [ %22, %if.else.i.i ]
  %out_size.0.i.i = phi i32 [ %sub.i.i, %if.then10.i.i ], [ %cond.i.i, %if.else.i.i ]
  %dst_size.0.i.i = phi i32 [ %add13.i.i, %if.then10.i.i ], [ %add25.i.i, %if.else.i.i ]
  %dst.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 5
  %31 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst.i.i, align 8
  %conv27.i.i = zext i32 %dst_size.0.i.i to i64
  %call28.i.i = tail call i32 @sg_nents_for_len(ptr noundef %32, i64 noundef %conv27.i.i) #9
  %dst_nents.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call28.i.i, ptr %dst_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp30.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp30.i.i, label %if.end26.i.i.exit.i_crit_edge, label %if.end33.i.i

if.end26.i.i.exit.i_crit_edge:                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end33.i.i:                                     ; preds = %if.end26.i.i
  %34 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src.i.i, align 4
  %36 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst.i.i, align 8
  %cmp36.i.i = icmp eq ptr %35, %37
  %in_place.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 1
  %frombool.i.i = zext i1 %cmp36.i.i to i8
  %38 = ptrtoint ptr %in_place.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool.i.i, ptr %in_place.i.i, align 4
  %aes_dev.i.i = getelementptr i8, ptr %9, i32 140
  %39 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aes_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %cond44.i.i = select i1 %cmp36.i.i, i32 0, i32 2
  %call45.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %42, ptr noundef %37, i32 noundef %call28.i.i, i32 noundef %cond44.i.i, i32 noundef 0) #9
  %dst_dma_count.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 4
  %43 = ptrtoint ptr %dst_dma_count.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call45.i.i, ptr %dst_dma_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %cmp47.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %cmp47.i.i, label %land.lhs.true.i.i, label %if.end33.i.i.if.end55.i.i_crit_edge

if.end33.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i.i

land.lhs.true.i.i:                                ; preds = %if.end33.i.i
  %44 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dst_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp50.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp50.not.i.i, label %land.lhs.true.i.i.if.end55.i.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.end55.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aes_dev.i.i, align 4
  %dev54.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev54.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.20) #12
  br label %exit.i

if.end55.i.i:                                     ; preds = %land.lhs.true.i.i.if.end55.i.i_crit_edge, %if.end33.i.i.if.end55.i.i_crit_edge
  %50 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aes_dev.i.i, align 4
  %52 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst.i.i, align 8
  %aad_dst_dll.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 40
  %54 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %assoclen.i.i, align 8
  %call60.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %51, ptr noundef %53, i32 noundef %call45.i.i, ptr noundef %aad_dst_dll.i.i, i32 noundef %55, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end63.i.i, label %if.end55.i.i.exit.i_crit_edge

if.end55.i.i.exit.i_crit_edge:                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end63.i.i:                                     ; preds = %if.end55.i.i
  %56 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %aes_dev.i.i, align 4
  %58 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dst.i.i, align 8
  %60 = ptrtoint ptr %dst_dma_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dst_dma_count.i.i, align 4
  %dst_dll.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 5
  %62 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %assoclen.i.i, align 8
  %call68.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %57, ptr noundef %59, i32 noundef %61, ptr noundef %dst_dll.i.i, i32 noundef %out_size.0.i.i, i32 noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end71.i.i, label %if.end63.i.i.exit.i_crit_edge

if.end63.i.i.exit.i_crit_edge:                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end71.i.i:                                     ; preds = %if.end63.i.i
  %64 = ptrtoint ptr %in_place.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %in_place.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool73.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool73.not.i.i, label %if.end107.i.i, label %if.then74.i.i

if.then74.i.i:                                    ; preds = %if.end71.i.i
  %mode75.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %mode75.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode75.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp76.i.i = icmp eq i32 %67, 6
  br i1 %cmp76.i.i, label %land.lhs.true78.i.i, label %if.then74.i.i.if.then82.i.i_crit_edge

if.then74.i.i.if.then82.i.i_crit_edge:            ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

land.lhs.true78.i.i:                              ; preds = %if.then74.i.i
  %68 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp80.i.i = icmp eq i32 %69, 0
  br i1 %cmp80.i.i, label %if.end88.i.i, label %land.lhs.true78.i.i.if.then82.i.i_crit_edge

land.lhs.true78.i.i.if.then82.i.i_crit_edge:      ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82.i.i

if.then82.i.i:                                    ; preds = %land.lhs.true78.i.i.if.then82.i.i_crit_edge, %if.then74.i.i.if.then82.i.i_crit_edge
  %dma_addr.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6
  %70 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_addr.i.i, align 4
  %dma_addr84.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 3
  %72 = ptrtoint ptr %dma_addr84.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dma_addr84.i.i, align 4
  %dma_addr86.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 44
  %73 = ptrtoint ptr %dma_addr86.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr86.i.i, align 4
  %dma_addr87.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 32
  %75 = ptrtoint ptr %dma_addr87.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %dma_addr87.i.i, align 4
  br label %if.end.i

if.end88.i.i:                                     ; preds = %land.lhs.true78.i.i
  %76 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %aes_dev.i.i, align 4
  %78 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst.i.i, align 8
  %80 = ptrtoint ptr %dst_dma_count.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst_dma_count.i.i, align 4
  %aad_src_dll92.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 28
  %82 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %assoclen.i.i, align 8
  %call94.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %77, ptr noundef %79, i32 noundef %81, ptr noundef %aad_src_dll92.i.i, i32 noundef %83, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i.i)
  %tobool95.not.i.i = icmp eq i32 %call94.i.i, 0
  br i1 %tobool95.not.i.i, label %kmb_ocs_aead_dma_prepare.exit.i, label %if.end88.i.i.exit.i_crit_edge

if.end88.i.i.exit.i_crit_edge:                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end107.i.i:                                    ; preds = %if.end71.i.i
  %84 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %aes_dev.i.i, align 4
  %dev109.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %dev109.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev109.i.i, align 4
  %88 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %src.i.i, align 4
  %90 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src_nents.i.i, align 4
  %call112.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %87, ptr noundef %89, i32 noundef %91, i32 noundef 1, i32 noundef 0) #9
  %src_dma_count.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 3
  %92 = ptrtoint ptr %src_dma_count.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call112.i.i, ptr %src_dma_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i.i)
  %cmp114.i.i = icmp eq i32 %call112.i.i, 0
  br i1 %cmp114.i.i, label %land.lhs.true116.i.i, label %if.end107.i.i.if.end126.i.i_crit_edge

if.end107.i.i.if.end126.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i.i

land.lhs.true116.i.i:                             ; preds = %if.end107.i.i
  %93 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp118.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp118.not.i.i, label %land.lhs.true116.i.i.if.end126.i.i_crit_edge, label %do.end123.i.i

land.lhs.true116.i.i.if.end126.i.i_crit_edge:     ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i.i

do.end123.i.i:                                    ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %aes_dev.i.i, align 4
  %dev125.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %dev125.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev125.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.23) #12
  br label %exit.i

if.end126.i.i:                                    ; preds = %land.lhs.true116.i.i.if.end126.i.i_crit_edge, %if.end107.i.i.if.end126.i.i_crit_edge
  %99 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %aes_dev.i.i, align 4
  %101 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %src.i.i, align 4
  %aad_src_dll130.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 28
  %103 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %assoclen.i.i, align 8
  %call132.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %100, ptr noundef %102, i32 noundef %call112.i.i, ptr noundef %aad_src_dll130.i.i, i32 noundef %104, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i.i)
  %tobool133.not.i.i = icmp eq i32 %call132.i.i, 0
  br i1 %tobool133.not.i.i, label %if.end135.i.i, label %if.end126.i.i.exit.i_crit_edge

if.end126.i.i.exit.i_crit_edge:                   ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end135.i.i:                                    ; preds = %if.end126.i.i
  %105 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %aes_dev.i.i, align 4
  %107 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %src.i.i, align 4
  %109 = ptrtoint ptr %src_dma_count.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %src_dma_count.i.i, align 4
  %src_dll139.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 2
  %111 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %assoclen.i.i, align 8
  %call141.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %106, ptr noundef %108, i32 noundef %110, ptr noundef %src_dll139.i.i, i32 noundef %in_size.0.i.i, i32 noundef %112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i.i)
  %tobool142.not.i.i = icmp eq i32 %call141.i.i, 0
  br i1 %tobool142.not.i.i, label %if.end144.i.i, label %if.end135.i.i.exit.i_crit_edge

if.end135.i.i.exit.i_crit_edge:                   ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end144.i.i:                                    ; preds = %if.end135.i.i
  %113 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %assoclen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp146.i.i = icmp eq i32 %114, 0
  br i1 %cmp146.i.i, label %if.end144.i.i.if.end.i_crit_edge, label %if.end149.i.i

if.end144.i.i.if.end.i_crit_edge:                 ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end149.i.i:                                    ; preds = %if.end144.i.i
  %115 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %aes_dev.i.i, align 4
  %dma_addr152.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 44
  %117 = ptrtoint ptr %dma_addr152.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr152.i.i, align 4
  %dma_addr154.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 32
  %119 = ptrtoint ptr %dma_addr154.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_addr154.i.i, align 4
  %121 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cryptlen.i.i, align 4
  %call.i.i.i = tail call i32 @ocs_aes_op(ptr noundef %116, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef %118, i32 noundef %120, i32 noundef %122, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool157.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool157.not.i.i, label %if.end149.i.i.if.end.i_crit_edge, label %do.end161.i.i

if.end149.i.i.if.end.i_crit_edge:                 ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end161.i.i:                                    ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %aes_dev.i.i, align 4
  %dev163.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %dev163.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev163.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.26) #12
  br label %exit.i

kmb_ocs_aead_dma_prepare.exit.i:                  ; preds = %if.end88.i.i
  %127 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %aes_dev.i.i, align 4
  %129 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dst.i.i, align 8
  %131 = ptrtoint ptr %dst_dma_count.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dst_dma_count.i.i, align 4
  %src_dll101.i.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 2
  %133 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %assoclen.i.i, align 8
  %call103.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %128, ptr noundef %130, i32 noundef %132, ptr noundef %src_dll101.i.i, i32 noundef %in_size.0.i.i, i32 noundef %134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i.i)
  %tobool.not.i = icmp eq i32 %call103.i.i, 0
  br i1 %tobool.not.i, label %kmb_ocs_aead_dma_prepare.exit.i.if.end.i_crit_edge, label %kmb_ocs_aead_dma_prepare.exit.i.exit.i_crit_edge

kmb_ocs_aead_dma_prepare.exit.i.exit.i_crit_edge: ; preds = %kmb_ocs_aead_dma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

kmb_ocs_aead_dma_prepare.exit.i.if.end.i_crit_edge: ; preds = %kmb_ocs_aead_dma_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %kmb_ocs_aead_dma_prepare.exit.i.if.end.i_crit_edge, %if.end149.i.i.if.end.i_crit_edge, %if.end144.i.i.if.end.i_crit_edge, %if.then82.i.i
  %mode.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %135 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp.i = icmp eq i32 %136, 6
  %137 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %aes_dev.i.i, align 4
  %cipher.i = getelementptr i8, ptr %9, i32 180
  %139 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cipher.i, align 4
  %141 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %__ctx.i.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6
  %143 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dma_addr.i, align 4
  %dma_addr7.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 3
  %145 = ptrtoint ptr %dma_addr7.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_addr7.i, align 4
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 3
  %147 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iv.i, align 32
  %dma_addr8.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 32
  %149 = ptrtoint ptr %dma_addr8.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dma_addr8.i, align 4
  %151 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %assoclen.i.i, align 8
  br i1 %cmp.i, label %if.then6.i, label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %in_tag.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 52
  %call9.i = tail call i32 @ocs_aes_ccm_op(ptr noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %in_size.0.i.i, ptr noundef %148, i32 noundef %150, i32 noundef %152, ptr noundef %in_tag.i, i32 noundef %11) #9
  br label %exit.i

if.end10.i:                                       ; preds = %if.end.i
  %out_tag.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 68
  %call23.i = tail call i32 @ocs_aes_gcm_op(ptr noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %in_size.0.i.i, ptr noundef %148, i32 noundef %150, i32 noundef %152, ptr noundef %out_tag.i, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end10.i.exit.i_crit_edge

if.end10.i.exit.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end26.i:                                       ; preds = %if.end10.i
  %153 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp28.i = icmp eq i32 %154, 1
  br i1 %cmp28.i, label %if.then29.i, label %if.end36.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %in_tag30.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 6, i32 52
  %bcmp.i = tail call i32 @bcmp(ptr %in_tag30.i, ptr %out_tag.i, i32 %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool35.not.i = icmp eq i32 %bcmp.i, 0
  %cond.i = select i1 %tobool35.not.i, i32 0, i32 -74
  br label %exit.i

if.end36.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kmb_ocs_aead_dma_cleanup(ptr noundef %areq) #9
  %155 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dst.i.i, align 8
  %157 = ptrtoint ptr %dst_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dst_nents.i.i, align 4
  %159 = ptrtoint ptr %assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %assoclen.i.i, align 8
  %161 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cryptlen.i.i, align 4
  %add.i = add i32 %162, %160
  %call40.i = tail call i32 @sg_pcopy_from_buffer(ptr noundef %156, i32 noundef %158, ptr noundef %out_tag.i, i32 noundef %11, i32 noundef %add.i) #9
  br label %exit

exit.i:                                           ; preds = %if.then29.i, %if.end10.i.exit.i_crit_edge, %if.then6.i, %kmb_ocs_aead_dma_prepare.exit.i.exit.i_crit_edge, %do.end161.i.i, %if.end135.i.i.exit.i_crit_edge, %if.end126.i.i.exit.i_crit_edge, %do.end123.i.i, %if.end88.i.i.exit.i_crit_edge, %if.end63.i.i.exit.i_crit_edge, %if.end55.i.i.exit.i_crit_edge, %do.end.i.i, %if.end26.i.i.exit.i_crit_edge, %if.end6.exit.i_crit_edge
  %rc.0.i = phi i32 [ %call103.i.i, %kmb_ocs_aead_dma_prepare.exit.i.exit.i_crit_edge ], [ %call9.i, %if.then6.i ], [ %call23.i, %if.end10.i.exit.i_crit_edge ], [ %cond.i, %if.then29.i ], [ %call.i.i.i, %do.end161.i.i ], [ %call141.i.i, %if.end135.i.i.exit.i_crit_edge ], [ %call132.i.i, %if.end126.i.i.exit.i_crit_edge ], [ %call94.i.i, %if.end88.i.i.exit.i_crit_edge ], [ %call68.i.i, %if.end63.i.i.exit.i_crit_edge ], [ %call60.i.i, %if.end55.i.i.exit.i_crit_edge ], [ -74, %if.end26.i.i.exit.i_crit_edge ], [ -74, %if.end6.exit.i_crit_edge ], [ -12, %do.end123.i.i ], [ -12, %do.end.i.i ]
  tail call fastcc void @kmb_ocs_aead_dma_cleanup(ptr noundef %areq) #9
  br label %exit

exit:                                             ; preds = %exit.i, %if.end36.i, %if.end.exit_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.exit_crit_edge ], [ %rc.0.i, %exit.i ], [ 0, %if.end36.i ]
  %163 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %aes_dev, align 4
  %engine9 = getelementptr inbounds %struct.ocs_aes_dev, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %engine9 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %engine9, align 4
  tail call void @crypto_finalize_aead_request(ptr noundef %166, ptr noundef %areq, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_aes_set_key(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_aes_ccm_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_aes_gcm_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmb_ocs_aead_dma_cleanup(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %aes_dev = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aes_dev, align 4
  %dev3 = getelementptr inbounds %struct.ocs_aes_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %src_dma_count = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %src_dma_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_dma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 4
  %src_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %src_dma_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_dma_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dst_dma_count = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %dst_dma_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_dma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 8
  %dst_nents = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_nents, align 4
  %in_place = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %19 = ptrtoint ptr %in_place to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %in_place, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool7.not, i32 2, i32 0
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %16, i32 noundef %18, i32 noundef %cond, i32 noundef 0) #9
  %21 = ptrtoint ptr %dst_dma_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dst_dma_count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %src_dll = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %22 = ptrtoint ptr %src_dll to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_dll, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge, label %if.then.i

if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %25, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit

cleanup_ocs_dma_linked_list.exit:                 ; preds = %if.then.i, %if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge
  %28 = ptrtoint ptr %src_dll to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %src_dll, align 4
  %size3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %29 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %size3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %30 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dma_addr4.i, align 4
  %dst_dll = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %31 = ptrtoint ptr %dst_dll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst_dll, align 4
  %tobool.not.i28 = icmp eq ptr %32, null
  br i1 %tobool.not.i28, label %cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit34_crit_edge, label %if.then.i31

cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit34_crit_edge: ; preds = %cleanup_ocs_dma_linked_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit34

if.then.i31:                                      ; preds = %cleanup_ocs_dma_linked_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %size.i29 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 4
  %33 = ptrtoint ptr %size.i29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i29, align 4
  %dma_addr.i30 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6
  %35 = ptrtoint ptr %dma_addr.i30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr.i30, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %34, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit34

cleanup_ocs_dma_linked_list.exit34:               ; preds = %if.then.i31, %cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit34_crit_edge
  %37 = ptrtoint ptr %dst_dll to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dst_dll, align 4
  %size3.i32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 4
  %38 = ptrtoint ptr %size3.i32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %size3.i32, align 4
  %dma_addr4.i33 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6
  %39 = ptrtoint ptr %dma_addr4.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %dma_addr4.i33, align 4
  %aad_src_dll = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 28
  %40 = ptrtoint ptr %aad_src_dll to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aad_src_dll, align 4
  %tobool.not.i35 = icmp eq ptr %41, null
  br i1 %tobool.not.i35, label %cleanup_ocs_dma_linked_list.exit34.cleanup_ocs_dma_linked_list.exit41_crit_edge, label %if.then.i38

cleanup_ocs_dma_linked_list.exit34.cleanup_ocs_dma_linked_list.exit41_crit_edge: ; preds = %cleanup_ocs_dma_linked_list.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit41

if.then.i38:                                      ; preds = %cleanup_ocs_dma_linked_list.exit34
  call void @__sanitizer_cov_trace_pc() #11
  %size.i36 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %42 = ptrtoint ptr %size.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i36, align 4
  %dma_addr.i37 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %44 = ptrtoint ptr %dma_addr.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr.i37, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %43, ptr noundef nonnull %41, i32 noundef %45, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit41

cleanup_ocs_dma_linked_list.exit41:               ; preds = %if.then.i38, %cleanup_ocs_dma_linked_list.exit34.cleanup_ocs_dma_linked_list.exit41_crit_edge
  %46 = ptrtoint ptr %aad_src_dll to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %aad_src_dll, align 4
  %size3.i39 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 36
  %47 = ptrtoint ptr %size3.i39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %size3.i39, align 4
  %dma_addr4.i40 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 32
  %48 = ptrtoint ptr %dma_addr4.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %dma_addr4.i40, align 4
  %aad_dst_dll = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 40
  %49 = ptrtoint ptr %aad_dst_dll to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %aad_dst_dll, align 4
  %tobool.not.i42 = icmp eq ptr %50, null
  br i1 %tobool.not.i42, label %cleanup_ocs_dma_linked_list.exit41.cleanup_ocs_dma_linked_list.exit48_crit_edge, label %if.then.i45

cleanup_ocs_dma_linked_list.exit41.cleanup_ocs_dma_linked_list.exit48_crit_edge: ; preds = %cleanup_ocs_dma_linked_list.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit48

if.then.i45:                                      ; preds = %cleanup_ocs_dma_linked_list.exit41
  call void @__sanitizer_cov_trace_pc() #11
  %size.i43 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 48
  %51 = ptrtoint ptr %size.i43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i43, align 4
  %dma_addr.i44 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %53 = ptrtoint ptr %dma_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_addr.i44, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %52, ptr noundef nonnull %50, i32 noundef %54, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit48

cleanup_ocs_dma_linked_list.exit48:               ; preds = %if.then.i45, %cleanup_ocs_dma_linked_list.exit41.cleanup_ocs_dma_linked_list.exit48_crit_edge
  %55 = ptrtoint ptr %aad_dst_dll to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %aad_dst_dll, align 4
  %size3.i46 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 48
  %56 = ptrtoint ptr %size3.i46 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %size3.i46, align 4
  %dma_addr4.i47 = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 6, i32 44
  %57 = ptrtoint ptr %dma_addr4.i47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %dma_addr4.i47, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_create_linked_list_from_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocs_aes_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_set_key(ptr nocapture noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %key_len)
  %cmp1.i = icmp eq i32 %key_len, 24
  %use_fallback.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 56
  %frombool.i = zext i1 %cmp1.i to i8
  %0 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool.i, ptr %use_fallback.i, align 4
  br i1 %cmp1.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i.i.i = icmp eq ptr %in_key, null
  br i1 %tobool.not.i.i.i, label %if.then.i.kmb_ocs_sk_set_key.exit_crit_edge, label %if.end.i.i.i

if.then.i.kmb_ocs_sk_set_key.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_sk_set_key.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %1 = add i32 %key_len, -16
  %switch.and.i.i.i = and i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.end.i.i, label %if.end.i.i.i.kmb_ocs_sk_set_key.exit_crit_edge

if.end.i.i.i.kmb_ocs_sk_set_key.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_sk_set_key.exit

if.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %key.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %2 = call ptr @memcpy(ptr %key.i.i, ptr %in_key, i32 %key_len)
  %key_len1.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 44
  %3 = ptrtoint ptr %key_len1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %key_len, ptr %key_len1.i.i, align 4
  %cipher2.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 48
  %4 = ptrtoint ptr %cipher2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cipher2.i.i, align 4
  br label %kmb_ocs_sk_set_key.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sw_cipher.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 52
  %5 = ptrtoint ptr %sw_cipher.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_cipher.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i.i.i = and i32 %8, -1048321
  store i32 %and.i.i.i.i, ptr %base.i.i.i.i, align 128
  %9 = load ptr, ptr %sw_cipher.i, align 4
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 128
  %and.i = and i32 %11, 1048320
  %base.i.i.i17.i = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i.i17.i, align 128
  %or.i.i.i.i = or i32 %13, %and.i
  store i32 %or.i.i.i.i, ptr %base.i.i.i17.i, align 128
  %14 = load ptr, ptr %sw_cipher.i, align 4
  %call.i.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %14, ptr noundef %in_key, i32 noundef 24) #9
  br label %kmb_ocs_sk_set_key.exit

kmb_ocs_sk_set_key.exit:                          ; preds = %if.end.i, %if.end.i.i, %if.end.i.i.i.kmb_ocs_sk_set_key.exit_crit_edge, %if.then.i.kmb_ocs_sk_set_key.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %if.end.i.i ], [ -22, %if.then.i.kmb_ocs_sk_set_key.exit_crit_edge ], [ -22, %if.end.i.i.i.kmb_ocs_sk_set_key.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocs_aes_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %sw_cipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 52
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %sw_cipher, align 4
  %4 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %tfm, align 128
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %__crt_ctx.i.i, align 4
  %do_one_request.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kmb_ocs_aes_sk_do_one_request, ptr %do_one_request.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %unprepare_request.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocs_exit_tfm(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %0 = call ptr @memset(ptr %key.i, i32 0, i32 32)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %key.i) #9, !srcloc !118
  %aes_dev.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %1 = ptrtoint ptr %aes_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aes_dev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.clear_key.exit_crit_edge, label %if.then.i

entry.clear_key.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_key.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ocs_aes_set_key(ptr noundef nonnull %2, i32 noundef 32, ptr noundef %key.i, i32 noundef 0) #9
  br label %clear_key.exit

clear_key.exit:                                   ; preds = %if.then.i, %entry.clear_key.exit_crit_edge
  %sw_cipher = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 52
  %3 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_cipher, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %clear_key.exit.if.end_crit_edge, label %if.then

clear_key.exit.if.end_crit_edge:                  ; preds = %clear_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %clear_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i.i) #9
  %5 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sw_cipher, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %clear_key.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_cts_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 0, i32 noundef 9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_cts_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 0, i32 noundef 1, i32 noundef 9)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_sm4_set_key(ptr nocapture noundef writeonly %tfm, ptr noundef readonly %in_key, i32 noundef %key_len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %use_fallback.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 56
  %0 = ptrtoint ptr %use_fallback.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %use_fallback.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %in_key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %key_len)
  %cmp7.old.i.i.i = icmp eq i32 %key_len, 16
  %or.cond = and i1 %tobool.not.i.i.i, %cmp7.old.i.i.i
  br i1 %or.cond, label %if.end.i.i, label %entry.kmb_ocs_sk_set_key.exit_crit_edge

entry.kmb_ocs_sk_set_key.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmb_ocs_sk_set_key.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %key.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %1 = call ptr @memcpy(ptr %key.i.i, ptr %in_key, i32 16)
  %key_len1.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 44
  %2 = ptrtoint ptr %key_len1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %key_len1.i.i, align 4
  %cipher2.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 48
  %3 = ptrtoint ptr %cipher2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %cipher2.i.i, align 4
  br label %kmb_ocs_sk_set_key.exit

kmb_ocs_sk_set_key.exit:                          ; preds = %if.end.i.i, %entry.kmb_ocs_sk_set_key.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.i ], [ -22, %entry.kmb_ocs_sk_set_key.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ocs_sm4_init_tfm(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %tfm, align 128
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %__crt_ctx.i.i, align 4
  %do_one_request.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_ocs_aes_sk_do_one_request, ptr %do_one_request.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_cts_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 0, i32 noundef 9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_sm4_cts_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef 1, i32 noundef 1, i32 noundef 9)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_sk_common(ptr noundef %req, i32 noundef %cipher, i32 noundef %instruction, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %__subreq_desc = alloca [512 x i8], align 128
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %use_fallback = getelementptr i8, ptr %1, i32 188
  %2 = ptrtoint ptr %use_fallback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_fallback, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__subreq_desc) #9
  %4 = call ptr @memset(ptr %__subreq_desc, i32 255, i32 512)
  %sw_cipher = getelementptr i8, ptr %1, i32 184
  %5 = ptrtoint ptr %sw_cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw_cipher, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 4
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %req, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 2
  %21 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 3
  %22 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %dst2.i, align 4
  %23 = ptrtoint ptr %__subreq_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %__subreq_desc, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %__subreq_desc, i32 0, i32 1
  %24 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %iv4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instruction)
  %cmp = icmp eq i32 %instruction, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__subreq_desc) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %__subreq_desc) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  %25 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm1.i.i, align 32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 -128
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %28, 128
  %29 = call ptr @memset(ptr %__subreq_desc, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %__subreq_desc) #9, !srcloc !118
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__subreq_desc) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool8.not = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %cmp9.not = icmp eq i32 %mode, 9
  %or.cond = or i1 %cmp9.not, %tobool8.not
  br i1 %or.cond, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %32 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %33, i32 -100
  %34 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ivsize.i.i, align 4
  %36 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mode, label %if.end11.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb11.i
    i32 9, label %sw.bb18.i
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end11
  %rem.i = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %sw.bb.i.if.end15_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i.if.end15_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

sw.bb2.i:                                         ; preds = %if.end11
  %rem4.i = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem4.i)
  %cmp5.not.i = icmp eq i32 %rem4.i, 0
  br i1 %cmp5.not.i, label %if.end7.i, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb2.i
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %37 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iv.i, align 4
  %tobool.not.i = icmp ne ptr %38, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %cmp8.not.i = icmp eq i32 %35, 16
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp8.not.i, i1 false
  br i1 %or.cond.i, label %if.end7.i.if.end15_crit_edge, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.if.end15_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

sw.bb11.i:                                        ; preds = %if.end11
  %iv12.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %iv12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iv12.i, align 4
  %tobool13.not.i = icmp ne ptr %40, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %cmp15.not.i = icmp eq i32 %35, 16
  %or.cond38.i = select i1 %tobool13.not.i, i1 %cmp15.not.i, i1 false
  br i1 %or.cond38.i, label %sw.bb11.i.if.end15_crit_edge, label %sw.bb11.i.cleanup_crit_edge

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb11.i.if.end15_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

sw.bb18.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %31)
  %cmp20.i = icmp ult i32 %31, 16
  br i1 %cmp20.i, label %sw.bb18.i.cleanup_crit_edge, label %if.end22.i

sw.bb18.i.cleanup_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.i:                                       ; preds = %sw.bb18.i
  %iv23.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %41 = ptrtoint ptr %iv23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv23.i, align 4
  %tobool24.not.i = icmp ne ptr %42, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %cmp26.not.i = icmp eq i32 %35, 16
  %or.cond39.i = select i1 %tobool24.not.i, i1 %cmp26.not.i, i1 false
  br i1 %or.cond39.i, label %if.end22.i.if.end15_crit_edge, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.i.if.end15_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.end22.i.if.end15_crit_edge, %sw.bb11.i.if.end15_crit_edge, %if.end7.i.if.end15_crit_edge, %sw.bb.i.if.end15_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %aes_dev1.i = getelementptr i8, ptr %1, i32 140
  %43 = ptrtoint ptr %aes_dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aes_dev1.i, align 4
  %tobool.not.i57 = icmp eq ptr %44, null
  br i1 %tobool.not.i57, label %kmb_ocs_aes_find_dev.exit, label %kmb_ocs_aes_find_dev.exit.thread

kmb_ocs_aes_find_dev.exit.thread:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  br label %if.end19

kmb_ocs_aes_find_dev.exit:                        ; preds = %if.end15
  %45 = load ptr, ptr @ocs_aes, align 4
  %46 = ptrtoint ptr %aes_dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %aes_dev1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_aes_drv, ptr @ocs_aes, i32 0, i32 1)) #9
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %kmb_ocs_aes_find_dev.exit.cleanup_crit_edge, label %kmb_ocs_aes_find_dev.exit.if.end19_crit_edge

kmb_ocs_aes_find_dev.exit.if.end19_crit_edge:     ; preds = %kmb_ocs_aes_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

kmb_ocs_aes_find_dev.exit.cleanup_crit_edge:      ; preds = %kmb_ocs_aes_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %kmb_ocs_aes_find_dev.exit.if.end19_crit_edge, %kmb_ocs_aes_find_dev.exit.thread
  %aes_dev.0.i65 = phi ptr [ %44, %kmb_ocs_aes_find_dev.exit.thread ], [ %45, %kmb_ocs_aes_find_dev.exit.if.end19_crit_edge ]
  %cipher20 = getelementptr i8, ptr %1, i32 180
  %47 = ptrtoint ptr %cipher20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cipher20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %cipher)
  %cmp21.not = icmp eq i32 %48, %cipher
  br i1 %cmp21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %49 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %50 = call ptr @memset(ptr %49, i32 0, i32 120)
  %dma_addr.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %51 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %dma_addr.i, align 4
  %dma_addr1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %52 = ptrtoint ptr %dma_addr1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %dma_addr1.i, align 4
  %dma_addr2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 36
  %53 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %dma_addr2.i, align 4
  %dma_addr3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 48
  %54 = ptrtoint ptr %dma_addr3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %dma_addr3.i, align 4
  %55 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %instruction, ptr %__ctx.i, align 4
  %mode25 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %56 = ptrtoint ptr %mode25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mode, ptr %mode25, align 4
  %engine = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev.0.i65, i32 0, i32 6
  %57 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %engine, align 4
  %call26 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %58, ptr noundef %req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %kmb_ocs_aes_find_dev.exit.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %sw.bb18.i.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %rc.0, %if.end ], [ %call26, %if.end23 ], [ 0, %if.end6.cleanup_crit_edge ], [ -19, %kmb_ocs_aes_find_dev.exit.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb18.i.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ], [ -22, %sw.bb11.i.cleanup_crit_edge ], [ -22, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_aes_sk_do_one_request(ptr noundef %engine, ptr noundef %areq) #2 align 64 {
entry:
  %tmp_buf1.i.i = alloca [16 x i8], align 1
  %tmp_buf2.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %aes_dev = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aes_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %key_len = getelementptr i8, ptr %1, i32 176
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_len, align 4
  %key = getelementptr i8, ptr %1, i32 144
  %cipher = getelementptr i8, ptr %1, i32 180
  %6 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher, align 4
  %call3 = tail call i32 @ocs_aes_set_key(ptr noundef nonnull %3, i32 noundef %5, ptr noundef %key, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %__ctx.i.i = getelementptr i8, ptr %areq, i32 112
  %aes_dev3.i = getelementptr i8, ptr %9, i32 140
  %10 = ptrtoint ptr %aes_dev3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aes_dev3.i, align 4
  %__crt_alg.i.i.i = getelementptr i8, ptr %9, i32 12
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %13, i32 -100
  %14 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ivsize.i.i, align 4
  %dst.i = getelementptr i8, ptr %areq, i32 -4
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst.i, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 128
  %conv.i = zext i32 %19 to i64
  %call5.i = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %conv.i) #9
  %dst_nents.i = getelementptr i8, ptr %areq, i32 124
  %20 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call5.i, ptr %dst_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end6.exit_crit_edge, label %if.end.i

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end.i:                                         ; preds = %if.end6
  %mode.i = getelementptr i8, ptr %areq, i32 116
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp8.i = icmp eq i32 %22, 9
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.land.end.i_crit_edge

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp11.i = icmp ugt i32 %24, 16
  br i1 %cmp11.i, label %land.rhs.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = and i32 %24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp14.i = icmp eq i32 %rem.i, 0
  %phi.cast.i = zext i1 %cmp14.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.end.i.land.end.i_crit_edge
  %25 = phi i32 [ 0, %land.lhs.true.i.land.end.i_crit_edge ], [ 0, %if.end.i.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %cts_swap.i = getelementptr i8, ptr %areq, i32 180
  %26 = ptrtoint ptr %cts_swap.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cts_swap.i, align 4
  %src.i = getelementptr i8, ptr %areq, i32 -8
  %27 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src.i, align 8
  %29 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst.i, align 4
  %cmp17.i = icmp eq ptr %28, %30
  %in_place.i = getelementptr i8, ptr %areq, i32 136
  %frombool.i = zext i1 %cmp17.i to i8
  %31 = ptrtoint ptr %in_place.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %in_place.i, align 4
  br i1 %cmp17.i, label %land.end.i.if.end23.i_crit_edge, label %if.else.i

land.end.i.if.end23.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.else.i:                                        ; preds = %land.end.i
  %32 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tfm.i, align 16
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 128
  %conv.i.i = zext i32 %35 to i64
  %call3.i.i = tail call i32 @sg_nents_for_len(ptr noundef %28, i64 noundef %conv.i.i) #9
  %src_nents.i.i = getelementptr i8, ptr %areq, i32 120
  %36 = ptrtoint ptr %src_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call3.i.i, ptr %src_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.else.i.error.i_crit_edge, label %if.end.i.i

if.else.i.error.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end.i.i:                                       ; preds = %if.else.i
  %aes_dev.i.i = getelementptr i8, ptr %33, i32 140
  %37 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aes_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  %41 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src.i, align 8
  %call8.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %40, ptr noundef %42, i32 noundef %call3.i.i, i32 noundef 1, i32 noundef 0) #9
  %src_dma_count.i.i = getelementptr i8, ptr %areq, i32 128
  %43 = ptrtoint ptr %src_dma_count.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call8.i.i, ptr %src_dma_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp10.i.i = icmp eq i32 %call8.i.i, 0
  %44 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aes_dev.i.i, align 4
  br i1 %cmp10.i.i, label %if.end.i.i.error.sink.split.i_crit_edge, label %if.end15.i.i

if.end.i.i.error.sink.split.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.sink.split.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %46 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %src.i, align 8
  %src_dll.i.i = getelementptr i8, ptr %areq, i32 140
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr, align 128
  %call20.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %45, ptr noundef %47, i32 noundef %call8.i.i, ptr noundef %src_dll.i.i, i32 noundef %49, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %if.end15.i.i.error.i_crit_edge

if.end15.i.i.error.i_crit_edge:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end22.i.i:                                     ; preds = %if.end15.i.i
  %50 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aes_dev.i.i, align 4
  %dev24.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dev24.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev24.i.i, align 4
  %54 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dst.i, align 4
  %56 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_nents.i, align 4
  %call25.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %53, ptr noundef %55, i32 noundef %57, i32 noundef 2, i32 noundef 0) #9
  %dst_dma_count.i.i = getelementptr i8, ptr %areq, i32 132
  %58 = ptrtoint ptr %dst_dma_count.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call25.i.i, ptr %dst_dma_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp27.i.i = icmp eq i32 %call25.i.i, 0
  %59 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aes_dev.i.i, align 4
  br i1 %cmp27.i.i, label %if.end22.i.i.error.sink.split.i_crit_edge, label %if.end35.i.i

if.end22.i.i.error.sink.split.i_crit_edge:        ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.sink.split.i

if.end35.i.i:                                     ; preds = %if.end22.i.i
  %61 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dst.i, align 4
  %dst_dll.i.i = getelementptr i8, ptr %areq, i32 152
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr, align 128
  %call40.i.i = tail call i32 @ocs_create_linked_list_from_sg(ptr noundef %60, ptr noundef %62, i32 noundef %call25.i.i, ptr noundef %dst_dll.i.i, i32 noundef %64, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %if.end35.i.i.error.i_crit_edge

if.end35.i.i.error.i_crit_edge:                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end43.i.i:                                     ; preds = %if.end35.i.i
  %65 = ptrtoint ptr %cts_swap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cts_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool44.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool44.not.i.i, label %if.end43.i.i.if.end26.i_crit_edge, label %land.lhs.true.i.i

if.end43.i.i.if.end26.i_crit_edge:                ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

land.lhs.true.i.i:                                ; preds = %if.end43.i.i
  %67 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp45.i.i = icmp eq i32 %68, 1
  br i1 %cmp45.i.i, label %if.end48.i.i, label %land.lhs.true.i.i.if.end26.i_crit_edge

land.lhs.true.i.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end48.i.i:                                     ; preds = %land.lhs.true.i.i
  %69 = ptrtoint ptr %aes_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %aes_dev.i.i, align 4
  %dma_addr.i.i = getelementptr i8, ptr %areq, i32 156
  %71 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_addr.i.i, align 4
  %dma_addr52.i.i = getelementptr i8, ptr %areq, i32 144
  %73 = ptrtoint ptr %dma_addr52.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr52.i.i, align 4
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr, align 128
  %call.i.i.i = tail call i32 @ocs_aes_op(ptr noundef %70, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef %72, i32 noundef %74, i32 noundef %76, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool55.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool55.not.i.i, label %if.end57.i.i, label %if.end48.i.i.error.i_crit_edge

if.end48.i.i.error.i_crit_edge:                   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end57.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kmb_ocs_sk_dma_cleanup(ptr noundef %add.ptr) #9
  %77 = ptrtoint ptr %in_place.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %in_place.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end57.i.i, %land.end.i.if.end23.i_crit_edge
  %call58.i.i = tail call fastcc i32 @kmb_ocs_sk_prepare_inplace(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool24.not.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end26.i_crit_edge, label %if.end23.i.error.i_crit_edge

if.end23.i.error.i_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end23.i.if.end26.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i.if.end26.i_crit_edge, %land.lhs.true.i.i.if.end26.i_crit_edge, %if.end43.i.i.if.end26.i_crit_edge
  %78 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mode.i, align 4
  %cipher.i = getelementptr i8, ptr %9, i32 180
  %80 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cipher.i, align 4
  %82 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %__ctx.i.i, align 4
  %dma_addr.i = getelementptr i8, ptr %areq, i32 156
  %84 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_addr.i, align 4
  %dma_addr28.i = getelementptr i8, ptr %areq, i32 144
  %86 = ptrtoint ptr %dma_addr28.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_addr28.i, align 4
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr, align 128
  %iv.i = getelementptr i8, ptr %areq, i32 -12
  %90 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iv.i, align 4
  %call30.i = tail call i32 @ocs_aes_op(ptr noundef %11, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end26.i.error.i_crit_edge

if.end26.i.error.i_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end33.i:                                       ; preds = %if.end26.i
  tail call fastcc void @kmb_ocs_sk_dma_cleanup(ptr noundef %add.ptr) #9
  %92 = ptrtoint ptr %cts_swap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cts_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool35.not.i = icmp eq i32 %93, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end46.i_crit_edge, label %land.lhs.true36.i

if.end33.i.if.end46.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

land.lhs.true36.i:                                ; preds = %if.end33.i
  %94 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp38.i = icmp eq i32 %95, 0
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true36.i.if.end46.i_crit_edge

land.lhs.true36.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then40.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dst.i, align 4
  %98 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dst_nents.i, align 4
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr, align 128
  %sub.i = add i32 %101, -16
  %sub45.i = add i32 %101, -32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_buf1.i.i) #9
  %102 = call ptr @memset(ptr %tmp_buf1.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_buf2.i.i) #9
  %103 = call ptr @memset(ptr %tmp_buf2.i.i, i32 255, i32 16)
  %call.i.i = call i32 @sg_pcopy_to_buffer(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %tmp_buf1.i.i, i32 noundef 16, i32 noundef %sub.i) #9
  %call2.i.i = call i32 @sg_pcopy_to_buffer(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %tmp_buf2.i.i, i32 noundef 16, i32 noundef %sub45.i) #9
  %call4.i.i = call i32 @sg_pcopy_from_buffer(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %tmp_buf1.i.i, i32 noundef 16, i32 noundef %sub45.i) #9
  %call6.i.i = call i32 @sg_pcopy_from_buffer(ptr noundef %97, i32 noundef %99, ptr noundef nonnull %tmp_buf2.i.i, i32 noundef 16, i32 noundef %sub.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_buf2.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_buf1.i.i) #9
  br label %exit

if.end46.i:                                       ; preds = %land.lhs.true36.i.if.end46.i_crit_edge, %if.end33.i.if.end46.i_crit_edge
  %104 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp48.i = icmp eq i32 %105, 1
  br i1 %cmp48.i, label %if.then50.i, label %if.end46.i.exit_crit_edge

if.end46.i.exit_crit_edge:                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then50.i:                                      ; preds = %if.end46.i
  %106 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %__ctx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp52.i = icmp eq i32 %107, 0
  br i1 %cmp52.i, label %if.then54.i, label %if.end59.i

if.then54.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iv.i, align 4
  %110 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dst.i, align 4
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr, align 128
  %sub58.i = sub i32 %113, %15
  tail call void @scatterwalk_map_and_copy(ptr noundef %109, ptr noundef %111, i32 noundef %sub58.i, i32 noundef %15, i32 noundef 0) #9
  br label %exit

if.end59.i:                                       ; preds = %if.then50.i
  %114 = ptrtoint ptr %in_place.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %in_place.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool61.not.i = icmp eq i8 %115, 0
  %116 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iv.i, align 4
  br i1 %tobool61.not.i, label %if.else64.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_ct_blk.i = getelementptr i8, ptr %areq, i32 164
  %118 = call ptr @memcpy(ptr %117, ptr %last_ct_blk.i, i32 %15)
  br label %exit

if.else64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %src.i, align 8
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr, align 128
  %sub68.i = sub i32 %122, %15
  tail call void @scatterwalk_map_and_copy(ptr noundef %117, ptr noundef %120, i32 noundef %sub68.i, i32 noundef %15, i32 noundef 0) #9
  br label %exit

error.sink.split.i:                               ; preds = %if.end22.i.i.error.sink.split.i_crit_edge, %if.end.i.i.error.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %45, %if.end.i.i.error.sink.split.i_crit_edge ], [ %60, %if.end22.i.i.error.sink.split.i_crit_edge ]
  %.str.20.sink.i = phi ptr [ @.str.23, %if.end.i.i.error.sink.split.i_crit_edge ], [ @.str.20, %if.end22.i.i.error.sink.split.i_crit_edge ]
  %dev34.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %.sink.i, i32 0, i32 1
  %123 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev34.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull %.str.20.sink.i) #12
  br label %error.i

error.i:                                          ; preds = %error.sink.split.i, %if.end26.i.error.i_crit_edge, %if.end23.i.error.i_crit_edge, %if.end48.i.i.error.i_crit_edge, %if.end35.i.i.error.i_crit_edge, %if.end15.i.i.error.i_crit_edge, %if.else.i.error.i_crit_edge
  %rc.1.i = phi i32 [ %call58.i.i, %if.end23.i.error.i_crit_edge ], [ %call30.i, %if.end26.i.error.i_crit_edge ], [ %call.i.i.i, %if.end48.i.i.error.i_crit_edge ], [ %call40.i.i, %if.end35.i.i.error.i_crit_edge ], [ %call20.i.i, %if.end15.i.i.error.i_crit_edge ], [ -74, %if.else.i.error.i_crit_edge ], [ -12, %error.sink.split.i ]
  tail call fastcc void @kmb_ocs_sk_dma_cleanup(ptr noundef %add.ptr) #9
  br label %exit

exit:                                             ; preds = %error.i, %if.else64.i, %if.then62.i, %if.then54.i, %if.end46.i.exit_crit_edge, %if.then40.i, %if.end6.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.exit_crit_edge ], [ -19, %entry.exit_crit_edge ], [ %rc.1.i, %error.i ], [ 0, %if.then40.i ], [ 0, %if.then54.i ], [ -74, %if.end6.exit_crit_edge ], [ 0, %if.else64.i ], [ 0, %if.then62.i ], [ 0, %if.end46.i.exit_crit_edge ]
  call void @crypto_finalize_skcipher_request(ptr noundef %engine, ptr noundef %add.ptr, i32 noundef %err.0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_sk_prepare_inplace(ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %tmp_buf1.i = alloca [16 x i8], align 1
  %tmp_buf2.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
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
  %ivsize.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %mode = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %last_ct_blk = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 12
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 128
  %sub = sub i32 %13, %5
  tail call void @scatterwalk_map_and_copy(ptr noundef %last_ct_blk, ptr noundef %11, i32 noundef %sub, i32 noundef %5, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cts_swap = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 28
  %14 = ptrtoint ptr %cts_swap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cts_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true5:                                   ; preds = %if.end
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp7 = icmp eq i32 %17, 1
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.if.end13_crit_edge

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %dst_nents = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %20 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_nents, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 128
  %sub10 = add i32 %23, -16
  %sub12 = add i32 %23, -32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_buf1.i) #9
  %24 = call ptr @memset(ptr %tmp_buf1.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_buf2.i) #9
  %25 = call ptr @memset(ptr %tmp_buf2.i, i32 255, i32 16)
  %call.i = call i32 @sg_pcopy_to_buffer(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %tmp_buf1.i, i32 noundef 16, i32 noundef %sub10) #9
  %call2.i = call i32 @sg_pcopy_to_buffer(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %tmp_buf2.i, i32 noundef 16, i32 noundef %sub12) #9
  %call4.i = call i32 @sg_pcopy_from_buffer(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %tmp_buf1.i, i32 noundef 16, i32 noundef %sub12) #9
  %call6.i = call i32 @sg_pcopy_from_buffer(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %tmp_buf2.i, i32 noundef 16, i32 noundef %sub10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_buf2.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_buf1.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %aes_dev = getelementptr i8, ptr %1, i32 140
  %26 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aes_dev, align 4
  %dev = getelementptr inbounds %struct.ocs_aes_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %dst14 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %30 = ptrtoint ptr %dst14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst14, align 4
  %dst_nents15 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %32 = ptrtoint ptr %dst_nents15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst_nents15, align 4
  %call16 = call i32 @dma_map_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef 0) #9
  %dst_dma_count = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %dst_dma_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call16, ptr %dst_dma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp eq i32 %call16, 0
  %35 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aes_dev, align 4
  br i1 %cmp18, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.ocs_aes_dev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %39 = ptrtoint ptr %dst14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst14, align 4
  %dst_dll = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %req, align 128
  %call27 = call i32 @ocs_create_linked_list_from_sg(ptr noundef %36, ptr noundef %40, i32 noundef %call16, ptr noundef %dst_dll, i32 noundef %42, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %43 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr, align 4
  %dma_addr32 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %45 = ptrtoint ptr %dma_addr32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dma_addr32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end30 ], [ %call27, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kmb_ocs_sk_dma_cleanup(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %aes_dev = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %aes_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aes_dev, align 4
  %dev3 = getelementptr inbounds %struct.ocs_aes_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %src_dma_count = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %6 = ptrtoint ptr %src_dma_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_dma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 8
  %src_nents = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %10 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %src_dma_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_dma_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dst_dma_count = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %dst_dma_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_dma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 4
  %dst_nents = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %17 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_nents, align 4
  %in_place = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %in_place to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %in_place, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool7.not, i32 2, i32 0
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %16, i32 noundef %18, i32 noundef %cond, i32 noundef 0) #9
  %21 = ptrtoint ptr %dst_dma_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dst_dma_count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %src_dll = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %22 = ptrtoint ptr %src_dll to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_dll, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge, label %if.then.i

if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %25, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit

cleanup_ocs_dma_linked_list.exit:                 ; preds = %if.then.i, %if.end9.cleanup_ocs_dma_linked_list.exit_crit_edge
  %28 = ptrtoint ptr %src_dll to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %src_dll, align 4
  %size3.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %29 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %size3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %30 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dma_addr4.i, align 4
  %dst_dll = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5
  %31 = ptrtoint ptr %dst_dll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst_dll, align 4
  %tobool.not.i24 = icmp eq ptr %32, null
  br i1 %tobool.not.i24, label %cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit30_crit_edge, label %if.then.i27

cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit30_crit_edge: ; preds = %cleanup_ocs_dma_linked_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ocs_dma_linked_list.exit30

if.then.i27:                                      ; preds = %cleanup_ocs_dma_linked_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %size.i25 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %33 = ptrtoint ptr %size.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i25, align 4
  %dma_addr.i26 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %35 = ptrtoint ptr %dma_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr.i26, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %34, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #9
  br label %cleanup_ocs_dma_linked_list.exit30

cleanup_ocs_dma_linked_list.exit30:               ; preds = %if.then.i27, %cleanup_ocs_dma_linked_list.exit.cleanup_ocs_dma_linked_list.exit30_crit_edge
  %37 = ptrtoint ptr %dst_dll to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dst_dll, align 4
  %size3.i28 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %38 = ptrtoint ptr %size3.i28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %size3.i28, align 4
  %dma_addr4.i29 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %39 = ptrtoint ptr %dma_addr4.i29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %dma_addr4.i29, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_keembay_ocs_aes__249_1690_kmb_ocs_aes_driver_init6, !1, !"__initcall__kmod_keembay_ocs_aes__249_1690_kmb_ocs_aes_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1690, i32 1}
!2 = !{ptr @__exitcall_kmb_ocs_aes_driver_exit, !1, !"__exitcall_kmb_ocs_aes_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description250, !4, !"__UNIQUE_ID_description250", i1 false, i1 false}
!4 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1692, i32 1}
!5 = !{ptr @__UNIQUE_ID_file251, !6, !"__UNIQUE_ID_file251", i1 false, i1 false}
!6 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1693, i32 1}
!7 = !{ptr @__UNIQUE_ID_license252, !6, !"__UNIQUE_ID_license252", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias_userspace253, !9, !"__UNIQUE_ID_alias_userspace253", i1 false, i1 false}
!9 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1695, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias_crypto254, !9, !"__UNIQUE_ID_alias_crypto254", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace255, !12, !"__UNIQUE_ID_alias_userspace255", i1 false, i1 false}
!12 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1696, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto256, !12, !"__UNIQUE_ID_alias_crypto256", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace257, !15, !"__UNIQUE_ID_alias_userspace257", i1 false, i1 false}
!15 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1697, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto258, !15, !"__UNIQUE_ID_alias_crypto258", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace259, !18, !"__UNIQUE_ID_alias_userspace259", i1 false, i1 false}
!18 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1698, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto260, !18, !"__UNIQUE_ID_alias_crypto260", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace261, !21, !"__UNIQUE_ID_alias_userspace261", i1 false, i1 false}
!21 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1700, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto262, !21, !"__UNIQUE_ID_alias_crypto262", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias_userspace263, !24, !"__UNIQUE_ID_alias_userspace263", i1 false, i1 false}
!24 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1701, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias_crypto264, !24, !"__UNIQUE_ID_alias_crypto264", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias_userspace265, !27, !"__UNIQUE_ID_alias_userspace265", i1 false, i1 false}
!27 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1702, i32 1}
!28 = !{ptr @__UNIQUE_ID_alias_crypto266, !27, !"__UNIQUE_ID_alias_crypto266", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias_userspace267, !30, !"__UNIQUE_ID_alias_userspace267", i1 false, i1 false}
!30 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1703, i32 1}
!31 = !{ptr @__UNIQUE_ID_alias_crypto268, !30, !"__UNIQUE_ID_alias_crypto268", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias_userspace269, !33, !"__UNIQUE_ID_alias_userspace269", i1 false, i1 false}
!33 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1706, i32 1}
!34 = !{ptr @__UNIQUE_ID_alias_crypto270, !33, !"__UNIQUE_ID_alias_crypto270", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_alias_userspace271, !36, !"__UNIQUE_ID_alias_userspace271", i1 false, i1 false}
!36 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1707, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias_crypto272, !36, !"__UNIQUE_ID_alias_crypto272", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_alias_userspace273, !39, !"__UNIQUE_ID_alias_userspace273", i1 false, i1 false}
!39 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1711, i32 1}
!40 = !{ptr @__UNIQUE_ID_alias_crypto274, !39, !"__UNIQUE_ID_alias_crypto274", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_alias_userspace275, !42, !"__UNIQUE_ID_alias_userspace275", i1 false, i1 false}
!42 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1712, i32 1}
!43 = !{ptr @__UNIQUE_ID_alias_crypto276, !42, !"__UNIQUE_ID_alias_crypto276", i1 false, i1 false}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1685, i32 12}
!46 = !{ptr @kmb_ocs_aes_driver, !47, !"kmb_ocs_aes_driver", i1 false, i1 false}
!47 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1681, i32 31}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1614, i32 3}
!50 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @kmb_ocs_aes_probe._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @kmb_ocs_aes_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1621, i32 3}
!58 = !{ptr @kmb_ocs_aes_probe._entry.6, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @kmb_ocs_aes_probe._entry_ptr.8, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1637, i32 3}
!62 = !{ptr @kmb_ocs_aes_probe._entry.9, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @kmb_ocs_aes_probe._entry_ptr.11, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1657, i32 3}
!66 = !{ptr @kmb_ocs_aes_probe._entry.12, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @kmb_ocs_aes_probe._entry_ptr.14, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1663, i32 3}
!70 = !{ptr @kmb_ocs_aes_probe._entry.15, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @kmb_ocs_aes_probe._entry_ptr.17, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 119, i32 10}
!74 = !{ptr @ocs_aes, !75, !"ocs_aes", i1 false, i1 false}
!75 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 117, i32 27}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @algs_aead, !80, !"algs_aead", i1 false, i1 false}
!80 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1456, i32 24}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 798, i32 3}
!83 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @kmb_ocs_aead_dma_prepare._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @kmb_ocs_aead_dma_prepare._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 857, i32 3}
!88 = !{ptr @kmb_ocs_aead_dma_prepare._entry.22, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @kmb_ocs_aead_dma_prepare._entry_ptr.24, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 884, i32 3}
!92 = !{ptr @kmb_ocs_aead_dma_prepare._entry.25, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @kmb_ocs_aead_dma_prepare._entry_ptr.27, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @algs, !95, !"algs", i1 false, i1 false}
!95 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1283, i32 28}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 430, i32 3}
!98 = !{ptr @kmb_ocs_sk_prepare_inplace._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @kmb_ocs_sk_prepare_inplace._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 465, i32 3}
!102 = !{ptr @kmb_ocs_sk_prepare_notinplace._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @kmb_ocs_sk_prepare_notinplace._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @kmb_ocs_sk_prepare_notinplace._entry.30, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 480, i32 3}
!106 = !{ptr @kmb_ocs_sk_prepare_notinplace._entry_ptr.31, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @kmb_ocs_aes_of_match, !108, !"kmb_ocs_aes_of_match", i1 false, i1 false}
!108 = !{!"../drivers/crypto/keembay/keembay-ocs-aes-core.c", i32 1571, i32 34}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2149117291}
!119 = !{i8 0, i8 2}
