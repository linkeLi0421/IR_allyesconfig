; ModuleID = '/llk/IR_all_yes/drivers/crypto/keembay/keembay-ocs-ecc.c_pt.bc'
source_filename = "../drivers/crypto/keembay/keembay-ocs-ecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocs_ecc_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
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
%struct.ocs_ecc_dev = type { %struct.list_head, ptr, ptr, ptr, %struct.completion, i32 }
%struct.ecdh = type { ptr, i16 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ecc_curve = type { ptr, %struct.ecc_point, ptr, ptr, ptr, ptr }
%struct.ecc_point = type { ptr, ptr, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__initcall__kmod_keembay_ocs_ecc__234_1011_kmb_ocs_ecc_driver_init6 = internal global ptr @kmb_ocs_ecc_driver_init, section ".initcall6.init", align 4
@kmb_ocs_ecc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kmb_ocs_ecc_probe, ptr @kmb_ocs_ecc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kmb_ocs_ecc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kmb_ocs_ecc_driver_exit = internal global ptr @kmb_ocs_ecc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [60 x i8] c"keembay_ocs_ecc.file=drivers/crypto/keembay/keembay-ocs-ecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [28 x i8] c"keembay_ocs_ecc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [58 x i8] c"keembay_ocs_ecc.description=Intel Keem Bay OCS ECC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace238 = internal constant [37 x i8] c"keembay_ocs_ecc.alias=ecdh-nist-p256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto239 = internal constant [44 x i8] c"keembay_ocs_ecc.alias=crypto-ecdh-nist-p256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace240 = internal constant [37 x i8] c"keembay_ocs_ecc.alias=ecdh-nist-p384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto241 = internal constant [44 x i8] c"keembay_ocs_ecc.alias=crypto-ecdh-nist-p384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace242 = internal constant [49 x i8] c"keembay_ocs_ecc.alias=ecdh-nist-p256-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto243 = internal constant [56 x i8] c"keembay_ocs_ecc.alias=crypto-ecdh-nist-p256-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [49 x i8] c"keembay_ocs_ecc.alias=ecdh-nist-p384-keembay-ocs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [56 x i8] c"keembay_ocs_ecc.alias=crypto-ecdh-nist-p384-keembay-ocs\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keembay-ocs-ecc\00", [16 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-ocs-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 905, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get base address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_ocs_ecc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/crypto/keembay/keembay-ocs-ecc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr = internal global ptr @kmb_ocs_ecc_probe._entry, section ".printk_index", align 4
@kmb_ocs_ecc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr.8 = internal global ptr @kmb_ocs_ecc_probe._entry.6, section ".printk_index", align 4
@ocs_ecc = internal global { %struct.ocs_ecc_drv, [44 x i8] } { %struct.ocs_ecc_drv { %struct.list_head { ptr @ocs_ecc, ptr @ocs_ecc }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not allocate crypto engine\0A\00", [62 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr.11 = internal global ptr @kmb_ocs_ecc_probe._entry.9, section ".printk_index", align 4
@kmb_ocs_ecc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 939, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not start crypto engine\0A\00", [33 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr.14 = internal global ptr @kmb_ocs_ecc_probe._entry.12, section ".printk_index", align 4
@ocs_ecdh_p256 = internal global %struct.kpp_alg { ptr @kmb_ocs_ecdh_set_secret, ptr @kmb_ocs_ecdh_generate_public_key, ptr @kmb_ocs_ecdh_compute_shared_secret, ptr @kmb_ocs_ecdh_max_size, ptr @kmb_ocs_ecdh_nist_p256_init_tfm, ptr @kmb_ocs_ecdh_exit_tfm, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p256-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, align 128
@kmb_ocs_ecc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 947, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not register OCS algorithms with Crypto API\0A\00", [45 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr.17 = internal global ptr @kmb_ocs_ecc_probe._entry.15, section ".printk_index", align 4
@ocs_ecdh_p384 = internal global %struct.kpp_alg { ptr @kmb_ocs_ecdh_set_secret, ptr @kmb_ocs_ecdh_generate_public_key, ptr @kmb_ocs_ecdh_compute_shared_secret, ptr @kmb_ocs_ecdh_max_size, ptr @kmb_ocs_ecdh_nist_p384_init_tfm, ptr @kmb_ocs_ecdh_exit_tfm, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 350, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p384-keembay-ocs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, align 128
@kmb_ocs_ecc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@kmb_ocs_ecc_probe._entry_ptr.19 = internal global ptr @kmb_ocs_ecc_probe._entry.18, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ocs_ecc.lock\00", [19 x i8] zeroinitializer }, align 32
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@kmb_ecc_tctx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013keembay_ocs_ecc: Failed to find the device : %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kmb_ecc_tctx_init\00", [46 x i8] zeroinitializer }, align 32
@kmb_ecc_tctx_init._entry_ptr = internal global ptr @kmb_ecc_tctx_init._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"kmb_ocs_ecc_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1003, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1007, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"kmb_ocs_ecc_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 995, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 905, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 920, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"ocs_ecc\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 117, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 932, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 939, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 946, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 953, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 87, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 119, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [44 x i8] c"../drivers/crypto/keembay/keembay-ocs-ecc.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 788, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias_crypto239, ptr @__UNIQUE_ID_alias_crypto241, ptr @__UNIQUE_ID_alias_crypto243, ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_userspace238, ptr @__UNIQUE_ID_alias_userspace240, ptr @__UNIQUE_ID_alias_userspace242, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_kmb_ocs_ecc_driver_exit, ptr @__initcall__kmod_keembay_ocs_ecc__234_1011_kmb_ocs_ecc_driver_init6, ptr @kmb_ecc_tctx_init._entry, ptr @kmb_ecc_tctx_init._entry_ptr, ptr @kmb_ocs_ecc_driver_exit, ptr @kmb_ocs_ecc_probe._entry, ptr @kmb_ocs_ecc_probe._entry.12, ptr @kmb_ocs_ecc_probe._entry.15, ptr @kmb_ocs_ecc_probe._entry.18, ptr @kmb_ocs_ecc_probe._entry.6, ptr @kmb_ocs_ecc_probe._entry.9, ptr @kmb_ocs_ecc_probe._entry_ptr, ptr @kmb_ocs_ecc_probe._entry_ptr.11, ptr @kmb_ocs_ecc_probe._entry_ptr.14, ptr @kmb_ocs_ecc_probe._entry_ptr.17, ptr @kmb_ocs_ecc_probe._entry_ptr.19, ptr @kmb_ocs_ecc_probe._entry_ptr.8, ptr @kmb_ocs_ecc_driver, ptr @.str, ptr @kmb_ocs_ecc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ocs_ecc, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_ecc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ocs_ecc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_ecc_tctx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kmb_ocs_ecc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kmb_ocs_ecc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @kmb_ocs_ecc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 80, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prev.i, align 4
  %irq_done = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq_done, align 4
  %wait.i = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #7
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base_reg = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %base_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %base_reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %6 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_reg, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %list_del

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.list_del_crit_edge, label %if.end14

if.end9.list_del_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del

if.end14:                                         ; preds = %if.end9
  %call16 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @ocs_ecc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %list_del

if.end22:                                         ; preds = %if.end14
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %10, ptr noundef nonnull @ocs_ecc) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call.i, ptr getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ocs_ecc, ptr %call.i, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end22.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %call24 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #7
  %engine = getelementptr inbounds %struct.ocs_ecc_dev, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %engine, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.end31

do.end30:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %list_del

if.end31:                                         ; preds = %list_add_tail.exit
  %call33 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call40 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ocs_ecdh_p256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %call47 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ocs_ecdh_p384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.cleanup57_crit_edge, label %do.end52

if.end46.cleanup57_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ocs_ecdh_p256) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end45, %do.end38
  %rc.0 = phi i32 [ %call33, %do.end38 ], [ %call40, %do.end45 ], [ %call47, %do.end52 ]
  %15 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %engine, align 4
  %call55 = tail call i32 @crypto_engine_exit(ptr noundef %16) #7
  br label %list_del

list_del:                                         ; preds = %cleanup, %do.end30, %do.end21, %if.end9.list_del_crit_edge, %do.end
  %rc.1 = phi i32 [ %8, %do.end ], [ %call16, %do.end21 ], [ %rc.0, %cleanup ], [ -12, %do.end30 ], [ %call10, %if.end9.list_del_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %call.i.i94 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #7
  br i1 %call.i.i94, label %if.end.i.i95, label %list_del.list_del.exit_crit_edge

list_del.list_del.exit_crit_edge:                 ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i95:                                     ; preds = %list_del
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i95, %list_del.list_del.exit_crit_edge
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  br label %cleanup57

cleanup57:                                        ; preds = %list_del.exit, %if.end46.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ %rc.1, %list_del.exit ], [ -12, %entry.cleanup57_crit_edge ], [ 0, %if.end46.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ocs_ecdh_p384) #7
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ocs_ecdh_p256) #7
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %engine = getelementptr inbounds %struct.ocs_ecc_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine, align 4
  %call1 = tail call i32 @crypto_engine_exit(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocs_ecc_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_reg = getelementptr inbounds %struct.ocs_ecc_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %3 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_reg, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !81
  %5 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_done = getelementptr inbounds %struct.ocs_ecc_dev, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %irq_done) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecdh_set_secret(ptr nocapture noundef %tfm, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %one.i = alloca [6 x i64], align 8
  %res.i = alloca [6 x i64], align 8
  %one.i.i = alloca [6 x i64], align 8
  %res.i.i = alloca [6 x i64], align 8
  %priv.i = alloca [6 x i64], align 8
  %params = alloca %struct.ecdh, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #7
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %params, align 8, !annotation !82
  %call1 = call i32 @crypto_ecdh_decode_key(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.thread_crit_edge

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.ecdh, ptr %params, i32 0, i32 1
  %1 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %key_size, align 4
  %conv = zext i16 %2 to i32
  %curve = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %3 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curve, align 8
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ndigits, align 4
  %conv2 = zext i8 %6 to i32
  %shl.i = shl nuw nsw i32 %conv2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv)
  %cmp = icmp ult i32 %shl.i, %conv
  br i1 %cmp, label %if.end.cleanup.thread_crit_edge, label %if.end6

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params, align 8
  %tobool7.not = icmp eq ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool9.not = icmp eq i16 %2, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %private_key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %priv.i) #7
  %n.i = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 3
  %9 = call ptr @memset(ptr %priv.i, i32 255, i32 48)
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %n.i, align 4
  %call4.i = call i32 @vli_num_bits(ptr noundef %11, i32 noundef %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call4.i)
  %cmp.i = icmp ult i32 %call4.i, 160
  br i1 %cmp.i, label %if.then10.cleanup.thread63_crit_edge, label %lor.lhs.false.i

if.then10.cleanup.thread63_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread63

lor.lhs.false.i:                                  ; preds = %if.then10
  %12 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ndigits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp9.i = icmp ugt i8 %13, 6
  br i1 %cmp9.i, label %lor.lhs.false.i.cleanup.thread63_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.thread63_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread63

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call11.i = call i32 @crypto_get_default_rng() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.end.i.cleanup.thread63_crit_edge

if.end.i.cleanup.thread63_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread63

if.end13.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_default_rng to i32))
  %14 = load ptr, ptr @crypto_default_rng, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i.i, align 4
  call void @crypto_stats_get(ptr noundef %16) #7
  %17 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 -128
  %19 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call1.i.i.i = call i32 %20(ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef nonnull %priv.i, i32 noundef %shl.i) #7
  call void @crypto_stats_rng_generate(ptr noundef %16, i32 noundef %shl.i, i32 noundef %call1.i.i.i) #7
  call void @crypto_put_default_rng() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool15.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %21 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ndigits, align 4
  %conv.i.i = zext i8 %22 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %one.i.i) #7
  %23 = getelementptr inbounds i8, ptr %one.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %one.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1, ptr %one.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %res.i.i) #7
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i, i32 %shl.i)
  %cmp.not.i.not.i = icmp eq i32 %shl.i.i.i, %shl.i
  %26 = call ptr @memset(ptr %res.i.i, i32 255, i32 48)
  br i1 %cmp.not.i.not.i, label %if.end4.i.i, label %if.end17.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge

