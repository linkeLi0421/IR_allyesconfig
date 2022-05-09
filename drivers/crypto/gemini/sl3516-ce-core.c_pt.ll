; ModuleID = '/llk/IR_all_yes/drivers/crypto/gemini/sl3516-ce-core.c_pt.bc'
source_filename = "../drivers/crypto/gemini/sl3516-ce-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sl3516_ce_alg_template = type { i32, i32, ptr, [116 x i8], %union.anon.79, i32, i32, i32, [116 x i8] }
%union.anon.79 = type { %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.sl3516_ce_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, ptr, i32, ptr, i32, i32, %struct.hwrng, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.sl3516_ce_cipher_req_ctx = type { [6 x %struct.sginfo], [6 x %struct.sginfo], i32, i32, i32, ptr, i32, i32, [8 x i8], %struct.skcipher_request }
%struct.sginfo = type { i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.descriptor = type { %union.anon.69, %union.anon.70, i32, %union.anon.71 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@sl3516_ce_run_task.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sl3516_ce\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl3516_ce_run_task\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/crypto/gemini/sl3516-ce-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s handle DST SG %d/%d len=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sl3516_ce_run_task.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s handle SRC SG %d/%d len=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sl3516_ce_run_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 173, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA timeout for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sl3516_ce_run_task._entry_ptr = internal global ptr @sl3516_ce_run_task._entry, section ".printk_index", align 4
@sl3516_ce_run_task._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPSEC_STATUS_REG %x\0A\00", [43 x i8] zeroinitializer }, align 32
@sl3516_ce_run_task._entry_ptr.10 = internal global ptr @sl3516_ce_run_task._entry.8, section ".printk_index", align 4
@__initcall__kmod_sl3516_ce__250_531_sl3516_ce_driver_init6 = internal global ptr @sl3516_ce_driver_init, section ".initcall6.init", align 4
@sl3516_ce_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sl3516_ce_probe, ptr @sl3516_ce_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sl3516_ce_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sl3516_ce_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sl3516_ce_driver_exit = internal global ptr @sl3516_ce_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"sl3516_ce.description=SL3516 cryptographic offloader\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [47 x i8] c"sl3516_ce.file=drivers/crypto/gemini/sl3516-ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [22 x i8] c"sl3516_ce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [54 x i8] c"sl3516_ce.author=Corentin Labbe <clabbe@baylibre.com>\00", section ".modinfo", align 1
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sl3516-crypto\00", [18 x i8] zeroinitializer }, align 32
@sl3516_ce_crypto_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,sl3516-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sl3516_ce_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sl3516_ce_pm_suspend, ptr @sl3516_ce_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crypto\00", [25 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 415, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot request Crypto Engine IRQ (err=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sl3516_ce_probe\00", [16 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr = internal global ptr @sl3516_ce_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No reset control found\0A\00", [40 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 426, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot get clock err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr.18 = internal global ptr @sl3516_ce_probe._entry.16, section ".printk_index", align 4
@sl3516_ce_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.2, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate engine\0A\00", [40 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr.21 = internal global ptr @sl3516_ce_probe._entry.19, section ".printk_index", align 4
@sl3516_ce_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 449, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot start engine\0A\00", [43 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr.24 = internal global ptr @sl3516_ce_probe._entry.22, section ".printk_index", align 4
@sl3516_ce_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.2, i32 468, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SL3516 dev %lx rev %lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr.28 = internal global ptr @sl3516_ce_probe._entry.25, section ".printk_index", align 4
@sl3516_ce_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.14, ptr @.str.2, i32 472, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SL3516 DMA dev %lx rev %lx\0A\00", [36 x i8] zeroinitializer }, align 32
@sl3516_ce_probe._entry_ptr.31 = internal global ptr @sl3516_ce_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sl3516\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@sl3516_ce_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sl3516_ce_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ce_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AHB bus Error While Tx !!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ce_irq_handler\00", [17 x i8] zeroinitializer }, align 32
@ce_irq_handler._entry_ptr = internal global ptr @ce_irq_handler._entry, section ".printk_index", align 4
@ce_irq_handler._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 198, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tx Descriptor Protocol Error !!!\0A\00", [62 x i8] zeroinitializer }, align 32
@ce_irq_handler._entry_ptr.38 = internal global ptr @ce_irq_handler._entry.36, section ".printk_index", align 4
@ce_irq_handler._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AHB bus Error While Rx !!!\0A\00", [36 x i8] zeroinitializer }, align 32
@ce_irq_handler._entry_ptr.41 = internal global ptr @ce_irq_handler._entry.39, section ".printk_index", align 4
@ce_irq_handler._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 202, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Rx Descriptor Protocol Error !!!\0A\00", [62 x i8] zeroinitializer }, align 32
@ce_irq_handler._entry_ptr.44 = internal global ptr @ce_irq_handler._entry.42, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ce_algs = internal global [1 x %struct.sl3516_ce_alg_template] [%struct.sl3516_ce_alg_template { i32 5, i32 2, ptr null, [116 x i8] undef, %union.anon.79 { %struct.skcipher_alg { ptr @sl3516_ce_aes_setkey, ptr @sl3516_ce_skencrypt, ptr @sl3516_ce_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 389, i32 16, i32 28, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sl3516\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @sl3516_ce_cipher_init, ptr @sl3516_ce_cipher_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }, i32 0, i32 0, i32 0, [116 x i8] undef }], align 128
@sl3516_ce_register_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 289, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DEBUG: Register %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sl3516_ce_register_algs\00", [40 x i8] zeroinitializer }, align 32
@sl3516_ce_register_algs._entry_ptr = internal global ptr @sl3516_ce_register_algs._entry, section ".printk_index", align 4
@sl3516_ce_register_algs._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to register %s\0A\00", [43 x i8] zeroinitializer }, align 32
@sl3516_ce_register_algs._entry_ptr.50 = internal global ptr @sl3516_ce_register_algs._entry.48, section ".printk_index", align 4
@sl3516_ce_register_algs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR: tried to register an unknown algo\0A\00", [54 x i8] zeroinitializer }, align 32
@sl3516_ce_register_algs._entry_ptr.53 = internal global ptr @sl3516_ce_register_algs._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HWRNG %lu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ %lu\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ TX %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ RX %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nreq %lu\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fallback SG count TX %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fallback SG count RX %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fallback modulo16 %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fallback align16 %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fallback not same len %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s reqs=%lu fallback=%lu\0A\00", [35 x i8] zeroinitializer }, align 32
@sl3516_ce_unregister_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 316, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unregister %d %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sl3516_ce_unregister_algs\00", [38 x i8] zeroinitializer }, align 32
@sl3516_ce_unregister_algs._entry_ptr = internal global ptr @sl3516_ce_unregister_algs._entry, section ".printk_index", align 4
@sl3516_ce_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot prepare_enable\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sl3516_ce_pm_resume\00", [44 x i8] zeroinitializer }, align 32
@sl3516_ce_pm_resume._entry_ptr = internal global ptr @sl3516_ce_pm_resume._entry, section ".printk_index", align 4
@sl3516_ce_pm_resume._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@sl3516_ce_pm_resume._entry_ptr.71 = internal global ptr @sl3516_ce_pm_resume._entry.69, section ".printk_index", align 4
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 132, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 142, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 173, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 178, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"sl3516_ce_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 521, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 525, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [32 x i8] c"sl3516_ce_crypto_of_match_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 515, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"sl3516_ce_pm_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 369, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 413, i32 61 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 415, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 422, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 426, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 442, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 449, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 466, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 470, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 478, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 479, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"sl3516_ce_debugfs_fops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 276, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 196, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 198, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 200, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 202, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 87, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 288, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 292, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 300, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 249, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 251, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 252, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 253, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 254, i32 18 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 255, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 256, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 257, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 258, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 259, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 266, i32 20 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 315, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 352, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [42 x i8] c"../drivers/crypto/gemini/sl3516-ce-core.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 357, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_sl3516_ce_driver_exit, ptr @__initcall__kmod_sl3516_ce__250_531_sl3516_ce_driver_init6, ptr @ce_irq_handler._entry, ptr @ce_irq_handler._entry.36, ptr @ce_irq_handler._entry.39, ptr @ce_irq_handler._entry.42, ptr @ce_irq_handler._entry_ptr, ptr @ce_irq_handler._entry_ptr.38, ptr @ce_irq_handler._entry_ptr.41, ptr @ce_irq_handler._entry_ptr.44, ptr @sl3516_ce_driver_exit, ptr @sl3516_ce_pm_resume._entry, ptr @sl3516_ce_pm_resume._entry.69, ptr @sl3516_ce_pm_resume._entry_ptr, ptr @sl3516_ce_pm_resume._entry_ptr.71, ptr @sl3516_ce_probe._entry, ptr @sl3516_ce_probe._entry.16, ptr @sl3516_ce_probe._entry.19, ptr @sl3516_ce_probe._entry.22, ptr @sl3516_ce_probe._entry.25, ptr @sl3516_ce_probe._entry.29, ptr @sl3516_ce_probe._entry_ptr, ptr @sl3516_ce_probe._entry_ptr.18, ptr @sl3516_ce_probe._entry_ptr.21, ptr @sl3516_ce_probe._entry_ptr.24, ptr @sl3516_ce_probe._entry_ptr.28, ptr @sl3516_ce_probe._entry_ptr.31, ptr @sl3516_ce_register_algs._entry, ptr @sl3516_ce_register_algs._entry.48, ptr @sl3516_ce_register_algs._entry.51, ptr @sl3516_ce_register_algs._entry_ptr, ptr @sl3516_ce_register_algs._entry_ptr.50, ptr @sl3516_ce_register_algs._entry_ptr.53, ptr @sl3516_ce_run_task._entry, ptr @sl3516_ce_run_task._entry.8, ptr @sl3516_ce_run_task._entry_ptr, ptr @sl3516_ce_run_task._entry_ptr.10, ptr @sl3516_ce_unregister_algs._entry, ptr @sl3516_ce_unregister_algs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @sl3516_ce_driver, ptr @.str.11, ptr @sl3516_ce_crypto_of_match_table, ptr @sl3516_ce_pm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @sl3516_ce_debugfs_fops, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_run_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_run_task._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_crypto_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_irq_handler._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_irq_handler._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ce_irq_handler._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_register_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_register_algs._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_register_algs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_unregister_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_pm_resume._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sl3516_ce_run_task(ptr noundef %ce, ptr nocapture noundef readonly %rctx, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_req = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 19
  %0 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_req, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stat_req, align 4
  %complete = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 5
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %complete, align 4
  %status = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 6
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %nr_sgd = getelementptr inbounds %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 7
  %4 = ptrtoint ptr %nr_sgd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_sgd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp217 = icmp sgt i32 %5, 0
  br i1 %cmp217, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %rx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 10
  %crx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.lr.ph
  %i.0218 = phi i32 [ 0, %do.body.lr.ph ], [ %inc14, %do.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_run_task.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_run_task, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %nr_sgd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_sgd, align 4
  %len = getelementptr %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %i.0218, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_run_task.__UNIQUE_ID_ddebug248, ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.0218, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %12 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx.i, align 4
  %14 = ptrtoint ptr %crx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crx.i, align 4
  %inc.i = add i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 5
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %16 = ptrtoint ptr %crx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select.i, ptr %crx.i, align 4
  %arrayidx.i = getelementptr %struct.descriptor, ptr %13, i32 %15
  %arrayidx6 = getelementptr %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %i.0218
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6, align 8
  %buf_adr = getelementptr %struct.descriptor, ptr %13, i32 %15, i32 2
  %19 = ptrtoint ptr %buf_adr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf_adr, align 4
  %len9 = getelementptr %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 1, i32 %i.0218, i32 1
  %20 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len9, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %arrayidx.i, align 4
  %bf.shl = shl i32 %21, 16
  %bf.clear = and i32 %bf.load, 65534
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.set13 = or i32 %bf.set, 1
  store i32 %bf.set13, ptr %arrayidx.i, align 4
  %inc14 = add nuw nsw i32 %i.0218, 1
  %23 = ptrtoint ptr %nr_sgd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_sgd, align 4
  %cmp = icmp slt i32 %inc14, %24
  br i1 %cmp, label %do.end.do.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %rdd.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %arrayidx.i, %do.end.for.end_crit_edge ]
  %next_desc = getelementptr inbounds %struct.descriptor, ptr %rdd.0.lcssa, i32 0, i32 3
  %25 = ptrtoint ptr %next_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load15 = load i32, ptr %next_desc, align 4
  %bf.set17 = or i32 %bf.load15, 268435456
  store i32 %bf.set17, ptr %next_desc, align 4
  %nr_sgs = getelementptr inbounds %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 6
  %26 = ptrtoint ptr %nr_sgs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_sgs, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp19220 = icmp sgt i32 %27, 0
  br i1 %cmp19220, label %do.body21.lr.ph, label %for.end.for.end118_crit_edge

for.end.for.end118_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end118

do.body21.lr.ph:                                  ; preds = %for.end
  %dev34 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %h = getelementptr inbounds %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 5
  %tx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 8
  %ctx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 11
  %pctrllen = getelementptr inbounds %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 3
  %dctrl = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 28
  %tqflag = getelementptr inbounds %struct.sl3516_ce_cipher_req_ctx, ptr %rctx, i32 0, i32 4
  br label %do.body21

do.body21:                                        ; preds = %do.end40.do.body21_crit_edge, %do.body21.lr.ph
  %i.1221 = phi i32 [ 0, %do.body21.lr.ph ], [ %inc117, %do.end40.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_run_task.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_run_task, %if.then33)) #7
          to label %do.end40 [label %if.then33], !srcloc !153

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev34, align 4
  %30 = ptrtoint ptr %nr_sgs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_sgs, align 16
  %len37 = getelementptr [6 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.1221, i32 1
  %32 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_run_task.__UNIQUE_ID_ddebug249, ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %i.1221, i32 noundef %31, i32 noundef %33) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %do.body21
  %arrayidx42 = getelementptr [6 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.1221
  %len43 = getelementptr [6 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.1221, i32 1
  %34 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len43, align 4
  %36 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %h, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load44 = load i32, ptr %37, align 4
  %bf.shl46 = shl i32 %35, 16
  %bf.clear47 = and i32 %bf.load44, 65535
  %bf.set48 = or i32 %bf.clear47, %bf.shl46
  store i32 %bf.set48, ptr %37, align 4
  %39 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx.i, align 4
  %41 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctx.i, align 4
  %inc.i204 = add i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i204)
  %cmp.i205 = icmp sgt i32 %inc.i204, 5
  %spec.select.i206 = select i1 %cmp.i205, i32 0, i32 %inc.i204
  %43 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i206, ptr %ctx.i, align 4
  %arrayidx.i207 = getelementptr %struct.descriptor, ptr %40, i32 %42
  %44 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx.i207, align 4
  %flag_status = getelementptr %struct.descriptor, ptr %40, i32 %42, i32 1
  %45 = ptrtoint ptr %flag_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %flag_status, align 4
  %46 = ptrtoint ptr %pctrllen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pctrllen, align 4
  %bf.shl54 = shl i32 %47, 16
  store i32 %bf.shl54, ptr %arrayidx.i207, align 4
  %48 = ptrtoint ptr %dctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dctrl, align 4
  %buf_adr57 = getelementptr %struct.descriptor, ptr %40, i32 %42, i32 2
  %50 = ptrtoint ptr %buf_adr57 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %buf_adr57, align 4
  %51 = ptrtoint ptr %tqflag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tqflag, align 8
  %bf.shl61 = shl i32 %52, 22
  store i32 %bf.shl61, ptr %flag_status, align 4
  %next_desc64 = getelementptr %struct.descriptor, ptr %40, i32 %42, i32 3
  %53 = ptrtoint ptr %next_desc64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load65 = load i32, ptr %next_desc64, align 4
  %bf.clear74 = and i32 %bf.load65, 268435455
  %bf.set75 = or i32 %bf.clear74, -1073741824
  store i32 %bf.set75, ptr %next_desc64, align 4
  %bf.set79 = or i32 %bf.shl54, 1
  store i32 %bf.set79, ptr %arrayidx.i207, align 4
  %54 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx.i, align 4
  %56 = load i32, ptr %ctx.i, align 4
  %inc.i210 = add i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i210)
  %cmp.i211 = icmp sgt i32 %inc.i210, 5
  %spec.select.i212 = select i1 %cmp.i211, i32 0, i32 %inc.i210
  %57 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select.i212, ptr %ctx.i, align 4
  %arrayidx.i213 = getelementptr %struct.descriptor, ptr %55, i32 %56
  %58 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx.i213, align 4
  %flag_status82 = getelementptr %struct.descriptor, ptr %55, i32 %56, i32 1
  %59 = ptrtoint ptr %flag_status82 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %flag_status82, align 4
  %60 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len43, align 4
  %bf.shl89 = shl i32 %61, 16
  store i32 %bf.shl89, ptr %arrayidx.i213, align 4
  %62 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx42, align 8
  %buf_adr95 = getelementptr %struct.descriptor, ptr %55, i32 %56, i32 2
  %64 = ptrtoint ptr %buf_adr95 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %buf_adr95, align 4
  store i32 0, ptr %flag_status82, align 4
  %next_desc100 = getelementptr %struct.descriptor, ptr %55, i32 %56, i32 3
  %65 = ptrtoint ptr %next_desc100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load101 = load i32, ptr %next_desc100, align 4
  %bf.clear110 = and i32 %bf.load101, 268435455
  %bf.set111 = or i32 %bf.clear110, -1073741824
  store i32 %bf.set111, ptr %next_desc100, align 4
  %bf.set115 = or i32 %bf.shl89, 1
  store i32 %bf.set115, ptr %arrayidx.i213, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ce, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 65288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17376) #7, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ce, align 4
  %add.ptr.i214 = getelementptr i8, ptr %69, i32 65300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 12601312) #7, !srcloc !155
  %inc117 = add nuw nsw i32 %i.1221, 1
  %70 = ptrtoint ptr %nr_sgs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_sgs, align 16
  %cmp19 = icmp slt i32 %inc117, %71
  br i1 %cmp19, label %do.end40.do.body21_crit_edge, label %do.end40.for.end118_crit_edge

do.end40.for.end118_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end118

do.end40.do.body21_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

for.end118:                                       ; preds = %do.end40.for.end118_crit_edge, %for.end.for.end118_crit_edge
  %call121 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete, i32 noundef 500) #7
  %72 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp123 = icmp eq i32 %73, 0
  br i1 %cmp123, label %do.end127, label %for.end118.if.end129_crit_edge

for.end118.if.end129_crit_edge:                   ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

do.end127:                                        ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #9
  %dev128 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %74 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.5, ptr noundef %name) #10
  br label %if.end129

