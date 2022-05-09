; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.sun8i_ce_alg_template = type { i32, i32, i32, ptr, [112 x i8], %union.anon.75, i32, i32, i32, [116 x i8] }
%union.anon.75 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.ce_variant = type { [3 x i8], [6 x i8], [2 x i32], i8, i8, i8, i8, [3 x %struct.ce_clock], i32, i8, i8 }
%struct.ce_clock = type { ptr, i32, i32 }
%struct.sun8i_ce_dev = type { ptr, [3 x ptr], ptr, ptr, %struct.mutex, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.hwrng, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sun8i_ce_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.ce_task = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.sginfo], [8 x %struct.sginfo], i32, [3 x i32] }
%struct.sginfo = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@sun8i_ce_run_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA timeout for %s (tm=%d) on flow %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ce_run_task\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr = internal global ptr @sun8i_ce_run_task._entry, section ".printk_index", align 4
@sun8i_ce_run_task._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CE ERROR: %x for flow %x\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.7 = internal global ptr @sun8i_ce_run_task._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TASK: \00", [25 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CE ERROR: algorithm not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.12 = internal global ptr @sun8i_ce_run_task._entry.10, section ".printk_index", align 4
@sun8i_ce_run_task._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CE ERROR: data length error\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.15 = internal global ptr @sun8i_ce_run_task._entry.13, section ".printk_index", align 4
@sun8i_ce_run_task._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CE ERROR: keysram access error for AES\0A\00", [56 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.18 = internal global ptr @sun8i_ce_run_task._entry.16, section ".printk_index", align 4
@sun8i_ce_run_task._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.20 = internal global ptr @sun8i_ce_run_task._entry.19, section ".printk_index", align 4
@sun8i_ce_run_task._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.22 = internal global ptr @sun8i_ce_run_task._entry.21, section ".printk_index", align 4
@sun8i_ce_run_task._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.24 = internal global ptr @sun8i_ce_run_task._entry.23, section ".printk_index", align 4
@sun8i_ce_run_task._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.26 = internal global ptr @sun8i_ce_run_task._entry.25, section ".printk_index", align 4
@sun8i_ce_run_task._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.28 = internal global ptr @sun8i_ce_run_task._entry.27, section ".printk_index", align 4
@sun8i_ce_run_task._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.30 = internal global ptr @sun8i_ce_run_task._entry.29, section ".printk_index", align 4
@sun8i_ce_run_task._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.32 = internal global ptr @sun8i_ce_run_task._entry.31, section ".printk_index", align 4
@sun8i_ce_run_task._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.34 = internal global ptr @sun8i_ce_run_task._entry.33, section ".printk_index", align 4
@sun8i_ce_run_task._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CE ERROR: address invalid\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.37 = internal global ptr @sun8i_ce_run_task._entry.35, section ".printk_index", align 4
@sun8i_ce_run_task._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CE ERROR: key ladder configuration error\0A\00", [54 x i8] zeroinitializer }, align 32
@sun8i_ce_run_task._entry_ptr.40 = internal global ptr @sun8i_ce_run_task._entry.38, section ".printk_index", align 4
@__initcall__kmod_sun8i_ce__237_1034_sun8i_ce_driver_init6 = internal global ptr @sun8i_ce_driver_init, section ".initcall6.init", align 4
@sun8i_ce_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_ce_probe, ptr @sun8i_ce_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.41, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_ce_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_ce_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_ce_driver_exit = internal global ptr @sun8i_ce_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [69 x i8] c"sun8i_ce.description=Allwinner Crypto Engine cryptographic offloader\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [57 x i8] c"sun8i_ce.file=drivers/crypto/allwinner/sun8i-ce/sun8i-ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"sun8i_ce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [59 x i8] c"sun8i_ce.author=Corentin Labbe <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i-ce\00", [23 x i8] zeroinitializer }, align 32
@sun8i_ce_crypto_of_match_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_h3_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_r40_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun20i-d1-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_d1_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_a64_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_h5_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ce_h6_variant }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@sun8i_ce_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_ce_pm_suspend, ptr @sun8i_ce_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun8i_ce_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 910, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing Crypto Engine variant\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i_ce_probe\00", [17 x i8] zeroinitializer }, align 32
@sun8i_ce_probe._entry_ptr = internal global ptr @sun8i_ce_probe._entry, section ".printk_index", align 4
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No reset control found\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_ce_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ce->mlock\00", [21 x i8] zeroinitializer }, align 32
@sun8i_ce_probe.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ce->rnglock\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun8i-ce-ns\00", [20 x i8] zeroinitializer }, align 32
@sun8i_ce_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.2, i32 946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot request CryptoEngine Non-secure IRQ (err=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@sun8i_ce_probe._entry_ptr.51 = internal global ptr @sun8i_ce_probe._entry.49, section ".printk_index", align 4
@sun8i_ce_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.2, i32 965, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CryptoEngine Die ID %x\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_ce_probe._entry_ptr.54 = internal global ptr @sun8i_ce_probe._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@sun8i_ce_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sun8i_ce_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sun8i_ce_get_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 759, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get %s CE clock err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ce_get_clks\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ce_get_clks._entry_ptr = internal global ptr @sun8i_ce_get_clks._entry, section ".printk_index", align 4
@sun8i_ce_get_clks._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 771, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ce_get_clks._entry_ptr.60 = internal global ptr @sun8i_ce_get_clks._entry.58, section ".printk_index", align 4
@sun8i_ce_get_clks._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 776, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail to set %s clk speed to %lu hz\0A\00", [60 x i8] zeroinitializer }, align 32
@sun8i_ce_get_clks._entry_ptr.63 = internal global ptr @sun8i_ce_get_clks._entry.61, section ".printk_index", align 4
@sun8i_ce_get_clks._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 782, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ce_get_clks._entry_ptr.67 = internal global ptr @sun8i_ce_get_clks._entry.64, section ".printk_index", align 4
@sun8i_ce_allocate_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate engine\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun8i_ce_allocate_chanlist\00", [37 x i8] zeroinitializer }, align 32
@sun8i_ce_allocate_chanlist._entry_ptr = internal global ptr @sun8i_ce_allocate_chanlist._entry, section ".printk_index", align 4
@sun8i_ce_allocate_chanlist._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot start engine\0A\00", [43 x i8] zeroinitializer }, align 32
@sun8i_ce_allocate_chanlist._entry_ptr.72 = internal global ptr @sun8i_ce_allocate_chanlist._entry.70, section ".printk_index", align 4
@sun8i_ce_allocate_chanlist._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 672, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot get DMA memory for task %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sun8i_ce_allocate_chanlist._entry_ptr.75 = internal global ptr @sun8i_ce_allocate_chanlist._entry.73, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ce\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_ce_register_algs\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DEBUG: Algo of %s not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.2, ptr @.str.80, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DEBUG: Blockmode of %s not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.2, i32 814, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Register %s\0A\00", [19 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr = internal global ptr @sun8i_ce_register_algs._entry, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 818, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR: Fail to register %s\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.84 = internal global ptr @sun8i_ce_register_algs._entry.82, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.78, ptr @.str.2, i32 829, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.86 = internal global ptr @sun8i_ce_register_algs._entry.85, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.2, i32 834, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.88 = internal global ptr @sun8i_ce_register_algs._entry.87, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 838, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.90 = internal global ptr @sun8i_ce_register_algs._entry.89, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.78, ptr @.str.2, i32 847, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.92 = internal global ptr @sun8i_ce_register_algs._entry.91, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.2, i32 852, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.94 = internal global ptr @sun8i_ce_register_algs._entry.93, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.78, ptr @.str.2, i32 856, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to register %s\0A\00", [43 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.97 = internal global ptr @sun8i_ce_register_algs._entry.95, section ".printk_index", align 4
@sun8i_ce_register_algs._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.78, ptr @.str.2, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR: tried to register an unknown algo\0A\00", [54 x i8] zeroinitializer }, align 32
@sun8i_ce_register_algs._entry_ptr.100 = internal global ptr @sun8i_ce_register_algs._entry.98, section ".printk_index", align 4
@ce_algs = internal global <{ { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, %struct.sun8i_ce_alg_template, %struct.sun8i_ce_alg_template, %struct.sun8i_ce_alg_template, %struct.sun8i_ce_alg_template, %struct.sun8i_ce_alg_template, %struct.sun8i_ce_alg_template, { i32, i32, i32, ptr, [112 x i8], { %struct.rng_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } }> <{ { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 0, i32 1, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ce_aes_setkey, ptr @sun8i_ce_skencrypt, ptr @sun8i_ce_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_cipher_init, ptr @sun8i_ce_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 0, i32 0, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ce_aes_setkey, ptr @sun8i_ce_skencrypt, ptr @sun8i_ce_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_cipher_init, ptr @sun8i_ce_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 2, i32 1, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ce_des3_setkey, ptr @sun8i_ce_skencrypt, ptr @sun8i_ce_skdecrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 8, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_cipher_init, ptr @sun8i_ce_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 2, i32 0, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ce_des3_setkey, ptr @sun8i_ce_skencrypt, ptr @sun8i_ce_skdecrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 8, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_cipher_init, ptr @sun8i_ce_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 0, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 1, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 2, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 3, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 4, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 208, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 128, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ce_alg_template { i32 15, i32 5, i32 0, ptr null, [112 x i8] undef, %union.anon.75 { %struct.ahash_alg { ptr @sun8i_ce_hash_init, ptr @sun8i_ce_hash_update, ptr @sun8i_ce_hash_final, ptr @sun8i_ce_hash_finup, ptr @sun8i_ce_hash_digest, ptr @sun8i_ce_hash_export, ptr @sun8i_ce_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 208, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 128, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-sun8i-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_hash_crainit, ptr @sun8i_ce_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.rng_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 12, i32 0, i32 0, ptr null, [112 x i8] undef, { %struct.rng_alg, [128 x i8] } { %struct.rng_alg { ptr @sun8i_ce_prng_generate, ptr @sun8i_ce_prng_seed, ptr null, i32 22, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 8, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sun8i-ce-prng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ce_prng_init, ptr @sun8i_ce_prng_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef } }>, align 128
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel %d: nreq %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s %s %lu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HWRNG %lu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@sun8i_ce_unregister_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 878, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unregister %d %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun8i_ce_unregister_algs\00", [39 x i8] zeroinitializer }, align 32
@sun8i_ce_unregister_algs._entry_ptr = internal global ptr @sun8i_ce_unregister_algs._entry, section ".printk_index", align 4
@sun8i_ce_unregister_algs._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 883, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_unregister_algs._entry_ptr.108 = internal global ptr @sun8i_ce_unregister_algs._entry.107, section ".printk_index", align 4
@sun8i_ce_unregister_algs._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 888, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_unregister_algs._entry_ptr.110 = internal global ptr @sun8i_ce_unregister_algs._entry.109, section ".printk_index", align 4
@ce_h3_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\14\15", [2 x i32] [i32 0, i32 256], i8 0, i8 0, i8 0, i8 0, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 50000000, i32 0 }, %struct.ce_clock zeroinitializer], i32 0, i8 49, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@ce_r40_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\FF\FF", [2 x i32] [i32 0, i32 256], i8 0, i8 0, i8 0, i8 0, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 300000000, i32 0 }, %struct.ce_clock zeroinitializer], i32 2, i8 49, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@ce_d1_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\14\15", [2 x i32] [i32 0, i32 256], i8 0, i8 0, i8 0, i8 0, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 300000000, i32 0 }, %struct.ce_clock { ptr @.str.113, i32 0, i32 400000000 }], i32 5, i8 49, i8 48 }, [60 x i8] zeroinitializer }, align 32
@ce_a64_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\FF\FF", [2 x i32] [i32 0, i32 256], i8 0, i8 0, i8 0, i8 0, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 300000000, i32 0 }, %struct.ce_clock zeroinitializer], i32 1, i8 49, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@ce_h5_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\FF\FF", [2 x i32] [i32 0, i32 256], i8 0, i8 0, i8 0, i8 0, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 300000000, i32 0 }, %struct.ce_clock zeroinitializer], i32 3, i8 49, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@ce_h6_variant = internal constant { %struct.ce_variant, [60 x i8] } { %struct.ce_variant { [3 x i8] c"\00\01\02", [6 x i8] c"\10\11\12\13\14\15", [2 x i32] [i32 0, i32 256], i8 1, i8 1, i8 1, i8 1, [3 x %struct.ce_clock] [%struct.ce_clock { ptr @.str.111, i32 0, i32 200000000 }, %struct.ce_clock { ptr @.str.112, i32 300000000, i32 0 }, %struct.ce_clock { ptr @.str.113, i32 0, i32 400000000 }], i32 4, i8 29, i8 28 }, [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@sun8i_ce_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 709, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot prepare_enable %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun8i_ce_pm_resume\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ce_pm_resume._entry_ptr = internal global ptr @sun8i_ce_pm_resume._entry, section ".printk_index", align 4
@sun8i_ce_pm_resume._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@sun8i_ce_pm_resume._entry_ptr.118 = internal global ptr @sun8i_ce_pm_resume._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 188, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 200, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 202, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 202, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 206, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 208, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 210, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 219, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 225, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 227, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 229, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 235, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 241, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 243, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 245, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 247, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 249, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"sun8i_ce_driver\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1024, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1028, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [31 x i8] c"sun8i_ce_crypto_of_match_table\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1007, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"sun8i_ce_pm_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 724, i32 32 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 910, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 930, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 932, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 933, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 944, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 946, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 965, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 972, i32 40 }
@___asan_gen_.260 = private unnamed_addr constant [22 x i8] c"sun8i_ce_debugfs_fops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 624, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 758, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 767, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 774, i32 5 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 780, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 656, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 663, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 671, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 87, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 799, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 808, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 813, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 817, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 827, i32 5 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 833, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 837, i32 5 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 845, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 851, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 855, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 862, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 591, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 598, i32 20 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 618, i32 18 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 877, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 882, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 887, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"ce_h3_variant\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 36, i32 32 }
@___asan_gen_.398 = private unnamed_addr constant [15 x i8] c"ce_r40_variant\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 127, i32 32 }
@___asan_gen_.401 = private unnamed_addr constant [14 x i8] c"ce_d1_variant\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 109, i32 32 }
@___asan_gen_.404 = private unnamed_addr constant [15 x i8] c"ce_a64_variant\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 92, i32 32 }
@___asan_gen_.407 = private unnamed_addr constant [14 x i8] c"ce_h5_variant\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 53, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant [14 x i8] c"ce_h6_variant\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 70, i32 32 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 45, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 46, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 120, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 708, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.435 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 715, i32 3 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sun8i_ce_driver_exit, ptr @__initcall__kmod_sun8i_ce__237_1034_sun8i_ce_driver_init6, ptr @sun8i_ce_allocate_chanlist._entry, ptr @sun8i_ce_allocate_chanlist._entry.70, ptr @sun8i_ce_allocate_chanlist._entry.73, ptr @sun8i_ce_allocate_chanlist._entry_ptr, ptr @sun8i_ce_allocate_chanlist._entry_ptr.72, ptr @sun8i_ce_allocate_chanlist._entry_ptr.75, ptr @sun8i_ce_driver_exit, ptr @sun8i_ce_get_clks._entry, ptr @sun8i_ce_get_clks._entry.58, ptr @sun8i_ce_get_clks._entry.61, ptr @sun8i_ce_get_clks._entry.64, ptr @sun8i_ce_get_clks._entry_ptr, ptr @sun8i_ce_get_clks._entry_ptr.60, ptr @sun8i_ce_get_clks._entry_ptr.63, ptr @sun8i_ce_get_clks._entry_ptr.67, ptr @sun8i_ce_pm_resume._entry, ptr @sun8i_ce_pm_resume._entry.116, ptr @sun8i_ce_pm_resume._entry_ptr, ptr @sun8i_ce_pm_resume._entry_ptr.118, ptr @sun8i_ce_probe._entry, ptr @sun8i_ce_probe._entry.49, ptr @sun8i_ce_probe._entry.52, ptr @sun8i_ce_probe._entry_ptr, ptr @sun8i_ce_probe._entry_ptr.51, ptr @sun8i_ce_probe._entry_ptr.54, ptr @sun8i_ce_register_algs._entry, ptr @sun8i_ce_register_algs._entry.82, ptr @sun8i_ce_register_algs._entry.85, ptr @sun8i_ce_register_algs._entry.87, ptr @sun8i_ce_register_algs._entry.89, ptr @sun8i_ce_register_algs._entry.91, ptr @sun8i_ce_register_algs._entry.93, ptr @sun8i_ce_register_algs._entry.95, ptr @sun8i_ce_register_algs._entry.98, ptr @sun8i_ce_register_algs._entry_ptr, ptr @sun8i_ce_register_algs._entry_ptr.100, ptr @sun8i_ce_register_algs._entry_ptr.84, ptr @sun8i_ce_register_algs._entry_ptr.86, ptr @sun8i_ce_register_algs._entry_ptr.88, ptr @sun8i_ce_register_algs._entry_ptr.90, ptr @sun8i_ce_register_algs._entry_ptr.92, ptr @sun8i_ce_register_algs._entry_ptr.94, ptr @sun8i_ce_register_algs._entry_ptr.97, ptr @sun8i_ce_run_task._entry, ptr @sun8i_ce_run_task._entry.10, ptr @sun8i_ce_run_task._entry.13, ptr @sun8i_ce_run_task._entry.16, ptr @sun8i_ce_run_task._entry.19, ptr @sun8i_ce_run_task._entry.21, ptr @sun8i_ce_run_task._entry.23, ptr @sun8i_ce_run_task._entry.25, ptr @sun8i_ce_run_task._entry.27, ptr @sun8i_ce_run_task._entry.29, ptr @sun8i_ce_run_task._entry.31, ptr @sun8i_ce_run_task._entry.33, ptr @sun8i_ce_run_task._entry.35, ptr @sun8i_ce_run_task._entry.38, ptr @sun8i_ce_run_task._entry.5, ptr @sun8i_ce_run_task._entry_ptr, ptr @sun8i_ce_run_task._entry_ptr.12, ptr @sun8i_ce_run_task._entry_ptr.15, ptr @sun8i_ce_run_task._entry_ptr.18, ptr @sun8i_ce_run_task._entry_ptr.20, ptr @sun8i_ce_run_task._entry_ptr.22, ptr @sun8i_ce_run_task._entry_ptr.24, ptr @sun8i_ce_run_task._entry_ptr.26, ptr @sun8i_ce_run_task._entry_ptr.28, ptr @sun8i_ce_run_task._entry_ptr.30, ptr @sun8i_ce_run_task._entry_ptr.32, ptr @sun8i_ce_run_task._entry_ptr.34, ptr @sun8i_ce_run_task._entry_ptr.37, ptr @sun8i_ce_run_task._entry_ptr.40, ptr @sun8i_ce_run_task._entry_ptr.7, ptr @sun8i_ce_unregister_algs._entry, ptr @sun8i_ce_unregister_algs._entry.107, ptr @sun8i_ce_unregister_algs._entry.109, ptr @sun8i_ce_unregister_algs._entry_ptr, ptr @sun8i_ce_unregister_algs._entry_ptr.108, ptr @sun8i_ce_unregister_algs._entry_ptr.110, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.36, ptr @.str.39, ptr @sun8i_ce_driver, ptr @.str.41, ptr @sun8i_ce_crypto_of_match_table, ptr @sun8i_ce_pm_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @sun8i_ce_probe.__key, ptr @.str.45, ptr @sun8i_ce_probe.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @sun8i_ce_debugfs_fops, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @init_completion.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @ce_h3_variant, ptr @ce_r40_variant, ptr @ce_d1_variant, ptr @ce_a64_variant, ptr @ce_h5_variant, ptr @ce_h6_variant, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_run_task._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_crypto_of_match_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_probe.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_get_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_get_clks._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_get_clks._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_get_clks._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_allocate_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_allocate_chanlist._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_allocate_chanlist._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_register_algs._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_unregister_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_unregister_algs._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_unregister_algs._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_h3_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_r40_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_d1_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_a64_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_h5_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_h6_variant to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_pm_resume._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_get_engine_number(ptr noundef %ce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flow = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flow, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %flow, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flow, ptr %flow, i32 1, ptr elementtype(i32) %flow) #7, !srcloc !234
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !235
  %rem = srem i32 %asmresult.i.i.i.i, 3
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_run_task(ptr noundef %ce, i32 noundef %flow, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 6
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %1, i32 %flow, i32 5
  %2 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl, align 4
  %stat_req = getelementptr %struct.sun8i_ce_flow, ptr %1, i32 %flow, i32 6
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stat_req, align 4
  %mlock = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #7
  %6 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ce, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %shl = shl nuw i32 1, %flow
  %or = or i32 %9, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ce, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #7, !srcloc !239
  %13 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanlist, align 4
  %complete = getelementptr %struct.sun8i_ce_flow, ptr %14, i32 %flow, i32 1
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chanlist, align 4
  %t_phy = getelementptr %struct.sun8i_ce_flow, ptr %17, i32 %flow, i32 3
  %18 = ptrtoint ptr %t_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_phy, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ce, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !239
  %23 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chanlist, align 4
  %status = getelementptr %struct.sun8i_ce_flow, ptr %24, i32 %flow, i32 2
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chanlist, align 4
  %tl22 = getelementptr %struct.sun8i_ce_flow, ptr %27, i32 %flow, i32 5
  %28 = ptrtoint ptr %tl22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tl22, align 4
  %t_common_ctl = getelementptr inbounds %struct.ce_task, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %t_common_ctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_common_ctl, align 4
  %32 = lshr i32 %31, 16
  %shl23 = and i32 %32, 32512
  %or24 = or i32 %shl23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %34 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ce, align 4
  %add.ptr29 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %33) #7, !srcloc !239
  tail call void @mutex_unlock(ptr noundef %mlock) #7
  %36 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chanlist, align 4
  %complete33 = getelementptr %struct.sun8i_ce_flow, ptr %37, i32 %flow, i32 1
  %timeout = getelementptr %struct.sun8i_ce_flow, ptr %37, i32 %flow, i32 4
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %39) #7
  %call37 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete33, i32 noundef %call2.i) #7
  %40 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist, align 4
  %status40 = getelementptr %struct.sun8i_ce_flow, ptr %41, i32 %flow, i32 2
  %42 = ptrtoint ptr %status40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %do.end43, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %timeout46 = getelementptr %struct.sun8i_ce_flow, ptr %41, i32 %flow, i32 4
  %46 = ptrtoint ptr %timeout46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timeout46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %47, i32 noundef %flow) #10
  br label %if.end

if.end:                                           ; preds = %do.end43, %entry.if.end_crit_edge
  %err.0 = phi i32 [ -14, %do.end43 ], [ 0, %entry.if.end_crit_edge ]
  %48 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ce, align 4
  %add.ptr50 = getelementptr i8, ptr %49, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #7, !srcloc !236
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 8
  %52 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %variant, align 4
  %esr = getelementptr inbounds %struct.ce_variant, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %esr, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb84_crit_edge
    i32 5, label %if.end.sw.bb84_crit_edge241
    i32 3, label %if.end.sw.bb84_crit_edge242
    i32 2, label %if.end.sw.bb84_crit_edge243
    i32 4, label %sw.bb117
  ]

if.end.sw.bb84_crit_edge243:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb84

if.end.sw.bb84_crit_edge242:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb84

if.end.sw.bb84_crit_edge241:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb84

if.end.sw.bb84_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb84

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %sw.bb.if.end59_crit_edge, label %do.end57

sw.bb.if.end59_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end57:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev58 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %57 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.6, i32 noundef %51, i32 noundef %flow) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef %3, i32 noundef 176, i1 noundef zeroext false) #7
  br label %if.end59