if.end17.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end17.i
  %call5.i.i = call i32 @vli_cmp(ptr noundef nonnull %one.i.i, ptr noundef nonnull %priv.i, i32 noundef %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp6.not.i.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %if.end4.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge

if.end4.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %27 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %n.i, align 4
  %call12.i.i = call i64 @vli_sub(ptr noundef nonnull %res.i.i, ptr noundef %28, ptr noundef nonnull %one.i.i, i32 noundef %conv.i.i) #7
  %call16.i.i = call i64 @vli_sub(ptr noundef nonnull %res.i.i, ptr noundef nonnull %res.i.i, ptr noundef nonnull %one.i.i, i32 noundef %conv.i.i) #7
  %call18.i.i = call i32 @vli_cmp(ptr noundef nonnull %res.i.i, ptr noundef nonnull %priv.i, i32 noundef %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i)
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 1
  br i1 %cmp19.not.i.i, label %if.end22.i, label %if.end9.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge

if.end9.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread.i

kmb_ecc_is_key_valid.exit.thread.i:               ; preds = %if.end9.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge, %if.end4.i.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge, %if.end17.i.kmb_ecc_is_key_valid.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %one.i.i) #7
  br label %cleanup

if.end22.i:                                       ; preds = %if.end9.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %one.i.i) #7
  %29 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ndigits, align 4
  %conv26.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp7.not.i.i = icmp eq i8 %30, 0
  br i1 %cmp7.not.i.i, label %if.end22.i.cleanup_crit_edge, label %if.end22.i.for.body.i.i_crit_edge

if.end22.i.for.body.i.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body.i.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end22.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end22.i.for.body.i.i_crit_edge ]
  %31 = xor i32 %i.08.i.i, -1
  %sub1.i.i = add nsw i32 %31, %conv26.i
  %arrayidx.i.i = getelementptr i64, ptr %priv.i, i32 %sub1.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx2.i.i = getelementptr i64, ptr %private_key, i32 %i.08.i.i
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx2.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv26.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %one.i) #7
  %35 = getelementptr inbounds i8, ptr %one.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %one.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1, ptr %one.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %res.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv)
  %cmp.not.i.not = icmp eq i32 %shl.i, %conv
  %38 = call ptr @memset(ptr %res.i, i32 255, i32 48)
  br i1 %cmp.not.i.not, label %if.end4.i, label %if.end13.kmb_ecc_is_key_valid.exit.thread_crit_edge

if.end13.kmb_ecc_is_key_valid.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread

