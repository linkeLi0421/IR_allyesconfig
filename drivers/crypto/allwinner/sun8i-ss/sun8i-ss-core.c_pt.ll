; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.sun8i_ss_alg_template = type { i32, i32, i32, ptr, [112 x i8], %union.anon.76, i32, i32, i32, [116 x i8] }
%union.anon.76 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.ss_variant = type { [3 x i8], [4 x i8], [2 x i32], [2 x %struct.ss_clock] }
%struct.ss_clock = type { ptr, i32, i32 }
%struct.sun8i_ss_dev = type { ptr, [2 x ptr], ptr, ptr, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sun8i_cipher_req_ctx = type { [8 x %struct.sginfo], [8 x %struct.sginfo], i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.skcipher_request }
%struct.sginfo = type { i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.sun8i_ss_flow = type { ptr, %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@sun8i_ss_run_task.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ss_run_task\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Processing SG %d on flow %d %s ctl=%x %d to %d method=%x opmode=%x opdir=%x srclen=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@sun8i_ss_run_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA timeout for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ss_run_task._entry_ptr = internal global ptr @sun8i_ss_run_task._entry, section ".printk_index", align 4
@__initcall__kmod_sun8i_ss__236_821_sun8i_ss_driver_init6 = internal global ptr @sun8i_ss_driver_init, section ".initcall6.init", align 4
@sun8i_ss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_ss_probe, ptr @sun8i_ss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_ss_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_ss_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_ss_driver_exit = internal global ptr @sun8i_ss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [70 x i8] c"sun8i_ss.description=Allwinner SecuritySystem cryptographic offloader\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"sun8i_ss.file=drivers/crypto/allwinner/sun8i-ss/sun8i-ss\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"sun8i_ss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [59 x i8] c"sun8i_ss.author=Corentin Labbe <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i-ss\00", [23 x i8] zeroinitializer }, align 32
@sun8i_ss_crypto_of_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a83t_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a80_variant }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun8i_ss_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_ss_pm_suspend, ptr @sun8i_ss_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun8i_ss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 715, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing Crypto Engine variant\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun8i_ss_probe\00", [17 x i8] zeroinitializer }, align 32
@sun8i_ss_probe._entry_ptr = internal global ptr @sun8i_ss_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No reset control found\0A\00", [40 x i8] zeroinitializer }, align 32
@sun8i_ss_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ss->mlock\00", [21 x i8] zeroinitializer }, align 32
@sun8i_ss_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot request SecuritySystem IRQ (err=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@sun8i_ss_probe._entry_ptr.14 = internal global ptr @sun8i_ss_probe._entry.12, section ".printk_index", align 4
@sun8i_ss_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 763, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Security System Die ID %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ss_probe._entry_ptr.18 = internal global ptr @sun8i_ss_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@sun8i_ss_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sun8i_ss_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sun8i_ss_get_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 672, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get %s SS clock err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ss_get_clks\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ss_get_clks._entry_ptr = internal global ptr @sun8i_ss_get_clks._entry, section ".printk_index", align 4
@sun8i_ss_get_clks._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 684, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ss_get_clks._entry_ptr.24 = internal global ptr @sun8i_ss_get_clks._entry.22, section ".printk_index", align 4
@sun8i_ss_get_clks._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail to set %s clk speed to %lu hz\0A\00", [60 x i8] zeroinitializer }, align 32
@sun8i_ss_get_clks._entry_ptr.27 = internal global ptr @sun8i_ss_get_clks._entry.25, section ".printk_index", align 4
@sun8i_ss_get_clks._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 695, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ss_get_clks._entry_ptr.31 = internal global ptr @sun8i_ss_get_clks._entry.28, section ".printk_index", align 4
@allocate_flows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate engine\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allocate_flows\00", [17 x i8] zeroinitializer }, align 32
@allocate_flows._entry_ptr = internal global ptr @allocate_flows._entry, section ".printk_index", align 4
@allocate_flows._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot start engine\0A\00", [43 x i8] zeroinitializer }, align 32
@allocate_flows._entry_ptr.36 = internal global ptr @allocate_flows._entry.34, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 575, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DEBUG: Algo of %s not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_ss_register_algs\00", [41 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr = internal global ptr @sun8i_ss_register_algs._entry, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 583, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DEBUG: Blockmode of %s not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.42 = internal global ptr @sun8i_ss_register_algs._entry.40, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 588, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DEBUG: Register %s\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.45 = internal global ptr @sun8i_ss_register_algs._entry.43, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to register %s\0A\00", [43 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.48 = internal global ptr @sun8i_ss_register_algs._entry.46, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.50 = internal global ptr @sun8i_ss_register_algs._entry.49, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 611, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.52 = internal global ptr @sun8i_ss_register_algs._entry.51, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.39, ptr @.str.2, i32 616, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Register %s\0A\00", [19 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.55 = internal global ptr @sun8i_ss_register_algs._entry.53, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.39, ptr @.str.2, i32 620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR: Fail to register %s\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.58 = internal global ptr @sun8i_ss_register_algs._entry.56, section ".printk_index", align 4
@sun8i_ss_register_algs._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.39, ptr @.str.2, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR: tried to register an unknown algo\0A\00", [54 x i8] zeroinitializer }, align 32
@sun8i_ss_register_algs._entry_ptr.61 = internal global ptr @sun8i_ss_register_algs._entry.59, section ".printk_index", align 4
@ss_algs = internal global <{ { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, { i32, i32, i32, ptr, [112 x i8], { %struct.rng_alg, [128 x i8] }, i32, i32, i32, [116 x i8] }, %struct.sun8i_ss_alg_template, %struct.sun8i_ss_alg_template, %struct.sun8i_ss_alg_template, %struct.sun8i_ss_alg_template }> <{ { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 0, i32 1, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ss_aes_setkey, ptr @sun8i_ss_skencrypt, ptr @sun8i_ss_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_cipher_init, ptr @sun8i_ss_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 0, i32 0, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ss_aes_setkey, ptr @sun8i_ss_skencrypt, ptr @sun8i_ss_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_cipher_init, ptr @sun8i_ss_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 2, i32 1, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ss_des3_setkey, ptr @sun8i_ss_skencrypt, ptr @sun8i_ss_skdecrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 8, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_cipher_init, ptr @sun8i_ss_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.skcipher_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 5, i32 2, i32 0, ptr null, [112 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sun8i_ss_des3_setkey, ptr @sun8i_ss_skencrypt, ptr @sun8i_ss_skdecrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 8, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_cipher_init, ptr @sun8i_ss_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, { i32, i32, i32, ptr, [112 x i8], { %struct.rng_alg, [128 x i8] }, i32, i32, i32, [116 x i8] } { i32 12, i32 0, i32 0, ptr null, [112 x i8] undef, { %struct.rng_alg, [128 x i8] } { %struct.rng_alg { ptr @sun8i_ss_prng_generate, ptr @sun8i_ss_prng_seed, ptr null, i32 22, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 8, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sun8i-ss-prng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_prng_init, ptr @sun8i_ss_prng_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ss_alg_template { i32 15, i32 0, i32 0, ptr null, [112 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @sun8i_ss_hash_init, ptr @sun8i_ss_hash_update, ptr @sun8i_ss_hash_final, ptr @sun8i_ss_hash_finup, ptr @sun8i_ss_hash_digest, ptr @sun8i_ss_hash_export, ptr @sun8i_ss_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_hash_crainit, ptr @sun8i_ss_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ss_alg_template { i32 15, i32 1, i32 0, ptr null, [112 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @sun8i_ss_hash_init, ptr @sun8i_ss_hash_update, ptr @sun8i_ss_hash_final, ptr @sun8i_ss_hash_finup, ptr @sun8i_ss_hash_digest, ptr @sun8i_ss_hash_export, ptr @sun8i_ss_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_hash_crainit, ptr @sun8i_ss_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ss_alg_template { i32 15, i32 2, i32 0, ptr null, [112 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @sun8i_ss_hash_init, ptr @sun8i_ss_hash_update, ptr @sun8i_ss_hash_final, ptr @sun8i_ss_hash_finup, ptr @sun8i_ss_hash_digest, ptr @sun8i_ss_hash_export, ptr @sun8i_ss_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_hash_crainit, ptr @sun8i_ss_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef }, %struct.sun8i_ss_alg_template { i32 15, i32 3, i32 0, ptr null, [112 x i8] undef, %union.anon.76 { %struct.ahash_alg { ptr @sun8i_ss_hash_init, ptr @sun8i_ss_hash_update, ptr @sun8i_ss_hash_final, ptr @sun8i_ss_hash_finup, ptr @sun8i_ss_hash_digest, ptr @sun8i_ss_hash_export, ptr @sun8i_ss_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 399, i32 64, i32 20, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-sun8i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sun8i_ss_hash_crainit, ptr @sun8i_ss_hash_craexit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } } }, i32 0, i32 0, i32 0, [116 x i8] undef } }>, align 128
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel %d: nreq %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s reqs=%lu fallback=%lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %s reqs=%lu tsize=%lu\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_ss_unregister_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 643, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unregister %d %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun8i_ss_unregister_algs\00", [39 x i8] zeroinitializer }, align 32
@sun8i_ss_unregister_algs._entry_ptr = internal global ptr @sun8i_ss_unregister_algs._entry, section ".printk_index", align 4
@sun8i_ss_unregister_algs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 648, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_unregister_algs._entry_ptr.69 = internal global ptr @sun8i_ss_unregister_algs._entry.68, section ".printk_index", align 4
@sun8i_ss_unregister_algs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 653, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_unregister_algs._entry_ptr.71 = internal global ptr @sun8i_ss_unregister_algs._entry.70, section ".printk_index", align 4
@ss_a83t_variant = internal constant { %struct.ss_variant, [56 x i8] } { %struct.ss_variant { [3 x i8] c"\00\04\08", [4 x i8] c"\0C\18\1C ", [2 x i32] [i32 0, i32 8192], [2 x %struct.ss_clock] [%struct.ss_clock { ptr @.str.72, i32 0, i32 300000000 }, %struct.ss_clock { ptr @.str.73, i32 0, i32 300000000 }] }, [56 x i8] zeroinitializer }, align 32
@ss_a80_variant = internal constant { %struct.ss_variant, [56 x i8] } { %struct.ss_variant { [3 x i8] c"\00\04\08", [4 x i8] zeroinitializer, [2 x i32] [i32 0, i32 8192], [2 x %struct.ss_clock] [%struct.ss_clock { ptr @.str.72, i32 0, i32 300000000 }, %struct.ss_clock { ptr @.str.73, i32 0, i32 300000000 }] }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun8i_ss_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot prepare_enable %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun8i_ss_pm_resume\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ss_pm_resume._entry_ptr = internal global ptr @sun8i_ss_pm_resume._entry, section ".printk_index", align 4
@sun8i_ss_pm_resume._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@sun8i_ss_pm_resume._entry_ptr.78 = internal global ptr @sun8i_ss_pm_resume._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 15]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 117, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 137, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"sun8i_ss_driver\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 811, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 815, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"sun8i_ss_crypto_of_match_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 802, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"sun8i_ss_pm_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 538, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 715, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 734, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 736, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 748, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 763, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 770, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"sun8i_ss_debugfs_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 449, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 671, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 680, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 687, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 693, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 477, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 484, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 87, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 573, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 582, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 587, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 591, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 600, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 609, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 615, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 619, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 627, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 420, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 427, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 433, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 642, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 647, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 652, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [16 x i8] c"ss_a83t_variant\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 41, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant [15 x i8] c"ss_a80_variant\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 30, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 49, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 50, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 519, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 526, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_sun8i_ss_driver_exit, ptr @__initcall__kmod_sun8i_ss__236_821_sun8i_ss_driver_init6, ptr @allocate_flows._entry, ptr @allocate_flows._entry.34, ptr @allocate_flows._entry_ptr, ptr @allocate_flows._entry_ptr.36, ptr @sun8i_ss_driver_exit, ptr @sun8i_ss_get_clks._entry, ptr @sun8i_ss_get_clks._entry.22, ptr @sun8i_ss_get_clks._entry.25, ptr @sun8i_ss_get_clks._entry.28, ptr @sun8i_ss_get_clks._entry_ptr, ptr @sun8i_ss_get_clks._entry_ptr.24, ptr @sun8i_ss_get_clks._entry_ptr.27, ptr @sun8i_ss_get_clks._entry_ptr.31, ptr @sun8i_ss_pm_resume._entry, ptr @sun8i_ss_pm_resume._entry.76, ptr @sun8i_ss_pm_resume._entry_ptr, ptr @sun8i_ss_pm_resume._entry_ptr.78, ptr @sun8i_ss_probe._entry, ptr @sun8i_ss_probe._entry.12, ptr @sun8i_ss_probe._entry.15, ptr @sun8i_ss_probe._entry_ptr, ptr @sun8i_ss_probe._entry_ptr.14, ptr @sun8i_ss_probe._entry_ptr.18, ptr @sun8i_ss_register_algs._entry, ptr @sun8i_ss_register_algs._entry.40, ptr @sun8i_ss_register_algs._entry.43, ptr @sun8i_ss_register_algs._entry.46, ptr @sun8i_ss_register_algs._entry.49, ptr @sun8i_ss_register_algs._entry.51, ptr @sun8i_ss_register_algs._entry.53, ptr @sun8i_ss_register_algs._entry.56, ptr @sun8i_ss_register_algs._entry.59, ptr @sun8i_ss_register_algs._entry_ptr, ptr @sun8i_ss_register_algs._entry_ptr.42, ptr @sun8i_ss_register_algs._entry_ptr.45, ptr @sun8i_ss_register_algs._entry_ptr.48, ptr @sun8i_ss_register_algs._entry_ptr.50, ptr @sun8i_ss_register_algs._entry_ptr.52, ptr @sun8i_ss_register_algs._entry_ptr.55, ptr @sun8i_ss_register_algs._entry_ptr.58, ptr @sun8i_ss_register_algs._entry_ptr.61, ptr @sun8i_ss_run_task._entry, ptr @sun8i_ss_run_task._entry_ptr, ptr @sun8i_ss_unregister_algs._entry, ptr @sun8i_ss_unregister_algs._entry.68, ptr @sun8i_ss_unregister_algs._entry.70, ptr @sun8i_ss_unregister_algs._entry_ptr, ptr @sun8i_ss_unregister_algs._entry_ptr.69, ptr @sun8i_ss_unregister_algs._entry_ptr.71, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sun8i_ss_driver, ptr @.str.7, ptr @sun8i_ss_crypto_of_match_table, ptr @sun8i_ss_pm_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sun8i_ss_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @sun8i_ss_debugfs_fops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @ss_a83t_variant, ptr @ss_a80_variant, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_run_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_crypto_of_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_get_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_get_clks._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_get_clks._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_get_clks._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_flows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_flows._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_register_algs._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_unregister_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_unregister_algs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_unregister_algs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_a83t_variant to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_a80_variant to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_pm_resume._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_get_engine_number(ptr noundef %ss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flow = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flow, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %flow, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flow, ptr %flow, i32 1, ptr elementtype(i32) %flow) #7, !srcloc !164
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  %rem = srem i32 %asmresult.i.i.i.i, 2
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_run_task(ptr noundef %ss, ptr nocapture noundef readonly %rctx, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flow1 = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 7
  %0 = ptrtoint ptr %flow1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow1, align 4
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 5
  %2 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flows, align 4
  %stat_req = getelementptr %struct.sun8i_ss_flow, ptr %3, i32 %1, i32 3
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stat_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 1073741825, i32 -2147483647
  %op_mode = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 5
  %6 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_mode, align 4
  %or3 = or i32 %7, %.
  %method = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 4
  %8 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %method, align 8
  %or4 = or i32 %or3, %9
  %op_dir = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 6
  %10 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op_dir, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  %or7 = or i32 %or4, 64
  %v.1 = select i1 %tobool5.not, i32 %or4, i32 %or7
  %keylen = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 9
  %12 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %keylen, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %entry.sw.epilog_crit_edge [
    i32 32, label %sw.bb12
    i32 24, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %v.1, 128
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %v.1, 256
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %entry.sw.epilog_crit_edge
  %v.2 = phi i32 [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %v.1, %entry.sw.epilog_crit_edge ]
  %mlock = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 4
  %p_key = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 2
  %biv = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 10
  %ivlen60 = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 8
  %p_iv = getelementptr inbounds %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 3
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 3
  %15 = tail call i32 @llvm.bswap.i32(i32 %v.2)
  br label %for.body

for.cond:                                         ; preds = %do.body87
  %inc139 = add nuw nsw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc139, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %i.0215 = phi i32 [ 0, %sw.epilog ], [ %inc139, %for.cond.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %i.0215
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %p_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p_key, align 128
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ss, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #7, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0215)
  %cmp18 = icmp eq i32 %i.0215, 0
  br i1 %cmp18, label %if.then19, label %if.else29

if.then19:                                        ; preds = %if.end17
  %23 = ptrtoint ptr %p_iv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p_iv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not = icmp eq i32 %24, 0
  br i1 %tobool20.not, label %if.then19.do.body67_crit_edge, label %do.body22

if.then19.do.body67_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

do.body22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %p_iv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_iv, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ss, align 4
  %add.ptr27 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %27) #7, !srcloc !167
  br label %do.body67

if.else29:                                        ; preds = %if.end17
  %30 = ptrtoint ptr %biv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %biv, align 32
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %if.else29.do.body67_crit_edge, label %if.then31

if.else29.do.body67_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

if.then31:                                        ; preds = %if.else29
  %32 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %op_dir, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp33 = icmp eq i32 %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %sub = add nsw i32 %i.0215, -1
  br i1 %cmp33, label %do.body35, label %do.body48

do.body35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx39 = getelementptr %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %sub
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx39, align 8
  %len = getelementptr %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %sub, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %mul = shl i32 %37, 2
  %add = add i32 %mul, %35
  %38 = ptrtoint ptr %ivlen60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ivlen60, align 8
  %sub44 = sub i32 %add, %39
  %40 = tail call i32 @llvm.bswap.i32(i32 %sub44)
  %41 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ss, align 4
  %add.ptr46 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %40) #7, !srcloc !167
  br label %do.body67

do.body48:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx52 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %sub
  %43 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx52, align 8
  %len57 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %sub, i32 1
  %45 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len57, align 4
  %mul58 = shl i32 %46, 2
  %add59 = add i32 %mul58, %44
  %47 = ptrtoint ptr %ivlen60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ivlen60, align 8
  %sub61 = sub i32 %add59, %48
  %49 = tail call i32 @llvm.bswap.i32(i32 %sub61)
  %50 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ss, align 4
  %add.ptr63 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %49) #7, !srcloc !167
  br label %do.body67

do.body67:                                        ; preds = %do.body48, %do.body35, %if.else29.do.body67_crit_edge, %do.body22, %if.then19.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_run_task.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_run_task, %if.then71)) #7
          to label %do.body87 [label %if.then71], !srcloc !169

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %len74 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0215, i32 1
  %54 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len74, align 4
  %len77 = getelementptr %struct.sun8i_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %i.0215, i32 1
  %56 = ptrtoint ptr %len77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len77, align 4
  %58 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %method, align 8
  %60 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %op_mode, align 4
  %62 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %op_dir, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_run_task.__UNIQUE_ID_ddebug235, ptr noundef %53, ptr noundef nonnull @.str.3, i32 noundef %i.0215, i32 noundef %1, ptr noundef %name, i32 noundef %v.2, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %55) #7
  br label %do.body87

do.body87:                                        ; preds = %if.then71, %do.body67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %arrayidx91 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0215
  %64 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx91, align 8
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ss, align 4
  %add.ptr94 = getelementptr i8, ptr %68, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %66) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx14, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ss, align 4
  %add.ptr102 = getelementptr i8, ptr %73, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %71) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %len108 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0215, i32 1
  %74 = ptrtoint ptr %len108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len108, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ss, align 4
  %add.ptr110 = getelementptr i8, ptr %78, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %76) #7, !srcloc !167
  %79 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %flows, align 4
  %complete = getelementptr %struct.sun8i_ss_flow, ptr %80, i32 %1, i32 1
  %81 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %complete, align 4
  %82 = load ptr, ptr %flows, align 4
  %status = getelementptr %struct.sun8i_ss_flow, ptr %82, i32 %1, i32 2
  %83 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %84 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ss, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %15) #7, !srcloc !167
  tail call void @mutex_unlock(ptr noundef %mlock) #7
  %86 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %flows, align 4
  %complete126 = getelementptr %struct.sun8i_ss_flow, ptr %87, i32 %1, i32 1
  %call128 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete126, i32 noundef 200) #7
  %88 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %flows, align 4
  %status131 = getelementptr %struct.sun8i_ss_flow, ptr %89, i32 %1, i32 2
  %90 = ptrtoint ptr %status131 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp132 = icmp eq i32 %91, 0
  br i1 %cmp132, label %do.end136, label %for.cond

do.end136:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.4, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end136 ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_ss_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_ss_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_ss_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %variant = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %variant, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %arrayidx.i = getelementptr %struct.ss_variant, ptr %6, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end16.for.inc.i_crit_edge, label %if.end.i

if.end16.for.inc.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call.i128 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull %8) #7
  %arrayidx5.i = getelementptr %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i128, ptr %arrayidx5.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.sun8i_ss_get_clks.exit_crit_edge, label %if.end18.i

if.end.i.sun8i_ss_get_clks.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_ss_get_clks.exit

if.end18.i:                                       ; preds = %if.end.i
  %call21.i = tail call i32 @clk_get_rate(ptr noundef %call.i128) #7
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
  %freq.i = getelementptr %struct.ss_variant, ptr %13, i32 0, i32 3, i32 0, i32 1
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
  %arrayidx27.i = getelementptr %struct.ss_variant, ptr %13, i32 0, i32 3, i32 0
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %18 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx27.i, align 4
  %div.i = udiv i32 %15, 1000000
  %div51.i = udiv i32 %call21.i, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef %19, i32 noundef %15, i32 noundef %div.i, i32 noundef %call21.i, i32 noundef %div51.i) #10
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.i, align 4
  %22 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant, align 4
  %freq57.i = getelementptr %struct.ss_variant, ptr %23, i32 0, i32 3, i32 0, i32 1
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
  %arrayidx67.i = getelementptr %struct.ss_variant, ptr %29, i32 0, i32 3, i32 0
  %30 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx67.i, align 4
  %freq72.i = getelementptr %struct.ss_variant, ptr %29, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %freq72.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %freq72.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.26, ptr noundef %31, i32 noundef %33) #10
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end63.i, %do.end37.i.if.end74.i_crit_edge, %if.end24.i.if.end74.i_crit_edge
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant, align 4
  %max_freq.i = getelementptr %struct.ss_variant, ptr %35, i32 0, i32 3, i32 0, i32 2
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
  %arrayidx77.i = getelementptr %struct.ss_variant, ptr %35, i32 0, i32 3, i32 0
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  %40 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.29, ptr noundef %41, i32 noundef %call21.i, i32 noundef %37) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end88.i, %if.end74.i.for.inc.i_crit_edge, %if.end16.for.inc.i_crit_edge
  %42 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %variant, align 4
  %arrayidx.1.i = getelementptr %struct.ss_variant, ptr %43, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %45, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end20_crit_edge, label %if.end.1.i

for.inc.i.if.end20_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.1.i:                                       ; preds = %for.inc.i
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 4
  %call.1.i = tail call ptr @devm_clk_get(ptr noundef %47, ptr noundef nonnull %45) #7
  %arrayidx5.1.i = getelementptr %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.1.i, ptr %arrayidx5.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.1.i.sun8i_ss_get_clks.exit_crit_edge, label %if.end18.1.i

if.end.1.i.sun8i_ss_get_clks.exit_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_ss_get_clks.exit

if.end18.1.i:                                     ; preds = %if.end.1.i
  %call21.1.i = tail call i32 @clk_get_rate(ptr noundef %call.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1.i)
  %tobool22.not.1.i = icmp eq i32 %call21.1.i, 0
  br i1 %tobool22.not.1.i, label %if.end18.1.i.cleanup_crit_edge, label %if.end24.1.i

if.end18.1.i.cleanup_crit_edge:                   ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.1.i:                                     ; preds = %if.end18.1.i
  %49 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %variant, align 4
  %freq.1.i = getelementptr %struct.ss_variant, ptr %50, i32 0, i32 3, i32 1, i32 1
  %51 = ptrtoint ptr %freq.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %freq.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp28.not.1.i = icmp eq i32 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.1.i, i32 %52)
  %cmp33.not.1.i = icmp eq i32 %call21.1.i, %52
  %or.cond.1.i = select i1 %cmp28.not.1.i, i1 true, i1 %cmp33.not.1.i
  br i1 %or.cond.1.i, label %if.end24.1.i.if.end74.1.i_crit_edge, label %do.end37.1.i

if.end24.1.i.if.end74.1.i_crit_edge:              ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.1.i

do.end37.1.i:                                     ; preds = %if.end24.1.i
  %arrayidx27.1.i = getelementptr %struct.ss_variant, ptr %50, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev2, align 4
  %55 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx27.1.i, align 4
  %div.1.i = udiv i32 %52, 1000000
  %div51.1.i = udiv i32 %call21.1.i, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.23, ptr noundef %56, i32 noundef %52, i32 noundef %div.1.i, i32 noundef %call21.1.i, i32 noundef %div51.1.i) #10
  %57 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx5.1.i, align 4
  %59 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %variant, align 4
  %freq57.1.i = getelementptr %struct.ss_variant, ptr %60, i32 0, i32 3, i32 1, i32 1
  %61 = ptrtoint ptr %freq57.1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %freq57.1.i, align 4
  %call58.1.i = tail call i32 @clk_set_rate(ptr noundef %58, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.1.i)
  %tobool59.not.1.i = icmp eq i32 %call58.1.i, 0
  br i1 %tobool59.not.1.i, label %do.end37.1.i.if.end74.1.i_crit_edge, label %do.end63.1.i

