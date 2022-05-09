; ModuleID = '/llk/IR_all_yes/drivers/crypto/amlogic/amlogic-gxl-core.c_pt.bc'
source_filename = "../drivers/crypto/amlogic/amlogic-gxl-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.meson_alg_template = type { i32, i32, [120 x i8], %union.anon.75, ptr, i32, i32, [116 x i8] }
%union.anon.75 = type { %struct.skcipher_alg }
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
%struct.meson_dev = type { ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.meson_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_amlogic_gxl_crypto__234_313_meson_crypto_driver_init6 = internal global ptr @meson_crypto_driver_init, section ".initcall6.init", align 4
@meson_crypto_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_crypto_probe, ptr @meson_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_crypto_driver_exit = internal global ptr @meson_crypto_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [67 x i8] c"amlogic_gxl_crypto.description=Amlogic GXL cryptographic offloader\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [66 x i8] c"amlogic_gxl_crypto.file=drivers/crypto/amlogic/amlogic-gxl-crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [31 x i8] c"amlogic_gxl_crypto.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [63 x i8] c"amlogic_gxl_crypto.author=Corentin Labbe <clabbe@baylibre.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gxl-crypto\00", [21 x i8] zeroinitializer }, align 32
@meson_crypto_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,gxl-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request MMIO err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_crypto_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/crypto/amlogic/amlogic-gxl-core.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry_ptr = internal global ptr @meson_crypto_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blkmv\00", [26 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot get core clock err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry_ptr.9 = internal global ptr @meson_crypto_probe._entry.7, section ".printk_index", align 4
@meson_crypto_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot request IRQ for flow %d\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry_ptr.12 = internal global ptr @meson_crypto_probe._entry.10, section ".printk_index", align 4
@meson_crypto_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot prepare_enable busclk\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_crypto_probe._entry_ptr.15 = internal global ptr @meson_crypto_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@meson_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @meson_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@meson_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 38, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s %d Got irq for flow %d but ctrl is empty\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_irq_handler\00", [46 x i8] zeroinitializer }, align 32
@meson_irq_handler._entry_ptr = internal global ptr @meson_irq_handler._entry, section ".printk_index", align 4
@meson_irq_handler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 42, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s %d from unknown irq\0A\00", [40 x i8] zeroinitializer }, align 32
@meson_irq_handler._entry_ptr.21 = internal global ptr @meson_irq_handler._entry.19, section ".printk_index", align 4
@meson_allocate_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate engine\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_allocate_chanlist\00", [40 x i8] zeroinitializer }, align 32
@meson_allocate_chanlist._entry_ptr = internal global ptr @meson_allocate_chanlist._entry, section ".printk_index", align 4
@meson_allocate_chanlist._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot start engine\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_allocate_chanlist._entry_ptr.26 = internal global ptr @meson_allocate_chanlist._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mc_algs = internal global [2 x %struct.meson_alg_template] [%struct.meson_alg_template { i32 5, i32 1, [120 x i8] undef, %union.anon.75 { %struct.skcipher_alg { ptr @meson_aes_setkey, ptr @meson_skencrypt, ptr @meson_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 32, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-gxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @meson_cipher_init, ptr @meson_cipher_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, ptr null, i32 0, i32 0, [116 x i8] undef }, %struct.meson_alg_template { i32 5, i32 0, [120 x i8] undef, %union.anon.75 { %struct.skcipher_alg { ptr @meson_aes_setkey, ptr @meson_skencrypt, ptr @meson_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 32, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-gxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.71 zeroinitializer, ptr @meson_cipher_init, ptr @meson_cipher_exit, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } } }, ptr null, i32 0, i32 0, [116 x i8] undef }], align 128
@meson_register_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to register %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_register_algs\00", [44 x i8] zeroinitializer }, align 32
@meson_register_algs._entry_ptr = internal global ptr @meson_register_algs._entry, section ".printk_index", align 4
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel %d: nreq %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s %s %lu %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"meson_crypto_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 304, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 308, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"meson_crypto_of_match_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 298, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 230, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 233, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 236, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 249, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 256, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 270, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"meson_debugfs_fops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 121, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 38, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 42, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 153, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 160, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 87, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 188, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 107, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [45 x i8] c"../drivers/crypto/amlogic/amlogic-gxl-core.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 112, i32 20 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_meson_crypto_driver_exit, ptr @__initcall__kmod_amlogic_gxl_crypto__234_313_meson_crypto_driver_init6, ptr @meson_allocate_chanlist._entry, ptr @meson_allocate_chanlist._entry.24, ptr @meson_allocate_chanlist._entry_ptr, ptr @meson_allocate_chanlist._entry_ptr.26, ptr @meson_crypto_driver_exit, ptr @meson_crypto_probe._entry, ptr @meson_crypto_probe._entry.10, ptr @meson_crypto_probe._entry.13, ptr @meson_crypto_probe._entry.7, ptr @meson_crypto_probe._entry_ptr, ptr @meson_crypto_probe._entry_ptr.12, ptr @meson_crypto_probe._entry_ptr.15, ptr @meson_crypto_probe._entry_ptr.9, ptr @meson_irq_handler._entry, ptr @meson_irq_handler._entry.19, ptr @meson_irq_handler._entry_ptr, ptr @meson_irq_handler._entry_ptr.21, ptr @meson_register_algs._entry, ptr @meson_register_algs._entry_ptr, ptr @meson_crypto_driver, ptr @.str, ptr @meson_crypto_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @meson_debugfs_fops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_crypto_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irq_handler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_allocate_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_allocate_chanlist._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_register_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_crypto_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_crypto_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_crypto_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_crypto_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_crypto_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.meson_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %3) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #4
  %busclk = getelementptr inbounds %struct.meson_dev, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %busclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %busclk, align 4
  %cmp.i119 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %5) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 8, i32 noundef 3520) #4
  %irqs = getelementptr inbounds %struct.meson_dev, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %irqs, align 4
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %9 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irqs, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call25, ptr %10, align 4
  %12 = load ptr, ptr %irqs, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp29 = icmp slt i32 %14, 0
  br i1 %cmp29, label %if.end22.cleanup_crit_edge, label %if.end33

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %call.i120 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @meson_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp38 = icmp slt i32 %call.i120, 0
  br i1 %cmp38, label %if.end33.do.end42_crit_edge, label %for.inc