if.end59:                                         ; preds = %do.end57, %sw.bb.if.end59_crit_edge
  %err.1 = phi i32 [ -14, %do.end57 ], [ %err.0, %sw.bb.if.end59_crit_edge ]
  %and60 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end67_crit_edge, label %do.end65

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %dev66 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %59 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.11) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.end59.if.end67_crit_edge
  %and68 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end75_crit_edge, label %do.end73

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %dev74 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %61 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.14) #10
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.end67.if.end75_crit_edge
  %and76 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.sw.epilog_crit_edge, label %if.end75.sw.epilog.sink.split_crit_edge

if.end75.sw.epilog.sink.split_crit_edge:          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end.sw.bb84_crit_edge, %if.end.sw.bb84_crit_edge241, %if.end.sw.bb84_crit_edge242, %if.end.sw.bb84_crit_edge243
  %mul = shl i32 %flow, 2
  %shr = lshr i32 %51, %mul
  %and85 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %sw.bb84.if.end92_crit_edge, label %do.end90

sw.bb84.if.end92_crit_edge:                       ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end90:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  %dev91 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %63 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.6, i32 noundef %and85, i32 noundef %flow) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef %3, i32 noundef 176, i1 noundef zeroext false) #7
  br label %if.end92

if.end92:                                         ; preds = %do.end90, %sw.bb84.if.end92_crit_edge
  %err.2 = phi i32 [ -14, %do.end90 ], [ %err.0, %sw.bb84.if.end92_crit_edge ]
  %and93 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end100_crit_edge, label %do.end98

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %dev99 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %65 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.11) #10
  br label %if.end100