do.end37.1.i.if.end74.1.i_crit_edge:              ; preds = %do.end37.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.1.i

do.end63.1.i:                                     ; preds = %do.end37.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev2, align 4
  %65 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant, align 4
  %arrayidx67.1.i = getelementptr %struct.ss_variant, ptr %66, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %arrayidx67.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx67.1.i, align 4
  %freq72.1.i = getelementptr %struct.ss_variant, ptr %66, i32 0, i32 3, i32 1, i32 1
  %69 = ptrtoint ptr %freq72.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %freq72.1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.26, ptr noundef %68, i32 noundef %70) #10
  br label %if.end74.1.i

if.end74.1.i:                                     ; preds = %do.end63.1.i, %do.end37.1.i.if.end74.1.i_crit_edge, %if.end24.1.i.if.end74.1.i_crit_edge
  %71 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %variant, align 4
  %max_freq.1.i = getelementptr %struct.ss_variant, ptr %72, i32 0, i32 3, i32 1, i32 2
  %73 = ptrtoint ptr %max_freq.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_freq.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp78.not.1.i = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.1.i, i32 %74)
  %cmp84.1.i = icmp ugt i32 %call21.1.i, %74
  %or.cond155.1.i = select i1 %cmp78.not.1.i, i1 %cmp84.1.i, i1 false
  br i1 %or.cond155.1.i, label %do.end88.1.i, label %if.end74.1.i.if.end20_crit_edge