if.end33.do.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

do.end42:                                         ; preds = %if.end33.1.do.end42_crit_edge, %if.end33.do.end42_crit_edge
  %call.i120.lcssa = phi i32 [ %call.i120, %if.end33.do.end42_crit_edge ], [ %call.i120.1, %if.end33.1.do.end42_crit_edge ]
  %i.0158.lcssa161 = phi i32 [ 0, %if.end33.do.end42_crit_edge ], [ 1, %if.end33.1.do.end42_crit_edge ]
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %i.0158.lcssa161) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end33
  %call25.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #4
  %17 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irqs, align 4
  %arrayidx.1 = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call25.1, ptr %arrayidx.1, align 4
  %20 = load ptr, ptr %irqs, align 4
  %arrayidx28.1 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp29.1 = icmp slt i32 %22, 0
  br i1 %cmp29.1, label %for.inc.cleanup_crit_edge, label %if.end33.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33.1:                                       ; preds = %for.inc
  %call.i120.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @meson_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.1)
  %cmp38.1 = icmp slt i32 %call.i120.1, 0
  br i1 %cmp38.1, label %if.end33.1.do.end42_crit_edge, label %for.inc.1

if.end33.1.do.end42_crit_edge:                    ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

for.inc.1:                                        ; preds = %if.end33.1
  %23 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %busclk, align 4
  %call.i121 = tail call i32 @clk_prepare(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.inc.1.do.end51_crit_edge

for.inc.1.do.end51_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end51

if.end.i:                                         ; preds = %for.inc.1
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end53, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %24) #4
  br label %do.end51

do.end51:                                         ; preds = %if.then3.i, %for.inc.1.do.end51_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i121, %for.inc.1.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end53:                                         ; preds = %if.end.i
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef 160, i32 noundef 3520) #4
  %chanlist.i = getelementptr inbounds %struct.meson_dev, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i.i, ptr %chanlist.i, align 4
  %tobool.not.i122 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i122, label %if.end53.error_flow_crit_edge, label %for.body.preheader.i