if.end100:                                        ; preds = %do.end98, %if.end92.if.end100_crit_edge
  %and101 = and i32 %shr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end108_crit_edge, label %do.end106

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %dev107 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %67 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev107, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.14) #10
  br label %if.end108

if.end108:                                        ; preds = %do.end106, %if.end100.if.end108_crit_edge
  %and109 = and i32 %shr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.sw.epilog_crit_edge, label %if.end108.sw.epilog.sink.split_crit_edge

if.end108.sw.epilog.sink.split_crit_edge:         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end108.sw.epilog_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end
  %mul118 = shl i32 %flow, 3
  %shr119 = lshr i32 %51, %mul118
  %and120 = and i32 %shr119, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %sw.bb117.if.end127_crit_edge, label %do.end125

sw.bb117.if.end127_crit_edge:                     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.end125:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  %dev126 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %69 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.6, i32 noundef %and120, i32 noundef %flow) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef %3, i32 noundef 176, i1 noundef zeroext false) #7
  br label %if.end127

if.end127:                                        ; preds = %do.end125, %sw.bb117.if.end127_crit_edge
  %err.3 = phi i32 [ -14, %do.end125 ], [ %err.0, %sw.bb117.if.end127_crit_edge ]
  %and128 = and i32 %shr119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end135_crit_edge, label %do.end133

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %dev134 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %71 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev134, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.11) #10
  br label %if.end135

if.end135:                                        ; preds = %do.end133, %if.end127.if.end135_crit_edge
  %and136 = and i32 %shr119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end143_crit_edge, label %do.end141

if.end135.if.end143_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %dev142 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %73 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev142, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.14) #10
  br label %if.end143

if.end143:                                        ; preds = %do.end141, %if.end135.if.end143_crit_edge
  %and144 = and i32 %shr119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end151_crit_edge, label %do.end149

if.end143.if.end151_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  %dev150 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %75 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev150, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.17) #10
  br label %if.end151

if.end151:                                        ; preds = %do.end149, %if.end143.if.end151_crit_edge
  %and152 = and i32 %shr119, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end159_crit_edge, label %do.end157

if.end151.if.end159_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %dev158 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %77 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev158, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.36) #10
  br label %if.end159

