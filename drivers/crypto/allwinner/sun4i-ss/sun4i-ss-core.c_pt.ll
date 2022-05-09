; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_ss_alg_template = type { i32, i32, [120 x i8], %union.anon.72, ptr, i32, i32, i32, i32, [108 x i8] }
%union.anon.72 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.73, ptr, ptr, ptr, ptr, %union.anon.74, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.73 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.ss_variant = type { i8 }
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
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, [6 x i32], ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_sun4i_ss__250_569_sun4i_ss_driver_init6 = internal global ptr @sun4i_ss_driver_init, section ".initcall6.init", align 4
@sun4i_ss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_ss_probe, ptr @sun4i_ss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a20ss_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ss_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_ss_driver_exit = internal global ptr @sun4i_ss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias251 = internal constant [33 x i8] c"sun4i_ss.alias=platform:sun4i-ss\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [73 x i8] c"sun4i_ss.description=Allwinner Security System cryptographic accelerator\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [57 x i8] c"sun4i_ss.file=drivers/crypto/allwinner/sun4i-ss/sun4i-ss\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [21 x i8] c"sun4i_ss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [59 x i8] c"sun4i_ss.author=Corentin LABBE <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun4i-ss\00", [23 x i8] zeroinitializer }, align 32
@a20ss_crypto_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a10_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a33_variant }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun4i_ss_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ss_pm_suspend, ptr @sun4i_ss_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot request MMIO\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun4i_ss_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr = internal global ptr @sun4i_ss_probe._entry, section ".printk_index", align 4
@sun4i_ss_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing Security System variant\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.8 = internal global ptr @sun4i_ss_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get SS clock err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.12 = internal global ptr @sun4i_ss_probe._entry.10, section ".printk_index", align 4
@sun4i_ss_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun4i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock ss acquired\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot get AHB SS clock err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.18 = internal global ptr @sun4i_ss_probe._entry.16, section ".printk_index", align 4
@sun4i_ss_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clock ahb_ss acquired\0A\00", [41 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no reset control found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.23 = internal global ptr @sun4i_ss_probe._entry.20, section ".printk_index", align 4
@sun4i_ss_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot set clock rate to ssclk\0A\00", [32 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.26 = internal global ptr @sun4i_ss_probe._entry.24, section ".printk_index", align 4
@sun4i_ss_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Clock bus %lu (%lu MHz) (must be >= %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 427, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.30 = internal global ptr @sun4i_ss_probe._entry.28, section ".printk_index", align 4
@sun4i_ss_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 433, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Clock ss %lu (%lu MHz) (must be <= %lu)\0A\00", [55 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.33 = internal global ptr @sun4i_ss_probe._entry.31, section ".printk_index", align 4
@sun4i_ss_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.2, ptr @.str.3, ptr @.str.32, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sun4i_ss_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Clock ss is at %lu (%lu MHz) (must be <= %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.36 = internal global ptr @sun4i_ss_probe._entry.34, section ".printk_index", align 4
@sun4i_ss_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ss->slock\00", [21 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Die ID %d\0A\00", [21 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.40 = internal global ptr @sun4i_ss_probe._entry.38, section ".printk_index", align 4
@sun4i_ss_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to register %s\0A\00", [43 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.43 = internal global ptr @sun4i_ss_probe._entry.41, section ".printk_index", align 4
@sun4i_ss_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.45 = internal global ptr @sun4i_ss_probe._entry.44, section ".printk_index", align 4
@sun4i_ss_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_probe._entry_ptr.47 = internal global ptr @sun4i_ss_probe._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@sun4i_ss_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sun4i_ss_dbgfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ss_algs = internal global <{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }> <{ %struct.sun4i_ss_alg_template { i32 15, i32 64, [120 x i8] undef, %union.anon.72 { %struct.ahash_alg { ptr @sun4i_hash_init, ptr @sun4i_hash_update, ptr @sun4i_hash_final, ptr @sun4i_hash_finup, ptr @sun4i_hash_digest, ptr @sun4i_hash_export_md5, ptr @sun4i_hash_import_md5, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_hash_crainit, ptr @sun4i_hash_craexit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } } } }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, %struct.sun4i_ss_alg_template { i32 15, i32 48, [120 x i8] undef, %union.anon.72 { %struct.ahash_alg { ptr @sun4i_hash_init, ptr @sun4i_hash_update, ptr @sun4i_hash_final, ptr @sun4i_hash_finup, ptr @sun4i_hash_digest, ptr @sun4i_hash_export_sha1, ptr @sun4i_hash_import_sha1, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_hash_crainit, ptr @sun4i_hash_craexit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } } } }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_aes_setkey, ptr @sun4i_ss_cbc_aes_encrypt, ptr @sun4i_ss_cbc_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 16, i32 48, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_aes_setkey, ptr @sun4i_ss_ecb_aes_encrypt, ptr @sun4i_ss_ecb_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 16, i32 48, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des_setkey, ptr @sun4i_ss_cbc_des_encrypt, ptr @sun4i_ss_cbc_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des_setkey, ptr @sun4i_ss_ecb_des_encrypt, ptr @sun4i_ss_ecb_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des3_setkey, ptr @sun4i_ss_cbc_des3_encrypt, ptr @sun4i_ss_cbc_des3_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 5, i32 0, [120 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des3_setkey, ptr @sun4i_ss_ecb_des3_encrypt, ptr @sun4i_ss_ecb_des3_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } { i32 12, i32 0, [120 x i8] undef, { %struct.rng_alg, [128 x i8] } { %struct.rng_alg { ptr @sun4i_ss_prng_generate, ptr @sun4i_ss_prng_seed, ptr null, i32 24, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sun4i_ss_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.73 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.74 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [108 x i8] undef } }>, align 128
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s %s reqs=%lu opti=%lu fallback=%lu tsize=%lu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %s reqs=%lu tsize=%lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s reqs=%lu\0A\00", [16 x i8] zeroinitializer }, align 32
@ss_a10_variant = internal constant { %struct.ss_variant, [31 x i8] } zeroinitializer, align 32
@ss_a33_variant = internal constant { %struct.ss_variant, [31 x i8] } { %struct.ss_variant { i8 1 }, [31 x i8] zeroinitializer }, align 32
@sun4i_ss_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot prepare_enable busclk\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i_ss_pm_resume\00", [45 x i8] zeroinitializer }, align 32
@sun4i_ss_pm_resume._entry_ptr = internal global ptr @sun4i_ss_pm_resume._entry, section ".printk_index", align 4
@sun4i_ss_pm_resume._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot prepare_enable ssclk\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_ss_pm_resume._entry_ptr.57 = internal global ptr @sun4i_ss_pm_resume._entry.55, section ".printk_index", align 4
@sun4i_ss_pm_resume._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_ss_pm_resume._entry_ptr.60 = internal global ptr @sun4i_ss_pm_resume._entry.58, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"sun4i_ss_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 559, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 563, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"a20ss_crypto_of_match_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 548, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"sun4i_ss_pm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 328, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 374, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 380, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 384, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 387, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 390, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 392, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 395, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 398, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 404, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 412, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 423, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 426, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 432, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 438, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 444, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 465, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 476, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 484, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 492, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 501, i32 40 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"sun4i_ss_debugfs_fops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 275, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 247, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 254, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 260, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"ss_a10_variant\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 27, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"ss_a33_variant\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 31, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 306, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 312, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 318, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_sun4i_ss_driver_exit, ptr @__initcall__kmod_sun4i_ss__250_569_sun4i_ss_driver_init6, ptr @sun4i_ss_driver_exit, ptr @sun4i_ss_pm_resume._entry, ptr @sun4i_ss_pm_resume._entry.55, ptr @sun4i_ss_pm_resume._entry.58, ptr @sun4i_ss_pm_resume._entry_ptr, ptr @sun4i_ss_pm_resume._entry_ptr.57, ptr @sun4i_ss_pm_resume._entry_ptr.60, ptr @sun4i_ss_probe._entry, ptr @sun4i_ss_probe._entry.10, ptr @sun4i_ss_probe._entry.16, ptr @sun4i_ss_probe._entry.20, ptr @sun4i_ss_probe._entry.24, ptr @sun4i_ss_probe._entry.28, ptr @sun4i_ss_probe._entry.31, ptr @sun4i_ss_probe._entry.34, ptr @sun4i_ss_probe._entry.38, ptr @sun4i_ss_probe._entry.41, ptr @sun4i_ss_probe._entry.44, ptr @sun4i_ss_probe._entry.46, ptr @sun4i_ss_probe._entry.6, ptr @sun4i_ss_probe._entry_ptr, ptr @sun4i_ss_probe._entry_ptr.12, ptr @sun4i_ss_probe._entry_ptr.18, ptr @sun4i_ss_probe._entry_ptr.23, ptr @sun4i_ss_probe._entry_ptr.26, ptr @sun4i_ss_probe._entry_ptr.30, ptr @sun4i_ss_probe._entry_ptr.33, ptr @sun4i_ss_probe._entry_ptr.36, ptr @sun4i_ss_probe._entry_ptr.40, ptr @sun4i_ss_probe._entry_ptr.43, ptr @sun4i_ss_probe._entry_ptr.45, ptr @sun4i_ss_probe._entry_ptr.47, ptr @sun4i_ss_probe._entry_ptr.8, ptr @sun4i_ss_driver, ptr @.str, ptr @a20ss_crypto_of_match_table, ptr @sun4i_ss_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @sun4i_ss_probe.__key, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.48, ptr @sun4i_ss_debugfs_fops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ss_a10_variant, ptr @ss_a33_variant, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a20ss_crypto_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_a10_variant to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_a33_variant to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_pm_resume._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_pm_resume._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_ss_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_ss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_ss_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 368, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %call.i, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #5
  %ssclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ssclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call24, ptr %ssclk, align 4
  %cmp.i381 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.then27, label %do.body35

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %8) #8
  br label %cleanup

do.body35:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_ss_probe, %if.then40)) #5
          to label %do.end44 [label %if.then40], !srcloc !132

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_ss_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.14) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body35
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  %busclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %busclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call46, ptr %busclk, align 4
  %cmp.i382 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i382, label %if.then49, label %do.body57