if.end53.error_flow_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_flow

for.body.preheader.i:                             ; preds = %if.end53
  %complete.i = getelementptr %struct.meson_flow, ptr %call5.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr %struct.meson_flow, ptr %call5.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #4
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  %call4.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %30, i1 noundef zeroext true) #4
  %31 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chanlist.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call4.i, ptr %32, align 4
  %34 = load ptr, ptr %chanlist.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool10.not.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i, label %error_engine.i, label %if.end13.i

if.end13.i:                                       ; preds = %for.body.preheader.i
  %call17.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end24.i, label %if.end13.i.while.body.i.preheader.sink.split.i_crit_edge

if.end13.i.while.body.i.preheader.sink.split.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.preheader.sink.split.i

if.end24.i:                                       ; preds = %if.end13.i
  %37 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2, align 4
  %39 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chanlist.i, align 4
  %t_phy.i = getelementptr %struct.meson_flow, ptr %40, i32 0, i32 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef 768, ptr noundef %t_phy.i, i32 noundef 3264, i32 noundef 0) #4
  %41 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chanlist.i, align 4
  %tl.i = getelementptr %struct.meson_flow, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %tl.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %tl.i, align 4
  %44 = load ptr, ptr %chanlist.i, align 4
  %tl33.i = getelementptr %struct.meson_flow, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %tl33.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tl33.i, align 4
  %tobool34.not.i = icmp eq ptr %46, null
  br i1 %tobool34.not.i, label %if.end24.i.while.body.i.i_crit_edge, label %for.inc.i

if.end24.i.while.body.i.i_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

for.inc.i:                                        ; preds = %if.end24.i
  %complete.1.i = getelementptr %struct.meson_flow, ptr %44, i32 1, i32 1
  %47 = ptrtoint ptr %complete.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %complete.1.i, align 4
  %wait.i.1.i = getelementptr %struct.meson_flow, ptr %44, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #4
  %48 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev2, align 4
  %call4.1.i = tail call ptr @crypto_engine_alloc_init(ptr noundef %49, i1 noundef zeroext true) #4
  %50 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chanlist.i, align 4
  %arrayidx6.1.i = getelementptr %struct.meson_flow, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call4.1.i, ptr %arrayidx6.1.i, align 4
  %53 = load ptr, ptr %chanlist.i, align 4
  %arrayidx8.1.i = getelementptr %struct.meson_flow, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8.1.i, align 4
  %tobool10.not.1.i = icmp eq ptr %55, null
  br i1 %tobool10.not.1.i, label %for.inc.i.while.body.i.preheader.sink.split.i_crit_edge, label %if.end13.1.i

for.inc.i.while.body.i.preheader.sink.split.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.preheader.sink.split.i

if.end13.1.i:                                     ; preds = %for.inc.i
  %call17.1.i = tail call i32 @crypto_engine_start(ptr noundef nonnull %55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1.i)
  %tobool18.not.1.i = icmp eq i32 %call17.1.i, 0
  br i1 %tobool18.not.1.i, label %if.end24.1.i, label %if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge

if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge: ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.preheader.sink.split.i

if.end24.1.i:                                     ; preds = %if.end13.1.i
  %56 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev2, align 4
  %58 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chanlist.i, align 4
  %t_phy.1.i = getelementptr %struct.meson_flow, ptr %59, i32 1, i32 4
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %57, i32 noundef 768, ptr noundef %t_phy.1.i, i32 noundef 3264, i32 noundef 0) #4
  %60 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chanlist.i, align 4
  %tl.1.i = getelementptr %struct.meson_flow, ptr %61, i32 1, i32 5
  %62 = ptrtoint ptr %tl.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.1.i, ptr %tl.1.i, align 4
  %63 = load ptr, ptr %chanlist.i, align 4
  %tl33.1.i = getelementptr %struct.meson_flow, ptr %63, i32 1, i32 5
  %64 = ptrtoint ptr %tl33.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tl33.1.i, align 4
  %tobool34.not.1.i = icmp eq ptr %65, null
  br i1 %tobool34.not.1.i, label %if.end24.1.i.while.body.i.i_crit_edge, label %if.end24.1.i.if.end57_crit_edge