if.end4.i:                                        ; preds = %if.end13
  %call5.i = call i32 @vli_cmp(ptr noundef nonnull %one.i, ptr noundef nonnull %8, i32 noundef %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, -1
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i.kmb_ecc_is_key_valid.exit.thread_crit_edge

if.end4.i.kmb_ecc_is_key_valid.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %n.i49 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 3
  %39 = ptrtoint ptr %n.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %n.i49, align 4
  %call12.i = call i64 @vli_sub(ptr noundef nonnull %res.i, ptr noundef %40, ptr noundef nonnull %one.i, i32 noundef %conv2) #7
  %call16.i = call i64 @vli_sub(ptr noundef nonnull %res.i, ptr noundef nonnull %res.i, ptr noundef nonnull %one.i, i32 noundef %conv2) #7
  %call18.i = call i32 @vli_cmp(ptr noundef nonnull %res.i, ptr noundef nonnull %8, i32 noundef %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 1
  br i1 %cmp19.not.i, label %if.end21, label %if.end9.i.kmb_ecc_is_key_valid.exit.thread_crit_edge

if.end9.i.kmb_ecc_is_key_valid.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_is_key_valid.exit.thread

kmb_ecc_is_key_valid.exit.thread:                 ; preds = %if.end9.i.kmb_ecc_is_key_valid.exit.thread_crit_edge, %if.end4.i.kmb_ecc_is_key_valid.exit.thread_crit_edge, %if.end13.kmb_ecc_is_key_valid.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %one.i) #7
  br label %cleanup.thread

if.end21:                                         ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %one.i) #7
  %41 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %params, align 8
  %private_key23 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %43 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %curve, align 8
  %ndigits27 = getelementptr inbounds %struct.ecc_curve, ptr %44, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %ndigits27 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ndigits27, align 4
  %conv28 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp7.not.i = icmp eq i8 %46, 0
  br i1 %cmp7.not.i, label %if.end21.cleanup.thread59_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.cleanup.thread59_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread59

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %47 = xor i32 %i.08.i, -1
  %sub1.i = add nsw i32 %47, %conv28
  %arrayidx.i = getelementptr i64, ptr %42, i32 %sub1.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i64, ptr %private_key23, i32 %i.08.i
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx2.i, align 8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv28
  br i1 %exitcond.not.i, label %for.body.i.cleanup.thread59_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup.thread59_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread59

cleanup.thread:                                   ; preds = %kmb_ecc_is_key_valid.exit.thread, %if.end.cleanup.thread_crit_edge, %entry.cleanup.thread_crit_edge
  %rc.0.ph = phi i32 [ -22, %kmb_ecc_is_key_valid.exit.thread ], [ -22, %if.end.cleanup.thread_crit_edge ], [ %call1, %entry.cleanup.thread_crit_edge ]
  %51 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %params, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %params) #7, !srcloc !83
  br label %if.then30

cleanup.thread59:                                 ; preds = %for.body.i.cleanup.thread59_crit_edge, %if.end21.cleanup.thread59_crit_edge
  %52 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %params, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %params) #7, !srcloc !83
  br label %if.end32

cleanup.thread63:                                 ; preds = %if.end.i.cleanup.thread63_crit_edge, %lor.lhs.false.i.cleanup.thread63_crit_edge, %if.then10.cleanup.thread63_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.end.i.cleanup.thread63_crit_edge ], [ -22, %if.then10.cleanup.thread63_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %priv.i) #7
  %53 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %params, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %params) #7, !srcloc !83
  br label %if.then30

cleanup:                                          ; preds = %for.body.i.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %kmb_ecc_is_key_valid.exit.thread.i, %if.end13.i.cleanup_crit_edge
  %rc.0.i = phi i32 [ %call1.i.i.i, %if.end13.i.cleanup_crit_edge ], [ -22, %kmb_ecc_is_key_valid.exit.thread.i ], [ 0, %if.end22.i.cleanup_crit_edge ], [ 0, %for.body.i.i.cleanup_crit_edge ]
  %54 = call ptr @memset(ptr %priv.i, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %priv.i) #7, !srcloc !83
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %priv.i) #7
  %55 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %params, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %params) #7, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool29.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool29.not, label %cleanup.if.end32_crit_edge, label %cleanup.if.then30_crit_edge

cleanup.if.then30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

cleanup.if.end32_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %cleanup.if.then30_crit_edge, %cleanup.thread63, %cleanup.thread
  %rc.056 = phi i32 [ %rc.0.ph, %cleanup.thread ], [ %rc.0.i, %cleanup.if.then30_crit_edge ], [ %retval.0.i.ph, %cleanup.thread63 ]
  %curve31 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %56 = ptrtoint ptr %curve31 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %curve31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %cleanup.if.end32_crit_edge, %cleanup.thread59
  %rc.057 = phi i32 [ %rc.056, %if.then30 ], [ 0, %cleanup.if.end32_crit_edge ], [ 0, %cleanup.thread59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #7
  ret i32 %rc.057
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecdh_generate_public_key(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %curve1 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %curve1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curve1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_len, align 4
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl.i)
  %cmp = icmp ult i32 %7, %shl.i
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %ecc_dev = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %12 = ptrtoint ptr %ecc_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc_dev, align 4
  %engine = getelementptr inbounds %struct.ocs_ecc_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %engine, align 4
  %call13 = tail call i32 @crypto_transfer_kpp_request_to_engine(ptr noundef %15, ptr noundef %req) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecdh_compute_shared_secret(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %curve1 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %2 = ptrtoint ptr %curve1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curve1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %src_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_len, align 32
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shl.i)
  %cmp.not = icmp eq i32 %9, %shl.i
  br i1 %cmp.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %ecc_dev = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %12 = ptrtoint ptr %ecc_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc_dev, align 4
  %engine = getelementptr inbounds %struct.ocs_ecc_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %engine, align 4
  %call13 = tail call i32 @crypto_transfer_kpp_request_to_engine(ptr noundef %15, ptr noundef %req) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_ocs_ecdh_max_size(ptr nocapture noundef readonly %tfm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curve = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %0 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curve, align 8
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  ret i32 %shl.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecdh_nist_p256_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 72)
  %ecc_dev.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %1 = load ptr, ptr @ocs_ecc, align 4
  %2 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ecc_dev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %3 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ecc_dev.i.i, align 4
  %cmp.i.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %5) #10
  %6 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ecc_dev.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %kmb_ecc_tctx_init.exit

if.end.i:                                         ; preds = %entry
  %call8.i = tail call ptr @ecc_get_curve(i32 noundef 2) #7
  %curve.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %9 = ptrtoint ptr %curve.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %curve.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.kmb_ecc_tctx_init.exit_crit_edge, label %if.end11.i

if.end.i.kmb_ecc_tctx_init.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_tctx_init.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %__crt_ctx.i, align 8
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %11 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kmb_ocs_ecc_do_one_request, ptr %do_one_request.i, align 8
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %unprepare_request.i, align 4
  br label %kmb_ecc_tctx_init.exit