if.end74.1.i.if.end20_crit_edge:                  ; preds = %if.end74.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end88.1.i:                                     ; preds = %if.end74.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx77.1.i = getelementptr %struct.ss_variant, ptr %72, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev2, align 4
  %77 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx77.1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.29, ptr noundef %78, i32 noundef %call21.1.i, i32 noundef %74) #10
  br label %if.end20

sun8i_ss_get_clks.exit:                           ; preds = %if.end.1.i.sun8i_ss_get_clks.exit_crit_edge, %if.end.i.sun8i_ss_get_clks.exit_crit_edge
  %i.0157.lcssa.i = phi i32 [ 0, %if.end.i.sun8i_ss_get_clks.exit_crit_edge ], [ 1, %if.end.1.i.sun8i_ss_get_clks.exit_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.i128, %if.end.i.sun8i_ss_get_clks.exit_crit_edge ], [ %call.1.i, %if.end.1.i.sun8i_ss_get_clks.exit_crit_edge ]
  %79 = ptrtoint ptr %call.lcssa.i to i32
  %80 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev2, align 4
  %82 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %variant, align 4
  %arrayidx16.i = getelementptr %struct.ss_variant, ptr %83, i32 0, i32 3, i32 %i.0157.lcssa.i
  %84 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.20, ptr noundef %85, i32 noundef %79) #10
  %tobool18.not = icmp eq ptr %call.lcssa.i, null
  br i1 %tobool18.not, label %sun8i_ss_get_clks.exit.if.end20_crit_edge, label %sun8i_ss_get_clks.exit.cleanup_crit_edge