if.end159:                                        ; preds = %do.end157, %if.end151.if.end159_crit_edge
  %and160 = and i32 %shr119, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.sw.epilog_crit_edge, label %if.end159.sw.epilog.sink.split_crit_edge

if.end159.sw.epilog.sink.split_crit_edge:         ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end159.sw.epilog_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end159.sw.epilog.sink.split_crit_edge, %if.end108.sw.epilog.sink.split_crit_edge, %if.end75.sw.epilog.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.17, %if.end75.sw.epilog.sink.split_crit_edge ], [ @.str.17, %if.end108.sw.epilog.sink.split_crit_edge ], [ @.str.39, %if.end159.sw.epilog.sink.split_crit_edge ]
  %err.4.ph = phi i32 [ %err.1, %if.end75.sw.epilog.sink.split_crit_edge ], [ %err.2, %if.end108.sw.epilog.sink.split_crit_edge ], [ %err.3, %if.end159.sw.epilog.sink.split_crit_edge ]
  %dev166 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %79 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev166, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull %.str.39.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end159.sw.epilog_crit_edge, %if.end108.sw.epilog_crit_edge, %if.end75.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %err.4 = phi i32 [ %err.0, %if.end.sw.epilog_crit_edge ], [ %err.3, %if.end159.sw.epilog_crit_edge ], [ %err.2, %if.end108.sw.epilog_crit_edge ], [ %err.1, %if.end75.sw.epilog_crit_edge ], [ %err.4.ph, %sw.epilog.sink.split ]
  ret i32 %err.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_ce_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_ce_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_ce_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 336, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %variant, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.0157.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %arrayidx.i = getelementptr %struct.ce_variant, ptr %6, i32 0, i32 7, i32 %i.0157.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call.i134 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull %8) #7
  %arrayidx5.i = getelementptr %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 1, i32 %i.0157.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i134, ptr %arrayidx5.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sun8i_ce_get_clks.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i
  %call21.i = tail call i32 @clk_get_rate(ptr noundef %call.i134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end18.i.cleanup_crit_edge, label %if.end24.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.end18.i
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %freq.i = getelementptr %struct.ce_variant, ptr %13, i32 0, i32 7, i32 %i.0157.i, i32 1
  %14 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i, i32 %15)
  %cmp33.not.i = icmp eq i32 %call21.i, %15
  %or.cond.i = select i1 %cmp28.not.i, i1 true, i1 %cmp33.not.i
  br i1 %or.cond.i, label %if.end24.i.if.end74.i_crit_edge, label %do.end37.i

if.end24.i.if.end74.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

do.end37.i:                                       ; preds = %if.end24.i
  %arrayidx27.i = getelementptr %struct.ce_variant, ptr %13, i32 0, i32 7, i32 %i.0157.i
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %18 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx27.i, align 4
  %div.i = udiv i32 %15, 1000000
  %div51.i = udiv i32 %call21.i, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.59, ptr noundef %19, i32 noundef %15, i32 noundef %div.i, i32 noundef %call21.i, i32 noundef %div51.i) #10
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.i, align 4
  %22 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant, align 4
  %freq57.i = getelementptr %struct.ce_variant, ptr %23, i32 0, i32 7, i32 %i.0157.i, i32 1
  %24 = ptrtoint ptr %freq57.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %freq57.i, align 4
  %call58.i = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.end37.i.if.end74.i_crit_edge, label %do.end63.i

do.end37.i.if.end74.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

do.end63.i:                                       ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %28 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %variant, align 4
  %arrayidx67.i = getelementptr %struct.ce_variant, ptr %29, i32 0, i32 7, i32 %i.0157.i
  %30 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx67.i, align 4
  %freq72.i = getelementptr %struct.ce_variant, ptr %29, i32 0, i32 7, i32 %i.0157.i, i32 1
  %32 = ptrtoint ptr %freq72.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %freq72.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.62, ptr noundef %31, i32 noundef %33) #10
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end63.i, %do.end37.i.if.end74.i_crit_edge, %if.end24.i.if.end74.i_crit_edge
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant, align 4
  %max_freq.i = getelementptr %struct.ce_variant, ptr %35, i32 0, i32 7, i32 %i.0157.i, i32 2
  %36 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp78.not.i = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i, i32 %37)
  %cmp84.i = icmp ugt i32 %call21.i, %37
  %or.cond155.i = select i1 %cmp78.not.i, i1 %cmp84.i, i1 false
  br i1 %or.cond155.i, label %do.end88.i, label %if.end74.i.for.inc.i_crit_edge

if.end74.i.for.inc.i_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end88.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx77.i = getelementptr %struct.ce_variant, ptr %35, i32 0, i32 7, i32 %i.0157.i
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  %40 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.65, ptr noundef %41, i32 noundef %call21.i, i32 noundef %37) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end88.i, %if.end74.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0157.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %if.end20, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sun8i_ce_get_clks.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call.i134 to i32
  %43 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev2, align 4
  %45 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %variant, align 4
  %arrayidx16.i = getelementptr %struct.ce_variant, ptr %46, i32 0, i32 7, i32 %i.0157.i
  %47 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.56, ptr noundef %48, i32 noundef %42) #10
  br label %cleanup

if.end20:                                         ; preds = %for.inc.i
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i135 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then28, label %do.body34

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call.i.i to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %50, ptr noundef nonnull @.str.44) #7
  br label %cleanup

do.body34:                                        ; preds = %if.end23
  %mlock = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mlock, ptr noundef nonnull @.str.45, ptr noundef nonnull @sun8i_ce_probe.__key) #7
  %rnglock = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %rnglock, ptr noundef nonnull @.str.47, ptr noundef nonnull @sun8i_ce_probe.__key.46) #7
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef 320, i32 noundef 3520) #7
  %chanlist.i = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i.i, ptr %chanlist.i, align 4
  %tobool.not.i137 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i137, label %do.body34.cleanup_crit_edge, label %do.body34.for.body.i138_crit_edge

do.body34.for.body.i138_crit_edge:                ; preds = %do.body34
  br label %for.body.i138

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i138:                                    ; preds = %for.inc.i143.for.body.i138_crit_edge, %do.body34.for.body.i138_crit_edge
  %i.075.i = phi i32 [ %inc.i141, %for.inc.i143.for.body.i138_crit_edge ], [ 0, %do.body34.for.body.i138_crit_edge ]
  %54 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chanlist.i, align 4
  %complete.i = getelementptr %struct.sun8i_ce_flow, ptr %55, i32 %i.075.i, i32 1
  %56 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr %struct.sun8i_ce_flow, ptr %55, i32 %i.075.i, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_completion.__key) #7
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 4
  %call4.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %58, i1 noundef zeroext true) #7
  %59 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chanlist.i, align 4
  %arrayidx6.i = getelementptr %struct.sun8i_ce_flow, ptr %60, i32 %i.075.i
  %61 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call4.i, ptr %arrayidx6.i, align 4
  %62 = load ptr, ptr %chanlist.i, align 4
  %arrayidx8.i = getelementptr %struct.sun8i_ce_flow, ptr %62, i32 %i.075.i
  %63 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx8.i, align 4
  %tobool10.not.i = icmp eq ptr %64, null
  br i1 %tobool10.not.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.68) #10
  %dec.i = add nsw i32 %i.075.i, -1
  br label %error_engine.i

if.end13.i:                                       ; preds = %for.body.i138
  %call17.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  %67 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev2, align 4
  br i1 %tobool18.not.i, label %if.end24.i140, label %do.end22.i

do.end22.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.71) #10
  br label %error_engine.i

if.end24.i140:                                    ; preds = %if.end13.i
  %69 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chanlist.i, align 4
  %t_phy.i = getelementptr %struct.sun8i_ce_flow, ptr %70, i32 %i.075.i, i32 3
  %call.i.i139 = tail call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef 176, ptr noundef %t_phy.i, i32 noundef 3264, i32 noundef 0) #7
  %71 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chanlist.i, align 4
  %tl.i = getelementptr %struct.sun8i_ce_flow, ptr %72, i32 %i.075.i, i32 5
  %73 = ptrtoint ptr %tl.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i.i139, ptr %tl.i, align 4
  %74 = load ptr, ptr %chanlist.i, align 4
  %tl33.i = getelementptr %struct.sun8i_ce_flow, ptr %74, i32 %i.075.i, i32 5
  %75 = ptrtoint ptr %tl33.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tl33.i, align 4
  %tobool34.not.i = icmp eq ptr %76, null
  br i1 %tobool34.not.i, label %do.end38.i, label %for.inc.i143

do.end38.i:                                       ; preds = %if.end24.i140
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.74, i32 noundef %i.075.i) #10
  br label %error_engine.i

for.inc.i143:                                     ; preds = %if.end24.i140
  %inc.i141 = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i142 = icmp eq i32 %inc.i141, 4
  br i1 %exitcond.not.i142, label %if.end43, label %for.inc.i143.for.body.i138_crit_edge

for.inc.i143.for.body.i138_crit_edge:             ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i138

error_engine.i:                                   ; preds = %do.end38.i, %do.end22.i, %do.end.i
  %i.1.i = phi i32 [ %i.075.i, %do.end22.i ], [ %i.075.i, %do.end38.i ], [ %dec.i, %do.end.i ]
  %err.0.i = phi i32 [ %call17.i, %do.end22.i ], [ -12, %do.end38.i ], [ -12, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i)
  %cmp17.i.i = icmp sgt i32 %i.1.i, -1
  br i1 %cmp17.i.i, label %while.body.i.i, label %error_engine.i.cleanup_crit_edge