kmb_ecc_tctx_init.exit:                           ; preds = %if.end11.i, %if.end.i.kmb_ecc_tctx_init.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %8, %do.end.i ], [ 0, %if.end11.i ], [ -95, %if.end.i.kmb_ecc_tctx_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kmb_ocs_ecdh_exit_tfm(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %0 = ptrtoint ptr %private_key to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %private_key, align 1
  tail call void asm sideeffect "", "r,~{memory}"(ptr %private_key) #7, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_decode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vli_num_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vli_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vli_sub(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_kpp_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecc_get_curve(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecc_do_one_request(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  %pubk_buf.i11 = alloca [12 x i64], align 8
  %shared_secret.i = alloca [6 x i64], align 8
  %pubk_buf.i = alloca [12 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %ecc_dev1 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %ecc_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc_dev1, align 4
  %src = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %tobool.not = icmp eq ptr %5, null
  %curve1.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %6 = ptrtoint ptr %curve1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curve1.i, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %shared_secret.i) #7
  %8 = call ptr @memset(ptr %shared_secret.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pubk_buf.i) #7
  %9 = call ptr @memset(ptr %pubk_buf.i, i32 255, i32 96)
  %ndigits.i = getelementptr inbounds %struct.ecc_curve, ptr %7, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ndigits.i, align 4
  %conv.i = zext i8 %11 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i, 3
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %conv4.i = zext i32 %mul.i to i64
  %call5.i = tail call i32 @sg_nents_for_len(ptr noundef nonnull %5, i64 noundef %conv4.i) #7
  %call6.i = call i32 @sg_copy_to_buffer(ptr noundef nonnull %5, i32 noundef %call5.i, ptr noundef nonnull %pubk_buf.i, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %mul.i)
  %cmp.not.i = icmp eq i32 %call6.i, %mul.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.kmb_ecc_do_shared_secret.exit_crit_edge

if.then.kmb_ecc_do_shared_secret.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_do_shared_secret.exit

if.end.i:                                         ; preds = %if.then
  %12 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ndigits.i, align 4
  %conv10.i = zext i8 %13 to i32
  %call11.i = call ptr @ecc_alloc_point(i32 noundef %conv10.i) #7
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.end.i.kmb_ecc_do_shared_secret.exit_crit_edge, label %if.end13.i

if.end.i.kmb_ecc_do_shared_secret.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_do_shared_secret.exit

if.end13.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call11.i, align 4
  %16 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ndigits.i, align 4
  %conv17.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp7.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp7.not.i.i, label %if.end13.i.ecc_swap_digits.exit109.i_crit_edge, label %if.end13.i.for.body.i.i_crit_edge

if.end13.i.for.body.i.i_crit_edge:                ; preds = %if.end13.i
  br label %for.body.i.i

if.end13.i.ecc_swap_digits.exit109.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit109.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end13.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end13.i.for.body.i.i_crit_edge ]
  %18 = xor i32 %i.08.i.i, -1
  %sub1.i.i = add nsw i32 %18, %conv17.i
  %arrayidx.i.i = getelementptr i64, ptr %pubk_buf.i, i32 %sub1.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx2.i.i = getelementptr i64, ptr %15, i32 %i.08.i.i
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx2.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv17.i
  br i1 %exitcond.not.i.i, label %ecc_swap_digits.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

ecc_swap_digits.exit.i:                           ; preds = %for.body.i.i
  %22 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr.i = load i8, ptr %ndigits.i, align 4
  %idxprom.i = zext i8 %.pr.i to i32
  %arrayidx.i = getelementptr [12 x i64], ptr %pubk_buf.i, i32 0, i32 %idxprom.i
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %call11.i, i32 0, i32 1
  %23 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp7.not.i101.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp7.not.i101.i, label %ecc_swap_digits.exit.i.ecc_swap_digits.exit109.i_crit_edge, label %ecc_swap_digits.exit.i.for.body.i108.i_crit_edge

ecc_swap_digits.exit.i.for.body.i108.i_crit_edge: ; preds = %ecc_swap_digits.exit.i
  br label %for.body.i108.i

ecc_swap_digits.exit.i.ecc_swap_digits.exit109.i_crit_edge: ; preds = %ecc_swap_digits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit109.i

for.body.i108.i:                                  ; preds = %for.body.i108.i.for.body.i108.i_crit_edge, %ecc_swap_digits.exit.i.for.body.i108.i_crit_edge
  %i.08.i102.i = phi i32 [ %inc.i106.i, %for.body.i108.i.for.body.i108.i_crit_edge ], [ 0, %ecc_swap_digits.exit.i.for.body.i108.i_crit_edge ]
  %25 = xor i32 %i.08.i102.i, -1
  %sub1.i103.i = add nsw i32 %25, %idxprom.i
  %arrayidx.i104.i = getelementptr i64, ptr %arrayidx.i, i32 %sub1.i103.i
  %26 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i104.i, align 8
  %arrayidx2.i105.i = getelementptr i64, ptr %24, i32 %i.08.i102.i
  %28 = ptrtoint ptr %arrayidx2.i105.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx2.i105.i, align 8
  %inc.i106.i = add nuw nsw i32 %i.08.i102.i, 1
  %exitcond.not.i107.i = icmp eq i32 %inc.i106.i, %idxprom.i
  br i1 %exitcond.not.i107.i, label %for.body.i108.i.ecc_swap_digits.exit109.i_crit_edge, label %for.body.i108.i.for.body.i108.i_crit_edge

for.body.i108.i.for.body.i108.i_crit_edge:        ; preds = %for.body.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i108.i

for.body.i108.i.ecc_swap_digits.exit109.i_crit_edge: ; preds = %for.body.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit109.i

ecc_swap_digits.exit109.i:                        ; preds = %for.body.i108.i.ecc_swap_digits.exit109.i_crit_edge, %ecc_swap_digits.exit.i.ecc_swap_digits.exit109.i_crit_edge, %if.end13.i.ecc_swap_digits.exit109.i_crit_edge
  %call23.i = call fastcc i32 @kmb_ocs_ecc_is_pubkey_valid_partial(ptr noundef %3, ptr noundef %7, ptr noundef nonnull %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %ecc_swap_digits.exit109.i.exit_free_pk.i_crit_edge

ecc_swap_digits.exit109.i.exit_free_pk.i_crit_edge: ; preds = %ecc_swap_digits.exit109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_pk.i

if.end26.i:                                       ; preds = %ecc_swap_digits.exit109.i
  %ndigits27.i = getelementptr inbounds %struct.ecc_point, ptr %call11.i, i32 0, i32 2
  %29 = ptrtoint ptr %ndigits27.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ndigits27.i, align 4
  %conv28.i = zext i8 %30 to i32
  %call29.i = call ptr @ecc_alloc_point(i32 noundef %conv28.i) #7
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end26.i.exit_free_pk.i_crit_edge, label %if.end32.i

if.end26.i.exit_free_pk.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_pk.i

if.end32.i:                                       ; preds = %if.end26.i
  %private_key.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 8
  %call34.i = call fastcc i32 @kmb_ecc_point_mult(ptr noundef %3, ptr noundef nonnull %call29.i, ptr noundef nonnull %call11.i, ptr noundef %private_key.i, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end32.i.exit_free_result.i_crit_edge

if.end32.i.exit_free_result.i_crit_edge:          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_result.i

if.end37.i:                                       ; preds = %if.end32.i
  %call38.i = call zeroext i1 @ecc_point_is_zero(ptr noundef nonnull %call29.i) #7
  br i1 %call38.i, label %if.end37.i.exit_free_result.i_crit_edge, label %if.end40.i

if.end37.i.exit_free_result.i_crit_edge:          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_free_result.i

if.end40.i:                                       ; preds = %if.end37.i
  %31 = ptrtoint ptr %call29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call29.i, align 4
  %ndigits43.i = getelementptr inbounds %struct.ecc_point, ptr %call29.i, i32 0, i32 2
  %33 = ptrtoint ptr %ndigits43.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ndigits43.i, align 4
  %conv44.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp7.not.i110.i = icmp eq i8 %34, 0
  br i1 %cmp7.not.i110.i, label %if.end40.i.ecc_swap_digits.exit118.i_crit_edge, label %if.end40.i.for.body.i117.i_crit_edge

if.end40.i.for.body.i117.i_crit_edge:             ; preds = %if.end40.i
  br label %for.body.i117.i

if.end40.i.ecc_swap_digits.exit118.i_crit_edge:   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit118.i

for.body.i117.i:                                  ; preds = %for.body.i117.i.for.body.i117.i_crit_edge, %if.end40.i.for.body.i117.i_crit_edge
  %i.08.i111.i = phi i32 [ %inc.i115.i, %for.body.i117.i.for.body.i117.i_crit_edge ], [ 0, %if.end40.i.for.body.i117.i_crit_edge ]
  %35 = xor i32 %i.08.i111.i, -1
  %sub1.i112.i = add nsw i32 %35, %conv44.i
  %arrayidx.i113.i = getelementptr i64, ptr %32, i32 %sub1.i112.i
  %36 = ptrtoint ptr %arrayidx.i113.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %arrayidx.i113.i, align 1
  %arrayidx2.i114.i = getelementptr i64, ptr %shared_secret.i, i32 %i.08.i111.i
  %38 = ptrtoint ptr %arrayidx2.i114.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx2.i114.i, align 8
  %inc.i115.i = add nuw nsw i32 %i.08.i111.i, 1
  %exitcond.not.i116.i = icmp eq i32 %inc.i115.i, %conv44.i
  br i1 %exitcond.not.i116.i, label %for.body.i117.i.ecc_swap_digits.exit118.i_crit_edge, label %for.body.i117.i.for.body.i117.i_crit_edge

for.body.i117.i.for.body.i117.i_crit_edge:        ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117.i

for.body.i117.i.ecc_swap_digits.exit118.i_crit_edge: ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit118.i

ecc_swap_digits.exit118.i:                        ; preds = %for.body.i117.i.ecc_swap_digits.exit118.i_crit_edge, %if.end40.i.ecc_swap_digits.exit118.i_crit_edge
  %dst_len.i = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 4
  %39 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst_len.i, align 4
  %41 = call i32 @llvm.umin.i32(i32 %shl.i.i, i32 %40) #7
  %dst.i = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 2
  %42 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst.i, align 4
  %conv48.i = zext i32 %41 to i64
  %call49.i = call i32 @sg_nents_for_len(ptr noundef %43, i64 noundef %conv48.i) #7
  %call51.i = call i32 @sg_copy_from_buffer(ptr noundef %43, i32 noundef %call49.i, ptr noundef nonnull %shared_secret.i, i32 noundef %41) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call51.i, i32 %41)
  %cmp52.not.i = icmp eq i32 %call51.i, %41
  %rc.0.i = select i1 %cmp52.not.i, i32 0, i32 -22
  %44 = call ptr @memset(ptr %shared_secret.i, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %shared_secret.i) #7, !srcloc !83
  br label %exit_free_result.i

exit_free_result.i:                               ; preds = %ecc_swap_digits.exit118.i, %if.end37.i.exit_free_result.i_crit_edge, %if.end32.i.exit_free_result.i_crit_edge
  %rc.1.i = phi i32 [ %call34.i, %if.end32.i.exit_free_result.i_crit_edge ], [ %rc.0.i, %ecc_swap_digits.exit118.i ], [ -14, %if.end37.i.exit_free_result.i_crit_edge ]
  call void @ecc_free_point(ptr noundef nonnull %call29.i) #7
  br label %exit_free_pk.i

exit_free_pk.i:                                   ; preds = %exit_free_result.i, %if.end26.i.exit_free_pk.i_crit_edge, %ecc_swap_digits.exit109.i.exit_free_pk.i_crit_edge
  %rc.2.i = phi i32 [ %call23.i, %ecc_swap_digits.exit109.i.exit_free_pk.i_crit_edge ], [ %rc.1.i, %exit_free_result.i ], [ -12, %if.end26.i.exit_free_pk.i_crit_edge ]
  call void @ecc_free_point(ptr noundef nonnull %call11.i) #7
  br label %kmb_ecc_do_shared_secret.exit

kmb_ecc_do_shared_secret.exit:                    ; preds = %exit_free_pk.i, %if.end.i.kmb_ecc_do_shared_secret.exit_crit_edge, %if.then.kmb_ecc_do_shared_secret.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.2.i, %exit_free_pk.i ], [ -22, %if.then.kmb_ecc_do_shared_secret.exit_crit_edge ], [ -12, %if.end.i.kmb_ecc_do_shared_secret.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pubk_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %shared_secret.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pubk_buf.i11) #7
  %45 = call ptr @memset(ptr %pubk_buf.i11, i32 255, i32 96)
  %ndigits.i12 = getelementptr inbounds %struct.ecc_curve, ptr %7, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %ndigits.i12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ndigits.i12, align 4
  %conv.i13 = zext i8 %47 to i32
  %shl.i.i14 = shl nuw nsw i32 %conv.i13, 4
  %call5.i15 = tail call ptr @ecc_alloc_point(i32 noundef %conv.i13) #7
  %tobool.not.i16 = icmp eq ptr %call5.i15, null
  br i1 %tobool.not.i16, label %if.else.kmb_ecc_do_public_key.exit_crit_edge, label %if.end.i18

if.else.kmb_ecc_do_public_key.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_do_public_key.exit

if.end.i18:                                       ; preds = %if.else
  %g.i = getelementptr inbounds %struct.ecc_curve, ptr %7, i32 0, i32 1
  %48 = ptrtoint ptr %ecc_dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ecc_dev1, align 4
  %private_key.i17 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 8
  %call7.i = tail call fastcc i32 @kmb_ecc_point_mult(ptr noundef %49, ptr noundef nonnull %call5.i15, ptr noundef %g.i, ptr noundef %private_key.i17, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i18.exit.i_crit_edge

if.end.i18.exit.i_crit_edge:                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end10.i:                                       ; preds = %if.end.i18
  %50 = ptrtoint ptr %ecc_dev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ecc_dev1, align 4
  %call.i.i = tail call fastcc i32 @kmb_ocs_ecc_is_pubkey_valid_partial(ptr noundef %51, ptr noundef %7, ptr noundef nonnull %call5.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.exit.i_crit_edge

if.end10.i.exit.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  %ndigits.i.i = getelementptr inbounds %struct.ecc_point, ptr %call5.i15, i32 0, i32 2
  %52 = ptrtoint ptr %ndigits.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ndigits.i.i, align 4
  %conv.i.i = zext i8 %53 to i32
  %call1.i.i = tail call ptr @ecc_alloc_point(i32 noundef %conv.i.i) #7
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.exit.i_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %n.i.i = getelementptr inbounds %struct.ecc_curve, ptr %7, i32 0, i32 3
  %54 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %n.i.i, align 4
  %call5.i.i = tail call fastcc i32 @kmb_ecc_point_mult(ptr noundef %51, ptr noundef nonnull %call1.i.i, ptr noundef nonnull %call5.i15, ptr noundef %55, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge

if.end4.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = tail call zeroext i1 @ecc_point_is_zero(ptr noundef nonnull %call1.i.i) #7
  br i1 %call9.i.i, label %if.end15.i, label %if.end8.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge

if.end8.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i

kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i: ; preds = %if.end8.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge, %if.end4.i.i.kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i_crit_edge
  tail call void @ecc_free_point(ptr noundef nonnull %call1.i.i) #7
  br label %exit.i

if.end15.i:                                       ; preds = %if.end8.i.i
  tail call void @ecc_free_point(ptr noundef nonnull %call1.i.i) #7
  %56 = ptrtoint ptr %call5.i15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call5.i15, align 4
  %58 = ptrtoint ptr %ndigits.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ndigits.i.i, align 4
  %conv18.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp7.not.i.i19 = icmp eq i8 %59, 0
  br i1 %cmp7.not.i.i19, label %if.end15.i.ecc_swap_digits.exit62.i_crit_edge, label %if.end15.i.for.body.i.i26_crit_edge

if.end15.i.for.body.i.i26_crit_edge:              ; preds = %if.end15.i
  br label %for.body.i.i26

if.end15.i.ecc_swap_digits.exit62.i_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit62.i

for.body.i.i26:                                   ; preds = %for.body.i.i26.for.body.i.i26_crit_edge, %if.end15.i.for.body.i.i26_crit_edge
  %i.08.i.i20 = phi i32 [ %inc.i.i24, %for.body.i.i26.for.body.i.i26_crit_edge ], [ 0, %if.end15.i.for.body.i.i26_crit_edge ]
  %60 = xor i32 %i.08.i.i20, -1
  %sub1.i.i21 = add nsw i32 %60, %conv18.i
  %arrayidx.i.i22 = getelementptr i64, ptr %57, i32 %sub1.i.i21
  %61 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %arrayidx.i.i22, align 1
  %arrayidx2.i.i23 = getelementptr i64, ptr %pubk_buf.i11, i32 %i.08.i.i20
  %63 = ptrtoint ptr %arrayidx2.i.i23 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx2.i.i23, align 8
  %inc.i.i24 = add nuw nsw i32 %i.08.i.i20, 1
  %exitcond.not.i.i25 = icmp eq i32 %inc.i.i24, %conv18.i
  br i1 %exitcond.not.i.i25, label %ecc_swap_digits.exit.i31, label %for.body.i.i26.for.body.i.i26_crit_edge

for.body.i.i26.for.body.i.i26_crit_edge:          ; preds = %for.body.i.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i26

ecc_swap_digits.exit.i31:                         ; preds = %for.body.i.i26
  %64 = ptrtoint ptr %ndigits.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr.i27 = load i8, ptr %ndigits.i.i, align 4
  %y.i28 = getelementptr inbounds %struct.ecc_point, ptr %call5.i15, i32 0, i32 1
  %65 = ptrtoint ptr %y.i28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %y.i28, align 4
  %idxprom.i29 = zext i8 %.pr.i27 to i32
  %arrayidx.i30 = getelementptr [12 x i64], ptr %pubk_buf.i11, i32 0, i32 %idxprom.i29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i27)
  %cmp7.not.i54.i = icmp eq i8 %.pr.i27, 0
  br i1 %cmp7.not.i54.i, label %ecc_swap_digits.exit.i31.ecc_swap_digits.exit62.i_crit_edge, label %ecc_swap_digits.exit.i31.for.body.i61.i_crit_edge

ecc_swap_digits.exit.i31.for.body.i61.i_crit_edge: ; preds = %ecc_swap_digits.exit.i31
  br label %for.body.i61.i

ecc_swap_digits.exit.i31.ecc_swap_digits.exit62.i_crit_edge: ; preds = %ecc_swap_digits.exit.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit62.i

for.body.i61.i:                                   ; preds = %for.body.i61.i.for.body.i61.i_crit_edge, %ecc_swap_digits.exit.i31.for.body.i61.i_crit_edge
  %i.08.i55.i = phi i32 [ %inc.i59.i, %for.body.i61.i.for.body.i61.i_crit_edge ], [ 0, %ecc_swap_digits.exit.i31.for.body.i61.i_crit_edge ]
  %67 = xor i32 %i.08.i55.i, -1
  %sub1.i56.i = add nsw i32 %67, %idxprom.i29
  %arrayidx.i57.i = getelementptr i64, ptr %66, i32 %sub1.i56.i
  %68 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %arrayidx.i57.i, align 1
  %arrayidx2.i58.i = getelementptr i64, ptr %arrayidx.i30, i32 %i.08.i55.i
  %70 = ptrtoint ptr %arrayidx2.i58.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx2.i58.i, align 8
  %inc.i59.i = add nuw nsw i32 %i.08.i55.i, 1
  %exitcond.not.i60.i = icmp eq i32 %inc.i59.i, %idxprom.i29
  br i1 %exitcond.not.i60.i, label %for.body.i61.i.ecc_swap_digits.exit62.i_crit_edge, label %for.body.i61.i.for.body.i61.i_crit_edge

for.body.i61.i.for.body.i61.i_crit_edge:          ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i61.i

for.body.i61.i.ecc_swap_digits.exit62.i_crit_edge: ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ecc_swap_digits.exit62.i

ecc_swap_digits.exit62.i:                         ; preds = %for.body.i61.i.ecc_swap_digits.exit62.i_crit_edge, %ecc_swap_digits.exit.i31.ecc_swap_digits.exit62.i_crit_edge, %if.end15.i.ecc_swap_digits.exit62.i_crit_edge
  %dst.i32 = getelementptr inbounds %struct.kpp_request, ptr %areq, i32 0, i32 2
  %71 = ptrtoint ptr %dst.i32 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst.i32, align 4
  %conv23.i = zext i32 %shl.i.i14 to i64
  %call24.i = tail call i32 @sg_nents_for_len(ptr noundef %72, i64 noundef %conv23.i) #7
  %call26.i = call i32 @sg_copy_from_buffer(ptr noundef %72, i32 noundef %call24.i, ptr noundef nonnull %pubk_buf.i11, i32 noundef %shl.i.i14) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %shl.i.i14)
  %cmp.not.i33 = icmp eq i32 %call26.i, %shl.i.i14
  %spec.select.i = select i1 %cmp.not.i33, i32 0, i32 -22
  br label %exit.i

exit.i:                                           ; preds = %ecc_swap_digits.exit62.i, %kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i, %if.end.i.i.exit.i_crit_edge, %if.end10.i.exit.i_crit_edge, %if.end.i18.exit.i_crit_edge
  %rc.0.i34 = phi i32 [ %call7.i, %if.end.i18.exit.i_crit_edge ], [ %spec.select.i, %ecc_swap_digits.exit62.i ], [ -11, %kmb_ocs_ecc_is_pubkey_valid_full.exit.thread66.i ], [ -11, %if.end10.i.exit.i_crit_edge ], [ -11, %if.end.i.i.exit.i_crit_edge ]
  call void @ecc_free_point(ptr noundef nonnull %call5.i15) #7
  br label %kmb_ecc_do_public_key.exit

kmb_ecc_do_public_key.exit:                       ; preds = %exit.i, %if.else.kmb_ecc_do_public_key.exit_crit_edge
  %retval.0.i35 = phi i32 [ %rc.0.i34, %exit.i ], [ -12, %if.else.kmb_ecc_do_public_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pubk_buf.i11) #7
  br label %if.end

if.end:                                           ; preds = %kmb_ecc_do_public_key.exit, %kmb_ecc_do_shared_secret.exit
  %rc.0 = phi i32 [ %retval.0.i, %kmb_ecc_do_shared_secret.exit ], [ %retval.0.i35, %kmb_ecc_do_public_key.exit ]
  %engine4 = getelementptr inbounds %struct.ocs_ecc_dev, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %engine4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %engine4, align 4
  call void @crypto_finalize_kpp_request(ptr noundef %74, ptr noundef %areq, i32 noundef %rc.0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_kpp_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ecc_alloc_point(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ocs_ecc_is_pubkey_valid_partial(ptr noundef %ecc_dev, ptr nocapture noundef readonly %curve, ptr noundef %pk) unnamed_addr #2 align 64 {
entry:
  %xxx = alloca [6 x i64], align 8
  %yy = alloca [6 x i64], align 8
  %w = alloca [6 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %xxx) #7
  %0 = call ptr @memset(ptr %xxx, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %yy) #7
  %1 = call ptr @memset(ptr %yy, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %w) #7
  %2 = call ptr @memset(ptr %w, i32 0, i32 48)
  %ndigits = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 2
  %3 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ndigits, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ndigits1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !84

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 363, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call = tail call zeroext i1 @ecc_point_is_zero(ptr noundef %pk) #7
  br i1 %call, label %if.end24.cleanup_crit_edge, label %if.end26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %9 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pk, align 4
  %11 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ndigits, align 4
  %conv28 = zext i8 %12 to i32
  %call29 = tail call i32 @vli_cmp(ptr noundef %8, ptr noundef %10, i32 noundef %conv28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 1
  br i1 %cmp30.not, label %if.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %y = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 1
  %15 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %y, align 4
  %17 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ndigits, align 4
  %conv36 = zext i8 %18 to i32
  %call37 = tail call i32 @vli_cmp(ptr noundef %14, ptr noundef %16, i32 noundef %conv36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 1
  br i1 %cmp38.not, label %if.end41, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %y, align 4
  %21 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ndigits, align 4
  %conv45 = zext i8 %22 to i32
  %call46 = call fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef nonnull %yy, ptr noundef %20, ptr noundef %20, ptr noundef %curve, i32 noundef %conv45, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.exit_crit_edge

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end49:                                         ; preds = %if.end41
  %23 = ptrtoint ptr %w to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 3, ptr %w, align 8
  %24 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pk, align 4
  %26 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ndigits, align 4
  %conv54 = zext i8 %27 to i32
  %call55 = call fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef nonnull %xxx, ptr noundef %25, ptr noundef nonnull %w, ptr noundef %curve, i32 noundef %conv54, i32 noundef 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end49.exit_crit_edge

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end58:                                         ; preds = %if.end49
  %a = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 4
  %28 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %a, align 4
  %30 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pk, align 4
  %32 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ndigits, align 4
  %conv62 = zext i8 %33 to i32
  %call63 = call fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef nonnull %w, ptr noundef %29, ptr noundef %31, ptr noundef %curve, i32 noundef %conv62, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end58.exit_crit_edge

if.end58.exit_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end66:                                         ; preds = %if.end58
  %b = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 5
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b, align 4
  %36 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ndigits, align 4
  %conv70 = zext i8 %37 to i32
  %call71 = call fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef nonnull %w, ptr noundef nonnull %w, ptr noundef %35, ptr noundef %curve, i32 noundef %conv70, i32 noundef 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end66.exit_crit_edge

if.end66.exit_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end74:                                         ; preds = %if.end66
  %38 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ndigits, align 4
  %conv79 = zext i8 %39 to i32
  %call80 = call fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef nonnull %w, ptr noundef nonnull %xxx, ptr noundef nonnull %w, ptr noundef %curve, i32 noundef %conv79, i32 noundef 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end74.exit_crit_edge

if.end74.exit_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ndigits, align 4
  %conv87 = zext i8 %41 to i32
  %call88 = call i32 @vli_cmp(ptr noundef nonnull %yy, ptr noundef nonnull %w, i32 noundef %conv87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  %spec.store.select = select i1 %tobool89.not, i32 0, i32 -22
  br label %exit

exit:                                             ; preds = %if.end83, %if.end74.exit_crit_edge, %if.end66.exit_crit_edge, %if.end58.exit_crit_edge, %if.end49.exit_crit_edge, %if.end41.exit_crit_edge
  %rc.0 = phi i32 [ %call46, %if.end41.exit_crit_edge ], [ %call55, %if.end49.exit_crit_edge ], [ %call63, %if.end58.exit_crit_edge ], [ %call71, %if.end66.exit_crit_edge ], [ %call80, %if.end74.exit_crit_edge ], [ %spec.store.select, %if.end83 ]
  %42 = call ptr @memset(ptr %xxx, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %xxx) #7, !srcloc !83
  %43 = call ptr @memset(ptr %yy, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %yy) #7, !srcloc !83
  %44 = call ptr @memset(ptr %w, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %w) #7, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end33.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %exit ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %w) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %yy) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %xxx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ecc_point_mult(ptr noundef %ecc_dev, ptr nocapture noundef readonly %result, ptr nocapture noundef readonly %point, ptr noundef %scalar, ptr nocapture noundef readonly %curve) unnamed_addr #2 align 64 {
entry:
  %sca = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sca) #7
  %0 = call ptr @memset(ptr %sca, i32 255, i32 48)
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp = icmp ugt i8 %2, 4
  %cond = select i1 %cmp, i32 256, i32 0
  %shl.i = shl nuw nsw i32 %conv, 3
  %call5 = tail call i32 @crypto_get_default_rng() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_default_rng to i32))
  %3 = load ptr, ptr @crypto_default_rng, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %5) #7
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i.i = call i32 %9(ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %sca, i32 noundef %shl.i) #7
  call void @crypto_stats_rng_generate(ptr noundef %5, i32 noundef %shl.i, i32 noundef %call1.i.i) #7
  call void @crypto_put_default_rng() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool7.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 145) #7
  %base_reg.i = getelementptr inbounds %struct.ocs_ecc_dev, ptr %ecc_dev, i32 0, i32 2
  %10 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_reg.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %11, i32 4
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not41.i = icmp eq i32 %13, 0
  br i1 %tobool.not41.i, label %if.end9.if.end13_crit_edge, label %if.end9.land.lhs.true.i_crit_edge

if.end9.land.lhs.true.i_crit_edge:                ; preds = %if.end9
  br label %land.lhs.true.i

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end9.land.lhs.true.i_crit_edge
  %call13.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %14 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %17 = and i32 %16, 16777216
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then26.i.if.end13_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then26.i.if.end13_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.end.i:                                        ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_reg.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %19, i32 4
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not.i = icmp eq i32 %21, 0
  br i1 %tobool30.not.i, label %for.end.i.if.end13_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.if.end13_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %for.end.i.if.end13_crit_edge, %if.then26.i.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %or.i = or i32 %cond, 1
  %22 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %24 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %24) #7, !srcloc !81
  %25 = ptrtoint ptr %point to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %point, align 4
  %or.i63 = or i32 %cond, 2
  %27 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %29 = call i32 @llvm.bswap.i32(i32 %or.i63) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #7, !srcloc !81
  %30 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %31, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i, ptr noundef %26, i32 noundef %shl.i) #7
  %y = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 1
  %32 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %y, align 4
  %or.i65 = or i32 %cond, 4
  %34 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %36 = call i32 @llvm.bswap.i32(i32 %or.i65) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #7, !srcloc !81
  %37 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i67 = getelementptr i8, ptr %38, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i67, ptr noundef %33, i32 noundef %shl.i) #7
  %or.i68 = or i32 %cond, 6
  %39 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %41 = call i32 @llvm.bswap.i32(i32 %or.i68) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %41) #7, !srcloc !81
  %42 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i70 = getelementptr i8, ptr %43, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i70, ptr noundef %scalar, i32 noundef %shl.i) #7
  %or.i71 = or i32 %cond, 8
  %44 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %or.i71) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %46) #7, !srcloc !81
  %47 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i73 = getelementptr i8, ptr %48, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i73, ptr noundef nonnull %sca, i32 noundef %shl.i) #7
  %49 = call ptr @memset(ptr %sca, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %sca) #7, !srcloc !83
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %50 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p, align 4
  %or.i74 = or i32 %cond, 10
  %52 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %54 = call i32 @llvm.bswap.i32(i32 %or.i74) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %54) #7, !srcloc !81
  %55 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i76 = getelementptr i8, ptr %56, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i76, ptr noundef %51, i32 noundef %shl.i) #7
  %a = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 4
  %57 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %a, align 4
  %or.i77 = or i32 %cond, 12
  %59 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %61 = call i32 @llvm.bswap.i32(i32 %or.i77) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %61) #7, !srcloc !81
  %62 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i79 = getelementptr i8, ptr %63, i32 128
  call void @mmiocpy(ptr noundef %add.ptr2.i79, ptr noundef %58, i32 noundef %shl.i) #7
  %irq_done.i = getelementptr inbounds %struct.ocs_ecc_dev, ptr %ecc_dev, i32 0, i32 4
  %64 = ptrtoint ptr %irq_done.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %irq_done.i, align 4
  %65 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %66, i32 1028
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 16777216) #7, !srcloc !81
  %or.i82 = or i32 %cond, 16
  %67 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %69 = call i32 @llvm.bswap.i32(i32 %or.i82) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %69) #7, !srcloc !81
  %call.i83 = call i32 @wait_for_completion_interruptible(ptr noundef %irq_done.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool17.not = icmp eq i32 %call.i83, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %result, align 4
  %72 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %73, i32 256
  call void @mmiocpy(ptr noundef %71, ptr noundef %add.ptr.i85, i32 noundef %shl.i) #7
  %y21 = getelementptr inbounds %struct.ecc_point, ptr %result, i32 0, i32 1
  %74 = ptrtoint ptr %y21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %y21, align 4
  %76 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %77, i32 384
  call void @mmiocpy(ptr noundef %75, ptr noundef %add.ptr.i87, i32 noundef %shl.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call5, %entry.cleanup_crit_edge ], [ %call1.i.i, %if.end.cleanup_crit_edge ], [ %call.i83, %if.end13.cleanup_crit_edge ], [ -110, %for.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sca) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ecc_point_is_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecc_free_point(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kmb_ecc_do_scalar_op(ptr noundef %ecc_dev, ptr noundef %scalar_out, ptr noundef %scalar_a, ptr noundef %scalar_b, ptr nocapture noundef readonly %curve, i32 noundef %ndigits, i32 noundef %inst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.i = shl i32 %ndigits, 3
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 145) #7
  %base_reg.i = getelementptr inbounds %struct.ocs_ecc_dev, ptr %ecc_dev, i32 0, i32 2
  %0 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_reg.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not41.i = icmp eq i32 %3, 0
  br i1 %tobool.not41.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %4 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %7 = and i32 %6, 16777216
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then26.i.if.end_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then26.i.if.end_crit_edge:                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_reg.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not.i = icmp eq i32 %11, 0
  br i1 %tobool30.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then26.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ndigits)
  %cmp = icmp ugt i32 %ndigits, 4
  %cond = select i1 %cmp, i32 256, i32 0
  %or.i = or i32 %cond, 1
  %12 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #7, !srcloc !81
  %or.i31 = or i32 %cond, 2
  %15 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %17) #7, !srcloc !81
  %18 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 128
  tail call void @mmiocpy(ptr noundef %add.ptr2.i, ptr noundef %scalar_a, i32 noundef %shl.i) #7
  %or.i33 = or i32 %cond, 4
  %20 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i33) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %22) #7, !srcloc !81
  %23 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i35 = getelementptr i8, ptr %24, i32 128
  tail call void @mmiocpy(ptr noundef %add.ptr2.i35, ptr noundef %scalar_b, i32 noundef %shl.i) #7
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p, align 4
  %or.i36 = or i32 %cond, 10
  %27 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #7, !srcloc !81
  %30 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_reg.i, align 4
  %add.ptr2.i38 = getelementptr i8, ptr %31, i32 128
  tail call void @mmiocpy(ptr noundef %add.ptr2.i38, ptr noundef %26, i32 noundef %shl.i) #7
  %irq_done.i = getelementptr inbounds %struct.ocs_ecc_dev, ptr %ecc_dev, i32 0, i32 4
  %32 = ptrtoint ptr %irq_done.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %irq_done.i, align 4
  %33 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %34, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 16777216) #7, !srcloc !81
  %or.i41 = or i32 %cond, %inst
  %35 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i41) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %37) #7, !srcloc !81
  %call.i42 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_done.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool3.not = icmp eq i32 %call.i42, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_reg.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %39, i32 256
  tail call void @mmiocpy(ptr noundef %scalar_out, ptr noundef %add.ptr.i44, i32 noundef %shl.i) #7
  %call6 = tail call zeroext i1 @vli_is_zero(ptr noundef %scalar_out, i32 noundef %ndigits) #7
  %. = select i1 %call6, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i42, %if.end.cleanup_crit_edge ], [ %., %if.end5 ], [ -110, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vli_is_zero(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmb_ocs_ecdh_nist_p384_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 72)
  %ecc_dev.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %1 = load ptr, ptr @ocs_ecc, align 4
  %2 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ecc_dev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.ocs_ecc_drv, ptr @ocs_ecc, i32 0, i32 1)) #7
  %3 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ecc_dev.i.i, align 4
  %cmp.i.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %5) #10
  %6 = ptrtoint ptr %ecc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ecc_dev.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %kmb_ecc_tctx_init.exit