sun8i_ss_get_clks.exit.cleanup_crit_edge:         ; preds = %sun8i_ss_get_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sun8i_ss_get_clks.exit.if.end20_crit_edge:        ; preds = %sun8i_ss_get_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %sun8i_ss_get_clks.exit.if.end20_crit_edge, %do.end88.1.i, %if.end74.1.i.if.end20_crit_edge, %for.inc.i.if.end20_crit_edge
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 2
  %86 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i129 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then28, label %do.body34

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call.i.i to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %87, ptr noundef nonnull @.str.10) #7
  br label %cleanup

do.body34:                                        ; preds = %if.end23
  %mlock = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mlock, ptr noundef nonnull @.str.11, ptr noundef nonnull @sun8i_ss_probe.__key) #7
  %88 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef 136, i32 noundef 3520) #7
  %flows.i = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 5
  %90 = ptrtoint ptr %flows.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call5.i.i.i, ptr %flows.i, align 4
  %tobool.not.i131 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i131, label %do.body34.cleanup_crit_edge, label %for.body.preheader.i

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %do.body34
  %complete.i = getelementptr %struct.sun8i_ss_flow, ptr %call5.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr %struct.sun8i_ss_flow, ptr %call5.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #7
  %92 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev2, align 4
  %call4.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %93, i1 noundef zeroext true) #7
  %94 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %flows.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call4.i, ptr %95, align 4
  %97 = load ptr, ptr %flows.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool10.not.i = icmp eq ptr %99, null
  br i1 %tobool10.not.i, label %error_engine.i, label %if.end13.i