error_engine.i.cleanup_crit_edge:                 ; preds = %error_engine.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i.i:                                   ; preds = %error_engine.i
  %79 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i = getelementptr %struct.sun8i_ce_flow, ptr %80, i32 %i.1.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i69.i = tail call i32 @crypto_engine_exit(ptr noundef %82) #7
  %83 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i = getelementptr %struct.sun8i_ce_flow, ptr %84, i32 %i.1.i, i32 5
  %85 = ptrtoint ptr %tl.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev2, align 4
  %t_phy.i.i = getelementptr %struct.sun8i_ce_flow, ptr %84, i32 %i.1.i, i32 3
  %89 = ptrtoint ptr %t_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %t_phy.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %88, i32 noundef 176, ptr noundef nonnull %86, i32 noundef %90, i32 noundef 0) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %cmp.i.i144 = icmp sgt i32 %i.1.i, 0
  br i1 %cmp.i.i144, label %while.body.i.i.1, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i.i.1:                                 ; preds = %if.end.i.i
  %91 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %92, i32 %dec.i.i
  %93 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.1, align 4
  %call.i69.i.1 = tail call i32 @crypto_engine_exit(ptr noundef %94) #7
  %95 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %96, i32 %dec.i.i, i32 5
  %97 = ptrtoint ptr %tl.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tl.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i.1, label %while.body.i.i.1.if.end.i.i.1_crit_edge, label %if.then.i.i.1

while.body.i.i.1.if.end.i.i.1_crit_edge:          ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.1

if.then.i.i.1:                                    ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev2, align 4
  %t_phy.i.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %96, i32 %dec.i.i, i32 3
  %101 = ptrtoint ptr %t_phy.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %t_phy.i.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %100, i32 noundef 176, ptr noundef nonnull %98, i32 noundef %102, i32 noundef 0) #7
  br label %if.end.i.i.1

if.end.i.i.1:                                     ; preds = %if.then.i.i.1, %while.body.i.i.1.if.end.i.i.1_crit_edge
  %dec.i.i.1 = add nsw i32 %i.1.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1.i)
  %cmp.i.i144.1 = icmp sgt i32 %i.1.i, 1
  br i1 %cmp.i.i144.1, label %while.body.i.i.2, label %if.end.i.i.1.cleanup_crit_edge

if.end.i.i.1.cleanup_crit_edge:                   ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i.i.2:                                 ; preds = %if.end.i.i.1
  %103 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %104, i32 %dec.i.i.1
  %105 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i.2, align 4
  %call.i69.i.2 = tail call i32 @crypto_engine_exit(ptr noundef %106) #7
  %107 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %108, i32 %dec.i.i.1, i32 5
  %109 = ptrtoint ptr %tl.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tl.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.2, label %while.body.i.i.2.if.end.i.i.2_crit_edge, label %if.then.i.i.2

while.body.i.i.2.if.end.i.i.2_crit_edge:          ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.2

if.then.i.i.2:                                    ; preds = %while.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev2, align 4
  %t_phy.i.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %108, i32 %dec.i.i.1, i32 3
  %113 = ptrtoint ptr %t_phy.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %t_phy.i.i.2, align 4
  tail call void @dma_free_attrs(ptr noundef %112, i32 noundef 176, ptr noundef nonnull %110, i32 noundef %114, i32 noundef 0) #7
  br label %if.end.i.i.2

if.end.i.i.2:                                     ; preds = %if.then.i.i.2, %while.body.i.i.2.if.end.i.i.2_crit_edge
  %dec.i.i.2 = add nsw i32 %i.1.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1.i)
  %cmp.i.i144.2 = icmp sgt i32 %i.1.i, 2
  br i1 %cmp.i.i144.2, label %while.body.i.i.3, label %if.end.i.i.2.cleanup_crit_edge

if.end.i.i.2.cleanup_crit_edge:                   ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i.i.3:                                 ; preds = %if.end.i.i.2
  %115 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i.3 = getelementptr %struct.sun8i_ce_flow, ptr %116, i32 %dec.i.i.2
  %117 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i.3, align 4
  %call.i69.i.3 = tail call i32 @crypto_engine_exit(ptr noundef %118) #7
  %119 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i.3 = getelementptr %struct.sun8i_ce_flow, ptr %120, i32 %dec.i.i.2, i32 5
  %121 = ptrtoint ptr %tl.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tl.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %122, null
  br i1 %tobool.not.i.i.3, label %while.body.i.i.3.cleanup_crit_edge, label %if.then.i.i.3

while.body.i.i.3.cleanup_crit_edge:               ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i.3:                                    ; preds = %while.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev2, align 4
  %t_phy.i.i.3 = getelementptr %struct.sun8i_ce_flow, ptr %120, i32 %dec.i.i.2, i32 3
  %125 = ptrtoint ptr %t_phy.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %t_phy.i.i.3, align 4
  tail call void @dma_free_attrs(ptr noundef %124, i32 noundef 176, ptr noundef nonnull %122, i32 noundef %126, i32 noundef 0) #7
  br label %cleanup

if.end43:                                         ; preds = %for.inc.i143
  %call44 = tail call fastcc i32 @sun8i_ce_pm_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.error_pm_crit_edge

if.end43.error_pm_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_pm

if.end47:                                         ; preds = %if.end43
  %call.i146 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @ce_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool50.not = icmp eq i32 %call.i146, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.50, i32 noundef %call.i146) #10
  br label %error_irq

if.end56:                                         ; preds = %if.end47
  %call57 = tail call fastcc i32 @sun8i_ce_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.error_alg_crit_edge

if.end56.error_alg_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alg

if.end60:                                         ; preds = %if.end56
  %129 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev2, align 4
  %call62 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end60.error_alg_crit_edge, label %if.end65

if.end60.error_alg_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alg

if.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = tail call i32 @sun8i_ce_hwrng_register(ptr noundef nonnull %call.i) #7
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %132, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %134 = lshr i32 %133, 8
  %and = and i32 %134, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %and) #10
  %135 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev2, align 4
  %call.i147 = tail call i32 @__pm_runtime_idle(ptr noundef %136, i32 noundef 4) #7
  %call76 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.41, ptr noundef null) #7
  %dbgfs_dir = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 9
  %137 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call76, ptr %dbgfs_dir, align 4
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 292, ptr noundef %call76, ptr noundef nonnull %call.i, ptr noundef nonnull @sun8i_ce_debugfs_fops) #7
  %dbgfs_stats = getelementptr inbounds %struct.sun8i_ce_dev, ptr %call.i, i32 0, i32 10
  %138 = ptrtoint ptr %dbgfs_stats to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call78, ptr %dbgfs_stats, align 4
  br label %cleanup

error_alg:                                        ; preds = %if.end60.error_alg_crit_edge, %if.end56.error_alg_crit_edge
  %err.0 = phi i32 [ %call57, %if.end56.error_alg_crit_edge ], [ %call62, %if.end60.error_alg_crit_edge ]
  tail call fastcc void @sun8i_ce_unregister_algs(ptr noundef nonnull %call.i)
  br label %error_irq

error_irq:                                        ; preds = %error_alg, %do.end54
  %err.1 = phi i32 [ %call.i146, %do.end54 ], [ %err.0, %error_alg ]
  %139 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %140, i1 noundef zeroext true) #7
  br label %error_pm