if.end.i:                                         ; preds = %entry
  %call8.i = tail call ptr @ecc_get_curve(i32 noundef 3) #7
  %curve.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %9 = ptrtoint ptr %curve.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %curve.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.kmb_ecc_tctx_init.exit_crit_edge, label %if.end11.i

if.end.i.kmb_ecc_tctx_init.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kmb_ecc_tctx_init.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %__crt_ctx.i, align 8
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %11 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kmb_ocs_ecc_do_one_request, ptr %do_one_request.i, align 8
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %unprepare_request.i, align 4
  br label %kmb_ecc_tctx_init.exit

kmb_ecc_tctx_init.exit:                           ; preds = %if.end11.i, %if.end.i.kmb_ecc_tctx_init.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %8, %do.end.i ], [ 0, %if.end11.i ], [ -95, %if.end.i.kmb_ecc_tctx_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !60, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_keembay_ocs_ecc__234_1011_kmb_ocs_ecc_driver_init6, !1, !"__initcall__kmod_keembay_ocs_ecc__234_1011_kmb_ocs_ecc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1011, i32 1}
!2 = !{ptr @__exitcall_kmb_ocs_ecc_driver_exit, !1, !"__exitcall_kmb_ocs_ecc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file235, !4, !"__UNIQUE_ID_file235", i1 false, i1 false}
!4 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1013, i32 1}
!5 = !{ptr @__UNIQUE_ID_license236, !4, !"__UNIQUE_ID_license236", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description237, !7, !"__UNIQUE_ID_description237", i1 false, i1 false}
!7 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1014, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias_userspace238, !9, !"__UNIQUE_ID_alias_userspace238", i1 false, i1 false}
!9 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1015, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias_crypto239, !9, !"__UNIQUE_ID_alias_crypto239", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace240, !12, !"__UNIQUE_ID_alias_userspace240", i1 false, i1 false}
!12 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1016, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto241, !12, !"__UNIQUE_ID_alias_crypto241", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace242, !15, !"__UNIQUE_ID_alias_userspace242", i1 false, i1 false}
!15 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1017, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto243, !15, !"__UNIQUE_ID_alias_crypto243", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace244, !18, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!18 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1018, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto245, !18, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1007, i32 12}
!22 = !{ptr @kmb_ocs_ecc_driver, !23, !"kmb_ocs_ecc_driver", i1 false, i1 false}
!23 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 1003, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 905, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @kmb_ocs_ecc_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @kmb_ocs_ecc_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 920, i32 3}
!34 = !{ptr @kmb_ocs_ecc_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @kmb_ocs_ecc_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 932, i32 3}
!38 = !{ptr @kmb_ocs_ecc_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @kmb_ocs_ecc_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 939, i32 3}
!42 = !{ptr @kmb_ocs_ecc_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kmb_ocs_ecc_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 946, i32 3}
!46 = !{ptr @kmb_ocs_ecc_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @kmb_ocs_ecc_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @kmb_ocs_ecc_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 953, i32 3}
!50 = !{ptr @kmb_ocs_ecc_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 119, i32 10}
!56 = !{ptr @ocs_ecc, !57, !"ocs_ecc", i1 false, i1 false}
!57 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 117, i32 27}
!58 = !{ptr @ocs_ecdh_p256, !59, !"ocs_ecdh_p256", i1 false, i1 false}
!59 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 833, i32 23}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 788, i32 3}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @kmb_ecc_tctx_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @kmb_ecc_tctx_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ocs_ecdh_p384, !66, !"ocs_ecdh_p384", i1 false, i1 false}
!66 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 849, i32 23}
!67 = !{ptr @kmb_ocs_ecc_of_match, !68, !"kmb_ocs_ecc_of_match", i1 false, i1 false}
!68 = !{!"../drivers/crypto/keembay/keembay-ocs-ecc.c", i32 995, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 4743583}
!79 = !{i64 2152283932}
!80 = !{i64 2152285287}
!81 = !{i64 4743165}
!82 = !{!"auto-init"}
!83 = !{i64 2149096775}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2154460351}
!86 = !{i64 2154460885}