if.end13.i:                                       ; preds = %for.body.preheader.i
  %call17.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.inc.i132, label %if.end13.i.while.body.i.preheader.i_crit_edge

if.end13.i.while.body.i.preheader.i_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader.i

for.inc.i132:                                     ; preds = %if.end13.i
  %100 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %flows.i, align 4
  %complete.1.i = getelementptr %struct.sun8i_ss_flow, ptr %101, i32 1, i32 1
  %102 = ptrtoint ptr %complete.1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %complete.1.i, align 4
  %wait.i.1.i = getelementptr %struct.sun8i_ss_flow, ptr %101, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #7
  %103 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev2, align 4
  %call4.1.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %104, i1 noundef zeroext true) #7
  %105 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %flows.i, align 4
  %arrayidx6.1.i = getelementptr %struct.sun8i_ss_flow, ptr %106, i32 1
  %107 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call4.1.i, ptr %arrayidx6.1.i, align 4
  %108 = load ptr, ptr %flows.i, align 4
  %arrayidx8.1.i = getelementptr %struct.sun8i_ss_flow, ptr %108, i32 1
  %109 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx8.1.i, align 4
  %tobool10.not.1.i = icmp eq ptr %110, null
  br i1 %tobool10.not.1.i, label %for.inc.i132.while.body.i.preheader.i_crit_edge, label %if.end13.1.i

for.inc.i132.while.body.i.preheader.i_crit_edge:  ; preds = %for.inc.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader.i

if.end13.1.i:                                     ; preds = %for.inc.i132
  %call17.1.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1.i)
  %tobool18.not.1.i = icmp eq i32 %call17.1.i, 0
  br i1 %tobool18.not.1.i, label %if.end13.1.i.if.end40_crit_edge, label %if.end13.1.i.while.body.i.preheader.i_crit_edge

if.end13.1.i.while.body.i.preheader.i_crit_edge:  ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader.i

if.end13.1.i.if.end40_crit_edge:                  ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

error_engine.i:                                   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.32) #10
  br label %cleanup

while.body.i.preheader.i:                         ; preds = %if.end13.1.i.while.body.i.preheader.i_crit_edge, %for.inc.i132.while.body.i.preheader.i_crit_edge, %if.end13.i.while.body.i.preheader.i_crit_edge
  %.str.32.sink.i = phi ptr [ @.str.35, %if.end13.i.while.body.i.preheader.i_crit_edge ], [ @.str.35, %if.end13.1.i.while.body.i.preheader.i_crit_edge ], [ @.str.32, %for.inc.i132.while.body.i.preheader.i_crit_edge ]
  %err.056.i = phi i32 [ %call17.i, %if.end13.i.while.body.i.preheader.i_crit_edge ], [ %call17.1.i, %if.end13.1.i.while.body.i.preheader.i_crit_edge ], [ -12, %for.inc.i132.while.body.i.preheader.i_crit_edge ]
  %cmp.not.i.i = phi i1 [ true, %if.end13.i.while.body.i.preheader.i_crit_edge ], [ false, %if.end13.1.i.while.body.i.preheader.i_crit_edge ], [ true, %for.inc.i132.while.body.i.preheader.i_crit_edge ]
  %i.155.i = phi i32 [ 0, %if.end13.i.while.body.i.preheader.i_crit_edge ], [ 1, %if.end13.1.i.while.body.i.preheader.i_crit_edge ], [ 0, %for.inc.i132.while.body.i.preheader.i_crit_edge ]
  %113 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull %.str.32.sink.i) #10
  %115 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %flows.i, align 4
  %arrayidx.i.i = getelementptr %struct.sun8i_ss_flow, ptr %116, i32 %i.155.i
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i133 = tail call i32 @crypto_engine_exit(ptr noundef %118) #7
  br i1 %cmp.not.i.i, label %while.body.i.preheader.i.allocate_flows.exit_crit_edge, label %while.body.i.i.1

while.body.i.preheader.i.allocate_flows.exit_crit_edge: ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_flows.exit

while.body.i.i.1:                                 ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i = add nsw i32 %i.155.i, -1
  %119 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %flows.i, align 4
  %arrayidx.i.i.1 = getelementptr %struct.sun8i_ss_flow, ptr %120, i32 %dec.i.i
  %121 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i.i.1, align 4
  %call.i.i133.1 = tail call i32 @crypto_engine_exit(ptr noundef %122) #7
  br label %allocate_flows.exit

allocate_flows.exit:                              ; preds = %while.body.i.i.1, %while.body.i.preheader.i.allocate_flows.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.056.i)
  %tobool38.not = icmp eq i32 %err.056.i, 0
  br i1 %tobool38.not, label %allocate_flows.exit.if.end40_crit_edge, label %allocate_flows.exit.cleanup_crit_edge

allocate_flows.exit.cleanup_crit_edge:            ; preds = %allocate_flows.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