if.end129:                                        ; preds = %do.end127, %for.end118.if.end129_crit_edge
  %err.0 = phi i32 [ -14, %do.end127 ], [ 0, %for.end118.if.end129_crit_edge ]
  %76 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ce, align 4
  %add.ptr = getelementptr i8, ptr %77, i32 168
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !157
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and = and i32 %79, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool133.not = icmp eq i32 %and, 0
  br i1 %tobool133.not, label %if.end129.if.end139_crit_edge, label %do.end137

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

do.end137:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %dev138 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %80 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.9, i32 noundef %79) #10
  br label %if.end139

if.end139:                                        ; preds = %do.end137, %if.end129.if.end139_crit_edge
  %err.1 = phi i32 [ -14, %do.end137 ], [ %err.0, %if.end129.if.end139_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sl3516_ce_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sl3516_ce_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sl3516_ce_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 264, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i177 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef nonnull @ce_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool15.not = icmp eq i32 %call.i177, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %call.i177) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i178 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i.i to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef null) #7
  %clks = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %clks, align 4
  %cmp.i179 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call30 to i32
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17, i32 noundef %11) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %dtx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 7
  %call.i.i180 = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef 96, ptr noundef %dtx.i, i32 noundef 3264, i32 noundef 0) #7
  %tx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i180, ptr %tx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i180, null
  br i1 %tobool.not.i, label %if.end40.cleanup_crit_edge, label %if.end.i

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  %drx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 9
  %call.i89.i = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef 96, ptr noundef %drx.i, i32 noundef 3264, i32 noundef 0) #7
  %rx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i89.i, ptr %rx.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i89.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_rx.i_crit_edge, label %for.body.preheader.i