if.end24.1.i.if.end57_crit_edge:                  ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end24.1.i.while.body.i.i_crit_edge:            ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

error_engine.i:                                   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.22) #7
  br label %error_flow

while.body.i.preheader.sink.split.i:              ; preds = %if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge, %for.inc.i.while.body.i.preheader.sink.split.i_crit_edge, %if.end13.i.while.body.i.preheader.sink.split.i_crit_edge
  %.str.25.sink.i = phi ptr [ @.str.25, %if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge ], [ @.str.25, %if.end13.i.while.body.i.preheader.sink.split.i_crit_edge ], [ @.str.22, %for.inc.i.while.body.i.preheader.sink.split.i_crit_edge ]
  %err.080.ph.i = phi i32 [ %call17.1.i, %if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge ], [ %call17.i, %if.end13.i.while.body.i.preheader.sink.split.i_crit_edge ], [ -12, %for.inc.i.while.body.i.preheader.sink.split.i_crit_edge ]
  %i.179.ph.i = phi i32 [ 1, %if.end13.1.i.while.body.i.preheader.sink.split.i_crit_edge ], [ 0, %if.end13.i.while.body.i.preheader.sink.split.i_crit_edge ], [ 0, %for.inc.i.while.body.i.preheader.sink.split.i_crit_edge ]
  %68 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull %.str.25.sink.i) #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.preheader.sink.split.i, %if.end24.1.i.while.body.i.i_crit_edge, %if.end24.i.while.body.i.i_crit_edge
  %err.080.i = phi i32 [ -12, %if.end24.i.while.body.i.i_crit_edge ], [ -12, %if.end24.1.i.while.body.i.i_crit_edge ], [ %err.080.ph.i, %while.body.i.preheader.sink.split.i ]
  %i.179.i = phi i32 [ 0, %if.end24.i.while.body.i.i_crit_edge ], [ 1, %if.end24.1.i.while.body.i.i_crit_edge ], [ %i.179.ph.i, %while.body.i.preheader.sink.split.i ]
  %70 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i = getelementptr %struct.meson_flow, ptr %71, i32 %i.179.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i63.i = tail call i32 @crypto_engine_exit(ptr noundef %73) #4
  %74 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i = getelementptr %struct.meson_flow, ptr %75, i32 %i.179.i, i32 5
  %76 = ptrtoint ptr %tl.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev2, align 4
  %t_phy.i.i = getelementptr %struct.meson_flow, ptr %75, i32 %i.179.i, i32 4
  %80 = ptrtoint ptr %t_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %t_phy.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %79, i32 noundef 768, ptr noundef nonnull %77, i32 noundef %81, i32 noundef 0) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.179.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.179.i)
  %cmp.i.i = icmp sgt i32 %i.179.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.1, label %if.end.i.i.meson_allocate_chanlist.exit_crit_edge

if.end.i.i.meson_allocate_chanlist.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_allocate_chanlist.exit

while.body.i.i.1:                                 ; preds = %if.end.i.i
  %82 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i.i.1 = getelementptr %struct.meson_flow, ptr %83, i32 %dec.i.i
  %84 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.1, align 4
  %call.i63.i.1 = tail call i32 @crypto_engine_exit(ptr noundef %85) #4
  %86 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chanlist.i, align 4
  %tl.i.i.1 = getelementptr %struct.meson_flow, ptr %87, i32 %dec.i.i, i32 5
  %88 = ptrtoint ptr %tl.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tl.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.1, label %while.body.i.i.1.meson_allocate_chanlist.exit_crit_edge, label %if.then.i.i.1

while.body.i.i.1.meson_allocate_chanlist.exit_crit_edge: ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_allocate_chanlist.exit

if.then.i.i.1:                                    ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %t_phy.i.i.1 = getelementptr %struct.meson_flow, ptr %87, i32 %dec.i.i, i32 4
  %92 = ptrtoint ptr %t_phy.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %t_phy.i.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %91, i32 noundef 768, ptr noundef nonnull %89, i32 noundef %93, i32 noundef 0) #4
  br label %meson_allocate_chanlist.exit