allocate_flows.exit.if.end40_crit_edge:           ; preds = %allocate_flows.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %allocate_flows.exit.if.end40_crit_edge, %if.end13.1.i.if.end40_crit_edge
  %call41 = tail call fastcc i32 @sun8i_ss_pm_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.error_pm_crit_edge

if.end40.error_pm_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_pm

if.end44:                                         ; preds = %if.end40
  %call.i135 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @ss_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool47.not = icmp eq i32 %call.i135, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.13, i32 noundef %call.i135) #10
  br label %error_irq

if.end53:                                         ; preds = %if.end44
  %call54 = tail call fastcc i32 @sun8i_ss_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.error_alg_crit_edge

if.end53.error_alg_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alg

if.end57:                                         ; preds = %if.end53
  %125 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev2, align 4
  %call59 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end57.error_alg_crit_edge, label %if.end62

if.end57.error_alg_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alg

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %130 = lshr i32 %129, 12
  %and = and i32 %130, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %and) #10
  %131 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev2, align 4
  %call.i136 = tail call i32 @__pm_runtime_idle(ptr noundef %132, i32 noundef 4) #7
  %call72 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #7
  %dbgfs_dir = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 8
  %133 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call72, ptr %dbgfs_dir, align 4
  %call74 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %call72, ptr noundef nonnull %call.i, ptr noundef nonnull @sun8i_ss_debugfs_fops) #7
  %dbgfs_stats = getelementptr inbounds %struct.sun8i_ss_dev, ptr %call.i, i32 0, i32 9
  %134 = ptrtoint ptr %dbgfs_stats to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call74, ptr %dbgfs_stats, align 4
  br label %cleanup

error_alg:                                        ; preds = %if.end57.error_alg_crit_edge, %if.end53.error_alg_crit_edge
  %err.0 = phi i32 [ %call54, %if.end53.error_alg_crit_edge ], [ %call59, %if.end57.error_alg_crit_edge ]
  tail call fastcc void @sun8i_ss_unregister_algs(ptr noundef nonnull %call.i)
  br label %error_irq

error_irq:                                        ; preds = %error_alg, %do.end51
  %err.1 = phi i32 [ %call.i135, %do.end51 ], [ %err.0, %error_alg ]
  %135 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %136, i1 noundef zeroext true) #7
  br label %error_pm

error_pm:                                         ; preds = %error_irq, %if.end40.error_pm_crit_edge
  %err.2 = phi i32 [ %call41, %if.end40.error_pm_crit_edge ], [ %err.1, %error_irq ]
  %137 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %flows.i, align 4
  %arrayidx.i139 = getelementptr %struct.sun8i_ss_flow, ptr %138, i32 1
  %139 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i139, align 4
  %call.i140 = tail call i32 @crypto_engine_exit(ptr noundef %140) #7
  %141 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %flows.i, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %call.i140.1 = tail call i32 @crypto_engine_exit(ptr noundef %144) #7
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end62, %allocate_flows.exit.cleanup_crit_edge, %error_engine.i, %do.body34.cleanup_crit_edge, %if.then28, %if.end20.cleanup_crit_edge, %sun8i_ss_get_clks.exit.cleanup_crit_edge, %if.end18.1.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %call32, %if.then28 ], [ 0, %if.end62 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %79, %sun8i_ss_get_clks.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %err.056.i, %allocate_flows.exit.cleanup_crit_edge ], [ -22, %if.end18.i.cleanup_crit_edge ], [ -22, %if.end18.1.i.cleanup_crit_edge ], [ -12, %do.body34.cleanup_crit_edge ], [ -12, %error_engine.i ], [ %err.2, %error_pm ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sun8i_ss_unregister_algs(ptr noundef %1)
  %dbgfs_dir = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %flows.i = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flows.i, align 4
  %arrayidx.i = getelementptr %struct.sun8i_ss_flow, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @crypto_engine_exit(ptr noundef %7) #7
  %8 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flows.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i.1 = tail call i32 @crypto_engine_exit(ptr noundef %11) #7
  %dev.i = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %13, i1 noundef zeroext true) #7
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
define internal fastcc i32 @sun8i_ss_pm_init(ptr nocapture noundef readonly %ss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 3
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
define internal i32 @ss_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %data, i32 0, i32 5
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %do.body

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !167
  %6 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flows, align 4
  %status = getelementptr %struct.sun8i_ss_flow, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %status, align 4
  %9 = load ptr, ptr %flows, align 4
  %complete = getelementptr %struct.sun8i_ss_flow, ptr %9, i32 0, i32 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr4.1 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.1, i32 33554432) #7, !srcloc !167
  %12 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flows, align 4
  %status.1 = getelementptr %struct.sun8i_ss_flow, ptr %13, i32 1, i32 2
  %14 = ptrtoint ptr %status.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %status.1, align 4
  %15 = load ptr, ptr %flows, align 4
  %complete.1 = getelementptr %struct.sun8i_ss_flow, ptr %15, i32 1, i32 1
  tail call void @complete(ptr noundef %complete.1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body.1, %for.inc.for.inc.1_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ss_register_algs(ptr noundef %ss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %variant73 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 7
  %dev94 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0173 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173
  %ss1 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 3
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ss, ptr %ss1, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 128
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %2, label %sw.default [
    i32 5, label %sw.bb
    i32 12, label %sw.bb52
    i32 15, label %sw.bb70
  ]

sw.bb:                                            ; preds = %for.body
  %ss_algo_id = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 1
  %4 = ptrtoint ptr %ss_algo_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_algo_id, align 4
  %6 = ptrtoint ptr %variant73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant73, align 4
  %arrayidx4 = getelementptr [3 x i8], ptr %7, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp5 = icmp eq i8 %9, -1
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev94, align 4
  %cra_name = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5, i32 0, i32 11, i32 2, i32 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef %cra_name) #10
  %12 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ss1, align 4
  br label %for.inc

if.end:                                           ; preds = %sw.bb
  %ss_blockmode = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 2
  %13 = ptrtoint ptr %ss_blockmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ss_blockmode, align 8
  %arrayidx12 = getelementptr %struct.ss_variant, ptr %7, i32 0, i32 2, i32 %14
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp13 = icmp eq i32 %16, 255
  %17 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev94, align 4
  br i1 %cmp13, label %do.end18, label %do.end30

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cra_name23 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5, i32 0, i32 11, i32 2, i32 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef %cra_name23) #10
  %19 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ss1, align 4
  br label %for.inc

do.end30:                                         ; preds = %if.end
  %alg33 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5
  %cra_name35 = getelementptr inbounds %struct.skcipher_alg, ptr %alg33, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.44, ptr noundef %cra_name35) #10
  %call = tail call i32 @crypto_register_skcipher(ptr noundef %alg33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end30.for.inc_crit_edge, label %do.end42

do.end30.for.inc_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end42:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.47, ptr noundef %cra_name35) #10
  br label %cleanup.sink.split

sw.bb52:                                          ; preds = %for.body
  %alg54 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5
  %call55 = tail call i32 @crypto_register_rng(ptr noundef %alg54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %sw.bb52.for.inc_crit_edge, label %do.end60

sw.bb52.for.inc_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end60:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev94, align 4
  %cra_name65 = getelementptr inbounds %struct.rng_alg, ptr %alg54, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47, ptr noundef %cra_name65) #10
  %24 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ss1, align 4
  br label %for.inc