if.end.i.err_rx.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rx.i

for.body.preheader.i:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i = load i32, ptr %21, align 4
  %bf.clear.i = and i32 %bf.load.i, -2
  store i32 %bf.clear.i, ptr %21, align 4
  %23 = ptrtoint ptr %dtx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dtx.i, align 4
  %add10.i = add i32 %24, 16
  %25 = load ptr, ptr %tx.i, align 4
  %next_desc.i = getelementptr %struct.descriptor, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %next_desc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add10.i, ptr %next_desc.i, align 4
  %27 = load ptr, ptr %tx.i, align 4
  %arrayidx.1.i = getelementptr %struct.descriptor, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.1.i = load i32, ptr %arrayidx.1.i, align 4
  %bf.clear.1.i = and i32 %bf.load.1.i, -2
  store i32 %bf.clear.1.i, ptr %arrayidx.1.i, align 4
  %29 = load i32, ptr %dtx.i, align 4
  %add10.1.i = add i32 %29, 32
  %30 = load ptr, ptr %tx.i, align 4
  %next_desc.1.i = getelementptr %struct.descriptor, ptr %30, i32 1, i32 3
  %31 = ptrtoint ptr %next_desc.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add10.1.i, ptr %next_desc.1.i, align 4
  %32 = load ptr, ptr %tx.i, align 4
  %arrayidx.2.i = getelementptr %struct.descriptor, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.2.i = load i32, ptr %arrayidx.2.i, align 4
  %bf.clear.2.i = and i32 %bf.load.2.i, -2
  store i32 %bf.clear.2.i, ptr %arrayidx.2.i, align 4
  %34 = load i32, ptr %dtx.i, align 4
  %add10.2.i = add i32 %34, 48
  %35 = load ptr, ptr %tx.i, align 4
  %next_desc.2.i = getelementptr %struct.descriptor, ptr %35, i32 2, i32 3
  %36 = ptrtoint ptr %next_desc.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add10.2.i, ptr %next_desc.2.i, align 4
  %37 = load ptr, ptr %tx.i, align 4
  %arrayidx.3.i = getelementptr %struct.descriptor, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.3.i = load i32, ptr %arrayidx.3.i, align 4
  %bf.clear.3.i = and i32 %bf.load.3.i, -2
  store i32 %bf.clear.3.i, ptr %arrayidx.3.i, align 4
  %39 = load i32, ptr %dtx.i, align 4
  %add10.3.i = add i32 %39, 64
  %40 = load ptr, ptr %tx.i, align 4
  %next_desc.3.i = getelementptr %struct.descriptor, ptr %40, i32 3, i32 3
  %41 = ptrtoint ptr %next_desc.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add10.3.i, ptr %next_desc.3.i, align 4
  %42 = load ptr, ptr %tx.i, align 4
  %arrayidx.4.i = getelementptr %struct.descriptor, ptr %42, i32 4
  %43 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.4.i = load i32, ptr %arrayidx.4.i, align 4
  %bf.clear.4.i = and i32 %bf.load.4.i, -2
  store i32 %bf.clear.4.i, ptr %arrayidx.4.i, align 4
  %44 = load i32, ptr %dtx.i, align 4
  %add10.4.i = add i32 %44, 80
  %45 = load ptr, ptr %tx.i, align 4
  %next_desc.4.i = getelementptr %struct.descriptor, ptr %45, i32 4, i32 3
  %46 = ptrtoint ptr %next_desc.4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add10.4.i, ptr %next_desc.4.i, align 4
  %47 = load ptr, ptr %tx.i, align 4
  %arrayidx.5.i = getelementptr %struct.descriptor, ptr %47, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.5.i = load i32, ptr %arrayidx.5.i, align 4
  %bf.clear.5.i = and i32 %bf.load.5.i, -2
  store i32 %bf.clear.5.i, ptr %arrayidx.5.i, align 4
  %49 = load i32, ptr %dtx.i, align 4
  %add10.5.i = add i32 %49, 96
  %50 = load ptr, ptr %tx.i, align 4
  %next_desc.5.i = getelementptr %struct.descriptor, ptr %50, i32 5, i32 3
  %51 = ptrtoint ptr %next_desc.5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add10.5.i, ptr %next_desc.5.i, align 4
  %52 = load i32, ptr %dtx.i, align 4
  %53 = load ptr, ptr %tx.i, align 4
  %next_desc16.i = getelementptr %struct.descriptor, ptr %53, i32 5, i32 3
  %54 = ptrtoint ptr %next_desc16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %next_desc16.i, align 4
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load23.i = load i32, ptr %56, align 4
  %bf.clear24.i = and i32 %bf.load23.i, -2
  store i32 %bf.clear24.i, ptr %56, align 4
  %58 = ptrtoint ptr %drx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %drx.i, align 4
  %add29.i = add i32 %59, 16
  %60 = load ptr, ptr %rx.i, align 4
  %next_desc32.i = getelementptr %struct.descriptor, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %next_desc32.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add29.i, ptr %next_desc32.i, align 4
  %62 = load ptr, ptr %rx.i, align 4
  %arrayidx21.1.i = getelementptr %struct.descriptor, ptr %62, i32 1
  %63 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load23.1.i = load i32, ptr %arrayidx21.1.i, align 4
  %bf.clear24.1.i = and i32 %bf.load23.1.i, -2
  store i32 %bf.clear24.1.i, ptr %arrayidx21.1.i, align 4
  %64 = load i32, ptr %drx.i, align 4
  %add29.1.i = add i32 %64, 32
  %65 = load ptr, ptr %rx.i, align 4
  %next_desc32.1.i = getelementptr %struct.descriptor, ptr %65, i32 1, i32 3
  %66 = ptrtoint ptr %next_desc32.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add29.1.i, ptr %next_desc32.1.i, align 4
  %67 = load ptr, ptr %rx.i, align 4
  %arrayidx21.2.i = getelementptr %struct.descriptor, ptr %67, i32 2
  %68 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load23.2.i = load i32, ptr %arrayidx21.2.i, align 4
  %bf.clear24.2.i = and i32 %bf.load23.2.i, -2
  store i32 %bf.clear24.2.i, ptr %arrayidx21.2.i, align 4
  %69 = load i32, ptr %drx.i, align 4
  %add29.2.i = add i32 %69, 48
  %70 = load ptr, ptr %rx.i, align 4
  %next_desc32.2.i = getelementptr %struct.descriptor, ptr %70, i32 2, i32 3
  %71 = ptrtoint ptr %next_desc32.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add29.2.i, ptr %next_desc32.2.i, align 4
  %72 = load ptr, ptr %rx.i, align 4
  %arrayidx21.3.i = getelementptr %struct.descriptor, ptr %72, i32 3
  %73 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load23.3.i = load i32, ptr %arrayidx21.3.i, align 4
  %bf.clear24.3.i = and i32 %bf.load23.3.i, -2
  store i32 %bf.clear24.3.i, ptr %arrayidx21.3.i, align 4
  %74 = load i32, ptr %drx.i, align 4
  %add29.3.i = add i32 %74, 64
  %75 = load ptr, ptr %rx.i, align 4
  %next_desc32.3.i = getelementptr %struct.descriptor, ptr %75, i32 3, i32 3
  %76 = ptrtoint ptr %next_desc32.3.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add29.3.i, ptr %next_desc32.3.i, align 4
  %77 = load ptr, ptr %rx.i, align 4
  %arrayidx21.4.i = getelementptr %struct.descriptor, ptr %77, i32 4
  %78 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load23.4.i = load i32, ptr %arrayidx21.4.i, align 4
  %bf.clear24.4.i = and i32 %bf.load23.4.i, -2
  store i32 %bf.clear24.4.i, ptr %arrayidx21.4.i, align 4
  %79 = load i32, ptr %drx.i, align 4
  %add29.4.i = add i32 %79, 80
  %80 = load ptr, ptr %rx.i, align 4
  %next_desc32.4.i = getelementptr %struct.descriptor, ptr %80, i32 4, i32 3
  %81 = ptrtoint ptr %next_desc32.4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add29.4.i, ptr %next_desc32.4.i, align 4
  %82 = load ptr, ptr %rx.i, align 4
  %arrayidx21.5.i = getelementptr %struct.descriptor, ptr %82, i32 5
  %83 = ptrtoint ptr %arrayidx21.5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load23.5.i = load i32, ptr %arrayidx21.5.i, align 4
  %bf.clear24.5.i = and i32 %bf.load23.5.i, -2
  store i32 %bf.clear24.5.i, ptr %arrayidx21.5.i, align 4
  %84 = load i32, ptr %drx.i, align 4
  %add29.5.i = add i32 %84, 96
  %85 = load ptr, ptr %rx.i, align 4
  %next_desc32.5.i = getelementptr %struct.descriptor, ptr %85, i32 5, i32 3
  %86 = ptrtoint ptr %next_desc32.5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add29.5.i, ptr %next_desc32.5.i, align 4
  %87 = load i32, ptr %drx.i, align 4
  %88 = load ptr, ptr %rx.i, align 4
  %next_desc39.i = getelementptr %struct.descriptor, ptr %88, i32 5, i32 3
  %89 = ptrtoint ptr %next_desc39.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %next_desc39.i, align 4
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %dctrl.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 28
  %call.i90.i = tail call ptr @dma_alloc_attrs(ptr noundef %91, i32 noundef 40, ptr noundef %dctrl.i, i32 noundef 3264, i32 noundef 0) #7
  %pctrl.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 27
  %92 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i90.i, ptr %pctrl.i, align 4
  %tobool43.not.i = icmp eq ptr %call.i90.i, null
  %93 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev2, align 4
  br i1 %tobool43.not.i, label %err_pctrl.i, label %if.end44