if.then49:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %10) #8
  br label %cleanup

do.body57:                                        ; preds = %do.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_ss_probe, %if.then69)) #5
          to label %do.end73 [label %if.then69], !srcloc !132

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_ss_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.19) #5
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %do.body57
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %reset = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i383 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i383, label %if.then78, label %if.end81

if.then78:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end81:                                         ; preds = %do.end73
  %tobool83.not = icmp eq ptr %call.i.i, null
  br i1 %tobool83.not, label %do.end87, label %if.end81.if.end89_crit_edge

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %if.end81.if.end89_crit_edge
  %13 = ptrtoint ptr %ssclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ssclk, align 4
  %call91 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef 150000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end89
  %15 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %busclk, align 4
  %call100 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 23999999, i32 %call100)
  %cmp = icmp ugt i32 %call100, 23999999
  br i1 %cmp, label %do.body102, label %do.end121

do.body102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_ss_probe, %if.then114)) #5
          to label %if.end124 [label %if.then114], !srcloc !132

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %call100, 1000000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_ss_probe.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call100, i32 noundef %div, i32 noundef 24000000) #5
  br label %if.end124

do.end121:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %div123 = udiv i32 %call100, 1000000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call100, i32 noundef %div123, i32 noundef 24000000) #8
  br label %if.end124