sw.bb70:                                          ; preds = %for.body
  %ss_algo_id72 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 1
  %25 = ptrtoint ptr %ss_algo_id72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ss_algo_id72, align 4
  %27 = ptrtoint ptr %variant73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %variant73, align 4
  %arrayidx74 = getelementptr %struct.ss_variant, ptr %28, i32 0, i32 1, i32 %26
  %29 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp76 = icmp eq i8 %30, -1
  %31 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev94, align 4
  br i1 %cmp76, label %do.end81, label %do.end93

do.end81:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  %cra_name86 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.38, ptr noundef %cra_name86) #10
  %33 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %ss1, align 4
  br label %for.inc

do.end93:                                         ; preds = %sw.bb70
  %alg96 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.0173, i32 5
  %cra_name99 = getelementptr inbounds %struct.ahash_alg, ptr %alg96, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.54, ptr noundef %cra_name99) #10
  %call103 = tail call i32 @crypto_register_ahash(ptr noundef %alg96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.end93.for.inc_crit_edge, label %do.end108

do.end93.for.inc_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end108:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.57, ptr noundef %cra_name99) #10
  br label %cleanup.sink.split

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ss1, align 4
  %37 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.60) #10
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %do.end93.for.inc_crit_edge, %do.end81, %do.end60, %sw.bb52.for.inc_crit_edge, %do.end30.for.inc_crit_edge, %do.end18, %do.end
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end108, %do.end42
  %retval.0.ph = phi i32 [ %call, %do.end42 ], [ %call103, %do.end108 ]
  %39 = ptrtoint ptr %ss1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ss1, align 4
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun8i_ss_unregister_algs(ptr nocapture noundef readonly %ss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev22 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ss1 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.044, i32 3
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 128
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %if.end.for.inc_crit_edge [
    i32 5, label %do.end
    i32 12, label %do.end9
    i32 15, label %do.end21
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev22, align 4
  %alg = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.044, i32 5
  %cra_name = getelementptr inbounds %struct.skcipher_alg, ptr %alg, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.66, i32 noundef %i.044, ptr noundef %cra_name) #10
  tail call void @crypto_unregister_skcipher(ptr noundef %alg) #7
  br label %for.inc

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 4
  %alg12 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.044, i32 5
  %cra_name14 = getelementptr inbounds %struct.rng_alg, ptr %alg12, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.66, i32 noundef %i.044, ptr noundef %cra_name14) #10
  tail call void @crypto_unregister_rng(ptr noundef %alg12) #7
  br label %for.inc

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev22, align 4
  %alg24 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.044, i32 5
  %cra_name26 = getelementptr inbounds %struct.ahash_alg, ptr %alg24, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.66, i32 noundef %i.044, ptr noundef %cra_name26) #10
  tail call void @crypto_unregister_ahash(ptr noundef %alg24) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %do.end9, %do.end, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
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
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_skencrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_skdecrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ss_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_des3_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_prng_generate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_prng_seed(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_prng_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ss_prng_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_final(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_finup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_digest(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_export(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_import(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_hash_crainit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ss_hash_craexit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sun8i_ss_debugfs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_debugfs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flows, align 4
  %stat_req = getelementptr %struct.sun8i_ss_flow, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef %5) #7
  %6 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flows, align 4
  %stat_req.1 = getelementptr %struct.sun8i_ss_flow, ptr %7, i32 1, i32 3
  %8 = ptrtoint ptr %stat_req.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_req.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef %9) #7
  br label %for.body3

for.body3:                                        ; preds = %for.inc45.for.body3_crit_edge, %entry
  %i.172 = phi i32 [ %inc46, %for.inc45.for.body3_crit_edge ], [ 0, %entry ]
  %ss5 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 3
  %10 = ptrtoint ptr %ss5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ss5, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body3.for.inc45_crit_edge, label %if.end

for.body3.for.inc45_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

if.end:                                           ; preds = %for.body3
  %arrayidx4 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 128
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %13, label %if.end.for.inc45_crit_edge [
    i32 5, label %sw.bb
    i32 12, label %sw.bb15
    i32 15, label %sw.bb29
  ]

if.end.for.inc45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc45

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 5, i32 0, i32 11
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 9
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 8
  %stat_req13 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 6
  %15 = ptrtoint ptr %stat_req13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stat_req13, align 128
  %stat_fb = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 7
  %17 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stat_fb, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, ptr noundef %cra_driver_name, ptr noundef %cra_name, i32 noundef %16, i32 noundef %18) #7
  br label %for.inc45

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base18 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 5, i32 0, i32 11
  %cra_driver_name19 = getelementptr inbounds %struct.crypto_alg, ptr %base18, i32 0, i32 9
  %cra_name24 = getelementptr inbounds %struct.crypto_alg, ptr %base18, i32 0, i32 8
  %stat_req27 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 6
  %19 = ptrtoint ptr %stat_req27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_req27, align 128
  %stat_bytes = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 8
  %21 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stat_bytes, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.65, ptr noundef %cra_driver_name19, ptr noundef %cra_name24, i32 noundef %20, i32 noundef %22) #7
  br label %for.inc45

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cra_driver_name33 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 5, i32 0, i32 11, i32 3, i32 9
  %cra_name39 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 5, i32 0, i32 11, i32 3, i32 8
  %stat_req42 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 6
  %23 = ptrtoint ptr %stat_req42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat_req42, align 128
  %stat_fb44 = getelementptr [9 x %struct.sun8i_ss_alg_template], ptr @ss_algs, i32 0, i32 %i.172, i32 7
  %25 = ptrtoint ptr %stat_fb44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat_fb44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, ptr noundef %cra_driver_name33, ptr noundef %cra_name39, i32 noundef %24, i32 noundef %26) #7
  br label %for.inc45

for.inc45:                                        ; preds = %sw.bb29, %sw.bb15, %sw.bb, %if.end.for.inc45_crit_edge, %for.body3.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.172, 1
  %exitcond.not = icmp eq i32 %inc46, 9
  br i1 %exitcond.not, label %for.end47, label %for.inc45.for.body3_crit_edge

for.inc45.for.body3_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %arrayidx = getelementptr %struct.sun8i_ss_dev, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %arrayidx.1 = getelementptr %struct.sun8i_ss_dev, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ss_variant, ptr %3, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.sun8i_ss_dev, ptr %1, i32 0, i32 1, i32 0
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

if.then3.i:                                       ; preds = %if.end.i.1.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %i.050.lcssa54 = phi i32 [ 0, %if.end.i.if.then3.i_crit_edge ], [ 1, %if.end.i.1.if.then3.i_crit_edge ]
  %call1.i.lcssa = phi i32 [ %call1.i, %if.end.i.if.then3.i_crit_edge ], [ %call1.i.1, %if.end.i.1.if.then3.i_crit_edge ]
  %.lcssa53 = phi ptr [ %7, %if.end.i.if.then3.i_crit_edge ], [ %19, %if.end.i.1.if.then3.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.lcssa53) #7
  br label %do.end