err_pctrl.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx.i, align 4
  %97 = ptrtoint ptr %drx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %drx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %94, i32 noundef 96, ptr noundef %96, i32 noundef %98, i32 noundef 0) #7
  br label %err_rx.i

err_rx.i:                                         ; preds = %err_pctrl.i, %if.end.i.err_rx.i_crit_edge
  %99 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev2, align 4
  %101 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx.i, align 4
  %103 = ptrtoint ptr %dtx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dtx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %100, i32 noundef 96, ptr noundef %102, i32 noundef %104, i32 noundef 0) #7
  br label %cleanup

if.end44:                                         ; preds = %for.body.preheader.i
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %94, i1 noundef zeroext true) #7
  %105 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %106, i32 noundef 2000) #7
  %107 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev2, align 4
  %call.i.i182 = tail call i32 @__pm_runtime_set_status(ptr noundef %108, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i183, label %if.end48, label %if.end44.error_pm_crit_edge

if.end44.error_pm_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_pm

if.end48:                                         ; preds = %if.end44
  %109 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_enable(ptr noundef %110) #7
  %complete = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 5
  %111 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #7
  %112 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev2, align 4
  %call50 = tail call ptr @crypto_engine_alloc_init(ptr noundef %113, i1 noundef zeroext true) #7
  %engine = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 4
  %114 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call50, ptr %engine, align 4
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.20) #10
  br label %error_engine