if.end124:                                        ; preds = %do.end121, %if.then114, %do.body102
  %17 = ptrtoint ptr %ssclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ssclk, align 4
  %call126 = tail call i32 @clk_get_rate(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000001, i32 %call126)
  %cmp127 = icmp ult i32 %call126, 150000001
  br i1 %cmp127, label %if.then128, label %do.end159

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %call126)
  %cmp129.not = icmp eq i32 %call126, 150000000
  br i1 %cmp129.not, label %do.body137, label %do.end133

do.end133:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #7
  %div135 = udiv i32 %call126, 1000000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call126, i32 noundef %div135, i32 noundef 150000000) #8
  br label %if.end162

do.body137:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_ss_probe, %if.then149)) #5
          to label %if.end162 [label %if.then149], !srcloc !132

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_ss_probe.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef 150000000, i32 noundef 150, i32 noundef 150000000) #5
  br label %if.end162

do.end159:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %div161 = udiv i32 %call126, 1000000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call126, i32 noundef %div161, i32 noundef 150000000) #8
  br label %if.end162

if.end162:                                        ; preds = %do.end159, %if.then149, %do.body137, %do.end133
  %dev164 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %dev164 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev164, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %slock = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.37, ptr noundef nonnull @sun4i_ss_probe.__key, i16 noundef signext 3) #5
  %21 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev164, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %22, i1 noundef zeroext true) #5
  %23 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev164, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %24, i32 noundef 2000) #5
  %25 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev164, align 4
  %call.i.i384 = tail call i32 @__pm_runtime_set_status(ptr noundef %26, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i384)
  %tobool.not.i = icmp eq i32 %call.i.i384, 0
  br i1 %tobool.not.i, label %if.end172, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end172:                                        ; preds = %if.end162
  %27 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev164, align 4
  tail call void @pm_runtime_enable(ptr noundef %28) #5
  %29 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev164, align 4
  %call.i385 = tail call i32 @__pm_runtime_resume(ptr noundef %30, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %cmp.i386 = icmp slt i32 %call.i385, 0
  br i1 %cmp.i386, label %if.then.i, label %do.body178

if.then.i:                                        ; preds = %if.end172
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_pm_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !135
  br label %error_pm

do.body178:                                       ; preds = %if.end172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 16777216) #5, !srcloc !137
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %37 = lshr i32 %36, 8
  %and = and i32 %37, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %and) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #5, !srcloc !137
  %40 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev164, align 4
  %call.i388 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 4) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body178
  %i.0399 = phi i32 [ 0, %do.body178 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0399
  %ss199 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0399, i32 4
  %42 = ptrtoint ptr %ss199 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %ss199, align 128
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 128
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %for.body.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb213
    i32 12, label %sw.bb229
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %alg = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0399, i32 3
  %call202 = tail call i32 @crypto_register_skcipher(ptr noundef %alg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %sw.bb.for.inc_crit_edge, label %do.end207

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end207:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev164, align 4
  %cra_name = getelementptr inbounds %struct.skcipher_alg, ptr %alg, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.42, ptr noundef %cra_name) #8
  br label %error_alg

sw.bb213:                                         ; preds = %for.body
  %alg215 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0399, i32 3
  %call216 = tail call i32 @crypto_register_ahash(ptr noundef %alg215) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %sw.bb213.for.inc_crit_edge, label %do.end221

sw.bb213.for.inc_crit_edge:                       ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end221:                                        ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev164, align 4
  %cra_name226 = getelementptr inbounds %struct.ahash_alg, ptr %alg215, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.42, ptr noundef %cra_name226) #8
  br label %error_alg

sw.bb229:                                         ; preds = %for.body
  %alg231 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0399, i32 3
  %call232 = tail call i32 @crypto_register_rng(ptr noundef %alg231) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %sw.bb229.for.inc_crit_edge, label %do.end237