do.end:                                           ; preds = %if.end.1.do.end_crit_edge, %if.then3.i, %if.end.do.end_crit_edge
  %i.05056 = phi i32 [ %i.050.lcssa54, %if.then3.i ], [ 0, %if.end.do.end_crit_edge ], [ 1, %if.end.1.do.end_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call1.i.lcssa, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ], [ %call.i.1, %if.end.1.do.end_crit_edge ]
  %dev5 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %arrayidx8 = getelementptr %struct.ss_variant, ptr %11, i32 0, i32 3, i32 %i.05056
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.74, ptr noundef %13) #10
  br label %error

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %arrayidx.1 = getelementptr %struct.ss_variant, ptr %15, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx1.1 = getelementptr %struct.sun8i_ss_dev, ptr %1, i32 0, i32 1, i32 1
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
  %reset = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body19, label %do.end16

do.end16:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.77) #10
  br label %error

do.body19:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #7, !srcloc !167
  br label %cleanup

error:                                            ; preds = %do.end16, %do.end
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call11, %do.end16 ]
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr inbounds %struct.sun8i_ss_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset.i, align 4
  %call1.i38 = tail call i32 @reset_control_assert(ptr noundef %29) #7
  %arrayidx.i = getelementptr %struct.sun8i_ss_dev, ptr %27, i32 0, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  %arrayidx.1.i = getelementptr %struct.sun8i_ss_dev, ptr %27, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.body19
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %do.body19 ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 117, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sun8i_ss_run_task.__UNIQUE_ID_ddebug235, !1, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 137, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sun8i_ss_run_task._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_ss_run_task._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_sun8i_ss__236_821_sun8i_ss_driver_init6, !13, !"__initcall__kmod_sun8i_ss__236_821_sun8i_ss_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 821, i32 1}
!14 = !{ptr @__exitcall_sun8i_ss_driver_exit, !13, !"__exitcall_sun8i_ss_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description237, !16, !"__UNIQUE_ID_description237", i1 false, i1 false}
!16 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 823, i32 1}
!17 = !{ptr @__UNIQUE_ID_file238, !18, !"__UNIQUE_ID_file238", i1 false, i1 false}
!18 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 824, i32 1}
!19 = !{ptr @__UNIQUE_ID_license239, !18, !"__UNIQUE_ID_license239", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author240, !21, !"__UNIQUE_ID_author240", i1 false, i1 false}
!21 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 825, i32 1}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 815, i32 12}
!24 = !{ptr @sun8i_ss_driver, !25, !"sun8i_ss_driver", i1 false, i1 false}
!25 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 811, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 715, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun8i_ss_probe._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun8i_ss_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 734, i32 10}
!33 = !{ptr @sun8i_ss_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 736, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 748, i32 3}
!38 = !{ptr @sun8i_ss_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun8i_ss_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 763, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sun8i_ss_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sun8i_ss_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 770, i32 40}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 671, i32 4}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sun8i_ss_get_clks._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sun8i_ss_get_clks._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 680, i32 4}
!54 = !{ptr @sun8i_ss_get_clks._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sun8i_ss_get_clks._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 687, i32 5}
!58 = !{ptr @sun8i_ss_get_clks._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sun8i_ss_get_clks._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 693, i32 4}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sun8i_ss_get_clks._entry.28, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sun8i_ss_get_clks._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 477, i32 4}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @allocate_flows._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @allocate_flows._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 484, i32 4}
!72 = !{ptr @allocate_flows._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @allocate_flows._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @init_completion.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/linux/completion.h", i32 87, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 573, i32 5}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sun8i_ss_register_algs._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sun8i_ss_register_algs._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 582, i32 5}
!84 = !{ptr @sun8i_ss_register_algs._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sun8i_ss_register_algs._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 587, i32 4}
!88 = !{ptr @sun8i_ss_register_algs._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sun8i_ss_register_algs._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 591, i32 5}
!92 = !{ptr @sun8i_ss_register_algs._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sun8i_ss_register_algs._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @sun8i_ss_register_algs._entry.49, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 600, i32 5}
!96 = !{ptr @sun8i_ss_register_algs._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sun8i_ss_register_algs._entry.51, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 609, i32 5}
!99 = !{ptr @sun8i_ss_register_algs._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 615, i32 4}
!102 = !{ptr @sun8i_ss_register_algs._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @sun8i_ss_register_algs._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 619, i32 5}
!106 = !{ptr @sun8i_ss_register_algs._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sun8i_ss_register_algs._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 627, i32 4}
!110 = !{ptr @sun8i_ss_register_algs._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sun8i_ss_register_algs._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @ss_algs, !113, !"ss_algs", i1 false, i1 false}
!113 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 163, i32 37}
!114 = !{ptr @sun8i_ss_debugfs_fops, !115, !"sun8i_ss_debugfs_fops", i1 false, i1 false}
!115 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 449, i32 1}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 420, i32 19}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 427, i32 20}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 433, i32 20}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 642, i32 4}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sun8i_ss_unregister_algs._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @sun8i_ss_unregister_algs._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @sun8i_ss_unregister_algs._entry.68, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 647, i32 4}
!129 = !{ptr @sun8i_ss_unregister_algs._entry_ptr.69, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @sun8i_ss_unregister_algs._entry.70, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 652, i32 4}
!132 = !{ptr @sun8i_ss_unregister_algs._entry_ptr.71, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @sun8i_ss_crypto_of_match_table, !134, !"sun8i_ss_crypto_of_match_table", i1 false, i1 false}
!134 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 802, i32 34}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 49, i32 5}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 50, i32 5}
!139 = !{ptr @ss_a83t_variant, !140, !"ss_a83t_variant", i1 false, i1 false}
!140 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 41, i32 32}
!141 = !{ptr @ss_a80_variant, !142, !"ss_a80_variant", i1 false, i1 false}
!142 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 30, i32 32}
!143 = !{ptr @sun8i_ss_pm_ops, !144, !"sun8i_ss_pm_ops", i1 false, i1 false}
!144 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 538, i32 32}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 519, i32 4}
!147 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @sun8i_ss_pm_resume._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @sun8i_ss_pm_resume._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c", i32 526, i32 3}
!152 = !{ptr @sun8i_ss_pm_resume._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sun8i_ss_pm_resume._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2148344991}
!164 = !{i64 2148260300, i64 2148260332, i64 2148260361, i64 2148260395, i64 2148260426, i64 2148260449}
!165 = !{i64 2148345220}
!166 = !{i64 2154667402}
!167 = !{i64 6348488}
!168 = !{i64 2154667823}
!169 = !{i64 2148741395, i64 2148741400, i64 2148741413, i64 2148741457, i64 2148741491, i64 2148741512}
!170 = !{i64 2154672888}
!171 = !{i64 2154673342}
!172 = !{i64 2154673795}
!173 = !{i64 2154674161}
!174 = !{i64 2154674376}
!175 = !{i64 6348906}
!176 = !{i64 2154724357}
!177 = !{i64 2154676614}
!178 = !{i64 2154677016}
!179 = !{i64 2148258999}
!180 = !{i64 743822, i64 743847, i64 743869, i64 743885, i64 743897, i64 743917, i64 743941, i64 743957, i64 743969}
!181 = !{i64 2148259187}
!182 = !{i64 2154686252}