if.end58:                                         ; preds = %if.end48
  %call60 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.23) #10
  br label %error_engine

if.end67:                                         ; preds = %if.end58
  %call68 = tail call fastcc i32 @sl3516_ce_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.error_alg_crit_edge

if.end67.error_alg_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alg

if.end71:                                         ; preds = %if.end67
  %call72 = tail call i32 @sl3516_ce_rng_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.error_rng_crit_edge

if.end71.error_rng_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_rng

if.end75:                                         ; preds = %if.end71
  %119 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev2, align 4
  %call77 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %error_pmuse, label %if.end80

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !157
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %125 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev2, align 4
  %and = and i32 %124, -16
  %and88 = and i32 %124, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.26, i32 noundef %and, i32 noundef %and88) #10
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  %add.ptr92 = getelementptr i8, ptr %128, i32 65280
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #7, !srcloc !157
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %131 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev2, align 4
  %and100 = and i32 %130, 65520
  %and101 = and i32 %130, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull @.str.30, i32 noundef %and100, i32 noundef %and101) #10
  %133 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev2, align 4
  %call.i185 = tail call i32 @__pm_runtime_idle(ptr noundef %134, i32 noundef 4) #7
  %call104 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.32, ptr noundef null) #7
  %dbgfs_dir = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 25
  %135 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call104, ptr %dbgfs_dir, align 4
  %call106 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %call104, ptr noundef nonnull %call.i, ptr noundef nonnull @sl3516_ce_debugfs_fops) #7
  %dbgfs_stats = getelementptr inbounds %struct.sl3516_ce_dev, ptr %call.i, i32 0, i32 26
  %136 = ptrtoint ptr %dbgfs_stats to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call106, ptr %dbgfs_stats, align 4
  br label %cleanup