meson_allocate_chanlist.exit:                     ; preds = %if.then.i.i.1, %while.body.i.i.1.meson_allocate_chanlist.exit_crit_edge, %if.end.i.i.meson_allocate_chanlist.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.080.i)
  %tobool55.not = icmp eq i32 %err.080.i, 0
  br i1 %tobool55.not, label %meson_allocate_chanlist.exit.if.end57_crit_edge, label %meson_allocate_chanlist.exit.error_flow_crit_edge

meson_allocate_chanlist.exit.error_flow_crit_edge: ; preds = %meson_allocate_chanlist.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_flow

meson_allocate_chanlist.exit.if.end57_crit_edge:  ; preds = %meson_allocate_chanlist.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end57:                                         ; preds = %meson_allocate_chanlist.exit.if.end57_crit_edge, %if.end24.1.i.if.end57_crit_edge
  store ptr %call.i, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 128
  %94 = load i32, ptr @mc_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %94)
  %cond.i = icmp eq i32 %94, 5
  br i1 %cond.i, label %sw.bb.i, label %if.end57.for.inc.i127_crit_edge

if.end57.for.inc.i127_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i127

sw.bb.i:                                          ; preds = %if.end57
  %call.i124 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i125 = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i125, label %sw.bb.i.for.inc.i127_crit_edge, label %sw.bb.i.error_alg_crit_edge

sw.bb.i.error_alg_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_alg

sw.bb.i.for.inc.i127_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i127

for.inc.i127:                                     ; preds = %sw.bb.i.for.inc.i127_crit_edge, %if.end57.for.inc.i127_crit_edge
  store ptr %call.i, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 128
  %95 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cond.1.i = icmp eq i32 %95, 5
  br i1 %cond.1.i, label %sw.bb.1.i, label %for.inc.i127.if.end61_crit_edge

for.inc.i127.if.end61_crit_edge:                  ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

sw.bb.1.i:                                        ; preds = %for.inc.i127
  %call.1.i = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %sw.bb.1.i.if.end61_crit_edge, label %sw.bb.1.i.error_alg_crit_edge

sw.bb.1.i.error_alg_crit_edge:                    ; preds = %sw.bb.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_alg

sw.bb.1.i.if.end61_crit_edge:                     ; preds = %sw.bb.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.end61:                                         ; preds = %sw.bb.1.i.if.end61_crit_edge, %for.inc.i127.if.end61_crit_edge
  %call62 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #4
  %dbgfs_dir = getelementptr inbounds %struct.meson_dev, ptr %call.i, i32 0, i32 6
  %96 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call62, ptr %dbgfs_dir, align 4
  %call64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call62, ptr noundef nonnull %call.i, ptr noundef nonnull @meson_debugfs_fops) #4
  br label %cleanup

error_alg:                                        ; preds = %sw.bb.1.i.error_alg_crit_edge, %sw.bb.i.error_alg_crit_edge
  %mc1.lcssa.i = phi ptr [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), %sw.bb.i.error_alg_crit_edge ], [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), %sw.bb.1.i.error_alg_crit_edge ]
  %alg.lcssa.i = phi ptr [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3), %sw.bb.i.error_alg_crit_edge ], [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3), %sw.bb.1.i.error_alg_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.i124, %sw.bb.i.error_alg_crit_edge ], [ %call.1.i, %sw.bb.1.i.error_alg_crit_edge ]
  %97 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev2, align 4
  %cra_name.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.lcssa.i, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.28, ptr noundef %cra_name.i) #7
  %99 = ptrtoint ptr %mc1.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %mc1.lcssa.i, align 128
  %100 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 128
  %tobool.not.i129 = icmp eq ptr %100, null
  br i1 %tobool.not.i129, label %error_alg.for.inc.i134_crit_edge, label %if.end.i131

error_alg.for.inc.i134_crit_edge:                 ; preds = %error_alg
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i134

if.end.i131:                                      ; preds = %error_alg
  %101 = load i32, ptr @mc_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %101)
  %cond.i130 = icmp eq i32 %101, 5
  br i1 %cond.i130, label %sw.bb.i132, label %if.end.i131.for.inc.i134_crit_edge

if.end.i131.for.inc.i134_crit_edge:               ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i134

sw.bb.i132:                                       ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  br label %for.inc.i134