error_pm:                                         ; preds = %error_irq, %if.end43.error_pm_crit_edge
  %err.2 = phi i32 [ %call44, %if.end43.error_pm_crit_edge ], [ %err.1, %error_irq ]
  tail call fastcc void @sun8i_ce_free_chanlist(ptr noundef nonnull %call.i, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end65, %if.then.i.i.3, %while.body.i.i.3.cleanup_crit_edge, %if.end.i.i.2.cleanup_crit_edge, %if.end.i.i.1.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %error_engine.i.cleanup_crit_edge, %do.body34.cleanup_crit_edge, %if.then28, %if.end20.cleanup_crit_edge, %sun8i_ce_get_clks.exit, %if.end18.i.cleanup_crit_edge, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %call32, %if.then28 ], [ %err.2, %error_pm ], [ 0, %if.end65 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %42, %sun8i_ce_get_clks.exit ], [ %call21, %if.end20.cleanup_crit_edge ], [ %err.0.i, %error_engine.i.cleanup_crit_edge ], [ -12, %do.body34.cleanup_crit_edge ], [ %err.0.i, %while.body.i.i.3.cleanup_crit_edge ], [ %err.0.i, %if.then.i.i.3 ], [ %err.0.i, %if.end.i.i.2.cleanup_crit_edge ], [ %err.0.i, %if.end.i.i.1.cleanup_crit_edge ], [ %err.0.i, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sun8i_ce_hwrng_unregister(ptr noundef %1) #7
  tail call fastcc void @sun8i_ce_unregister_algs(ptr noundef %1)
  %dbgfs_dir = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %chanlist.i = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr %struct.sun8i_ce_flow, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @crypto_engine_exit(ptr noundef %7) #7
  %8 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist.i, align 4
  %tl.i = getelementptr %struct.sun8i_ce_flow, ptr %9, i32 3, i32 5
  %10 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tl.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %t_phy.i = getelementptr %struct.sun8i_ce_flow, ptr %9, i32 3, i32 3
  %14 = ptrtoint ptr %t_phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_phy.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 176, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %16 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.1, align 4
  %call.i.1 = tail call i32 @crypto_engine_exit(ptr noundef %19) #7
  %20 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chanlist.i, align 4
  %tl.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %21, i32 2, i32 5
  %22 = ptrtoint ptr %tl.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tl.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %23, null
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %t_phy.i.1 = getelementptr %struct.sun8i_ce_flow, ptr %21, i32 2, i32 3
  %26 = ptrtoint ptr %t_phy.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_phy.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef 176, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %28 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.2, align 4
  %call.i.2 = tail call i32 @crypto_engine_exit(ptr noundef %31) #7
  %32 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chanlist.i, align 4
  %tl.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %33, i32 1, i32 5
  %34 = ptrtoint ptr %tl.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tl.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %35, null
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %t_phy.i.2 = getelementptr %struct.sun8i_ce_flow, ptr %33, i32 1, i32 3
  %38 = ptrtoint ptr %t_phy.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %t_phy.i.2, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef 176, ptr noundef nonnull %35, i32 noundef %39, i32 noundef 0) #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %40 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.i.3 = tail call i32 @crypto_engine_exit(ptr noundef %43) #7
  %44 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chanlist.i, align 4
  %tl.i.3 = getelementptr %struct.sun8i_ce_flow, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %tl.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tl.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %47, null
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %t_phy.i.3 = getelementptr %struct.sun8i_ce_flow, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %t_phy.i.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %t_phy.i.3, align 4
  tail call void @dma_free_attrs(ptr noundef %49, i32 noundef 176, ptr noundef nonnull %47, i32 noundef %51, i32 noundef 0) #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %53, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ce_pm_init(ptr nocapture noundef readonly %ce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %1, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @pm_runtime_enable(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %data, i32 0, i32 6
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %do.body

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !239
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %status = getelementptr %struct.sun8i_ce_flow, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %status, align 4
  %9 = load ptr, ptr %chanlist, align 4
  %complete = getelementptr %struct.sun8i_ce_flow, ptr %9, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #7
  br label %for.inc

for.inc:                                          ; preds = %do.body, %entry.for.inc_crit_edge
  %and.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %do.body.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

do.body.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr4.1 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1, i32 33554432) #7, !srcloc !239
  %12 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist, align 4
  %status.1 = getelementptr %struct.sun8i_ce_flow, ptr %13, i32 1, i32 2
  %14 = ptrtoint ptr %status.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %status.1, align 4
  %15 = load ptr, ptr %chanlist, align 4
  %complete.1 = getelementptr %struct.sun8i_ce_flow, ptr %15, i32 1, i32 1
  tail call void @complete(ptr noundef %complete.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.body.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

do.body.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr4.2 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.2, i32 67108864) #7, !srcloc !239
  %18 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chanlist, align 4
  %status.2 = getelementptr %struct.sun8i_ce_flow, ptr %19, i32 2, i32 2
  %20 = ptrtoint ptr %status.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %status.2, align 4
  %21 = load ptr, ptr %chanlist, align 4
  %complete.2 = getelementptr %struct.sun8i_ce_flow, ptr %21, i32 2, i32 1
  tail call void @complete(ptr noundef %complete.2) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.body.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.body.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

do.body.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr4.3 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.3, i32 134217728) #7, !srcloc !239
  %24 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chanlist, align 4
  %status.3 = getelementptr %struct.sun8i_ce_flow, ptr %25, i32 3, i32 2
  %26 = ptrtoint ptr %status.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %status.3, align 4
  %27 = load ptr, ptr %chanlist, align 4
  %complete.3 = getelementptr %struct.sun8i_ce_flow, ptr %27, i32 3, i32 1
  tail call void @complete(ptr noundef %complete.3) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.body.3, %for.inc.2.for.inc.3_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ce_register_algs(ptr noundef %ce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %variant121 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 8
  %dev141 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0229 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229
  %ce1 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 3
  %0 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ce, ptr %ce1, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 128
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %2, label %sw.default [
    i32 5, label %sw.bb
    i32 15, label %sw.bb71
    i32 12, label %sw.bb120
  ]

sw.bb:                                            ; preds = %for.body
  %ce_algo_id = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 1
  %4 = ptrtoint ptr %ce_algo_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ce_algo_id, align 4
  %6 = ptrtoint ptr %variant121 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant121, align 4
  %arrayidx4 = getelementptr [3 x i8], ptr %7, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp5 = icmp eq i8 %9, -1
  br i1 %cmp5, label %do.body, label %if.end13

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_register_algs.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_register_algs, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !247

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev141, align 4
  %cra_name = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5, i32 0, i32 11, i32 2, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_register_algs.__UNIQUE_ID_ddebug235, ptr noundef %11, ptr noundef nonnull @.str.79, ptr noundef %cra_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %12 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ce1, align 4
  br label %for.inc

if.end13:                                         ; preds = %sw.bb
  %ce_blockmode = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 2
  %13 = ptrtoint ptr %ce_blockmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ce_blockmode, align 8
  %arrayidx16 = getelementptr %struct.ce_variant, ptr %7, i32 0, i32 2, i32 %14
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp17 = icmp eq i32 %16, 255
  br i1 %cmp17, label %do.body20, label %do.end47

do.body20:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_register_algs.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_register_algs, %if.then32)) #7
          to label %do.end41 [label %if.then32], !srcloc !247

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev141, align 4
  %cra_name37 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5, i32 0, i32 11, i32 2, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_register_algs.__UNIQUE_ID_ddebug236, ptr noundef %18, ptr noundef nonnull @.str.80, ptr noundef %cra_name37) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then32, %do.body20
  %19 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ce1, align 4
  br label %for.inc

do.end47:                                         ; preds = %if.end13
  %20 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev141, align 4
  %alg50 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5
  %cra_name52 = getelementptr inbounds %struct.skcipher_alg, ptr %alg50, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.81, ptr noundef %cra_name52) #10
  %call56 = tail call i32 @crypto_register_skcipher(ptr noundef %alg50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.end47.for.inc_crit_edge, label %do.end47.cleanup.sink.split_crit_edge

do.end47.cleanup.sink.split_crit_edge:            ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end47.for.inc_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb71:                                          ; preds = %for.body
  %ce_algo_id73 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 1
  %22 = ptrtoint ptr %ce_algo_id73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ce_algo_id73, align 4
  %24 = ptrtoint ptr %variant121 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant121, align 4
  %arrayidx75 = getelementptr %struct.ce_variant, ptr %25, i32 0, i32 1, i32 %23
  %26 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp77 = icmp eq i8 %27, -1
  %28 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev141, align 4
  br i1 %cmp77, label %do.end82, label %do.end94

do.end82:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  %cra_name87 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.79, ptr noundef %cra_name87) #10
  %30 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ce1, align 4
  br label %for.inc

do.end94:                                         ; preds = %sw.bb71
  %alg97 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5
  %cra_name100 = getelementptr inbounds %struct.ahash_alg, ptr %alg97, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.81, ptr noundef %cra_name100) #10
  %call104 = tail call i32 @crypto_register_ahash(ptr noundef %alg97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end94.for.inc_crit_edge, label %do.end94.cleanup.sink.split_crit_edge

do.end94.cleanup.sink.split_crit_edge:            ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end94.for.inc_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb120:                                         ; preds = %for.body
  %31 = ptrtoint ptr %variant121 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %variant121, align 4
  %prng = getelementptr inbounds %struct.ce_variant, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %prng to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %prng, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp123 = icmp eq i8 %34, -1
  %35 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev141, align 4
  br i1 %cmp123, label %do.end128, label %do.end140

do.end128:                                        ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #9
  %cra_name133 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5, i32 0, i32 11, i32 2, i32 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.79, ptr noundef %cra_name133) #10
  %37 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ce1, align 4
  br label %for.inc