error_pmuse:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sl3516_ce_rng_unregister(ptr noundef nonnull %call.i) #7
  br label %error_rng

error_rng:                                        ; preds = %error_pmuse, %if.end71.error_rng_crit_edge
  %err.0 = phi i32 [ %call72, %if.end71.error_rng_crit_edge ], [ %call77, %error_pmuse ]
  tail call fastcc void @sl3516_ce_unregister_algs(ptr noundef nonnull %call.i)
  br label %error_alg

error_alg:                                        ; preds = %error_rng, %if.end67.error_alg_crit_edge
  %err.1 = phi i32 [ %call68, %if.end67.error_alg_crit_edge ], [ %err.0, %error_rng ]
  %137 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %engine, align 4
  %call108 = tail call i32 @crypto_engine_exit(ptr noundef %138) #7
  br label %error_engine

error_engine:                                     ; preds = %error_alg, %do.end65, %do.end56
  %err.2 = phi i32 [ %call60, %do.end65 ], [ %err.1, %error_alg ], [ -12, %do.end56 ]
  %139 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %140, i1 noundef zeroext true) #7
  br label %error_pm

error_pm:                                         ; preds = %error_engine, %if.end44.error_pm_crit_edge
  %err.3 = phi i32 [ %err.2, %error_engine ], [ %call.i.i182, %if.end44.error_pm_crit_edge ]
  %141 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev2, align 4
  %143 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx.i, align 4
  %145 = ptrtoint ptr %dtx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dtx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %142, i32 noundef 96, ptr noundef %144, i32 noundef %146, i32 noundef 0) #7
  %147 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev2, align 4
  %149 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rx.i, align 4
  %151 = ptrtoint ptr %drx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %drx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %148, i32 noundef 96, ptr noundef %150, i32 noundef %152, i32 noundef 0) #7
  %153 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev2, align 4
  %155 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pctrl.i, align 4
  %157 = ptrtoint ptr %dctrl.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dctrl.i, align 4
  tail call void @dma_free_attrs(ptr noundef %154, i32 noundef 40, ptr noundef %156, i32 noundef %158, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end80, %err_rx.i, %if.end40.cleanup_crit_edge, %if.then33, %if.then23, %do.end, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call.i177, %do.end ], [ %call27, %if.then23 ], [ %11, %if.then33 ], [ %err.3, %error_pm ], [ 0, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %err_rx.i ], [ -12, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sl3516_ce_rng_unregister(ptr noundef %1) #7
  %2 = load ptr, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.sl3516_ce_unregister_algs.exit_crit_edge, label %if.end.i

entry.sl3516_ce_unregister_algs.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sl3516_ce_unregister_algs.exit

if.end.i:                                         ; preds = %entry
  %3 = load i32, ptr @ce_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cond.i = icmp eq i32 %3, 5
  br i1 %cond.i, label %do.end.i, label %if.end.i.sl3516_ce_unregister_algs.exit_crit_edge

if.end.i.sl3516_ce_unregister_algs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sl3516_ce_unregister_algs.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 8)) #10
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4)) #7
  br label %sl3516_ce_unregister_algs.exit