for.inc.i134:                                     ; preds = %sw.bb.i132, %if.end.i131.for.inc.i134_crit_edge, %error_alg.for.inc.i134_crit_edge
  %102 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 128
  %tobool.not.1.i133 = icmp eq ptr %102, null
  br i1 %tobool.not.1.i133, label %for.inc.i134.error_flow_crit_edge, label %if.end.1.i

for.inc.i134.error_flow_crit_edge:                ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_flow

if.end.1.i:                                       ; preds = %for.inc.i134
  %103 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %103)
  %cond.1.i135 = icmp eq i32 %103, 5
  br i1 %cond.1.i135, label %sw.bb.1.i136, label %if.end.1.i.error_flow_crit_edge

if.end.1.i.error_flow_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_flow

sw.bb.1.i136:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  br label %error_flow

error_flow:                                       ; preds = %sw.bb.1.i136, %if.end.1.i.error_flow_crit_edge, %for.inc.i134.error_flow_crit_edge, %meson_allocate_chanlist.exit.error_flow_crit_edge, %error_engine.i, %if.end53.error_flow_crit_edge
  %err.0 = phi i32 [ %err.080.i, %meson_allocate_chanlist.exit.error_flow_crit_edge ], [ %call.lcssa.i, %for.inc.i134.error_flow_crit_edge ], [ %call.lcssa.i, %if.end.1.i.error_flow_crit_edge ], [ %call.lcssa.i, %sw.bb.1.i136 ], [ -12, %if.end53.error_flow_crit_edge ], [ -12, %error_engine.i ]
  %104 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr %struct.meson_flow, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i, align 4
  %call.i139 = tail call i32 @crypto_engine_exit(ptr noundef %107) #4
  %108 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chanlist.i, align 4
  %tl.i140 = getelementptr %struct.meson_flow, ptr %109, i32 1, i32 5
  %110 = ptrtoint ptr %tl.i140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tl.i140, align 4
  %tobool.not.i141 = icmp eq ptr %111, null
  br i1 %tobool.not.i141, label %error_flow.if.end.i144_crit_edge, label %if.then.i

error_flow.if.end.i144_crit_edge:                 ; preds = %error_flow
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i144

if.then.i:                                        ; preds = %error_flow
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev2, align 4
  %t_phy.i142 = getelementptr %struct.meson_flow, ptr %109, i32 1, i32 4
  %114 = ptrtoint ptr %t_phy.i142 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %t_phy.i142, align 4
  tail call void @dma_free_attrs(ptr noundef %113, i32 noundef 768, ptr noundef nonnull %111, i32 noundef %115, i32 noundef 0) #4
  br label %if.end.i144

if.end.i144:                                      ; preds = %if.then.i, %error_flow.if.end.i144_crit_edge
  %116 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chanlist.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %call.i139.1 = tail call i32 @crypto_engine_exit(ptr noundef %119) #4
  %120 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chanlist.i, align 4
  %tl.i140.1 = getelementptr %struct.meson_flow, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %tl.i140.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tl.i140.1, align 4
  %tobool.not.i141.1 = icmp eq ptr %123, null
  br i1 %tobool.not.i141.1, label %if.end.i144.if.end.i144.1_crit_edge, label %if.then.i.1

if.end.i144.if.end.i144.1_crit_edge:              ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i144.1

if.then.i.1:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #6
  %124 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev2, align 4
  %t_phy.i142.1 = getelementptr %struct.meson_flow, ptr %121, i32 0, i32 4
  %126 = ptrtoint ptr %t_phy.i142.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %t_phy.i142.1, align 4
  tail call void @dma_free_attrs(ptr noundef %125, i32 noundef 768, ptr noundef nonnull %123, i32 noundef %127, i32 noundef 0) #4
  br label %if.end.i144.1