do.end140:                                        ; preds = %sw.bb120
  %alg143 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.0229, i32 5
  %cra_name145 = getelementptr inbounds %struct.rng_alg, ptr %alg143, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.81, ptr noundef %cra_name145) #10
  %call149 = tail call i32 @crypto_register_rng(ptr noundef %alg143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %do.end140.for.inc_crit_edge, label %do.end154

do.end140.for.inc_crit_edge:                      ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end154:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.96, ptr noundef %cra_name145) #10
  %40 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %ce1, align 4
  br label %for.inc

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %ce1, align 4
  %42 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.99) #10
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %do.end154, %do.end140.for.inc_crit_edge, %do.end128, %do.end94.for.inc_crit_edge, %do.end82, %do.end47.for.inc_crit_edge, %do.end41, %do.end
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end94.cleanup.sink.split_crit_edge, %do.end47.cleanup.sink.split_crit_edge
  %cra_name100.lcssa.sink = phi ptr [ %cra_name52, %do.end47.cleanup.sink.split_crit_edge ], [ %cra_name100, %do.end94.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call56, %do.end47.cleanup.sink.split_crit_edge ], [ %call104, %do.end94.cleanup.sink.split_crit_edge ]
  %44 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.83, ptr noundef %cra_name100.lcssa.sink) #10
  %46 = ptrtoint ptr %ce1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ce1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !249
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hwrng_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun8i_ce_unregister_algs(ptr nocapture noundef readonly %ce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev22 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ce1 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.044, i32 3
  %0 = ptrtoint ptr %ce1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %3, label %if.end.for.inc_crit_edge [
    i32 5, label %do.end
    i32 15, label %do.end9
    i32 12, label %do.end21
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev22, align 4
  %alg = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.044, i32 5
  %cra_name = getelementptr inbounds %struct.skcipher_alg, ptr %alg, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.105, i32 noundef %i.044, ptr noundef %cra_name) #10
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #7
  br label %for.inc

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 4
  %alg12 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.044, i32 5
  %cra_name14 = getelementptr inbounds %struct.ahash_alg, ptr %alg12, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.105, i32 noundef %i.044, ptr noundef %cra_name14) #10
  tail call void @crypto_unregister_ahash(ptr noundef %alg12) #7
  br label %for.inc

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev22, align 4
  %alg24 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.044, i32 5
  %cra_name26 = getelementptr inbounds %struct.rng_alg, ptr %alg24, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.105, i32 noundef %i.044, ptr noundef %cra_name26) #10
  tail call void @crypto_unregister_rng(ptr noundef %alg24) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %do.end9, %do.end, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun8i_ce_free_chanlist(ptr nocapture noundef readonly %ce, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i)
  %cmp17 = icmp sgt i32 %i, -1
  br i1 %cmp17, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 6
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %i.addr.018 = phi i32 [ %i, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.sun8i_ce_flow, ptr %1, i32 %i.addr.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @crypto_engine_exit(ptr noundef %3) #7
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %5, i32 %i.addr.018, i32 5
  %6 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %t_phy = getelementptr %struct.sun8i_ce_flow, ptr %5, i32 %i.addr.018, i32 3
  %10 = ptrtoint ptr %t_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 176, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %dec = add nsw i32 %i.addr.018, -1
  %cmp = icmp sgt i32 %i.addr.018, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_skencrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_skdecrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ce_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_des3_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_final(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_finup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_digest(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_export(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_import(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_hash_crainit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ce_hash_craexit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_prng_generate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_prng_seed(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_prng_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ce_prng_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sun8i_ce_debugfs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_debugfs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %stat_req = getelementptr %struct.sun8i_ce_flow, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102, i32 noundef 0, i32 noundef %5) #7
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %stat_req.1 = getelementptr %struct.sun8i_ce_flow, ptr %7, i32 1, i32 6
  %8 = ptrtoint ptr %stat_req.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_req.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102, i32 noundef 1, i32 noundef %9) #7
  %10 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chanlist, align 4
  %stat_req.2 = getelementptr %struct.sun8i_ce_flow, ptr %11, i32 2, i32 6
  %12 = ptrtoint ptr %stat_req.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat_req.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102, i32 noundef 2, i32 noundef %13) #7
  %14 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chanlist, align 4
  %stat_req.3 = getelementptr %struct.sun8i_ce_flow, ptr %15, i32 3, i32 6
  %16 = ptrtoint ptr %stat_req.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_req.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102, i32 noundef 3, i32 noundef %17) #7
  br label %for.body3

for.body3:                                        ; preds = %for.inc45.for.body3_crit_edge, %entry
  %i.175 = phi i32 [ %inc46, %for.inc45.for.body3_crit_edge ], [ 0, %entry ]
  %ce5 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 3
  %18 = ptrtoint ptr %ce5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ce5, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body3.for.inc45_crit_edge, label %if.end

for.body3.for.inc45_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

if.end:                                           ; preds = %for.body3
  %arrayidx4 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4, align 128
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %21, label %if.end.for.inc45_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb15
    i32 12, label %sw.bb31
  ]

if.end.for.inc45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 5, i32 0, i32 11
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 9
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 8
  %stat_req13 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 6
  %23 = ptrtoint ptr %stat_req13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat_req13, align 128
  %stat_fb = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 7
  %25 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat_fb, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, ptr noundef %cra_driver_name, ptr noundef %cra_name, i32 noundef %24, i32 noundef %26) #7
  br label %for.inc45

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cra_driver_name19 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 5, i32 0, i32 11, i32 3, i32 9
  %cra_name25 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 5, i32 0, i32 11, i32 3, i32 8
  %stat_req28 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 6
  %27 = ptrtoint ptr %stat_req28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stat_req28, align 128
  %stat_fb30 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 7
  %29 = ptrtoint ptr %stat_fb30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat_fb30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, ptr noundef %cra_driver_name19, ptr noundef %cra_name25, i32 noundef %28, i32 noundef %30) #7
  br label %for.inc45

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base34 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 5, i32 0, i32 11
  %cra_driver_name35 = getelementptr inbounds %struct.crypto_alg, ptr %base34, i32 0, i32 9
  %cra_name40 = getelementptr inbounds %struct.crypto_alg, ptr %base34, i32 0, i32 8
  %stat_req43 = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 6
  %31 = ptrtoint ptr %stat_req43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stat_req43, align 128
  %stat_bytes = getelementptr [11 x %struct.sun8i_ce_alg_template], ptr @ce_algs, i32 0, i32 %i.175, i32 8
  %33 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat_bytes, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, ptr noundef %cra_driver_name35, ptr noundef %cra_name40, i32 noundef %32, i32 noundef %34) #7
  br label %for.inc45

for.inc45:                                        ; preds = %sw.bb31, %sw.bb15, %sw.bb, %if.end.for.inc45_crit_edge, %for.body3.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.175, 1
  %exitcond.not = icmp eq i32 %inc46, 11
  br i1 %exitcond.not, label %for.end47, label %for.inc45.for.body3_crit_edge

for.inc45.for.body3_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  %hwrng_stat_req = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %hwrng_stat_req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwrng_stat_req, align 4
  %hwrng_stat_bytes = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %hwrng_stat_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hwrng_stat_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.104, i32 noundef %36, i32 noundef %38) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ce_hwrng_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %arrayidx = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %arrayidx.1 = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %arrayidx.2 = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ce_variant, ptr %3, i32 0, i32 7, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i.2.if.then3.i_crit_edge, %if.end.i.1.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %i.046.lcssa50 = phi i32 [ 0, %if.end.i.if.then3.i_crit_edge ], [ 1, %if.end.i.1.if.then3.i_crit_edge ], [ 2, %if.end.i.2.if.then3.i_crit_edge ]
  %call1.i.lcssa = phi i32 [ %call1.i, %if.end.i.if.then3.i_crit_edge ], [ %call1.i.1, %if.end.i.1.if.then3.i_crit_edge ], [ %call1.i.2, %if.end.i.2.if.then3.i_crit_edge ]
  %.lcssa49 = phi ptr [ %7, %if.end.i.if.then3.i_crit_edge ], [ %19, %if.end.i.1.if.then3.i_crit_edge ], [ %25, %if.end.i.2.if.then3.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.lcssa49) #7
  br label %do.end

do.end:                                           ; preds = %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.then3.i, %if.end.do.end_crit_edge
  %i.04652 = phi i32 [ %i.046.lcssa50, %if.then3.i ], [ 0, %if.end.do.end_crit_edge ], [ 1, %if.end.1.do.end_crit_edge ], [ 2, %if.end.2.do.end_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call1.i.lcssa, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ], [ %call.i.1, %if.end.1.do.end_crit_edge ], [ %call.i.2, %if.end.2.do.end_crit_edge ]
  %dev5 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %arrayidx8 = getelementptr %struct.ce_variant, ptr %11, i32 0, i32 7, i32 %i.04652
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.114, ptr noundef %13) #10
  br label %error

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %arrayidx.1 = getelementptr %struct.ce_variant, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx1.1 = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.1, align 4
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.1:                                       ; preds = %if.end.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.for.inc.1_crit_edge, label %if.end.i.1.if.then3.i_crit_edge

if.end.i.1.if.then3.i_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 4
  %arrayidx.2 = getelementptr %struct.ce_variant, ptr %21, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %23, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx1.2 = getelementptr %struct.sun8i_ce_dev, ptr %1, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.2, align 4
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.end.2.do.end_crit_edge

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.2:                                       ; preds = %if.end.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.for.inc.2_crit_edge, label %if.end.i.2.if.then3.i_crit_edge

if.end.i.2.if.then3.i_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %reset = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc.2.cleanup_crit_edge, label %do.end16

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.117) #10
  br label %error