sw.bb229.for.inc_crit_edge:                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end237:                                        ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev164, align 4
  %cra_name242 = getelementptr inbounds %struct.rng_alg, ptr %alg231, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.42, ptr noundef %cra_name242) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end237, %sw.bb229.for.inc_crit_edge, %sw.bb213.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0399, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call245 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #5
  %dbgfs_dir = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 12
  %52 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call245, ptr %dbgfs_dir, align 4
  %call247 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 292, ptr noundef %call245, ptr noundef nonnull %call.i, ptr noundef nonnull @sun4i_ss_debugfs_fops) #5
  %dbgfs_stats = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %call.i, i32 0, i32 13
  %53 = ptrtoint ptr %dbgfs_stats to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call247, ptr %dbgfs_stats, align 4
  br label %cleanup

error_alg:                                        ; preds = %do.end221, %do.end207
  %err.0 = phi i32 [ %call216, %do.end221 ], [ %call202, %do.end207 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0399)
  %cmp249402.not = icmp eq i32 %i.0399, 0
  br i1 %cmp249402.not, label %error_alg.error_pm_crit_edge, label %for.body250

error_alg.error_pm_crit_edge:                     ; preds = %error_alg
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250:                                      ; preds = %error_alg
  %i.1403 = add nsw i32 %i.0399, -1
  %arrayidx251 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403
  %54 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx251, align 128
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %55, label %for.body250.for.inc263_crit_edge [
    i32 5, label %sw.bb253
    i32 15, label %sw.bb256
    i32 12, label %sw.bb259
  ]

for.body250.for.inc263_crit_edge:                 ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263

sw.bb253:                                         ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #7
  %alg255 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255) #5
  br label %for.inc263

sw.bb256:                                         ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #7
  %alg258 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258) #5
  br label %for.inc263

sw.bb259:                                         ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #7
  %alg261 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261) #5
  br label %for.inc263

for.inc263:                                       ; preds = %sw.bb259, %sw.bb256, %sw.bb253, %for.body250.for.inc263_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0399)
  %cmp249 = icmp ugt i32 %i.0399, 1
  br i1 %cmp249, label %for.body250.1, label %for.inc263.error_pm_crit_edge

for.inc263.error_pm_crit_edge:                    ; preds = %for.inc263
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.1:                                    ; preds = %for.inc263
  %i.1403.1 = add nsw i32 %i.0399, -2
  %arrayidx251.1 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.1
  %57 = ptrtoint ptr %arrayidx251.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx251.1, align 128
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %58, label %for.body250.1.for.inc263.1_crit_edge [
    i32 5, label %sw.bb253.1
    i32 15, label %sw.bb256.1
    i32 12, label %sw.bb259.1
  ]

for.body250.1.for.inc263.1_crit_edge:             ; preds = %for.body250.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.1

sw.bb259.1:                                       ; preds = %for.body250.1
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.1 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.1, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.1) #5
  br label %for.inc263.1

sw.bb256.1:                                       ; preds = %for.body250.1
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.1 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.1, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.1) #5
  br label %for.inc263.1

sw.bb253.1:                                       ; preds = %for.body250.1
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.1 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.1, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.1) #5
  br label %for.inc263.1

for.inc263.1:                                     ; preds = %sw.bb253.1, %sw.bb256.1, %sw.bb259.1, %for.body250.1.for.inc263.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0399)
  %cmp249.1 = icmp ugt i32 %i.0399, 2
  br i1 %cmp249.1, label %for.body250.2, label %for.inc263.1.error_pm_crit_edge

for.inc263.1.error_pm_crit_edge:                  ; preds = %for.inc263.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.2:                                    ; preds = %for.inc263.1
  %i.1403.2 = add nsw i32 %i.0399, -3
  %arrayidx251.2 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.2
  %60 = ptrtoint ptr %arrayidx251.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx251.2, align 128
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %61, label %for.body250.2.for.inc263.2_crit_edge [
    i32 5, label %sw.bb253.2
    i32 15, label %sw.bb256.2
    i32 12, label %sw.bb259.2
  ]

for.body250.2.for.inc263.2_crit_edge:             ; preds = %for.body250.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.2

sw.bb259.2:                                       ; preds = %for.body250.2
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.2 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.2, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.2) #5
  br label %for.inc263.2

sw.bb256.2:                                       ; preds = %for.body250.2
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.2 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.2, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.2) #5
  br label %for.inc263.2

sw.bb253.2:                                       ; preds = %for.body250.2
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.2 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.2, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.2) #5
  br label %for.inc263.2

for.inc263.2:                                     ; preds = %sw.bb253.2, %sw.bb256.2, %sw.bb259.2, %for.body250.2.for.inc263.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0399)
  %cmp249.2 = icmp ugt i32 %i.0399, 3
  br i1 %cmp249.2, label %for.body250.3, label %for.inc263.2.error_pm_crit_edge

for.inc263.2.error_pm_crit_edge:                  ; preds = %for.inc263.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.3:                                    ; preds = %for.inc263.2
  %i.1403.3 = add nsw i32 %i.0399, -4
  %arrayidx251.3 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.3
  %63 = ptrtoint ptr %arrayidx251.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx251.3, align 128
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %64, label %for.body250.3.for.inc263.3_crit_edge [
    i32 5, label %sw.bb253.3
    i32 15, label %sw.bb256.3
    i32 12, label %sw.bb259.3
  ]

for.body250.3.for.inc263.3_crit_edge:             ; preds = %for.body250.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.3

sw.bb259.3:                                       ; preds = %for.body250.3
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.3 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.3, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.3) #5
  br label %for.inc263.3