sl3516_ce_unregister_algs.exit:                   ; preds = %do.end.i, %if.end.i.sl3516_ce_unregister_algs.exit_crit_edge, %entry.sl3516_ce_unregister_algs.exit_crit_edge
  %engine = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine, align 4
  %call1 = tail call i32 @crypto_engine_exit(ptr noundef %7) #7
  %dev.i7 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i7, align 4
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  %10 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i7, align 4
  %tx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx.i, align 4
  %dtx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %dtx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 96, ptr noundef %13, i32 noundef %15, i32 noundef 0) #7
  %16 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i7, align 4
  %rx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.i, align 4
  %drx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %drx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef 96, ptr noundef %19, i32 noundef %21, i32 noundef 0) #7
  %22 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i7, align 4
  %pctrl.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pctrl.i, align 4
  %dctrl.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 28
  %26 = ptrtoint ptr %dctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dctrl.i, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef 40, ptr noundef %25, i32 noundef %27, i32 noundef 0) #7
  %dbgfs_dir = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 25
  %28 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %29) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ce_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_irq = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 16
  %0 = ptrtoint ptr %stat_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_irq, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stat_irq, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 65284
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !157
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 65284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !155
  %and = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34) #10
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  %and7 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %do.end12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end.if.end14_crit_edge
  %and15 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %do.end20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end14.if.end22_crit_edge
  %and23 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %do.end28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.43) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end22.if.end30_crit_edge
  %and31 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %stat_irq_tx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 17
  %16 = ptrtoint ptr %stat_irq_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_irq_tx, align 4
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %stat_irq_tx, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %and36 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %status, align 4
  %complete = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #7
  %stat_irq_rx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %data, i32 0, i32 18
  %19 = ptrtoint ptr %stat_irq_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_irq_rx, align 4
  %inc39 = add i32 %20, 1
  store i32 %inc39, ptr %stat_irq_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end35.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sl3516_ce_register_algs(ptr noundef %ce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ce, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  %0 = load i32, ptr @ce_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cond = icmp eq i32 %0, 5
  br i1 %cond, label %do.end, label %sw.default

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 8)) #10
  %call = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 8)) #10
  store ptr null, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  %dev22 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %5 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.52) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end8 ], [ 0, %sw.default ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_rng_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !164
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sl3516_ce_rng_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sl3516_ce_unregister_algs(ptr nocapture noundef readonly %ce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ce_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %do.end, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %ce, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 8)) #10
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4)) #7
  br label %for.end

for.end:                                          ; preds = %do.end, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_skencrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_skdecrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sl3516_ce_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sl3516_ce_debugfs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_debugfs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hwrng_stat_req = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %hwrng_stat_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwrng_stat_req, align 4
  %hwrng_stat_bytes = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %hwrng_stat_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwrng_stat_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %3, i32 noundef %5) #7
  %stat_irq = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %stat_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, i32 noundef %7) #7
  %stat_irq_tx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %stat_irq_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_irq_tx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, i32 noundef %9) #7
  %stat_irq_rx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %stat_irq_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat_irq_rx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %11) #7
  %stat_req = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, i32 noundef %13) #7
  %fallback_sg_count_tx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %fallback_sg_count_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fallback_sg_count_tx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, i32 noundef %15) #7
  %fallback_sg_count_rx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %fallback_sg_count_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fallback_sg_count_rx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.60, i32 noundef %17) #7
  %fallback_mod16 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %fallback_mod16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fallback_mod16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.61, i32 noundef %19) #7
  %fallback_align16 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %fallback_align16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fallback_align16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, i32 noundef %21) #7
  %fallback_not_same_len = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %fallback_not_same_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fallback_not_same_len, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, i32 noundef %23) #7
  %24 = load ptr, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 2), align 8
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %entry
  %25 = load i32, ptr @ce_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cond = icmp eq i32 %25, 5
  br i1 %cond, label %sw.bb, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load i32, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 5), align 128
  %27 = load i32, ptr getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 6), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 9), ptr noundef getelementptr inbounds ([1 x %struct.sl3516_ce_alg_template], ptr @ce_algs, i32 0, i32 0, i32 4, i32 0, i32 11, i32 8), i32 noundef %26, i32 noundef %27) #7
  br label %for.end