error:                                            ; preds = %do.end16, %do.end
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call11, %do.end16 ]
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr inbounds %struct.sun8i_ce_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset.i, align 4
  %call1.i34 = tail call i32 @reset_control_assert(ptr noundef %33) #7
  %arrayidx.i = getelementptr %struct.sun8i_ce_dev, ptr %31, i32 0, i32 1, i32 0
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  %arrayidx.1.i = getelementptr %struct.sun8i_ce_dev, ptr %31, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  %arrayidx.2.i = getelementptr %struct.sun8i_ce_dev, ptr %31, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @clk_disable(ptr noundef %39) #7
  tail call void @clk_unprepare(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %for.inc.2.cleanup_crit_edge ]
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
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !84, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !220, !222, !223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 188, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ce_run_task._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ce_run_task._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 200, i32 4}
!10 = !{ptr @sun8i_ce_run_task._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_ce_run_task._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 202, i32 19}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 202, i32 30}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 206, i32 4}
!18 = !{ptr @sun8i_ce_run_task._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_ce_run_task._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 208, i32 4}
!22 = !{ptr @sun8i_ce_run_task._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun8i_ce_run_task._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 210, i32 4}
!26 = !{ptr @sun8i_ce_run_task._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun8i_ce_run_task._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sun8i_ce_run_task._entry.19, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 219, i32 4}
!30 = !{ptr @sun8i_ce_run_task._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sun8i_ce_run_task._entry.21, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 225, i32 4}
!33 = !{ptr @sun8i_ce_run_task._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sun8i_ce_run_task._entry.23, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 227, i32 4}
!36 = !{ptr @sun8i_ce_run_task._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @sun8i_ce_run_task._entry.25, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 229, i32 4}
!39 = !{ptr @sun8i_ce_run_task._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @sun8i_ce_run_task._entry.27, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 235, i32 4}
!42 = !{ptr @sun8i_ce_run_task._entry_ptr.28, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sun8i_ce_run_task._entry.29, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 241, i32 4}
!45 = !{ptr @sun8i_ce_run_task._entry_ptr.30, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @sun8i_ce_run_task._entry.31, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 243, i32 4}
!48 = !{ptr @sun8i_ce_run_task._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @sun8i_ce_run_task._entry.33, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 245, i32 4}
!51 = !{ptr @sun8i_ce_run_task._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 247, i32 4}
!54 = !{ptr @sun8i_ce_run_task._entry.35, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun8i_ce_run_task._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 249, i32 4}
!58 = !{ptr @sun8i_ce_run_task._entry.38, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sun8i_ce_run_task._entry_ptr.40, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_sun8i_ce__237_1034_sun8i_ce_driver_init6, !61, !"__initcall__kmod_sun8i_ce__237_1034_sun8i_ce_driver_init6", i1 false, i1 false}
!61 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1034, i32 1}
!62 = !{ptr @__exitcall_sun8i_ce_driver_exit, !61, !"__exitcall_sun8i_ce_driver_exit", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_description238, !64, !"__UNIQUE_ID_description238", i1 false, i1 false}
!64 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1036, i32 1}
!65 = !{ptr @__UNIQUE_ID_file239, !66, !"__UNIQUE_ID_file239", i1 false, i1 false}
!66 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1037, i32 1}
!67 = !{ptr @__UNIQUE_ID_license240, !66, !"__UNIQUE_ID_license240", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_author241, !69, !"__UNIQUE_ID_author241", i1 false, i1 false}
!69 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1038, i32 1}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1028, i32 12}
!72 = !{ptr @sun8i_ce_driver, !73, !"sun8i_ce_driver", i1 false, i1 false}
!73 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1024, i32 31}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 910, i32 3}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sun8i_ce_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sun8i_ce_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 930, i32 10}
!81 = !{ptr @sun8i_ce_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 932, i32 2}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sun8i_ce_probe.__key.46, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 933, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 944, i32 11}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 946, i32 3}
!91 = !{ptr @sun8i_ce_probe._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sun8i_ce_probe._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 965, i32 2}
!95 = !{ptr @sun8i_ce_probe._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sun8i_ce_probe._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 972, i32 40}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 758, i32 4}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sun8i_ce_get_clks._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @sun8i_ce_get_clks._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 767, i32 4}
!106 = !{ptr @sun8i_ce_get_clks._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sun8i_ce_get_clks._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 774, i32 5}
!110 = !{ptr @sun8i_ce_get_clks._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sun8i_ce_get_clks._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 780, i32 4}
!114 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @sun8i_ce_get_clks._entry.64, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @sun8i_ce_get_clks._entry_ptr.67, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 656, i32 4}
!119 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @sun8i_ce_allocate_chanlist._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @sun8i_ce_allocate_chanlist._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 663, i32 4}
!124 = !{ptr @sun8i_ce_allocate_chanlist._entry.70, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @sun8i_ce_allocate_chanlist._entry_ptr.72, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 671, i32 4}
!128 = !{ptr @sun8i_ce_allocate_chanlist._entry.73, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @sun8i_ce_allocate_chanlist._entry_ptr.75, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @init_completion.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../include/linux/completion.h", i32 87, i32 2}
!132 = !{ptr @.str.76, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 799, i32 5}
!135 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.79, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @sun8i_ce_register_algs.__UNIQUE_ID_ddebug235, !134, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 808, i32 5}
!140 = !{ptr @sun8i_ce_register_algs.__UNIQUE_ID_ddebug236, !139, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 813, i32 4}
!143 = !{ptr @sun8i_ce_register_algs._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @sun8i_ce_register_algs._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 817, i32 5}
!147 = !{ptr @sun8i_ce_register_algs._entry.82, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sun8i_ce_register_algs._entry_ptr.84, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @sun8i_ce_register_algs._entry.85, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 827, i32 5}
!151 = !{ptr @sun8i_ce_register_algs._entry_ptr.86, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @sun8i_ce_register_algs._entry.87, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 833, i32 4}
!154 = !{ptr @sun8i_ce_register_algs._entry_ptr.88, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @sun8i_ce_register_algs._entry.89, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 837, i32 5}
!157 = !{ptr @sun8i_ce_register_algs._entry_ptr.90, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @sun8i_ce_register_algs._entry.91, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 845, i32 5}
!160 = !{ptr @sun8i_ce_register_algs._entry_ptr.92, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @sun8i_ce_register_algs._entry.93, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 851, i32 4}
!163 = !{ptr @sun8i_ce_register_algs._entry_ptr.94, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.96, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 855, i32 5}
!166 = !{ptr @sun8i_ce_register_algs._entry.95, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @sun8i_ce_register_algs._entry_ptr.97, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 862, i32 4}
!170 = !{ptr @sun8i_ce_register_algs._entry.98, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @sun8i_ce_register_algs._entry_ptr.100, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @ce_algs, !173, !"ce_algs", i1 false, i1 false}
!173 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 274, i32 37}
!174 = !{ptr @sun8i_ce_debugfs_fops, !175, !"sun8i_ce_debugfs_fops", i1 false, i1 false}
!175 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 624, i32 1}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 591, i32 19}
!178 = !{ptr @.str.103, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 598, i32 20}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 618, i32 18}
!182 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 877, i32 4}
!184 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @sun8i_ce_unregister_algs._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @sun8i_ce_unregister_algs._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @sun8i_ce_unregister_algs._entry.107, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 882, i32 4}
!189 = !{ptr @sun8i_ce_unregister_algs._entry_ptr.108, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @sun8i_ce_unregister_algs._entry.109, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 887, i32 4}
!192 = !{ptr @sun8i_ce_unregister_algs._entry_ptr.110, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @sun8i_ce_crypto_of_match_table, !194, !"sun8i_ce_crypto_of_match_table", i1 false, i1 false}
!194 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 1007, i32 34}
!195 = !{ptr @.str.111, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 45, i32 5}
!197 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 46, i32 5}
!199 = !{ptr @ce_h3_variant, !200, !"ce_h3_variant", i1 false, i1 false}
!200 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 36, i32 32}
!201 = !{ptr @ce_r40_variant, !202, !"ce_r40_variant", i1 false, i1 false}
!202 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 127, i32 32}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 120, i32 5}
!205 = !{ptr @ce_d1_variant, !206, !"ce_d1_variant", i1 false, i1 false}
!206 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 109, i32 32}
!207 = !{ptr @ce_a64_variant, !208, !"ce_a64_variant", i1 false, i1 false}
!208 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 92, i32 32}
!209 = !{ptr @ce_h5_variant, !210, !"ce_h5_variant", i1 false, i1 false}
!210 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 53, i32 32}
!211 = !{ptr @ce_h6_variant, !212, !"ce_h6_variant", i1 false, i1 false}
!212 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 70, i32 32}
!213 = !{ptr @sun8i_ce_pm_ops, !214, !"sun8i_ce_pm_ops", i1 false, i1 false}
!214 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 724, i32 32}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 708, i32 4}
!217 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @sun8i_ce_pm_resume._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @sun8i_ce_pm_resume._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.117, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c", i32 715, i32 3}
!222 = !{ptr @sun8i_ce_pm_resume._entry.116, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @sun8i_ce_pm_resume._entry_ptr.118, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{i64 2148351407}
!234 = !{i64 2148266716, i64 2148266748, i64 2148266777, i64 2148266811, i64 2148266842, i64 2148266865}
!235 = !{i64 2148351636}
!236 = !{i64 6355322}
!237 = !{i64 2154678288}
!238 = !{i64 2154678503}
!239 = !{i64 6354904}
!240 = !{i64 2154678908}
!241 = !{i64 2154679292}
!242 = !{i64 2154679694}
!243 = !{i64 2154682177}
!244 = !{i64 2154761442}
!245 = !{i64 2154711413}
!246 = !{i64 2154711815}
!247 = !{i64 2148747811, i64 2148747816, i64 2148747829, i64 2148747873, i64 2148747907, i64 2148747928}
!248 = !{i64 2148265415}
!249 = !{i64 750238, i64 750263, i64 750285, i64 750301, i64 750313, i64 750333, i64 750357, i64 750373, i64 750385}
!250 = !{i64 2148265603}