sw.bb256.3:                                       ; preds = %for.body250.3
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.3 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.3, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.3) #5
  br label %for.inc263.3

sw.bb253.3:                                       ; preds = %for.body250.3
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.3 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.3, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.3) #5
  br label %for.inc263.3

for.inc263.3:                                     ; preds = %sw.bb253.3, %sw.bb256.3, %sw.bb259.3, %for.body250.3.for.inc263.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0399)
  %cmp249.3 = icmp ugt i32 %i.0399, 4
  br i1 %cmp249.3, label %for.body250.4, label %for.inc263.3.error_pm_crit_edge

for.inc263.3.error_pm_crit_edge:                  ; preds = %for.inc263.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.4:                                    ; preds = %for.inc263.3
  %i.1403.4 = add nsw i32 %i.0399, -5
  %arrayidx251.4 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.4
  %66 = ptrtoint ptr %arrayidx251.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx251.4, align 128
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %67, label %for.body250.4.for.inc263.4_crit_edge [
    i32 5, label %sw.bb253.4
    i32 15, label %sw.bb256.4
    i32 12, label %sw.bb259.4
  ]

for.body250.4.for.inc263.4_crit_edge:             ; preds = %for.body250.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.4

sw.bb259.4:                                       ; preds = %for.body250.4
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.4 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.4, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.4) #5
  br label %for.inc263.4

sw.bb256.4:                                       ; preds = %for.body250.4
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.4 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.4, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.4) #5
  br label %for.inc263.4

sw.bb253.4:                                       ; preds = %for.body250.4
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.4 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.4, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.4) #5
  br label %for.inc263.4

for.inc263.4:                                     ; preds = %sw.bb253.4, %sw.bb256.4, %sw.bb259.4, %for.body250.4.for.inc263.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0399)
  %cmp249.4 = icmp ugt i32 %i.0399, 5
  br i1 %cmp249.4, label %for.body250.5, label %for.inc263.4.error_pm_crit_edge

for.inc263.4.error_pm_crit_edge:                  ; preds = %for.inc263.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.5:                                    ; preds = %for.inc263.4
  %i.1403.5 = add nsw i32 %i.0399, -6
  %arrayidx251.5 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.5
  %69 = ptrtoint ptr %arrayidx251.5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx251.5, align 128
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %70, label %for.body250.5.for.inc263.5_crit_edge [
    i32 5, label %sw.bb253.5
    i32 15, label %sw.bb256.5
    i32 12, label %sw.bb259.5
  ]

for.body250.5.for.inc263.5_crit_edge:             ; preds = %for.body250.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.5

sw.bb259.5:                                       ; preds = %for.body250.5
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.5 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.5, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.5) #5
  br label %for.inc263.5

sw.bb256.5:                                       ; preds = %for.body250.5
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.5 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.5, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.5) #5
  br label %for.inc263.5

sw.bb253.5:                                       ; preds = %for.body250.5
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.5 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.5, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.5) #5
  br label %for.inc263.5

for.inc263.5:                                     ; preds = %sw.bb253.5, %sw.bb256.5, %sw.bb259.5, %for.body250.5.for.inc263.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0399)
  %cmp249.5 = icmp ugt i32 %i.0399, 6
  br i1 %cmp249.5, label %for.body250.6, label %for.inc263.5.error_pm_crit_edge

for.inc263.5.error_pm_crit_edge:                  ; preds = %for.inc263.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.6:                                    ; preds = %for.inc263.5
  %i.1403.6 = add nsw i32 %i.0399, -7
  %arrayidx251.6 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.6
  %72 = ptrtoint ptr %arrayidx251.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx251.6, align 128
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %73, label %for.body250.6.for.inc263.6_crit_edge [
    i32 5, label %sw.bb253.6
    i32 15, label %sw.bb256.6
    i32 12, label %sw.bb259.6
  ]

for.body250.6.for.inc263.6_crit_edge:             ; preds = %for.body250.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc263.6

sw.bb259.6:                                       ; preds = %for.body250.6
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.6 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.6, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.6) #5
  br label %for.inc263.6

sw.bb256.6:                                       ; preds = %for.body250.6
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.6 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.6, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.6) #5
  br label %for.inc263.6

sw.bb253.6:                                       ; preds = %for.body250.6
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.6 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.6, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.6) #5
  br label %for.inc263.6

for.inc263.6:                                     ; preds = %sw.bb253.6, %sw.bb256.6, %sw.bb259.6, %for.body250.6.for.inc263.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0399)
  %cmp249.6 = icmp ugt i32 %i.0399, 7
  br i1 %cmp249.6, label %for.body250.7, label %for.inc263.6.error_pm_crit_edge

for.inc263.6.error_pm_crit_edge:                  ; preds = %for.inc263.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

for.body250.7:                                    ; preds = %for.inc263.6
  %i.1403.7 = add nsw i32 %i.0399, -8
  %arrayidx251.7 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.7
  %75 = ptrtoint ptr %arrayidx251.7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx251.7, align 128
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %76, label %for.body250.7.error_pm_crit_edge [
    i32 5, label %sw.bb253.7
    i32 15, label %sw.bb256.7
    i32 12, label %sw.bb259.7
  ]

for.body250.7.error_pm_crit_edge:                 ; preds = %for.body250.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_pm