for.end:                                          ; preds = %sw.bb, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %clks = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %error

if.end:                                           ; preds = %if.end.i
  %reset = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ctx.i, align 4
  %crx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %crx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %crx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %dtx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %dtx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dtx.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 65296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %drx.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %drx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drx.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 65308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #7, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 65284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #7, !srcloc !155
  br label %cleanup

error:                                            ; preds = %if.end.error_crit_edge, %if.then3.i, %entry.error_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %entry.error_crit_edge ], [ @.str.67, %if.then3.i ], [ @.str.70, %if.end.error_crit_edge ]
  %err.0 = phi i32 [ %call.i, %entry.error_crit_edge ], [ %call1.i, %if.then3.i ], [ %call3, %if.end.error_crit_edge ]
  %dev9 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull %.str.70.sink) #10
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset.i, align 4
  %call1.i20 = tail call i32 @reset_control_assert(ptr noundef %25) #7
  %clks.i = getelementptr inbounds %struct.sl3516_ce_dev, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clks.i, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end10 ]
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 132, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sl3516_ce_run_task.__UNIQUE_ID_ddebug248, !1, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 142, i32 3}
!8 = !{ptr @sl3516_ce_run_task.__UNIQUE_ID_ddebug249, !7, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 173, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sl3516_ce_run_task._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @sl3516_ce_run_task._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 178, i32 3}
!17 = !{ptr @sl3516_ce_run_task._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @sl3516_ce_run_task._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_sl3516_ce__250_531_sl3516_ce_driver_init6, !20, !"__initcall__kmod_sl3516_ce__250_531_sl3516_ce_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 531, i32 1}
!21 = !{ptr @__exitcall_sl3516_ce_driver_exit, !20, !"__exitcall_sl3516_ce_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description251, !23, !"__UNIQUE_ID_description251", i1 false, i1 false}
!23 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 533, i32 1}
!24 = !{ptr @__UNIQUE_ID_file252, !25, !"__UNIQUE_ID_file252", i1 false, i1 false}
!25 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 534, i32 1}
!26 = !{ptr @__UNIQUE_ID_license253, !25, !"__UNIQUE_ID_license253", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_author254, !28, !"__UNIQUE_ID_author254", i1 false, i1 false}
!28 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 535, i32 1}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 525, i32 12}
!31 = !{ptr @sl3516_ce_driver, !32, !"sl3516_ce_driver", i1 false, i1 false}
!32 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 521, i32 31}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 413, i32 61}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 415, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sl3516_ce_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sl3516_ce_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 422, i32 10}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 426, i32 3}
!44 = !{ptr @sl3516_ce_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sl3516_ce_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 442, i32 3}
!48 = !{ptr @sl3516_ce_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sl3516_ce_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 449, i32 3}
!52 = !{ptr @sl3516_ce_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sl3516_ce_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 466, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sl3516_ce_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sl3516_ce_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 470, i32 2}
!61 = !{ptr @sl3516_ce_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sl3516_ce_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 478, i32 37}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 479, i32 40}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 196, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ce_irq_handler._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ce_irq_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 198, i32 3}
!74 = !{ptr @ce_irq_handler._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ce_irq_handler._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 200, i32 3}
!78 = !{ptr @ce_irq_handler._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ce_irq_handler._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 202, i32 3}
!82 = !{ptr @ce_irq_handler._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ce_irq_handler._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 288, i32 4}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sl3516_ce_register_algs._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sl3516_ce_register_algs._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 292, i32 5}
!94 = !{ptr @sl3516_ce_register_algs._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sl3516_ce_register_algs._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 300, i32 4}
!98 = !{ptr @sl3516_ce_register_algs._entry.51, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sl3516_ce_register_algs._entry_ptr.53, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @ce_algs, !101, !"ce_algs", i1 false, i1 false}
!101 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 216, i32 38}
!102 = !{ptr @sl3516_ce_debugfs_fops, !103, !"sl3516_ce_debugfs_fops", i1 false, i1 false}
!103 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 276, i32 1}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 249, i32 18}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 251, i32 18}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 252, i32 18}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 253, i32 18}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 254, i32 18}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 255, i32 18}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 256, i32 18}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 257, i32 18}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 258, i32 18}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 259, i32 18}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 266, i32 20}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 315, i32 4}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @sl3516_ce_unregister_algs._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @sl3516_ce_unregister_algs._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @sl3516_ce_crypto_of_match_table, !132, !"sl3516_ce_crypto_of_match_table", i1 false, i1 false}
!132 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 515, i32 34}
!133 = !{ptr @sl3516_ce_pm_ops, !134, !"sl3516_ce_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 369, i32 32}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 352, i32 3}
!137 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @sl3516_ce_pm_resume._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @sl3516_ce_pm_resume._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/gemini/sl3516-ce-core.c", i32 357, i32 3}
!142 = !{ptr @sl3516_ce_pm_resume._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @sl3516_ce_pm_resume._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148733385, i64 2148733390, i64 2148733403, i64 2148733447, i64 2148733481, i64 2148733502}
!154 = !{i64 2154746798}
!155 = !{i64 6367155}
!156 = !{i64 2154747942}
!157 = !{i64 6367573}
!158 = !{i64 2154755259}
!159 = !{i64 2154785291}
!160 = !{i64 2154788797}
!161 = !{i64 2154757332}
!162 = !{i64 2154757551}
!163 = !{i64 2148250989}
!164 = !{i64 735812, i64 735837, i64 735859, i64 735875, i64 735887, i64 735907, i64 735931, i64 735947, i64 735959}
!165 = !{i64 2148251177}
!166 = !{i64 2154773521}
!167 = !{i64 2154773933}
!168 = !{i64 2154774339}