if.end.i144.1:                                    ; preds = %if.then.i.1, %if.end.i144.if.end.i144.1_crit_edge
  %128 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %busclk, align 4
  tail call void @clk_disable(ptr noundef %129) #4
  tail call void @clk_unprepare(ptr noundef %129) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i144.1, %if.end61, %do.end51, %for.inc.cleanup_crit_edge, %do.end42, %if.end22.cleanup_crit_edge, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then15 ], [ %call.i120.lcssa, %do.end42 ], [ %retval.0.i.ph, %do.end51 ], [ %err.0, %if.end.i144.1 ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %14, %if.end22.cleanup_crit_edge ], [ %22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_crypto_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dbgfs_dir = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #4
  %4 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 128
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  %5 = load i32, ptr @mc_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cond.i = icmp eq i32 %5, 5
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb.i, %if.end.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 128
  %tobool.not.1.i = icmp eq ptr %6, null
  br i1 %tobool.not.1.i, label %for.inc.i.meson_unregister_algs.exit_crit_edge, label %if.end.1.i

for.inc.i.meson_unregister_algs.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_unregister_algs.exit

if.end.1.i:                                       ; preds = %for.inc.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cond.1.i = icmp eq i32 %7, 5
  br i1 %cond.1.i, label %sw.bb.1.i, label %if.end.1.i.meson_unregister_algs.exit_crit_edge

if.end.1.i.meson_unregister_algs.exit_crit_edge:  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_unregister_algs.exit

sw.bb.1.i:                                        ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  br label %meson_unregister_algs.exit

meson_unregister_algs.exit:                       ; preds = %sw.bb.1.i, %if.end.1.i.meson_unregister_algs.exit_crit_edge, %for.inc.i.meson_unregister_algs.exit_crit_edge
  %chanlist.i = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr %struct.meson_flow, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @crypto_engine_exit(ptr noundef %11) #4
  %12 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist.i, align 4
  %tl.i = getelementptr %struct.meson_flow, ptr %13, i32 1, i32 5
  %14 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl.i, align 4
  %tobool.not.i4 = icmp eq ptr %15, null
  br i1 %tobool.not.i4, label %meson_unregister_algs.exit.if.end.i5_crit_edge, label %if.then.i

meson_unregister_algs.exit.if.end.i5_crit_edge:   ; preds = %meson_unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i5

if.then.i:                                        ; preds = %meson_unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %t_phy.i = getelementptr %struct.meson_flow, ptr %13, i32 1, i32 4
  %18 = ptrtoint ptr %t_phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_phy.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef 768, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #4
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.then.i, %meson_unregister_algs.exit.if.end.i5_crit_edge
  %20 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chanlist.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i.1 = tail call i32 @crypto_engine_exit(ptr noundef %23) #4
  %24 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chanlist.i, align 4
  %tl.i.1 = getelementptr %struct.meson_flow, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %tl.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tl.i.1, align 4
  %tobool.not.i4.1 = icmp eq ptr %27, null
  br i1 %tobool.not.i4.1, label %if.end.i5.if.end.i5.1_crit_edge, label %if.then.i.1

if.end.i5.if.end.i5.1_crit_edge:                  ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i5.1

if.then.i.1:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %t_phy.i.1 = getelementptr %struct.meson_flow, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %t_phy.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_phy.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef 768, ptr noundef nonnull %27, i32 noundef %31, i32 noundef 0) #4
  br label %if.end.i5.1

if.end.i5.1:                                      ; preds = %if.then.i.1, %if.end.i5.if.end.i5.1_crit_edge
  %busclk = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %busclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %busclk, align 4
  tail call void @clk_disable(ptr noundef %33) #4
  tail call void @clk_unprepare(ptr noundef %33) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irqs = getelementptr inbounds %struct.meson_dev, ptr %data, i32 0, i32 5
  %dev = getelementptr inbounds %struct.meson_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp1 = icmp eq i32 %3, %irq
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.then.1.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %flow.034.lcssa = phi i32 [ 0, %if.then.if.then3_crit_edge ], [ 1, %if.then.1.if.then3_crit_edge ]
  %shl.lcssa = phi i32 [ 16, %if.then.if.then3_crit_edge ], [ 20, %if.then.1.if.then3_crit_edge ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 %shl.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 251658240) #4, !srcloc !85
  %chanlist = getelementptr inbounds %struct.meson_dev, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chanlist, align 4
  %status = getelementptr %struct.meson_flow, ptr %10, i32 %flow.034.lcssa, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %status, align 4
  %12 = load ptr, ptr %chanlist, align 4
  %complete = getelementptr %struct.meson_flow, ptr %12, i32 %flow.034.lcssa, i32 1
  tail call void @complete(ptr noundef %complete) #4
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %irq, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %15 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irqs, align 4
  %arrayidx.1 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %irq)
  %cmp1.1 = icmp eq i32 %18, %irq
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.1 = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #4, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1 = icmp eq i32 %21, 0
  br i1 %tobool.not.1, label %do.end.1, label %if.then.1.if.then3_crit_edge