sw.bb259.7:                                       ; preds = %for.body250.7
  call void @__sanitizer_cov_trace_pc() #7
  %alg261.7 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.7, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %alg261.7) #5
  br label %error_pm

sw.bb256.7:                                       ; preds = %for.body250.7
  call void @__sanitizer_cov_trace_pc() #7
  %alg258.7 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.7, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %alg258.7) #5
  br label %error_pm

sw.bb253.7:                                       ; preds = %for.body250.7
  call void @__sanitizer_cov_trace_pc() #7
  %alg255.7 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.1403.7, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %alg255.7) #5
  br label %error_pm

error_pm:                                         ; preds = %sw.bb253.7, %sw.bb256.7, %sw.bb259.7, %for.body250.7.error_pm_crit_edge, %for.inc263.6.error_pm_crit_edge, %for.inc263.5.error_pm_crit_edge, %for.inc263.4.error_pm_crit_edge, %for.inc263.3.error_pm_crit_edge, %for.inc263.2.error_pm_crit_edge, %for.inc263.1.error_pm_crit_edge, %for.inc263.error_pm_crit_edge, %error_alg.error_pm_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.error_pm_crit_edge
  %err.1 = phi i32 [ %call.i385, %if.then.i.error_pm_crit_edge ], [ %call.i385, %do.end11.i.i.i.i.i ], [ %err.0, %error_alg.error_pm_crit_edge ], [ %err.0, %for.body250.7.error_pm_crit_edge ], [ %err.0, %sw.bb259.7 ], [ %err.0, %sw.bb256.7 ], [ %err.0, %sw.bb253.7 ], [ %err.0, %for.inc263.6.error_pm_crit_edge ], [ %err.0, %for.inc263.5.error_pm_crit_edge ], [ %err.0, %for.inc263.4.error_pm_crit_edge ], [ %err.0, %for.inc263.3.error_pm_crit_edge ], [ %err.0, %for.inc263.2.error_pm_crit_edge ], [ %err.0, %for.inc263.1.error_pm_crit_edge ], [ %err.0, %for.inc263.error_pm_crit_edge ]
  %78 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev164, align 4
  tail call void @__pm_runtime_disable(ptr noundef %79, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %for.end, %if.end162.cleanup_crit_edge, %do.end96, %if.then78, %if.then49, %if.then27, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %8, %if.then27 ], [ %10, %if.then49 ], [ %12, %if.then78 ], [ %call91, %do.end96 ], [ %err.1, %error_pm ], [ 0, %for.end ], [ -22, %do.end20 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i384, %if.end162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @ss_algs, align 128
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %2, label %entry.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb2
    i32 12, label %sw.bb5
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #5
  br label %for.inc

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #5
  br label %for.inc

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.for.inc_crit_edge
  %4 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 1), align 128
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %4, label %for.inc.for.inc.1_crit_edge [
    i32 5, label %sw.bb.1
    i32 15, label %sw.bb2.1
    i32 12, label %sw.bb5.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

sw.bb5.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #5
  br label %for.inc.1

sw.bb2.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #5
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb2.1, %sw.bb5.1, %for.inc.for.inc.1_crit_edge
  %6 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 0), align 128
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %6, label %for.inc.1.for.inc.2_crit_edge [
    i32 5, label %sw.bb.2
    i32 15, label %sw.bb2.2
    i32 12, label %sw.bb5.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

sw.bb5.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #5
  br label %for.inc.2

sw.bb2.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #5
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb2.2, %sw.bb5.2, %for.inc.1.for.inc.2_crit_edge
  %8 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 0), align 128
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %8, label %for.inc.2.for.inc.3_crit_edge [
    i32 5, label %sw.bb.3
    i32 15, label %sw.bb2.3
    i32 12, label %sw.bb5.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

sw.bb5.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #5
  br label %for.inc.3

sw.bb2.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #5
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %sw.bb2.3, %sw.bb5.3, %for.inc.2.for.inc.3_crit_edge
  %10 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 0), align 128
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %10, label %for.inc.3.for.inc.4_crit_edge [
    i32 5, label %sw.bb.4
    i32 15, label %sw.bb2.4
    i32 12, label %sw.bb5.4
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

sw.bb5.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #5
  br label %for.inc.4

sw.bb2.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #5
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb2.4, %sw.bb5.4, %for.inc.3.for.inc.4_crit_edge
  %12 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 0), align 128
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %12, label %for.inc.4.for.inc.5_crit_edge [
    i32 5, label %sw.bb.5
    i32 15, label %sw.bb2.5
    i32 12, label %sw.bb5.5
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

sw.bb5.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #5
  br label %for.inc.5

sw.bb2.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #5
  br label %for.inc.5

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %sw.bb2.5, %sw.bb5.5, %for.inc.4.for.inc.5_crit_edge
  %14 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 0), align 128
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %14, label %for.inc.5.for.inc.6_crit_edge [
    i32 5, label %sw.bb.6
    i32 15, label %sw.bb2.6
    i32 12, label %sw.bb5.6
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

sw.bb5.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #5
  br label %for.inc.6

sw.bb2.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #5
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #5
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %sw.bb2.6, %sw.bb5.6, %for.inc.5.for.inc.6_crit_edge
  %16 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 0), align 128
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %16, label %for.inc.6.for.inc.7_crit_edge [
    i32 5, label %sw.bb.7
    i32 15, label %sw.bb2.7
    i32 12, label %sw.bb5.7
  ]

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

sw.bb5.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #5
  br label %for.inc.7

sw.bb2.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #5
  br label %for.inc.7

sw.bb.7:                                          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #5
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %sw.bb2.7, %sw.bb5.7, %for.inc.6.for.inc.7_crit_edge
  %18 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 8, i32 0), align 128
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %18, label %for.inc.7.for.inc.8_crit_edge [
    i32 5, label %sw.bb.8
    i32 15, label %sw.bb2.8
    i32 12, label %sw.bb5.8
  ]

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

sw.bb5.8:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 8, i32 3, i32 0, i32 0)) #5
  br label %for.inc.8

sw.bb2.8:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 8, i32 3, i32 0, i32 0)) #5
  br label %for.inc.8

sw.bb.8:                                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.skcipher_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] }, { i32, i32, [120 x i8], { %struct.rng_alg, [128 x i8] }, ptr, i32, i32, i32, i32, [108 x i8] } }>, ptr @ss_algs, i32 0, i32 8, i32 3, i32 0, i32 0)) #5
  br label %for.inc.8

for.inc.8:                                        ; preds = %sw.bb.8, %sw.bb2.8, %sw.bb5.8, %for.inc.7.for.inc.8_crit_edge
  %dev.i = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_final(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_finup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_digest(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_export_md5(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_import_md5(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_crainit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_hash_craexit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_export_sha1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_import_sha1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_aes_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_aes_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_ss_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_aes_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_aes_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_des_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_des3_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des3_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des3_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des3_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des3_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_prng_generate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_prng_seed(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_dbgfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sun4i_ss_dbgfs_read, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_dbgfs_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ss = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 4
  %0 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %if.end.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 12, label %sw.bb11
    i32 15, label %sw.bb26
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 3, i32 0, i32 11
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 9
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 8
  %stat_req = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 5
  %5 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat_req, align 4
  %stat_opti = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 8
  %7 = ptrtoint ptr %stat_opti to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_opti, align 16
  %stat_fb = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 6
  %9 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat_fb, align 8
  %stat_bytes = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 7
  %11 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, ptr noundef %cra_driver_name, ptr noundef %cra_name, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #5
  br label %for.inc

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %base14 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 3, i32 0, i32 11
  %cra_driver_name15 = getelementptr inbounds %struct.crypto_alg, ptr %base14, i32 0, i32 9
  %cra_name20 = getelementptr inbounds %struct.crypto_alg, ptr %base14, i32 0, i32 8
  %stat_req23 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 5
  %13 = ptrtoint ptr %stat_req23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat_req23, align 4
  %stat_bytes25 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 7
  %15 = ptrtoint ptr %stat_bytes25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stat_bytes25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51, ptr noundef %cra_driver_name15, ptr noundef %cra_name20, i32 noundef %14, i32 noundef %16) #5
  br label %for.inc

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cra_driver_name30 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 3, i32 0, i32 11, i32 3, i32 9
  %cra_name36 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 3, i32 0, i32 11, i32 3, i32 8
  %stat_req39 = getelementptr [9 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.058, i32 5
  %17 = ptrtoint ptr %stat_req39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stat_req39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.52, ptr noundef %cra_driver_name30, ptr noundef %cra_name36, i32 noundef %18) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb26, %sw.bb11, %sw.bb, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %ssclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ssclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssclk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %busclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %busclk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_ss_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %busclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %busclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.err_enable_crit_edge

entry.err_enable_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.err_enable.sink.split_crit_edge

if.end.i.err_enable.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable.sink.split

if.end:                                           ; preds = %if.end.i
  %ssclk = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ssclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssclk, align 4
  %call.i31 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.end.i35, label %if.end.err_enable_crit_edge

if.end.err_enable_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable

if.end.i35:                                       ; preds = %if.end
  %call1.i33 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool2.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool2.not.i34, label %if.end10, label %if.end.i35.err_enable.sink.split_crit_edge

if.end.i35.err_enable.sink.split_crit_edge:       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable.sink.split

if.end10:                                         ; preds = %if.end.i35
  %reset = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end10.err_enable_crit_edge

if.end10.err_enable_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_enable

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_enable.sink.split:                            ; preds = %if.end.i35.err_enable.sink.split_crit_edge, %if.end.i.err_enable.sink.split_crit_edge
  %.sink = phi ptr [ %3, %if.end.i.err_enable.sink.split_crit_edge ], [ %5, %if.end.i35.err_enable.sink.split_crit_edge ]
  %.str.59.sink.ph = phi ptr [ @.str.53, %if.end.i.err_enable.sink.split_crit_edge ], [ @.str.56, %if.end.i35.err_enable.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call1.i, %if.end.i.err_enable.sink.split_crit_edge ], [ %call1.i33, %if.end.i35.err_enable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %err_enable

err_enable:                                       ; preds = %err_enable.sink.split, %if.end10.err_enable_crit_edge, %if.end.err_enable_crit_edge, %entry.err_enable_crit_edge
  %.str.59.sink = phi ptr [ @.str.53, %entry.err_enable_crit_edge ], [ @.str.56, %if.end.err_enable_crit_edge ], [ @.str.59, %if.end10.err_enable_crit_edge ], [ %.str.59.sink.ph, %err_enable.sink.split ]
  %err.0 = phi i32 [ %call.i, %entry.err_enable_crit_edge ], [ %call.i31, %if.end.err_enable_crit_edge ], [ %call11, %if.end10.err_enable_crit_edge ], [ %err.0.ph, %err_enable.sink.split ]
  %dev17 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull %.str.59.sink) #8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset.i, align 4
  %call1.i39 = tail call i32 @reset_control_assert(ptr noundef %13) #5
  %ssclk.i = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %ssclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssclk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %busclk.i = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %busclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %busclk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_enable ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_sun4i_ss__250_569_sun4i_ss_driver_init6, !1, !"__initcall__kmod_sun4i_ss__250_569_sun4i_ss_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 569, i32 1}
!2 = !{ptr @__exitcall_sun4i_ss_driver_exit, !1, !"__exitcall_sun4i_ss_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias251, !4, !"__UNIQUE_ID_alias251", i1 false, i1 false}
!4 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 571, i32 1}
!5 = !{ptr @__UNIQUE_ID_description252, !6, !"__UNIQUE_ID_description252", i1 false, i1 false}
!6 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 572, i32 1}
!7 = !{ptr @__UNIQUE_ID_file253, !8, !"__UNIQUE_ID_file253", i1 false, i1 false}
!8 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 573, i32 1}
!9 = !{ptr @__UNIQUE_ID_license254, !8, !"__UNIQUE_ID_license254", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author255, !11, !"__UNIQUE_ID_author255", i1 false, i1 false}
!11 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 574, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 563, i32 21}
!14 = !{ptr @sun4i_ss_driver, !15, !"sun4i_ss_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 559, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 374, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_ss_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_ss_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 380, i32 3}
!26 = !{ptr @sun4i_ss_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4i_ss_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 384, i32 39}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 387, i32 3}
!32 = !{ptr @sun4i_ss_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun4i_ss_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 390, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug246, !35, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 392, i32 40}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 395, i32 3}
!42 = !{ptr @sun4i_ss_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun4i_ss_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 398, i32 2}
!46 = !{ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug247, !45, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 404, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sun4i_ss_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sun4i_ss_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 412, i32 3}
!54 = !{ptr @sun4i_ss_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun4i_ss_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 423, i32 3}
!58 = !{ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug248, !57, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 426, i32 3}
!61 = !{ptr @sun4i_ss_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun4i_ss_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 432, i32 4}
!65 = !{ptr @sun4i_ss_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sun4i_ss_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sun4i_ss_probe.__UNIQUE_ID_ddebug249, !68, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!68 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 435, i32 4}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 438, i32 3}
!71 = !{ptr @sun4i_ss_probe._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sun4i_ss_probe._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sun4i_ss_probe.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 444, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 465, i32 2}
!78 = !{ptr @sun4i_ss_probe._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sun4i_ss_probe._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 476, i32 5}
!82 = !{ptr @sun4i_ss_probe._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sun4i_ss_probe._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sun4i_ss_probe._entry.44, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 484, i32 5}
!86 = !{ptr @sun4i_ss_probe._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sun4i_ss_probe._entry.46, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 492, i32 5}
!89 = !{ptr @sun4i_ss_probe._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 501, i32 40}
!92 = !{ptr @ss_algs, !93, !"ss_algs", i1 false, i1 false}
!93 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 35, i32 37}
!94 = !{ptr @sun4i_ss_debugfs_fops, !95, !"sun4i_ss_debugfs_fops", i1 false, i1 false}
!95 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 275, i32 37}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 247, i32 20}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 254, i32 20}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 260, i32 20}
!102 = !{ptr @a20ss_crypto_of_match_table, !103, !"a20ss_crypto_of_match_table", i1 false, i1 false}
!103 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 548, i32 34}
!104 = !{ptr @ss_a10_variant, !105, !"ss_a10_variant", i1 false, i1 false}
!105 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 27, i32 32}
!106 = !{ptr @ss_a33_variant, !107, !"ss_a33_variant", i1 false, i1 false}
!107 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 31, i32 32}
!108 = !{ptr @sun4i_ss_pm_ops, !109, !"sun4i_ss_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 328, i32 32}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 306, i32 3}
!112 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sun4i_ss_pm_resume._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @sun4i_ss_pm_resume._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 312, i32 3}
!117 = !{ptr @sun4i_ss_pm_resume._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @sun4i_ss_pm_resume._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c", i32 318, i32 3}
!121 = !{ptr @sun4i_ss_pm_resume._entry.58, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @sun4i_ss_pm_resume._entry_ptr.60, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148735277, i64 2148735282, i64 2148735295, i64 2148735339, i64 2148735373, i64 2148735394}
!133 = !{i64 2148252881}
!134 = !{i64 737704, i64 737729, i64 737751, i64 737767, i64 737779, i64 737799, i64 737823, i64 737839, i64 737851}
!135 = !{i64 2148253069}
!136 = !{i64 2154726306}
!137 = !{i64 5578986}
!138 = !{i64 5579404}
!139 = !{i64 2154726977}
!140 = !{i64 2154728699}