if.then.1.if.then3_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

do.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %irq, i32 noundef 1) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %irq) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %if.then3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_skencrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_skdecrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @meson_debugfs_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_debugfs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %chanlist = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %stat_req = getelementptr %struct.meson_flow, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef %5) #4
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %stat_req.1 = getelementptr %struct.meson_flow, ptr %7, i32 1, i32 6
  %8 = ptrtoint ptr %stat_req.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_req.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef %9) #4
  %10 = load i32, ptr @mc_algs, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cond = icmp eq i32 %10, 5
  br i1 %cond, label %sw.bb, label %entry.for.inc13_crit_edge

entry.for.inc13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 5), align 4
  %12 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 6), align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3, i32 0, i32 11, i32 9), ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3, i32 0, i32 11, i32 8), i32 noundef %11, i32 noundef %12) #4
  br label %for.inc13

for.inc13:                                        ; preds = %sw.bb, %entry.for.inc13_crit_edge
  %13 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cond.1 = icmp eq i32 %13, 5
  br i1 %cond.1, label %sw.bb.1, label %for.inc13.for.inc13.1_crit_edge

for.inc13.for.inc13.1_crit_edge:                  ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13.1

sw.bb.1:                                          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  %14 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 5), align 4
  %15 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 6), align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3, i32 0, i32 11, i32 9), ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3, i32 0, i32 11, i32 8), i32 noundef %14, i32 noundef %15) #4
  br label %for.inc13.1

for.inc13.1:                                      ; preds = %sw.bb.1, %for.inc13.for.inc13.1_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_amlogic_gxl_crypto__234_313_meson_crypto_driver_init6, !1, !"__initcall__kmod_amlogic_gxl_crypto__234_313_meson_crypto_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 313, i32 1}
!2 = !{ptr @__exitcall_meson_crypto_driver_exit, !1, !"__exitcall_meson_crypto_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 315, i32 1}
!5 = !{ptr @__UNIQUE_ID_file236, !6, !"__UNIQUE_ID_file236", i1 false, i1 false}
!6 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 316, i32 1}
!7 = !{ptr @__UNIQUE_ID_license237, !6, !"__UNIQUE_ID_license237", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author238, !9, !"__UNIQUE_ID_author238", i1 false, i1 false}
!9 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 317, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 308, i32 15}
!12 = !{ptr @meson_crypto_driver, !13, !"meson_crypto_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 304, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 230, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_crypto_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_crypto_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 233, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 236, i32 3}
!26 = !{ptr @meson_crypto_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_crypto_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 249, i32 4}
!30 = !{ptr @meson_crypto_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_crypto_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 256, i32 3}
!34 = !{ptr @meson_crypto_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson_crypto_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 270, i32 22}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 38, i32 4}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @meson_irq_handler._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson_irq_handler._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 42, i32 2}
!45 = !{ptr @meson_irq_handler._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @meson_irq_handler._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 153, i32 4}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @meson_allocate_chanlist._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @meson_allocate_chanlist._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 160, i32 4}
!54 = !{ptr @meson_allocate_chanlist._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @meson_allocate_chanlist._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 188, i32 5}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @meson_register_algs._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @meson_register_algs._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mc_algs, !65, !"mc_algs", i1 false, i1 false}
!65 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 46, i32 34}
!66 = !{ptr @meson_debugfs_fops, !67, !"meson_debugfs_fops", i1 false, i1 false}
!67 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 121, i32 1}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 107, i32 19}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 112, i32 20}
!72 = !{ptr @meson_crypto_of_match_table, !73, !"meson_crypto_of_match_table", i1 false, i1 false}
!73 = !{!"../drivers/crypto/amlogic/amlogic-gxl-core.c", i32 298, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 4628164}
!84 = !{i64 2154543314}
!85 = !{i64 4627746}
