; ModuleID = '/llk/IR_all_yes/drivers/crypto/omap-aes.c_pt.bc'
source_filename = "../drivers/crypto/omap-aes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.omap_aes_pdata = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_aes_algs_info = type { ptr, i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.70, ptr, ptr, ptr, ptr, %union.anon.71, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.70 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.71 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.omap_aes_aead_algs = type { ptr, i32, i32 }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.omap_aes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.aead_queue, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [2 x %struct.scatterlist], %struct.scatterlist, ptr, %struct.scatter_walk, %struct.scatter_walk, ptr, ptr, i32, i32, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.aead_queue = type { %struct.crypto_queue }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scatter_walk = type { ptr, i32 }
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
%struct.omap_aes_ctx = type { %struct.crypto_engine_ctx, i32, [8 x i32], [4 x i8], ptr }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dev_list, ptr @dev_list }, [24 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma_start.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_aes_driver\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_aes_crypt_dma_start\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/omap-aes.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total: %zu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%20s: total: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 372, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma_map_sg() error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma_start._entry_ptr = internal global ptr @omap_aes_crypt_dma_start._entry, section ".printk_index", align 4
@omap_aes_crypt_dma_start._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma_start._entry_ptr.9 = internal global ptr @omap_aes_crypt_dma_start._entry.8, section ".printk_index", align 4
@omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_aes_crypt_dma_stop\00", [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap_aes_driver__261_1322_omap_aes_driver_init6 = internal global ptr @omap_aes_driver_init, section ".initcall6.init", align 4
@omap_aes_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_aes_probe, ptr @omap_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_aes_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_aes_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_aes_driver_exit = internal global ptr @omap_aes_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description262 = internal constant [62 x i8] c"omap_aes_driver.description=OMAP AES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [52 x i8] c"omap_aes_driver.file=drivers/crypto/omap-aes-driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [31 x i8] c"omap_aes_driver.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [39 x i8] c"omap_aes_driver.author=Dmitry Kasatkin\00", section ".modinfo", align 1
@omap_aes_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 108, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get sync: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_aes_hw_init\00", [47 x i8] zeroinitializer }, align 32
@omap_aes_hw_init._entry_ptr = internal global ptr @omap_aes_hw_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 302, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't configure IN dmaengine slave: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_aes_crypt_dma\00", [45 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma._entry_ptr = internal global ptr @omap_aes_crypt_dma._entry, section ".printk_index", align 4
@omap_aes_crypt_dma._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 310, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IN prep_slave_sg() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma._entry_ptr.18 = internal global ptr @omap_aes_crypt_dma._entry.16, section ".printk_index", align 4
@omap_aes_crypt_dma._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't configure OUT dmaengine slave: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma._entry_ptr.21 = internal global ptr @omap_aes_crypt_dma._entry.19, section ".printk_index", align 4
@omap_aes_crypt_dma._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OUT prep_slave_sg() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_aes_crypt_dma._entry_ptr.24 = internal global ptr @omap_aes_crypt_dma._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap-aes\00", [23 x i8] zeroinitializer }, align 32
@omap_aes_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_aes_pdata_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_aes_pdata_omap3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_aes_pdata_omap4 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@omap_aes_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_aes_suspend, ptr @omap_aes_resume, ptr @omap_aes_suspend, ptr @omap_aes_resume, ptr @omap_aes_suspend, ptr @omap_aes_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1112, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to alloc data struct.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_aes_probe\00", [17 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr = internal global ptr @omap_aes_probe._entry, section ".printk_index", align 4
@omap_aes_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get_sync(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr.30 = internal global ptr @omap_aes_probe._entry.28, section ".printk_index", align 4
@omap_aes_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1151, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OMAP AES hw accel rev: %u.%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr.34 = internal global ptr @omap_aes_probe._entry.31, section ".printk_index", align 4
@omap_aes_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 1170, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to grab omap-aes IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr.37 = internal global ptr @omap_aes_probe._entry.35, section ".printk_index", align 4
@omap_aes_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dd->lock\00", [22 x i8] zeroinitializer }, align 32
@omap_aes_probe.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.39, i8 1, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg alg: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%20s: reg alg: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@omap_aes_probe.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.39, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@omap_aes_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @omap_aes_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.2, i32 1226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not create sysfs device attrs\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr.43 = internal global ptr @omap_aes_probe._entry.41, section ".printk_index", align 4
@omap_aes_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.27, ptr @.str.2, i32 1254, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"initialization failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_aes_probe._entry_ptr.46 = internal global ptr @omap_aes_probe._entry.44, section ".printk_index", align 4
@omap_aes_get_res_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 969, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no compatible OF match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_aes_get_res_of\00", [44 x i8] zeroinitializer }, align 32
@omap_aes_get_res_of._entry_ptr = internal global ptr @omap_aes_get_res_of._entry, section ".printk_index", align 4
@omap_aes_get_res_of._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 976, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't translate OF node address\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_aes_get_res_of._entry_ptr.51 = internal global ptr @omap_aes_get_res_of._entry.49, section ".printk_index", align 4
@omap_aes_get_res_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1006, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no MEM resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_aes_get_res_pdev\00", [42 x i8] zeroinitializer }, align 32
@omap_aes_get_res_pdev._entry_ptr = internal global ptr @omap_aes_get_res_pdev._entry, section ".printk_index", align 4
@omap_aes_pdata_omap2 = internal constant { %struct.omap_aes_pdata, [52 x i8] } { %struct.omap_aes_pdata { ptr @omap_aes_algs_info_ecb_cbc, i32 1, ptr null, ptr @omap_aes_dma_trigger_omap2, i32 28, i32 32, i32 48, i32 52, i32 68, i32 72, i32 0, i32 0, i32 4, i32 8, i32 32, i32 240, i32 4, i32 15, i32 0 }, [52 x i8] zeroinitializer }, align 32
@omap_aes_algs_info_ecb_cbc = internal global { [1 x %struct.omap_aes_algs_info], [20 x i8] } { [1 x %struct.omap_aes_algs_info] [%struct.omap_aes_algs_info { ptr @algs_ecb_cbc, i32 2, i32 0 }], [20 x i8] zeroinitializer }, align 32
@algs_ecb_cbc = internal global [2 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @omap_aes_setkey, ptr @omap_aes_ecb_encrypt, ptr @omap_aes_ecb_decrypt, ptr @omap_aes_init_tfm, ptr @omap_aes_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 16, i32 56, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.70 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @omap_aes_setkey, ptr @omap_aes_cbc_encrypt, ptr @omap_aes_cbc_decrypt, ptr @omap_aes_init_tfm, ptr @omap_aes_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 16, i32 56, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.70 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }], align 128
@omap_aes_setkey.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_aes_setkey\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enter, keylen: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%20s: enter, keylen: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_aes_crypt.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_aes_crypt\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%20s: nbytes: %d, enc: %d, cbc: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@aes_fallback_sz = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@omap_aes_done_task.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_aes_done_task\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enter done_task\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%20s: enter done_task\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_aes_done_task.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"exit\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s: exit\0A\00", [20 x i8] zeroinitializer }, align 32
@omap_aes_finish_req.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_aes_finish_req\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"err: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%20s: err: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@omap_aes_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to request in DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_aes_dma_init\00", [46 x i8] zeroinitializer }, align 32
@omap_aes_dma_init._entry_ptr = internal global ptr @omap_aes_dma_init._entry, section ".printk_index", align 4
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@omap_aes_dma_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.2, i32 245, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to request out DMA channel\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_aes_dma_init._entry_ptr.74 = internal global ptr @omap_aes_dma_init._entry.72, section ".printk_index", align 4
@omap_aes_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_queue_len, ptr @dev_attr_fallback, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_queue_len = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_len_show, ptr @queue_len_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fallback = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fallback_show, ptr @fallback_store }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_len\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fallback\00", [23 x i8] zeroinitializer }, align 32
@fallback_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1037, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"minimum fallback size 9\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fallback_store\00", [17 x i8] zeroinitializer }, align 32
@fallback_store._entry_ptr = internal global ptr @fallback_store._entry, section ".printk_index", align 4
@omap_aes_pdata_omap3 = internal constant { %struct.omap_aes_pdata, [52 x i8] } { %struct.omap_aes_pdata { ptr @omap_aes_algs_info_ecb_cbc_ctr, i32 2, ptr null, ptr @omap_aes_dma_trigger_omap2, i32 28, i32 32, i32 48, i32 52, i32 68, i32 72, i32 0, i32 0, i32 4, i32 8, i32 32, i32 240, i32 4, i32 15, i32 0 }, [52 x i8] zeroinitializer }, align 32
@omap_aes_pdata_omap4 = internal constant { %struct.omap_aes_pdata, [52 x i8] } { %struct.omap_aes_pdata { ptr @omap_aes_algs_info_ecb_cbc_ctr, i32 2, ptr @omap_aes_aead_info, ptr @omap_aes_dma_trigger_omap4, i32 60, i32 64, i32 80, i32 96, i32 128, i32 132, i32 144, i32 140, i32 32, i32 64, i32 0, i32 1792, i32 8, i32 63, i32 0 }, [52 x i8] zeroinitializer }, align 32
@omap_aes_algs_info_ecb_cbc_ctr = internal global { [2 x %struct.omap_aes_algs_info], [40 x i8] } { [2 x %struct.omap_aes_algs_info] [%struct.omap_aes_algs_info { ptr @algs_ecb_cbc, i32 2, i32 0 }, %struct.omap_aes_algs_info { ptr @algs_ctr, i32 1, i32 0 }], [40 x i8] zeroinitializer }, align 32
@algs_ctr = internal global [1 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @omap_aes_setkey, ptr @omap_aes_ctr_encrypt, ptr @omap_aes_ctr_decrypt, ptr @omap_aes_init_tfm, ptr @omap_aes_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 1, i32 56, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.70 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }], align 128
@omap_aes_aead_info = internal global { %struct.omap_aes_aead_algs, [20 x i8] } { %struct.omap_aes_aead_algs { ptr @algs_aead_gcm, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@algs_aead_gcm = internal global [2 x %struct.aead_alg] [%struct.aead_alg { ptr @omap_aes_gcm_setkey, ptr @omap_aes_gcm_setauthsize, ptr @omap_aes_gcm_encrypt, ptr @omap_aes_gcm_decrypt, ptr @omap_aes_gcm_cra_init, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 540, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.70 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @omap_aes_4106gcm_setkey, ptr @omap_aes_4106gcm_setauthsize, ptr @omap_aes_4106gcm_encrypt, ptr @omap_aes_4106gcm_decrypt, ptr @omap_aes_gcm_cra_init, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 540, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4106-gcm-aes-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.70 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.71 zeroinitializer, [120 x i8] undef } }], align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [9 x i8] c"dev_list\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 43, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 366, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 372, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 380, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 412, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"omap_aes_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1312, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 108, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 44, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 301, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 310, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 322, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 332, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1316, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"omap_aes_of_match\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 944, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"omap_aes_pm_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1310, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1112, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1138, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1149, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1170, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1175, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1198, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"omap_aes_attr_group\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1096, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1226, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1254, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 969, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 976, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1006, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"omap_aes_pdata_omap2\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 791, i32 36 }
@___asan_gen_.255 = private unnamed_addr constant [27 x i8] c"omap_aes_algs_info_ecb_cbc\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 736, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 586, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 546, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"aes_fallback_sz\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 46, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 509, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 532, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 402, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 237, i32 45 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 239, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 243, i32 46 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 245, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"omap_aes_attrs\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1090, i32 26 }
@___asan_gen_.327 = private unnamed_addr constant [19 x i8] c"dev_attr_queue_len\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [18 x i8] c"dev_attr_fallback\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1087, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1051, i32 22 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1088, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1037, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [21 x i8] c"omap_aes_pdata_omap3\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 822, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"omap_aes_pdata_omap4\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 841, i32 36 }
@___asan_gen_.357 = private unnamed_addr constant [31 x i8] c"omap_aes_algs_info_ecb_cbc_ctr\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 811, i32 34 }
@___asan_gen_.360 = private unnamed_addr constant [19 x i8] c"omap_aes_aead_info\00", align 1
@___asan_gen_.361 = private constant [29 x i8] c"../drivers/crypto/omap-aes.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 786, i32 34 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_omap_aes_driver_exit, ptr @__initcall__kmod_omap_aes_driver__261_1322_omap_aes_driver_init6, ptr @fallback_store._entry, ptr @fallback_store._entry_ptr, ptr @omap_aes_crypt_dma._entry, ptr @omap_aes_crypt_dma._entry.16, ptr @omap_aes_crypt_dma._entry.19, ptr @omap_aes_crypt_dma._entry.22, ptr @omap_aes_crypt_dma._entry_ptr, ptr @omap_aes_crypt_dma._entry_ptr.18, ptr @omap_aes_crypt_dma._entry_ptr.21, ptr @omap_aes_crypt_dma._entry_ptr.24, ptr @omap_aes_crypt_dma_start._entry, ptr @omap_aes_crypt_dma_start._entry.8, ptr @omap_aes_crypt_dma_start._entry_ptr, ptr @omap_aes_crypt_dma_start._entry_ptr.9, ptr @omap_aes_dma_init._entry, ptr @omap_aes_dma_init._entry.72, ptr @omap_aes_dma_init._entry_ptr, ptr @omap_aes_dma_init._entry_ptr.74, ptr @omap_aes_driver_exit, ptr @omap_aes_get_res_of._entry, ptr @omap_aes_get_res_of._entry.49, ptr @omap_aes_get_res_of._entry_ptr, ptr @omap_aes_get_res_of._entry_ptr.51, ptr @omap_aes_get_res_pdev._entry, ptr @omap_aes_get_res_pdev._entry_ptr, ptr @omap_aes_hw_init._entry, ptr @omap_aes_hw_init._entry_ptr, ptr @omap_aes_probe._entry, ptr @omap_aes_probe._entry.28, ptr @omap_aes_probe._entry.31, ptr @omap_aes_probe._entry.35, ptr @omap_aes_probe._entry.41, ptr @omap_aes_probe._entry.44, ptr @omap_aes_probe._entry_ptr, ptr @omap_aes_probe._entry_ptr.30, ptr @omap_aes_probe._entry_ptr.34, ptr @omap_aes_probe._entry_ptr.37, ptr @omap_aes_probe._entry_ptr.43, ptr @omap_aes_probe._entry_ptr.46, ptr @list_lock, ptr @dev_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @omap_aes_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @omap_aes_of_match, ptr @omap_aes_pm_ops, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @omap_aes_probe.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @omap_aes_attr_group, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @omap_aes_pdata_omap2, ptr @omap_aes_algs_info_ecb_cbc, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @aes_fallback_sz, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @omap_aes_attrs, ptr @dev_attr_queue_len, ptr @dev_attr_fallback, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @omap_aes_pdata_omap3, ptr @omap_aes_pdata_omap4, ptr @omap_aes_algs_info_ecb_cbc_ctr, ptr @omap_aes_aead_info], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma_start._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_crypt_dma._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_get_res_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_get_res_of._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_get_res_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_pdata_omap2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_algs_info_ecb_cbc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_fallback_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_dma_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_len to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fallback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_pdata_omap3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_pdata_omap4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_algs_info_ecb_cbc_ctr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_aes_aead_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_read(ptr nocapture noundef readonly %dd, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %io_base = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !196
  ret i32 %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_aes_write(ptr nocapture noundef readonly %dd, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %io_base = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #11, !srcloc !197
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_aes_clear_copy_flags(ptr nocapture noundef %dd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and4 = and i32 %1, -16129
  store i32 %and4, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_write_ctrl(ptr nocapture noundef %dd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %1, 32
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %flags.i, align 4
  %err2.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 6
  %3 = ptrtoint ptr %err2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %err2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #11, !srcloc !199
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.omap_aes_hw_init.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.omap_aes_hw_init.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_aes_hw_init.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  br label %omap_aes_hw_init.exit

omap_aes_hw_init.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.omap_aes_hw_init.exit_crit_edge
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ctx = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 3
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %keylen = getelementptr inbounds %struct.omap_aes_ctx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keylen, align 4
  %div100 = lshr i32 %12, 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %for.cond.preheader

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %io_base.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #11, !srcloc !197
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #11, !srcloc !197
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #11, !srcloc !197
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #11, !srcloc !197
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 0) #11, !srcloc !197
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 0) #11, !srcloc !197
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 0) #11, !srcloc !197
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 0) #11, !srcloc !197
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8, i32 0) #11, !srcloc !197
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %34, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.9, i32 0) #11, !srcloc !197
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.10, i32 0) #11, !srcloc !197
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.11, i32 0) #11, !srcloc !197
  %39 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.12 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.12, i32 0) #11, !srcloc !197
  %41 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.13 = getelementptr i8, ptr %42, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.13, i32 0) #11, !srcloc !197
  %43 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.14 = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.14, i32 0) #11, !srcloc !197
  %45 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.15 = getelementptr i8, ptr %46, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.15, i32 0) #11, !srcloc !197
  br label %if.end3

if.end3:                                          ; preds = %for.cond.preheader, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp5121.not = icmp ult i32 %12, 4
  br i1 %cmp5121.not, label %if.end3.for.end9_crit_edge, label %for.body6.lr.ph

if.end3.for.end9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end9

for.body6.lr.ph:                                  ; preds = %if.end3
  %pdata = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %io_base.i101 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %div100, i32 1)
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %i.1122 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.body6.for.body6_crit_edge ]
  %47 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata, align 4
  %key_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %key_ofs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key_ofs, align 4
  %xor = shl i32 %i.1122, 2
  %51 = xor i32 %xor, -5
  %mul.neg = add i32 %51, 1
  %sub = add i32 %mul.neg, %50
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.omap_aes_ctx, ptr %53, i32 0, i32 2, i32 %i.1122
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %io_base.i101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base.i101, align 4
  %add.ptr.i102 = getelementptr i8, ptr %58, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %56) #11, !srcloc !197
  %inc = add nuw nsw i32 %i.1122, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body6.for.end9_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.body6.for.end9_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end9

for.end9:                                         ; preds = %for.body6.for.end9_crit_edge, %if.end3.for.end9_crit_edge
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and11 = and i32 %60, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.end9.if.end19_crit_edge, label %land.lhs.true

for.end9.if.end19_crit_edge:                      ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %for.end9
  %req = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 10
  %61 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %req, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iv, align 4
  %tobool13.not = icmp eq ptr %64, null
  br i1 %tobool13.not, label %land.lhs.true.if.end19_crit_edge, label %if.then14

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %pdata15 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %65 = ptrtoint ptr %pdata15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdata15, align 4
  %iv_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %iv_ofs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iv_ofs, align 4
  %io_base.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %64, align 4
  %71 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %70) #11, !srcloc !197
  %incdec.ptr.i = getelementptr i32, ptr %64, i32 1
  %add.i = add i32 %68, 4
  %73 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.i, align 4
  %75 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %76, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %74) #11, !srcloc !197
  %incdec.ptr.1.i = getelementptr i32, ptr %64, i32 2
  %add.1.i = add i32 %68, 8
  %77 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr.1.i, align 4
  %79 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %80, i32 %add.1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %78) #11, !srcloc !197
  %incdec.ptr.2.i = getelementptr i32, ptr %64, i32 3
  %add.2.i = add i32 %68, 12
  %81 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr.2.i, align 4
  %83 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %84, i32 %add.2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 %82) #11, !srcloc !197
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %land.lhs.true.if.end19_crit_edge, %for.end9.if.end19_crit_edge
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %and21 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end33_crit_edge, label %land.lhs.true23

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true23:                                  ; preds = %if.end19
  %aead_req = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 11
  %87 = ptrtoint ptr %aead_req to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %aead_req, align 4
  %iv24 = getelementptr inbounds %struct.aead_request, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %iv24 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iv24, align 32
  %tobool25.not = icmp eq ptr %90, null
  br i1 %tobool25.not, label %land.lhs.true23.if.end33_crit_edge, label %if.then26

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %pdata29 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %91 = ptrtoint ptr %pdata29 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdata29, align 4
  %iv_ofs30 = getelementptr inbounds %struct.omap_aes_pdata, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %iv_ofs30 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %iv_ofs30, align 4
  %iv32 = getelementptr inbounds %struct.aead_request, ptr %88, i32 1, i32 0, i32 1
  %io_base.i.i103 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %95 = ptrtoint ptr %iv32 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iv32, align 4
  %97 = ptrtoint ptr %io_base.i.i103 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base.i.i103, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %98, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 %96) #11, !srcloc !197
  %incdec.ptr.i105 = getelementptr %struct.aead_request, ptr %88, i32 1, i32 0, i32 2
  %add.i106 = add i32 %94, 4
  %99 = ptrtoint ptr %incdec.ptr.i105 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr.i105, align 4
  %101 = ptrtoint ptr %io_base.i.i103 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io_base.i.i103, align 4
  %add.ptr.i.1.i107 = getelementptr i8, ptr %102, i32 %add.i106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i107, i32 %100) #11, !srcloc !197
  %incdec.ptr.1.i108 = getelementptr %struct.aead_request, ptr %88, i32 1, i32 0, i32 3
  %add.1.i109 = add i32 %94, 8
  %103 = ptrtoint ptr %incdec.ptr.1.i108 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %incdec.ptr.1.i108, align 4
  %105 = ptrtoint ptr %io_base.i.i103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base.i.i103, align 4
  %add.ptr.i.2.i110 = getelementptr i8, ptr %106, i32 %add.1.i109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i110, i32 %104) #11, !srcloc !197
  %incdec.ptr.2.i111 = getelementptr %struct.aead_request, ptr %88, i32 1, i32 0, i32 4
  %add.2.i112 = add i32 %94, 12
  %107 = ptrtoint ptr %incdec.ptr.2.i111 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %incdec.ptr.2.i111, align 4
  %109 = ptrtoint ptr %io_base.i.i103 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io_base.i.i103, align 4
  %add.ptr.i.3.i113 = getelementptr i8, ptr %110, i32 %add.2.i112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i113, i32 %108) #11, !srcloc !197
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %land.lhs.true23.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx, align 4
  %keylen35 = getelementptr inbounds %struct.omap_aes_ctx, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %keylen35 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %keylen35, align 4
  %115 = add i32 %114, 24
  %and37 = and i32 %115, 24
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i, align 4
  %and39 = shl i32 %117, 4
  %118 = and i32 %and39, 32
  %119 = or i32 %118, %and37
  %and44 = and i32 %117, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or47 = or i32 %119, 448
  %val.1 = select i1 %tobool45.not, i32 %119, i32 %or47
  %and50 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or53 = or i32 %val.1, 196608
  %val.2 = select i1 %tobool51.not, i32 %val.1, i32 %or53
  %and56 = shl i32 %117, 2
  %120 = and i32 %and56, 4
  %pdata61 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %121 = ptrtoint ptr %pdata61 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdata61, align 4
  %ctrl_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %ctrl_ofs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ctrl_ofs, align 4
  %io_base.i.i114 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %125 = ptrtoint ptr %io_base.i.i114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io_base.i.i114, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %126, i32 %124
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i115) #11, !srcloc !196
  %and.i116 = and i32 %127, -33554429
  %128 = or i32 %and.i116, %120
  %or.i117 = or i32 %128, %val.2
  %129 = ptrtoint ptr %io_base.i.i114 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io_base.i.i114, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %130, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i117) #11, !srcloc !197
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %omap_aes_hw_init.exit
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call.i.i, %omap_aes_hw_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_aes_find_dev(ptr nocapture noundef writeonly %rctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #11
  %0 = load ptr, ptr @dev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @dev_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dev_list, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %0, ptr %7, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %11 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %0, ptr %rctx, align 128
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #11
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_crypt_dma_start(ptr noundef %dd) local_unnamed_addr #2 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_crypt_dma_start.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_crypt_dma_start, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %total = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 13
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_crypt_dma_start.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pio_only = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 28
  %2 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end26_crit_edge

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then4:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %in_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 17
  %6 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_sg, align 4
  %in_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 26
  %8 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_sg_len, align 4
  %call5 = tail call i32 @dma_map_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %out_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 27
  %12 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end26_crit_edge, label %if.then14

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then14:                                        ; preds = %if.end12
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %out_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 18
  %16 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out_sg, align 4
  %call17 = tail call i32 @dma_map_sg_attrs(ptr noundef %15, ptr noundef %17, i32 noundef %13, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end22, label %if.then14.if.end26_crit_edge

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %if.end12.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %in_sg27 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 17
  %20 = ptrtoint ptr %in_sg27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_sg27, align 4
  %out_sg28 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 18
  %22 = ptrtoint ptr %out_sg28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_sg28, align 4
  %in_sg_len29 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 26
  %24 = ptrtoint ptr %in_sg_len29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_sg_len29, align 4
  %out_sg_len30 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 27
  %26 = ptrtoint ptr %out_sg_len30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_sg_len30, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #11
  %28 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.end26
  %in_walk.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 22
  %30 = ptrtoint ptr %in_walk.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %in_walk.i, align 4
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 22, i32 1
  %33 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %offset2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i = icmp eq i32 %27, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %out_walk.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 23
  %34 = ptrtoint ptr %out_walk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %23, ptr %out_walk.i, align 4
  %offset.i115.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 1
  %35 = ptrtoint ptr %offset.i115.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i115.i, align 4
  %offset2.i116.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 23, i32 1
  %37 = ptrtoint ptr %offset2.i116.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %offset2.i116.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %pdata.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %38 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i, align 4
  %irq_enable_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %irq_enable_ofs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_enable_ofs.i, align 4
  %io_base.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #11, !srcloc !197
  br label %omap_aes_crypt_dma.exit

if.end5.i:                                        ; preds = %if.end26
  %dev.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %45, ptr noundef %21, i32 noundef %25, i32 noundef 1) #11
  %46 = call ptr @memset(ptr %cfg.i, i32 0, i32 48)
  %phys_base.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 1
  %47 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys_base.i, align 4
  %pdata7.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %49 = ptrtoint ptr %pdata7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata7.i, align 4
  %data_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %data_ofs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_ofs.i, align 4
  %add8.i = add i32 %52, %48
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %53 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add8.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %54 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add8.i, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %55 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %56 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %57 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %58 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %dst_maxburst.i, align 4
  %dma_lch_in.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 24
  %59 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_lch_in.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %if.end5.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end5.i.do.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end5.i
  %call.i.i = call i32 %64(ptr noundef %60, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end5.i.do.end.i_crit_edge
  %retval.0.i142.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i_crit_edge ], [ -38, %if.end5.i.do.end.i_crit_edge ]
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i142.i) #14
  br label %land.lhs.true

if.end17.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %67 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_lch_in.i, align 4
  %tobool.not.i117.i = icmp eq ptr %68, null
  br i1 %tobool.not.i117.i, label %if.end17.i.do.end24.i_crit_edge, label %lor.lhs.false.i.i

if.end17.i.do.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

lor.lhs.false.i.i:                                ; preds = %if.end17.i
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool1.not.i.i = icmp eq ptr %70, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end24.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end24.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 39
  %71 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %72, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end24.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end24.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i118.i = call ptr %72(ptr noundef nonnull %68, ptr noundef %21, i32 noundef %25, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %tobool20.not.i = icmp eq ptr %call.i118.i, null
  br i1 %tobool20.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end24.i_crit_edge, label %if.end26.i

dmaengine_prep_slave_sg.exit.i.do.end24.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.do.end24.i_crit_edge, %lor.lhs.false2.i.i.do.end24.i_crit_edge, %lor.lhs.false.i.i.do.end24.i_crit_edge, %if.end17.i.do.end24.i_crit_edge
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.17) #14
  br label %land.lhs.true

if.end26.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i118.i, i32 0, i32 8
  %75 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dd, ptr %callback_param.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i118.i, i32 0, i32 6
  %76 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %callback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not.i = icmp eq i32 %27, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end46.i_crit_edge, label %if.then28.i

if.end26.i.if.end46.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then28.i:                                      ; preds = %if.end26.i
  %dma_lch_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 25
  %77 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_lch_out.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %device_config.i120.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %device_config.i120.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_config.i120.i, align 4
  %tobool.not.i121.i = icmp eq ptr %82, null
  br i1 %tobool.not.i121.i, label %if.then28.i.do.end34.i_crit_edge, label %dmaengine_slave_config.exit125.i

if.then28.i.do.end34.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i

dmaengine_slave_config.exit125.i:                 ; preds = %if.then28.i
  %call.i122.i = call i32 %82(ptr noundef %78, ptr noundef nonnull %cfg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool30.not.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %dmaengine_slave_config.exit125.i.do.end34.i_crit_edge

dmaengine_slave_config.exit125.i.do.end34.i_crit_edge: ; preds = %dmaengine_slave_config.exit125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i

do.end34.i:                                       ; preds = %dmaengine_slave_config.exit125.i.do.end34.i_crit_edge, %if.then28.i.do.end34.i_crit_edge
  %retval.0.i124147.i = phi i32 [ %call.i122.i, %dmaengine_slave_config.exit125.i.do.end34.i_crit_edge ], [ -38, %if.then28.i.do.end34.i_crit_edge ]
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i124147.i) #14
  br label %land.lhs.true

if.end36.i:                                       ; preds = %dmaengine_slave_config.exit125.i
  %85 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_lch_out.i, align 4
  %tobool.not.i126.i = icmp eq ptr %86, null
  br i1 %tobool.not.i126.i, label %if.end36.i.do.end43.i_crit_edge, label %lor.lhs.false.i128.i

if.end36.i.do.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

lor.lhs.false.i128.i:                             ; preds = %if.end36.i
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %tobool1.not.i127.i = icmp eq ptr %88, null
  br i1 %tobool1.not.i127.i, label %lor.lhs.false.i128.i.do.end43.i_crit_edge, label %lor.lhs.false2.i131.i

lor.lhs.false.i128.i.do.end43.i_crit_edge:        ; preds = %lor.lhs.false.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

lor.lhs.false2.i131.i:                            ; preds = %lor.lhs.false.i128.i
  %device_prep_slave_sg.i129.i = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 39
  %89 = ptrtoint ptr %device_prep_slave_sg.i129.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device_prep_slave_sg.i129.i, align 4
  %tobool4.not.i130.i = icmp eq ptr %90, null
  br i1 %tobool4.not.i130.i, label %lor.lhs.false2.i131.i.do.end43.i_crit_edge, label %dmaengine_prep_slave_sg.exit135.i

lor.lhs.false2.i131.i.do.end43.i_crit_edge:       ; preds = %lor.lhs.false2.i131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

dmaengine_prep_slave_sg.exit135.i:                ; preds = %lor.lhs.false2.i131.i
  %call.i132.i = call ptr %90(ptr noundef nonnull %86, ptr noundef %23, i32 noundef %27, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %tobool39.not.i = icmp eq ptr %call.i132.i, null
  br i1 %tobool39.not.i, label %dmaengine_prep_slave_sg.exit135.i.do.end43.i_crit_edge, label %dmaengine_prep_slave_sg.exit135.i.if.end46.i_crit_edge

dmaengine_prep_slave_sg.exit135.i.if.end46.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

dmaengine_prep_slave_sg.exit135.i.do.end43.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i

do.end43.i:                                       ; preds = %dmaengine_prep_slave_sg.exit135.i.do.end43.i_crit_edge, %lor.lhs.false2.i131.i.do.end43.i_crit_edge, %lor.lhs.false.i128.i.do.end43.i_crit_edge, %if.end36.i.do.end43.i_crit_edge
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.23) #14
  br label %land.lhs.true

if.end46.i:                                       ; preds = %dmaengine_prep_slave_sg.exit135.i.if.end46.i_crit_edge, %if.end26.i.if.end46.i_crit_edge
  %tx_out.0.i = phi ptr [ %call.i132.i, %dmaengine_prep_slave_sg.exit135.i.if.end46.i_crit_edge ], [ null, %if.end26.i.if.end46.i_crit_edge ]
  %cb_desc.0.i = phi ptr [ %call.i132.i, %dmaengine_prep_slave_sg.exit135.i.if.end46.i_crit_edge ], [ %call.i118.i, %if.end26.i.if.end46.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 5
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool47.not.i, ptr @omap_aes_dma_out_callback, ptr @omap_aes_gcm_dma_out_callback
  %95 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %cb_desc.0.i, i32 0, i32 6
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %spec.select.i, ptr %95, align 4
  %callback_param53.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %cb_desc.0.i, i32 0, i32 8
  %97 = ptrtoint ptr %callback_param53.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %dd, ptr %callback_param53.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i118.i, i32 0, i32 4
  %98 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i136.i = call i32 %99(ptr noundef nonnull %call.i118.i) #11
  %tobool55.not.i = icmp eq ptr %tx_out.0.i, null
  br i1 %tobool55.not.i, label %if.end46.i.if.end58.i_crit_edge, label %if.then56.i

if.end46.i.if.end58.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_submit.i137.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx_out.0.i, i32 0, i32 4
  %100 = ptrtoint ptr %tx_submit.i137.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_submit.i137.i, align 4
  %call.i138.i = call i32 %101(ptr noundef nonnull %tx_out.0.i) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end46.i.if.end58.i_crit_edge
  %102 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_lch_in.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 50
  %106 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %107(ptr noundef %103) #11
  br i1 %tobool27.not.i, label %if.end58.i.if.end63.i_crit_edge, label %if.then61.i

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_lch_out62.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 25
  %108 = ptrtoint ptr %dma_lch_out62.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_lch_out62.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %device_issue_pending.i139.i = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 50
  %112 = ptrtoint ptr %device_issue_pending.i139.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device_issue_pending.i139.i, align 4
  call void %113(ptr noundef %109) #11
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end58.i.if.end63.i_crit_edge
  %114 = ptrtoint ptr %pdata7.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdata7.i, align 4
  %trigger.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %trigger.i, align 4
  %total.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 13
  %118 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %total.i, align 4
  call void %117(ptr noundef %dd, i32 noundef %119) #11
  br label %omap_aes_crypt_dma.exit

omap_aes_crypt_dma.exit:                          ; preds = %if.end63.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end43.i, %do.end34.i, %do.end24.i, %do.end.i
  %retval.0.i74.ph = phi i32 [ -22, %do.end24.i ], [ -22, %do.end43.i ], [ %retval.0.i124147.i, %do.end34.i ], [ %retval.0.i142.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #11
  %120 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool34.not = icmp eq i32 %121, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  %122 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i, align 4
  %124 = ptrtoint ptr %in_sg27 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %in_sg27, align 4
  %126 = ptrtoint ptr %in_sg_len29 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %in_sg_len29, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %123, ptr noundef %125, i32 noundef %127, i32 noundef 1, i32 noundef 0) #11
  %128 = ptrtoint ptr %out_sg_len30 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %out_sg_len30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool40.not = icmp eq i32 %129, 0
  br i1 %tobool40.not, label %if.then35.cleanup_crit_edge, label %if.then41

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %132 = ptrtoint ptr %out_sg28 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %out_sg28, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %131, ptr noundef %133, i32 noundef %129, i32 noundef 2, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %omap_aes_crypt_dma.exit, %do.end22, %do.end10
  %retval.0 = phi i32 [ -22, %do.end22 ], [ -22, %do.end10 ], [ %retval.0.i74.ph, %if.then35.cleanup_crit_edge ], [ %retval.0.i74.ph, %if.then41 ], [ %retval.0.i74.ph, %land.lhs.true.cleanup_crit_edge ], [ 0, %omap_aes_crypt_dma.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_crypt_dma_stop(ptr nocapture noundef readonly %dd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_crypt_dma_stop, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %total = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 13
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdata.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %dma_enable_out.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dma_enable_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_enable_out.i, align 4
  %dma_enable_in.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dma_enable_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_enable_in.i, align 4
  %or.i = or i32 %7, %5
  %dma_start.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_start.i, align 4
  %or3.i = or i32 %or.i, %9
  %mask_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %mask_ofs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_ofs.i, align 4
  %io_base.i.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %12 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !196
  %neg.i.i = xor i32 %or3.i, -1
  %and.i.i = and i32 %14, %neg.i.i
  %15 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %16, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and.i.i) #11, !srcloc !197
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_driver_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_aes_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_driver_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_aes_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_aes_gcm_dma_out_callback(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_dma_out_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %done_task = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #11
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 260, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #14
  br label %do.end211

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %aead_queue = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 8
  tail call void @crypto_init_queue(ptr noundef %aead_queue, i32 noundef 1) #11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i332 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %pdata.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 29
  %7 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i332, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %call.i332, null
  br i1 %tobool.not.i, label %cond.true.err8.sink.split.i_crit_edge, label %if.end.i

cond.true.err8.sink.split.i_crit_edge:            ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %err8.sink.split.i

if.end.i:                                         ; preds = %cond.true
  %call2.i = call i32 @of_address_to_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.err8.sink.split.i_crit_edge, label %cond.end

if.end.i.err8.sink.split.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err8.sink.split.i

err8.sink.split.i:                                ; preds = %if.end.i.err8.sink.split.i_crit_edge, %cond.true.err8.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %cond.true.err8.sink.split.i_crit_edge ], [ @.str.50, %if.end.i.err8.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.50.sink.i) #14
  br label %do.end211

cond.false:                                       ; preds = %if.end
  %call.i333 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool.not.i334 = icmp eq ptr %call.i333, null
  br i1 %tobool.not.i334, label %do.end.i, label %cond.end.thread358

do.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52) #14
  br label %do.end211

cond.end.thread358:                               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %res, ptr %call.i333, i32 32)
  %pdata.i335 = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 29
  %9 = ptrtoint ptr %pdata.i335 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omap_aes_pdata_omap2, ptr %pdata.i335, align 4
  br label %if.end7

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %cond.end.if.end7_crit_edge, label %cond.end.do.end211_crit_edge

cond.end.do.end211_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end211

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %cond.end.if.end7_crit_edge, %cond.end.thread358
  %call8 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #11
  %io_base = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %io_base, align 4
  %cmp.i338 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call8 to i32
  br label %do.end211

if.end14:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %phys_base = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %phys_base, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #11
  call void @pm_runtime_enable(ptr noundef %dev1) #11
  %call.i339 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %cmp.i340 = icmp slt i32 %call.i339, 0
  br i1 %cmp.i340, label %if.then.i, label %if.end21

if.then.i:                                        ; preds = %if.end14
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end20_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  br label %do.end20

do.end20:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end20_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call.i339) #14
  br label %err_pm_disable

if.end21:                                         ; preds = %if.end14
  %pdata.i342 = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 29
  %16 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i342, align 4
  %dma_enable_out.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %dma_enable_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_enable_out.i, align 4
  %dma_enable_in.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %17, i32 0, i32 12
  %20 = ptrtoint ptr %dma_enable_in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_enable_in.i, align 4
  %or.i = or i32 %21, %19
  %dma_start.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %17, i32 0, i32 14
  %22 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_start.i, align 4
  %or3.i = or i32 %or.i, %23
  %mask_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %mask_ofs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_ofs.i, align 4
  %26 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %25
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !196
  %neg.i.i = xor i32 %or3.i, -1
  %and.i.i = and i32 %28, %neg.i.i
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %30, i32 %25
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and.i.i) #11, !srcloc !197
  %31 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata.i342, align 4
  %rev_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %rev_ofs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rev_ofs, align 4
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %34
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !196
  %call.i343 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #11
  %38 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i342, align 4
  %major_mask = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %major_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %major_mask, align 4
  %and = and i32 %41, %37
  %major_shift = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 16
  %42 = ptrtoint ptr %major_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %major_shift, align 4
  %shr = lshr i32 %and, %43
  %minor_mask = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 17
  %44 = ptrtoint ptr %minor_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %minor_mask, align 4
  %and30 = and i32 %45, %37
  %minor_shift = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 18
  %46 = ptrtoint ptr %minor_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minor_shift, align 4
  %shr32 = lshr i32 %and30, %47
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %shr, i32 noundef %shr32) #14
  %done_task = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %call.i to i32
  call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @omap_aes_done_task, i32 noundef %48) #11
  %dma_lch_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 25
  %49 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dma_lch_out.i, align 4
  %dma_lch_in.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 24
  %50 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dma_lch_in.i, align 4
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  %call.i344 = call ptr @dma_request_chan(ptr noundef %52, ptr noundef nonnull @.str.68) #11
  %53 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i344, ptr %dma_lch_in.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i344, inttoptr (i32 -4096 to ptr)
  %54 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i.i, label %do.end.i345, label %if.end.i346

do.end.i345:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.69) #14
  %56 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_lch_in.i, align 4
  br label %omap_aes_dma_init.exit

if.end.i346:                                      ; preds = %if.end21
  %call8.i = call ptr @dma_request_chan(ptr noundef %55, ptr noundef nonnull @.str.71) #11
  %58 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call8.i, ptr %dma_lch_out.i, align 4
  %cmp.i33.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i, label %do.end15.i, label %if.end.i346.do.body57_crit_edge

if.end.i346.do.body57_crit_edge:                  ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

do.end15.i:                                       ; preds = %if.end.i346
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.73) #14
  %61 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_lch_out.i, align 4
  %63 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_lch_in.i, align 4
  call void @dma_release_channel(ptr noundef %64) #11
  br label %omap_aes_dma_init.exit

omap_aes_dma_init.exit:                           ; preds = %do.end15.i, %do.end.i345
  %retval.0.i347.in = phi ptr [ %57, %do.end.i345 ], [ %62, %do.end15.i ]
  %retval.0.i347 = ptrtoint ptr %retval.0.i347.in to i32
  %65 = zext i32 %retval.0.i347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i347, label %land.lhs.true [
    i32 -517, label %omap_aes_dma_init.exit.err_irq_crit_edge
    i32 0, label %omap_aes_dma_init.exit.do.body57_crit_edge
  ]

omap_aes_dma_init.exit.do.body57_crit_edge:       ; preds = %omap_aes_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

omap_aes_dma_init.exit.err_irq_crit_edge:         ; preds = %omap_aes_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

land.lhs.true:                                    ; preds = %omap_aes_dma_init.exit
  %66 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata.i342, align 4
  %irq_status_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %irq_status_ofs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq_status_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool38.not = icmp eq i32 %69, 0
  br i1 %tobool38.not, label %land.lhs.true.do.body57_crit_edge, label %land.lhs.true39

land.lhs.true.do.body57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

land.lhs.true39:                                  ; preds = %land.lhs.true
  %irq_enable_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %67, i32 0, i32 10
  %70 = ptrtoint ptr %irq_enable_ofs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq_enable_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool41.not = icmp eq i32 %71, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.body57_crit_edge, label %if.then42

land.lhs.true39.do.body57_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

if.then42:                                        ; preds = %land.lhs.true39
  %pio_only = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 28
  %72 = ptrtoint ptr %pio_only to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %pio_only, align 4
  %call43 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then42.err_irq_crit_edge, label %if.end46

if.then42.err_irq_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

if.end46:                                         ; preds = %if.then42
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i348 = icmp eq ptr %74, null
  br i1 %tobool.not.i348, label %if.end.i349, label %if.end46.dev_name.exit_crit_edge

if.end46.dev_name.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i349:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i349, %if.end46.dev_name.exit_crit_edge
  %retval.0.i350 = phi ptr [ %76, %if.end.i349 ], [ %74, %if.end46.dev_name.exit_crit_edge ]
  %call.i351 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call43, ptr noundef nonnull @omap_aes_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i350, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool49.not = icmp eq i32 %call.i351, 0
  br i1 %tobool49.not, label %dev_name.exit.do.body57_crit_edge, label %do.end53

dev_name.exit.do.body57_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body57

do.end53:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #14
  br label %err_irq

do.body57:                                        ; preds = %dev_name.exit.do.body57_crit_edge, %land.lhs.true39.do.body57_crit_edge, %land.lhs.true.do.body57_crit_edge, %omap_aes_dma_init.exit.do.body57_crit_edge, %if.end.i346.do.body57_crit_edge
  %lock = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @omap_aes_probe.__key, i16 noundef signext 3) #11
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %prev.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #11
  %79 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %79, ptr noundef nonnull @dev_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body57.list_add_tail.exit_crit_edge

do.body57.list_add_tail.exit_crit_edge:           ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @dev_list, ptr %call.i, align 4
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %prev.i, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %call.i, ptr %79, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body57.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #11
  %call62 = call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #11
  %engine = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 12
  %83 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call62, ptr %engine, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %list_add_tail.exit.if.end207_crit_edge, label %if.end66

list_add_tail.exit.if.end207_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

if.end66:                                         ; preds = %list_add_tail.exit
  %call68 = call i32 @crypto_engine_start(ptr noundef nonnull %call62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.cond.preheader, label %if.end66.err_engine_crit_edge

if.end66.err_engine_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine

for.cond.preheader:                               ; preds = %if.end66
  %84 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata.i342, align 4
  %algs_info_size376 = getelementptr inbounds %struct.omap_aes_pdata, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %algs_info_size376 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %algs_info_size376, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp73377.not = icmp eq i32 %87, 0
  br i1 %cmp73377.not, label %for.cond.preheader.for.end108_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end108_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end108

for.body:                                         ; preds = %for.inc106.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %88 = phi ptr [ %114, %for.inc106.for.body_crit_edge ], [ %85, %for.cond.preheader.for.body_crit_edge ]
  %i.0378 = phi i32 [ %inc107, %for.inc106.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %registered = getelementptr %struct.omap_aes_algs_info, ptr %90, i32 %i.0378, i32 2
  %91 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool75.not = icmp eq i32 %92, 0
  br i1 %tobool75.not, label %for.cond77.preheader, label %for.body.for.inc106_crit_edge

for.body.for.inc106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

for.cond77.preheader:                             ; preds = %for.body
  %93 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdata.i342, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %size372 = getelementptr %struct.omap_aes_algs_info, ptr %96, i32 %i.0378, i32 1
  %97 = ptrtoint ptr %size372 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp81373.not = icmp eq i32 %98, 0
  br i1 %cmp81373.not, label %for.cond77.preheader.for.inc106_crit_edge, label %for.cond77.preheader.for.body82_crit_edge

for.cond77.preheader.for.body82_crit_edge:        ; preds = %for.cond77.preheader
  br label %for.body82

for.cond77.preheader.for.inc106_crit_edge:        ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

for.body82:                                       ; preds = %if.end99.for.body82_crit_edge, %for.cond77.preheader.for.body82_crit_edge
  %99 = phi ptr [ %110, %if.end99.for.body82_crit_edge ], [ %96, %for.cond77.preheader.for.body82_crit_edge ]
  %j.0374 = phi i32 [ %inc104, %if.end99.for.body82_crit_edge ], [ 0, %for.cond77.preheader.for.body82_crit_edge ]
  %arrayidx80 = getelementptr %struct.omap_aes_algs_info, ptr %99, i32 %i.0378
  %100 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx80, align 4
  %arrayidx86 = getelementptr %struct.skcipher_alg, ptr %101, i32 %j.0374
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_probe.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_probe, %if.then92)) #11
          to label %do.end95 [label %if.then92], !srcloc !201

if.then92:                                        ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name = getelementptr %struct.skcipher_alg, ptr %101, i32 %j.0374, i32 11, i32 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_probe.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, ptr noundef %cra_name) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %for.body82
  %call96 = call i32 @crypto_register_skcipher(ptr noundef %arrayidx86) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %do.end95.err_algs_crit_edge

do.end95.err_algs_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_algs

if.end99:                                         ; preds = %do.end95
  %102 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdata.i342, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %registered103 = getelementptr %struct.omap_aes_algs_info, ptr %105, i32 %i.0378, i32 2
  %106 = ptrtoint ptr %registered103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %registered103, align 4
  %inc = add i32 %107, 1
  store i32 %inc, ptr %registered103, align 4
  %inc104 = add nuw i32 %j.0374, 1
  %108 = load ptr, ptr %pdata.i342, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %size = getelementptr %struct.omap_aes_algs_info, ptr %110, i32 %i.0378, i32 1
  %111 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size, align 4
  %cmp81 = icmp ult i32 %inc104, %112
  br i1 %cmp81, label %if.end99.for.body82_crit_edge, label %if.end99.for.inc106_crit_edge

if.end99.for.inc106_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc106

if.end99.for.body82_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

for.inc106:                                       ; preds = %if.end99.for.inc106_crit_edge, %for.cond77.preheader.for.inc106_crit_edge, %for.body.for.inc106_crit_edge
  %inc107 = add nuw i32 %i.0378, 1
  %113 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdata.i342, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_aes_pdata, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %algs_info_size, align 4
  %cmp73 = icmp ult i32 %inc107, %116
  br i1 %cmp73, label %for.inc106.for.body_crit_edge, label %for.inc106.for.end108_crit_edge

for.inc106.for.end108_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end108

for.inc106.for.body_crit_edge:                    ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end108:                                       ; preds = %for.inc106.for.end108_crit_edge, %for.cond.preheader.for.end108_crit_edge
  %.lcssa = phi ptr [ %85, %for.cond.preheader.for.end108_crit_edge ], [ %114, %for.inc106.for.end108_crit_edge ]
  %aead_algs_info = getelementptr inbounds %struct.omap_aes_pdata, ptr %.lcssa, i32 0, i32 2
  %117 = ptrtoint ptr %aead_algs_info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %aead_algs_info, align 4
  %tobool110.not = icmp eq ptr %118, null
  br i1 %tobool110.not, label %for.end108.if.end157_crit_edge, label %land.lhs.true111

for.end108.if.end157_crit_edge:                   ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

land.lhs.true111:                                 ; preds = %for.end108
  %registered114 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %registered114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %registered114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool115.not = icmp eq i32 %120, 0
  br i1 %tobool115.not, label %for.cond117.preheader, label %land.lhs.true111.if.end157_crit_edge

land.lhs.true111.if.end157_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

for.cond117.preheader:                            ; preds = %land.lhs.true111
  %121 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdata.i342, align 4
  %aead_algs_info119381 = getelementptr inbounds %struct.omap_aes_pdata, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %aead_algs_info119381 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %aead_algs_info119381, align 4
  %size120382 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %size120382 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size120382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp121383.not = icmp eq i32 %126, 0
  br i1 %cmp121383.not, label %for.cond117.preheader.if.end157_crit_edge, label %for.cond117.preheader.for.body122_crit_edge

for.cond117.preheader.for.body122_crit_edge:      ; preds = %for.cond117.preheader
  br label %for.body122

for.cond117.preheader.if.end157_crit_edge:        ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

for.body122:                                      ; preds = %if.end149.for.body122_crit_edge, %for.cond117.preheader.for.body122_crit_edge
  %127 = phi ptr [ %138, %if.end149.for.body122_crit_edge ], [ %124, %for.cond117.preheader.for.body122_crit_edge ]
  %i.1384 = phi i32 [ %inc155, %if.end149.for.body122_crit_edge ], [ 0, %for.cond117.preheader.for.body122_crit_edge ]
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %arrayidx126 = getelementptr %struct.aead_alg, ptr %129, i32 %i.1384
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_probe.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_probe, %if.then139)) #11
          to label %do.end145 [label %if.then139], !srcloc !201

if.then139:                                       ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #13
  %cra_name141 = getelementptr %struct.aead_alg, ptr %129, i32 %i.1384, i32 10, i32 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_probe.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, ptr noundef %cra_name141) #11
  br label %do.end145

do.end145:                                        ; preds = %if.then139, %for.body122
  %call146 = call i32 @crypto_register_aead(ptr noundef %arrayidx126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %do.end145.err_aead_algs_crit_edge

do.end145.err_aead_algs_crit_edge:                ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_aead_algs

if.end149:                                        ; preds = %do.end145
  %130 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdata.i342, align 4
  %aead_algs_info151 = getelementptr inbounds %struct.omap_aes_pdata, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %aead_algs_info151 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %aead_algs_info151, align 4
  %registered152 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %registered152 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %registered152, align 4
  %inc153 = add i32 %135, 1
  store i32 %inc153, ptr %registered152, align 4
  %inc155 = add nuw i32 %i.1384, 1
  %136 = load ptr, ptr %pdata.i342, align 4
  %aead_algs_info119 = getelementptr inbounds %struct.omap_aes_pdata, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %aead_algs_info119 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %aead_algs_info119, align 4
  %size120 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %size120 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %size120, align 4
  %cmp121 = icmp ult i32 %inc155, %140
  br i1 %cmp121, label %if.end149.for.body122_crit_edge, label %if.end149.if.end157_crit_edge

if.end149.if.end157_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.end149.for.body122_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body122

if.end157:                                        ; preds = %if.end149.if.end157_crit_edge, %for.cond117.preheader.if.end157_crit_edge, %land.lhs.true111.if.end157_crit_edge, %for.end108.if.end157_crit_edge
  %call158 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @omap_aes_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end157.cleanup_crit_edge, label %do.end163

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #14
  br label %err_aead_algs

err_aead_algs:                                    ; preds = %do.end163, %do.end145.err_aead_algs_crit_edge
  %err.0 = phi i32 [ %call158, %do.end163 ], [ %call146, %do.end145.err_aead_algs_crit_edge ]
  %141 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdata.i342, align 4
  %aead_algs_info166 = getelementptr inbounds %struct.omap_aes_pdata, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %aead_algs_info166 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %aead_algs_info166, align 4
  %registered167 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %registered167 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %registered167, align 4
  %i.2386 = add i32 %146, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2386)
  %cmp169387 = icmp sgt i32 %i.2386, -1
  br i1 %cmp169387, label %err_aead_algs.for.body170_crit_edge, label %err_aead_algs.err_algs_crit_edge

err_aead_algs.err_algs_crit_edge:                 ; preds = %err_aead_algs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_algs

err_aead_algs.for.body170_crit_edge:              ; preds = %err_aead_algs
  br label %for.body170

for.body170:                                      ; preds = %for.body170.for.body170_crit_edge, %err_aead_algs.for.body170_crit_edge
  %i.2388 = phi i32 [ %i.2, %for.body170.for.body170_crit_edge ], [ %i.2386, %err_aead_algs.for.body170_crit_edge ]
  %147 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdata.i342, align 4
  %aead_algs_info172 = getelementptr inbounds %struct.omap_aes_pdata, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %aead_algs_info172 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %aead_algs_info172, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %arrayidx174 = getelementptr %struct.aead_alg, ptr %152, i32 %i.2388
  call void @crypto_unregister_aead(ptr noundef %arrayidx174) #11
  %i.2 = add nsw i32 %i.2388, -1
  %cmp169 = icmp sgt i32 %i.2388, 0
  br i1 %cmp169, label %for.body170.for.body170_crit_edge, label %for.body170.err_algs_crit_edge

for.body170.err_algs_crit_edge:                   ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_algs

for.body170.for.body170_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body170

err_algs:                                         ; preds = %for.body170.err_algs_crit_edge, %err_aead_algs.err_algs_crit_edge, %do.end95.err_algs_crit_edge
  %err.1 = phi i32 [ %err.0, %err_aead_algs.err_algs_crit_edge ], [ %err.0, %for.body170.err_algs_crit_edge ], [ %call96, %do.end95.err_algs_crit_edge ]
  %153 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdata.i342, align 4
  %algs_info_size178 = getelementptr inbounds %struct.omap_aes_pdata, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %algs_info_size178 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %algs_info_size178, align 4
  %i.3392 = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.3392)
  %cmp181393 = icmp sgt i32 %i.3392, -1
  br i1 %cmp181393, label %err_algs.for.body182_crit_edge, label %err_algs.err_engine_crit_edge

err_algs.err_engine_crit_edge:                    ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine

err_algs.for.body182_crit_edge:                   ; preds = %err_algs
  br label %for.body182

for.cond180.loopexit:                             ; preds = %for.body190.for.cond180.loopexit_crit_edge, %for.body182.for.cond180.loopexit_crit_edge
  %i.3 = add i32 %i.3394, -1
  %cmp181 = icmp sgt i32 %i.3, -1
  br i1 %cmp181, label %for.cond180.loopexit.for.body182_crit_edge, label %for.cond180.loopexit.err_engine_crit_edge

for.cond180.loopexit.err_engine_crit_edge:        ; preds = %for.cond180.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine

for.cond180.loopexit.for.body182_crit_edge:       ; preds = %for.cond180.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body182

for.body182:                                      ; preds = %for.cond180.loopexit.for.body182_crit_edge, %err_algs.for.body182_crit_edge
  %i.3394 = phi i32 [ %i.3, %for.cond180.loopexit.for.body182_crit_edge ], [ %i.3392, %err_algs.for.body182_crit_edge ]
  %157 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdata.i342, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %registered186 = getelementptr %struct.omap_aes_algs_info, ptr %160, i32 %i.3394, i32 2
  %161 = ptrtoint ptr %registered186 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %registered186, align 4
  %j.1389 = add i32 %162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1389)
  %cmp189390 = icmp sgt i32 %j.1389, -1
  br i1 %cmp189390, label %for.body182.for.body190_crit_edge, label %for.body182.for.cond180.loopexit_crit_edge

for.body182.for.cond180.loopexit_crit_edge:       ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond180.loopexit

for.body182.for.body190_crit_edge:                ; preds = %for.body182
  br label %for.body190

for.body190:                                      ; preds = %for.body190.for.body190_crit_edge, %for.body182.for.body190_crit_edge
  %j.1391 = phi i32 [ %j.1, %for.body190.for.body190_crit_edge ], [ %j.1389, %for.body182.for.body190_crit_edge ]
  %163 = ptrtoint ptr %pdata.i342 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdata.i342, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %arrayidx193 = getelementptr %struct.omap_aes_algs_info, ptr %166, i32 %i.3394
  %167 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx193, align 4
  %arrayidx195 = getelementptr %struct.skcipher_alg, ptr %168, i32 %j.1391
  call void @crypto_unregister_skcipher(ptr noundef %arrayidx195) #11
  %j.1 = add nsw i32 %j.1391, -1
  %cmp189 = icmp sgt i32 %j.1391, 0
  br i1 %cmp189, label %for.body190.for.body190_crit_edge, label %for.body190.for.cond180.loopexit_crit_edge

for.body190.for.cond180.loopexit_crit_edge:       ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond180.loopexit

for.body190.for.body190_crit_edge:                ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body190

err_engine:                                       ; preds = %for.cond180.loopexit.err_engine_crit_edge, %err_algs.err_engine_crit_edge, %if.end66.err_engine_crit_edge
  %err.2.ph = phi i32 [ %call68, %if.end66.err_engine_crit_edge ], [ %err.1, %err_algs.err_engine_crit_edge ], [ %err.1, %for.cond180.loopexit.err_engine_crit_edge ]
  %169 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pr = load ptr, ptr %engine, align 4
  %tobool203.not = icmp eq ptr %.pr, null
  br i1 %tobool203.not, label %err_engine.if.end207_crit_edge, label %if.then204

err_engine.if.end207_crit_edge:                   ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

if.then204:                                       ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #13
  %call206 = call i32 @crypto_engine_exit(ptr noundef nonnull %.pr) #11
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %err_engine.if.end207_crit_edge, %list_add_tail.exit.if.end207_crit_edge
  %err.2369 = phi i32 [ %err.2.ph, %if.then204 ], [ %err.2.ph, %err_engine.if.end207_crit_edge ], [ -12, %list_add_tail.exit.if.end207_crit_edge ]
  %pio_only.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call.i, i32 0, i32 28
  %170 = ptrtoint ptr %pio_only.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pio_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i352 = icmp eq i32 %171, 0
  br i1 %tobool.not.i352, label %if.end.i355, label %if.end207.err_irq_crit_edge

if.end207.err_irq_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_irq

if.end.i355:                                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dma_lch_out.i, align 4
  call void @dma_release_channel(ptr noundef %173) #11
  %174 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dma_lch_in.i, align 4
  call void @dma_release_channel(ptr noundef %175) #11
  br label %err_irq

err_irq:                                          ; preds = %if.end.i355, %if.end207.err_irq_crit_edge, %do.end53, %if.then42.err_irq_crit_edge, %omap_aes_dma_init.exit.err_irq_crit_edge
  %err.3 = phi i32 [ %retval.0.i347, %omap_aes_dma_init.exit.err_irq_crit_edge ], [ %call.i351, %do.end53 ], [ %call43, %if.then42.err_irq_crit_edge ], [ %err.2369, %if.end207.err_irq_crit_edge ], [ %err.2369, %if.end.i355 ]
  call void @tasklet_kill(ptr noundef %done_task) #11
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_irq, %do.end20
  %err.4 = phi i32 [ %call.i339, %do.end20 ], [ %err.3, %err_irq ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %do.end211

do.end211:                                        ; preds = %err_pm_disable, %if.then11, %cond.end.do.end211_crit_edge, %do.end.i, %err8.sink.split.i, %do.end
  %err.6 = phi i32 [ -12, %do.end ], [ %call2.i, %cond.end.do.end211_crit_edge ], [ %11, %if.then11 ], [ %err.4, %err_pm_disable ], [ -19, %do.end.i ], [ -22, %err8.sink.split.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end211, %if.end157.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %do.end211 ], [ 0, %if.end157.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #11
  %pdata = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %algs_info_size, align 4
  %i.065 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.065)
  %cmp66 = icmp sgt i32 %i.065, -1
  br i1 %cmp66, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end17_crit_edge

list_del.exit.for.end17_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body5.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %i.0 = add i32 %i.067, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end17_crit_edge

for.cond.loopexit.for.end17_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end17

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.067 = phi i32 [ %i.0, %for.cond.loopexit.for.body_crit_edge ], [ %i.065, %list_del.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %registered = getelementptr %struct.omap_aes_algs_info, ptr %17, i32 %i.067, i32 2
  %18 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %registered, align 4
  %j.062 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.062)
  %cmp463 = icmp sgt i32 %j.062, -1
  br i1 %cmp463, label %for.body.for.body5_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %j.064 = phi i32 [ %j.0, %for.body5.for.body5_crit_edge ], [ %j.062, %for.body.for.body5_crit_edge ]
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx8 = getelementptr %struct.omap_aes_algs_info, ptr %23, i32 %i.067
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.skcipher_alg, ptr %25, i32 %j.064
  tail call void @crypto_unregister_skcipher(ptr noundef %arrayidx9) #11
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %registered13 = getelementptr %struct.omap_aes_algs_info, ptr %29, i32 %i.067, i32 2
  %30 = ptrtoint ptr %registered13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %registered13, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %registered13, align 4
  %j.0 = add nsw i32 %j.064, -1
  %cmp4 = icmp sgt i32 %j.064, 0
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.cond.loopexit_crit_edge

for.body5.for.cond.loopexit_crit_edge:            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end17:                                        ; preds = %for.cond.loopexit.for.end17_crit_edge, %list_del.exit.for.end17_crit_edge
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 4
  %aead_algs_info = getelementptr inbounds %struct.omap_aes_pdata, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %aead_algs_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aead_algs_info, align 4
  %registered19 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %registered19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %registered19, align 4
  %i.168 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.168)
  %cmp2269 = icmp sgt i32 %i.168, -1
  br i1 %cmp2269, label %for.end17.for.body23_crit_edge, label %for.end17.for.end34_crit_edge

for.end17.for.end34_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.end17.for.body23_crit_edge:                   ; preds = %for.end17
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end17.for.body23_crit_edge
  %i.170 = phi i32 [ %i.1, %for.body23.for.body23_crit_edge ], [ %i.168, %for.end17.for.body23_crit_edge ]
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 4
  %aead_algs_info25 = getelementptr inbounds %struct.omap_aes_pdata, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %aead_algs_info25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aead_algs_info25, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %arrayidx27 = getelementptr %struct.aead_alg, ptr %43, i32 %i.170
  tail call void @crypto_unregister_aead(ptr noundef %arrayidx27) #11
  %44 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata, align 4
  %aead_algs_info29 = getelementptr inbounds %struct.omap_aes_pdata, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %aead_algs_info29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aead_algs_info29, align 4
  %registered30 = getelementptr inbounds %struct.omap_aes_aead_algs, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %registered30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %registered30, align 4
  %dec31 = add i32 %49, -1
  store i32 %dec31, ptr %registered30, align 4
  %i.1 = add nsw i32 %i.170, -1
  %cmp22 = icmp sgt i32 %i.170, 0
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end34_crit_edge

for.body23.for.end34_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.end34:                                        ; preds = %for.body23.for.end34_crit_edge, %for.end17.for.end34_crit_edge
  %engine = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %engine, align 4
  %call35 = tail call i32 @crypto_engine_exit(ptr noundef %51) #11
  %done_task = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %done_task) #11
  %pio_only.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 28
  %52 = ptrtoint ptr %pio_only.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pio_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end34.omap_aes_dma_cleanup.exit_crit_edge

for.end34.omap_aes_dma_cleanup.exit_crit_edge:    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_aes_dma_cleanup.exit

if.end.i:                                         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #13
  %dma_lch_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 25
  %54 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_lch_out.i, align 4
  tail call void @dma_release_channel(ptr noundef %55) #11
  %dma_lch_in.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 24
  %56 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_lch_in.i, align 4
  tail call void @dma_release_channel(ptr noundef %57) #11
  br label %omap_aes_dma_cleanup.exit

omap_aes_dma_cleanup.exit:                        ; preds = %if.end.i, %for.end34.omap_aes_dma_cleanup.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %59, i1 noundef zeroext true) #11
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %61, ptr noundef nonnull @omap_aes_attr_group) #11
  br label %cleanup

cleanup:                                          ; preds = %omap_aes_dma_cleanup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_aes_dma_cleanup.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_done_task.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_done_task, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_done_task.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pio_only = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 28
  %1 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %out_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 18
  %5 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_sg, align 4
  %out_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 27
  %7 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_sg_len, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef 2) #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %in_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 17
  %11 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_sg, align 4
  %in_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 26
  %13 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_sg_len, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_sg, align 4
  %19 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_sg_len, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 2, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_done_task, %if.then.i)) #11
          to label %omap_aes_crypt_dma_stop.exit [label %if.then.i], !srcloc !201

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %total.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 13
  %21 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %22) #11
  br label %omap_aes_crypt_dma_stop.exit

omap_aes_crypt_dma_stop.exit:                     ; preds = %if.then.i, %if.then4
  %pdata.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 29
  %23 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i.i, align 4
  %dma_enable_out.i.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %dma_enable_out.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_enable_out.i.i, align 4
  %dma_enable_in.i.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %24, i32 0, i32 12
  %27 = ptrtoint ptr %dma_enable_in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_enable_in.i.i, align 4
  %or.i.i = or i32 %28, %26
  %dma_start.i.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %24, i32 0, i32 14
  %29 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_start.i.i, align 4
  %or3.i.i = or i32 %or.i.i, %30
  %mask_ofs.i.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %24, i32 0, i32 9
  %31 = ptrtoint ptr %mask_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask_ofs.i.i, align 4
  %io_base.i.i.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %io_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !196
  %neg.i.i.i = xor i32 %or3.i.i, -1
  %and.i.i.i = and i32 %35, %neg.i.i.i
  %36 = ptrtoint ptr %io_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %37, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %and.i.i.i) #11, !srcloc !197
  br label %if.end10

if.end10:                                         ; preds = %omap_aes_crypt_dma_stop.exit, %do.end.if.end10_crit_edge
  %in_sg11 = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 17
  %38 = ptrtoint ptr %in_sg11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_sg11, align 4
  %total_save = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 14
  %40 = ptrtoint ptr %total_save to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_save, align 4
  %flags = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 5
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  tail call void @omap_crypto_cleanup(ptr noundef %39, ptr noundef null, i32 noundef 0, i32 noundef %41, i8 noundef zeroext 8, i32 noundef %43) #11
  %out_sg12 = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 18
  %44 = ptrtoint ptr %out_sg12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_sg12, align 4
  %orig_out = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 21
  %46 = ptrtoint ptr %orig_out to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %orig_out, align 4
  %48 = ptrtoint ptr %total_save to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total_save, align 4
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  tail call void @omap_crypto_cleanup(ptr noundef %45, ptr noundef %47, i32 noundef 0, i32 noundef %49, i8 noundef zeroext 10, i32 noundef %51) #11
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and = and i32 %53, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end10.if.end18_crit_edge, label %if.then17

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %req = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 10
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 29
  %io_base.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 2
  %58 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata.i, align 4
  %iv_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %iv_ofs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iv_ofs.i, align 4
  %62 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !196
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %57, align 4
  %66 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata.i, align 4
  %iv_ofs.1.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %iv_ofs.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iv_ofs.1.i, align 4
  %add.1.i = add i32 %69, 4
  %70 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %71, i32 %add.1.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #11, !srcloc !196
  %arrayidx.1.i = getelementptr i32, ptr %57, i32 1
  %73 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx.1.i, align 4
  %74 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata.i, align 4
  %iv_ofs.2.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %iv_ofs.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iv_ofs.2.i, align 4
  %add.2.i = add i32 %77, 8
  %78 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %79, i32 %add.2.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #11, !srcloc !196
  %arrayidx.2.i = getelementptr i32, ptr %57, i32 2
  %81 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx.2.i, align 4
  %82 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata.i, align 4
  %iv_ofs.3.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %iv_ofs.3.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iv_ofs.3.i, align 4
  %add.3.i = add i32 %85, 12
  %86 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %87, i32 %add.3.i
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #11, !srcloc !196
  %arrayidx.3.i = getelementptr i32, ptr %57, i32 3
  %89 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx.3.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end10.if.end18_crit_edge
  %req1.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 10
  %90 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_finish_req.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_done_task, %if.then.i59)) #11
          to label %omap_aes_finish_req.exit [label %if.then.i59], !srcloc !201

if.then.i59:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_finish_req.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef 0) #11
  br label %omap_aes_finish_req.exit

omap_aes_finish_req.exit:                         ; preds = %if.then.i59, %if.end18
  %engine.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 12
  %92 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %engine.i, align 4
  tail call void @crypto_finalize_skcipher_request(ptr noundef %93, ptr noundef %91, i32 noundef 0) #11
  %dev.i = getelementptr inbounds %struct.omap_aes_dev, ptr %0, i32 0, i32 4
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 12, i32 22
  %96 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %98, i32 noundef 13) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_done_task.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_done_task, %if.then31)) #11
          to label %do.end34 [label %if.then31], !srcloc !201

if.then31:                                        ; preds = %omap_aes_finish_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_done_task.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %omap_aes_finish_req.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 29
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %irq_status_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %irq_status_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_status_ofs, align 4
  %io_base.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !196
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else75, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %irq_enable_ofs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_enable_ofs, align 4
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 0) #11, !srcloc !197
  %in_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 17
  %13 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_sg, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %do.body7, label %do.body13, !prof !202

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-aes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 872, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

do.body13:                                        ; preds = %if.then
  %in_walk = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 22
  %offset = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %offset15 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset15, align 4
  %sub = sub i32 %16, %18
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %20)
  %cmp = icmp ugt i32 %sub, %20
  br i1 %cmp, label %do.body24, label %do.end32, !prof !202

do.body24:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-aes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 874, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

do.end32:                                         ; preds = %do.body13
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %14, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !205

do.body2.i.i:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

sg_virt.exit:                                     ; preds = %do.end32
  %and.i.i = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %23) #11
  %24 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset15, align 4
  %add.ptr.i264 = getelementptr i8, ptr %call1.i, i32 %25
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %28 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_sg, align 4
  %offset38 = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset38, align 4
  %sub39 = sub i32 %27, %31
  %add.ptr = getelementptr i8, ptr %add.ptr.i264, i32 %sub39
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sg_virt.exit
  %src.0310 = phi ptr [ %add.ptr, %sg_virt.exit ], [ %src.1, %for.inc.for.body_crit_edge ]
  %i.0309 = phi i32 [ 0, %sg_virt.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 4
  %data_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %data_ofs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_ofs, align 4
  %mul = shl nuw nsw i32 %i.0309, 2
  %add = add i32 %35, %mul
  %36 = ptrtoint ptr %src.0310 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src.0310, align 4
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %39, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 %37) #11, !srcloc !197
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add.i = add i32 %41, 4
  store i32 %add.i, ptr %offset, align 4
  %42 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_sg, align 4
  %length44 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length44, align 4
  %offset48 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset48, align 4
  %sub49 = sub i32 %add.i, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub49)
  %cmp50 = icmp eq i32 %45, %sub49
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body
  %call53 = tail call ptr @sg_next(ptr noundef %43) #11
  %48 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call53, ptr %in_sg, align 4
  %tobool56.not = icmp eq ptr %call53, null
  br i1 %tobool56.not, label %if.then51.for.inc_crit_edge, label %if.then57

if.then51.for.inc_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then57:                                        ; preds = %if.then51
  %49 = ptrtoint ptr %in_walk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call53, ptr %in_walk, align 4
  %offset.i268 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 1
  %50 = ptrtoint ptr %offset.i268 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset.i268, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %offset, align 4
  %53 = ptrtoint ptr %call53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call53, align 4
  %and.i.i.i269 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i269)
  %tobool.i.not.i.i270 = icmp eq i32 %and.i.i.i269, 0
  br i1 %tobool.i.not.i.i270, label %sg_virt.exit276, label %do.body2.i.i271, !prof !205

do.body2.i.i271:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

sg_virt.exit276:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i272 = and i32 %54, -4
  %55 = inttoptr i32 %and.i.i272 to ptr
  %call1.i273 = tail call ptr @page_address(ptr noundef %55) #11
  %56 = ptrtoint ptr %offset.i268 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i268, align 4
  %add.ptr.i275 = getelementptr i8, ptr %call1.i273, i32 %57
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset, align 4
  %60 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %in_sg, align 4
  %offset65 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %offset65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset65, align 4
  %sub66 = sub i32 %59, %63
  %add.ptr67 = getelementptr i8, ptr %add.ptr.i275, i32 %sub66
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i32, ptr %src.0310, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %sg_virt.exit276, %if.then51.for.inc_crit_edge
  %src.1 = phi ptr [ %add.ptr67, %sg_virt.exit276 ], [ %src.0310, %if.then51.for.inc_crit_edge ], [ %incdec.ptr, %if.else ]
  %inc = add nuw nsw i32 %i.0309, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %and70 = and i32 %6, -3
  %64 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata, align 4
  %irq_status_ofs72 = getelementptr inbounds %struct.omap_aes_pdata, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %irq_status_ofs72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_status_ofs72, align 4
  %68 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %69, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %and70) #11, !srcloc !197
  %70 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs74 = getelementptr inbounds %struct.omap_aes_pdata, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %irq_enable_ofs74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq_enable_ofs74, align 4
  %74 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %75, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 4) #11, !srcloc !197
  br label %if.end188

if.else75:                                        ; preds = %entry
  %and76 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else75.if.end188_crit_edge, label %if.then78

if.else75.if.end188_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then78:                                        ; preds = %if.else75
  %76 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs80 = getelementptr inbounds %struct.omap_aes_pdata, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %irq_enable_ofs80 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq_enable_ofs80, align 4
  %80 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %81, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 0) #11, !srcloc !197
  %out_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 18
  %82 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %out_sg, align 4
  %tobool82.not = icmp eq ptr %83, null
  br i1 %tobool82.not, label %do.body92, label %do.body101, !prof !202

do.body92:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-aes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.body101:                                       ; preds = %if.then78
  %out_walk = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 23
  %offset102 = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 23, i32 1
  %84 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset102, align 4
  %offset104 = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset104, align 4
  %sub105 = sub i32 %85, %87
  %length107 = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 2
  %88 = ptrtoint ptr %length107 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub105, i32 %89)
  %cmp108 = icmp ugt i32 %sub105, %89
  br i1 %cmp108, label %do.body116, label %do.end124, !prof !202

do.body116:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-aes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 907, 0\0A.popsection", ""() #11, !srcloc !208
  unreachable

do.end124:                                        ; preds = %do.body101
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %83, align 4
  %and.i.i.i283 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i283)
  %tobool.i.not.i.i284 = icmp eq i32 %and.i.i.i283, 0
  br i1 %tobool.i.not.i.i284, label %sg_virt.exit290, label %do.body2.i.i285, !prof !205

do.body2.i.i285:                                  ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

sg_virt.exit290:                                  ; preds = %do.end124
  %and.i.i286 = and i32 %91, -4
  %92 = inttoptr i32 %and.i.i286 to ptr
  %call1.i287 = tail call ptr @page_address(ptr noundef %92) #11
  %93 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset104, align 4
  %add.ptr.i289 = getelementptr i8, ptr %call1.i287, i32 %94
  %95 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset102, align 4
  %97 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %out_sg, align 4
  %offset130 = getelementptr inbounds %struct.scatterlist, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %offset130 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset130, align 4
  %sub131 = sub i32 %96, %100
  %add.ptr132 = getelementptr i8, ptr %add.ptr.i289, i32 %sub131
  br label %for.body135

for.body135:                                      ; preds = %for.inc171.for.body135_crit_edge, %sg_virt.exit290
  %dst.0312 = phi ptr [ %add.ptr132, %sg_virt.exit290 ], [ %dst.1, %for.inc171.for.body135_crit_edge ]
  %i.1311 = phi i32 [ 0, %sg_virt.exit290 ], [ %inc172, %for.inc171.for.body135_crit_edge ]
  %101 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdata, align 4
  %data_ofs137 = getelementptr inbounds %struct.omap_aes_pdata, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %data_ofs137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_ofs137, align 4
  %mul138 = shl nuw nsw i32 %i.1311, 2
  %add139 = add i32 %104, %mul138
  %105 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i292 = getelementptr i8, ptr %106, i32 %add139
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292) #11, !srcloc !196
  %108 = ptrtoint ptr %dst.0312 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %dst.0312, align 4
  %109 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset102, align 4
  %add.i294 = add i32 %110, 4
  store i32 %add.i294, ptr %offset102, align 4
  %111 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %out_sg, align 4
  %length143 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %length143 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %length143, align 4
  %offset147 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %offset147 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %offset147, align 4
  %sub148 = sub i32 %add.i294, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %sub148)
  %cmp149 = icmp eq i32 %114, %sub148
  br i1 %cmp149, label %if.then150, label %if.else168

if.then150:                                       ; preds = %for.body135
  %call152 = tail call ptr @sg_next(ptr noundef %112) #11
  %117 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call152, ptr %out_sg, align 4
  %tobool155.not = icmp eq ptr %call152, null
  br i1 %tobool155.not, label %if.then150.for.inc171_crit_edge, label %if.then156

if.then150.for.inc171_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc171

if.then156:                                       ; preds = %if.then150
  %118 = ptrtoint ptr %out_walk to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call152, ptr %out_walk, align 4
  %offset.i295 = getelementptr inbounds %struct.scatterlist, ptr %call152, i32 0, i32 1
  %119 = ptrtoint ptr %offset.i295 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset.i295, align 4
  %121 = ptrtoint ptr %offset102 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %offset102, align 4
  %122 = ptrtoint ptr %call152 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call152, align 4
  %and.i.i.i297 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i297)
  %tobool.i.not.i.i298 = icmp eq i32 %and.i.i.i297, 0
  br i1 %tobool.i.not.i.i298, label %sg_virt.exit304, label %do.body2.i.i299, !prof !205

do.body2.i.i299:                                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

sg_virt.exit304:                                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i300 = and i32 %123, -4
  %124 = inttoptr i32 %and.i.i300 to ptr
  %call1.i301 = tail call ptr @page_address(ptr noundef %124) #11
  %125 = ptrtoint ptr %offset.i295 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offset.i295, align 4
  %add.ptr.i303 = getelementptr i8, ptr %call1.i301, i32 %126
  %127 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %offset102, align 4
  %129 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %out_sg, align 4
  %offset164 = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %offset164 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %offset164, align 4
  %sub165 = sub i32 %128, %132
  %add.ptr166 = getelementptr i8, ptr %add.ptr.i303, i32 %sub165
  br label %for.inc171

if.else168:                                       ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr169 = getelementptr i32, ptr %dst.0312, i32 1
  br label %for.inc171

for.inc171:                                       ; preds = %if.else168, %sg_virt.exit304, %if.then150.for.inc171_crit_edge
  %dst.1 = phi ptr [ %add.ptr166, %sg_virt.exit304 ], [ %dst.0312, %if.then150.for.inc171_crit_edge ], [ %incdec.ptr169, %if.else168 ]
  %inc172 = add nuw nsw i32 %i.1311, 1
  %exitcond313.not = icmp eq i32 %inc172, 4
  br i1 %exitcond313.not, label %for.end173, label %for.inc171.for.body135_crit_edge

for.inc171.for.body135_crit_edge:                 ; preds = %for.inc171
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body135

for.end173:                                       ; preds = %for.inc171
  %total = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 13
  %133 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %total, align 4
  %135 = tail call i32 @llvm.usub.sat.i32(i32 %134, i32 16)
  %136 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %total, align 4
  %and177 = and i32 %6, -5
  %137 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pdata, align 4
  %irq_status_ofs179 = getelementptr inbounds %struct.omap_aes_pdata, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %irq_status_ofs179 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %irq_status_ofs179, align 4
  %141 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i306 = getelementptr i8, ptr %142, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 %and177) #11, !srcloc !197
  %143 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool181.not = icmp eq i32 %144, 0
  br i1 %tobool181.not, label %if.then182, label %if.else183

if.then182:                                       ; preds = %for.end173
  %state.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then182.if.end188_crit_edge

if.then182.if.end188_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then.i:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  %done_task = getelementptr inbounds %struct.omap_aes_dev, ptr %dev_id, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task) #11
  br label %if.end188

if.else183:                                       ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs185 = getelementptr inbounds %struct.omap_aes_pdata, ptr %146, i32 0, i32 10
  %147 = ptrtoint ptr %irq_enable_ofs185 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %irq_enable_ofs185, align 4
  %149 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i308 = getelementptr i8, ptr %150, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308, i32 2) #11, !srcloc !197
  br label %if.end188

if.end188:                                        ; preds = %if.else183, %if.then.i, %if.then182.if.end188_crit_edge, %if.else75.if.end188_crit_edge, %for.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_dma_trigger_omap2(ptr nocapture noundef readonly %dd, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %dma_start = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_start, align 4
  %dma_lch_out = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 25
  %4 = ptrtoint ptr %dma_lch_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_lch_out, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dma_enable_out = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %dma_enable_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_enable_out, align 4
  %or = or i32 %7, %3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %or, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %dma_lch_in = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 24
  %8 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_lch_in, align 4
  %cmp2.not = icmp eq ptr %9, null
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma_enable_in = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %dma_enable_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_enable_in, align 4
  %or5 = or i32 %11, %val.0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %val.1 = phi i32 [ %or5, %if.then3 ], [ %val.0, %if.end.if.end6_crit_edge ]
  %dma_enable_out8 = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %dma_enable_out8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_enable_out8, align 4
  %dma_enable_in10 = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %dma_enable_in10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_enable_in10, align 4
  %or11 = or i32 %13, %3
  %or14 = or i32 %or11, %15
  %mask_ofs = getelementptr inbounds %struct.omap_aes_pdata, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %mask_ofs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask_ofs, align 4
  %io_base.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %18 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !196
  %neg.i = xor i32 %or14, -1
  %and.i = and i32 %20, %neg.i
  %or.i = or i32 %and.i, %val.1
  %21 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !197
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.do.body_crit_edge
    i32 24, label %entry.do.body_crit_edge32
    i32 32, label %entry.do.body_crit_edge33
  ]

entry.do.body_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge32, %entry.do.body_crit_edge33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_setkey.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_setkey, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !201

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_setkey.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %keylen) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %key9 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %1 = call ptr @memcpy(ptr %key9, ptr %key, i32 %keylen)
  %keylen10 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %2 = ptrtoint ptr %keylen10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen10, align 4
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 48
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %6, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %7 = load ptr, ptr %fallback, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 128
  %and = and i32 %9, 1048320
  %base.i.i30 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i30, align 128
  %or.i.i = or i32 %11, %and
  store i32 %or.i.i, ptr %base.i.i30, align 128
  %12 = load ptr, ptr %fallback, align 4
  %call13 = tail call i32 @crypto_skcipher_setkey(ptr noundef %12, ptr noundef %key, i32 noundef %keylen) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 48
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %fallback, align 4
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 128
  %add = add i32 %5, 256
  %6 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %tfm, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @omap_aes_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %8 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %unprepare_request, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %9 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omap_aes_crypt_req, ptr %do_one_request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_exit_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 48
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fallback, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %rem = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp ne i32 %rem, 0
  %and = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_aes_crypt.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_aes_crypt, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !201

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  %and10 = and i32 %mode, 1
  %and16 = lshr i32 %mode, 1
  %and16.lobit = and i32 %and16, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_aes_crypt.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %5, i32 noundef %and10, i32 noundef %and16.lobit) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  %8 = load i32, ptr @aes_fallback_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %if.then24, label %if.end38

if.then24:                                        ; preds = %do.end
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 180
  %9 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %11 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %19 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %20 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %27 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %28 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %dst2.i, align 4
  %29 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %7, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %30 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %iv4.i, align 4
  %and30 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #11
  br label %cleanup

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #11
  br label %cleanup

if.end38:                                         ; preds = %do.end
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #11
  %31 = load ptr, ptr @dev_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end38.__list_del_entry.exit.i.i_crit_edge

if.end38.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end38.__list_del_entry.exit.i.i_crit_edge
  %38 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %31, ptr noundef %38, ptr noundef nonnull @dev_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.omap_aes_find_dev.exit_crit_edge

__list_del_entry.exit.i.i.omap_aes_find_dev.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_aes_find_dev.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %31, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dev_list, ptr %31, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %prev3.i.i.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %31, ptr %38, align 4
  br label %omap_aes_find_dev.exit

omap_aes_find_dev.exit:                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.omap_aes_find_dev.exit_crit_edge
  %42 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %31, ptr %__ctx.i, align 128
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #11
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %omap_aes_find_dev.exit.cleanup_crit_edge, label %if.end42

omap_aes_find_dev.exit.cleanup_crit_edge:         ; preds = %omap_aes_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %omap_aes_find_dev.exit
  %mode43 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %43 = ptrtoint ptr %mode43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mode, ptr %mode43, align 4
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.end42.cleanup_crit_edge, label %if.then.i

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %engine.i = getelementptr inbounds %struct.omap_aes_dev, ptr %31, i32 0, i32 12
  %44 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %engine.i, align 4
  %call.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %45, ptr noundef nonnull %req) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end42.cleanup_crit_edge, %omap_aes_find_dev.exit.cleanup_crit_edge, %if.else, %if.then32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call34, %if.then32 ], [ %call36, %if.else ], [ -19, %omap_aes_find_dev.exit.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_prepare_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr i8, ptr %areq, i32 112
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %req4 = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %req4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %req4, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 128
  %total = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %total, align 4
  %8 = load i32, ptr %add.ptr, align 128
  %total_save = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %total_save to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %total_save, align 4
  %src = getelementptr i8, ptr %areq, i32 -8
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %in_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %in_sg, align 4
  %dst = getelementptr i8, ptr %areq, i32 -4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %out_sg = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %out_sg, align 4
  %16 = load ptr, ptr %dst, align 4
  %orig_out = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 21
  %17 = ptrtoint ptr %orig_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %orig_out, align 4
  %18 = load ptr, ptr %src, align 8
  %19 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %18, %19
  %spec.select = select i1 %cmp, i16 3, i16 1
  %in_sgl = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 19
  %flags14 = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 5
  %call15 = tail call i32 @omap_crypto_align_sg(ptr noundef %in_sg, i32 noundef %6, i32 noundef 16, ptr noundef %in_sgl, i16 noundef zeroext %spec.select, i8 noundef zeroext 8, ptr noundef %flags14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %20 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total, align 4
  %out_sgl = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 20
  %call22 = tail call i32 @omap_crypto_align_sg(ptr noundef %out_sg, i32 noundef %21, i32 noundef 16, ptr noundef %out_sgl, i16 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef %flags14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %22 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_sg, align 4
  %24 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total, align 4
  %conv28 = zext i32 %25 to i64
  %call29 = tail call i32 @sg_nents_for_len(ptr noundef %23, i64 noundef %conv28) #11
  %in_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 26
  %26 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call29, ptr %in_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp slt i32 %call29, 0
  br i1 %cmp31, label %if.end25.cleanup_crit_edge, label %if.end35

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %27 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_sg, align 4
  %29 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total, align 4
  %conv38 = zext i32 %30 to i64
  %call39 = tail call i32 @sg_nents_for_len(ptr noundef %28, i64 noundef %conv38) #11
  %out_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 27
  %31 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call39, ptr %out_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp41 = icmp slt i32 %call39, 0
  br i1 %cmp41, label %if.end35.cleanup_crit_edge, label %if.end45

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr i8, ptr %areq, i32 116
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  %and = and i32 %33, 31
  store i32 %and, ptr %mode, align 4
  %34 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags14, align 4
  %and47 = and i32 %35, -32
  %or49 = or i32 %and47, %and
  store i32 %or49, ptr %flags14, align 4
  %ctx51 = getelementptr inbounds %struct.omap_aes_dev, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %ctx51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %__crt_ctx.i.i, ptr %ctx51, align 4
  %37 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %__ctx.i, align 128
  %call53 = tail call i32 @omap_aes_write_ctrl(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end45 ], [ -19, %entry.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ], [ %call29, %if.end25.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_crypt_req(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr i8, ptr %areq, i32 112
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @omap_aes_crypt_dma_start(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crypto_align_sg(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crypto_cleanup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_len_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %engine = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 4
  %max_qlen = getelementptr inbounds %struct.crypto_engine, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %max_qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.76, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_len_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !209
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #11
  %dd.026 = load ptr, ptr @dev_list, align 4
  %cmp3.not27 = icmp eq ptr %dd.026, @dev_list
  br i1 %cmp3.not27, label %if.end2.for.end_crit_edge, label %if.end2.do.body4_crit_edge

if.end2.do.body4_crit_edge:                       ; preds = %if.end2
  br label %do.body4

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %if.end2.do.body4_crit_edge
  %dd.028 = phi ptr [ %dd.0, %do.body4.do.body4_crit_edge ], [ %dd.026, %if.end2.do.body4_crit_edge ]
  %lock = getelementptr inbounds %struct.omap_aes_dev, ptr %dd.028, i32 0, i32 9
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %engine = getelementptr inbounds %struct.omap_aes_dev, ptr %dd.028, i32 0, i32 12
  %5 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %engine, align 4
  %max_qlen = getelementptr inbounds %struct.crypto_engine, ptr %6, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %max_qlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %max_qlen, align 4
  %max_qlen11 = getelementptr inbounds %struct.omap_aes_dev, ptr %dd.028, i32 0, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %max_qlen11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %4, ptr %max_qlen11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #11
  %9 = ptrtoint ptr %dd.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dd.0 = load ptr, ptr %dd.028, align 4
  %cmp3.not = icmp eq ptr %dd.0, @dev_list
  br i1 %cmp3.not, label %do.body4.for.end_crit_edge, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

do.body4.for.end_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.body4.for.end_crit_edge, %if.end2.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %for.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fallback_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @aes_fallback_sz, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.76, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fallback_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !209
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %2, ptr @aes_fallback_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %size, %if.end2 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_aes_crypt(ptr noundef %req, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_aes_dma_trigger_omap4(ptr nocapture noundef readonly %dd, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %length) #11, !srcloc !197
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #11, !srcloc !197
  %flags = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %assoc_len = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 15
  %6 = ptrtoint ptr %assoc_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoc_len, align 4
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %7) #11, !srcloc !197
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdata.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 29
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %dma_start.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_start.i, align 4
  %dma_lch_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 25
  %14 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_lch_out.i, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma_enable_out.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 13
  %16 = ptrtoint ptr %dma_enable_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_enable_out.i, align 4
  %or.i = or i32 %17, %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %val.0.i = phi i32 [ %or.i, %if.then.i ], [ %13, %if.end.if.end.i_crit_edge ]
  %dma_lch_in.i = getelementptr inbounds %struct.omap_aes_dev, ptr %dd, i32 0, i32 24
  %18 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_lch_in.i, align 4
  %cmp2.not.i = icmp eq ptr %19, null
  br i1 %cmp2.not.i, label %if.end.i.omap_aes_dma_trigger_omap2.exit_crit_edge, label %if.then3.i

if.end.i.omap_aes_dma_trigger_omap2.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_aes_dma_trigger_omap2.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_enable_in.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 12
  %20 = ptrtoint ptr %dma_enable_in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_enable_in.i, align 4
  %or5.i = or i32 %21, %val.0.i
  br label %omap_aes_dma_trigger_omap2.exit

omap_aes_dma_trigger_omap2.exit:                  ; preds = %if.then3.i, %if.end.i.omap_aes_dma_trigger_omap2.exit_crit_edge
  %val.1.i = phi i32 [ %or5.i, %if.then3.i ], [ %val.0.i, %if.end.i.omap_aes_dma_trigger_omap2.exit_crit_edge ]
  %dma_enable_out8.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 13
  %22 = ptrtoint ptr %dma_enable_out8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_enable_out8.i, align 4
  %dma_enable_in10.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 12
  %24 = ptrtoint ptr %dma_enable_in10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_enable_in10.i, align 4
  %or11.i = or i32 %23, %13
  %or14.i = or i32 %or11.i, %25
  %mask_ofs.i = getelementptr inbounds %struct.omap_aes_pdata, ptr %11, i32 0, i32 9
  %26 = ptrtoint ptr %mask_ofs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask_ofs.i, align 4
  %28 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !196
  %neg.i.i = xor i32 %or14.i, -1
  %and.i.i = and i32 %30, %neg.i.i
  %or.i.i = or i32 %and.i.i, %val.1.i
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %32, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or.i.i) #11, !srcloc !197
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_gcm_setkey(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_gcm_setauthsize(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_gcm_encrypt(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_gcm_decrypt(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_gcm_cra_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_4106gcm_setkey(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_4106gcm_setauthsize(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_4106gcm_encrypt(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_4106gcm_decrypt(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !146, !147, !148, !150, !152, !153, !154, !156, !158, !160, !161, !163, !165, !166, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/omap-aes.c", i32 366, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omap_aes_crypt_dma_start.__UNIQUE_ID_ddebug250, !1, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/crypto/omap-aes.c", i32 372, i32 4}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @omap_aes_crypt_dma_start._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @omap_aes_crypt_dma_start._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @omap_aes_crypt_dma_start._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/crypto/omap-aes.c", i32 380, i32 5}
!15 = !{ptr @omap_aes_crypt_dma_start._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/omap-aes.c", i32 412, i32 2}
!18 = !{ptr @omap_aes_crypt_dma_stop.__UNIQUE_ID_ddebug252, !17, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_omap_aes_driver__261_1322_omap_aes_driver_init6, !20, !"__initcall__kmod_omap_aes_driver__261_1322_omap_aes_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/crypto/omap-aes.c", i32 1322, i32 1}
!21 = !{ptr @__exitcall_omap_aes_driver_exit, !20, !"__exitcall_omap_aes_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_description262, !23, !"__UNIQUE_ID_description262", i1 false, i1 false}
!23 = !{!"../drivers/crypto/omap-aes.c", i32 1324, i32 1}
!24 = !{ptr @__UNIQUE_ID_file263, !25, !"__UNIQUE_ID_file263", i1 false, i1 false}
!25 = !{!"../drivers/crypto/omap-aes.c", i32 1325, i32 1}
!26 = !{ptr @__UNIQUE_ID_license264, !25, !"__UNIQUE_ID_license264", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_author265, !28, !"__UNIQUE_ID_author265", i1 false, i1 false}
!28 = !{!"../drivers/crypto/omap-aes.c", i32 1326, i32 1}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/omap-aes.c", i32 108, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap_aes_hw_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_aes_hw_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/omap-aes.c", i32 44, i32 8}
!36 = !{ptr @list_lock, !35, !"list_lock", i1 false, i1 false}
!37 = !{ptr @dev_list, !38, !"dev_list", i1 false, i1 false}
!38 = !{!"../drivers/crypto/omap-aes.c", i32 43, i32 8}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/omap-aes.c", i32 301, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @omap_aes_crypt_dma._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @omap_aes_crypt_dma._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/omap-aes.c", i32 310, i32 3}
!46 = !{ptr @omap_aes_crypt_dma._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_aes_crypt_dma._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/omap-aes.c", i32 322, i32 4}
!50 = !{ptr @omap_aes_crypt_dma._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap_aes_crypt_dma._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/omap-aes.c", i32 332, i32 4}
!54 = !{ptr @omap_aes_crypt_dma._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @omap_aes_crypt_dma._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/omap-aes.c", i32 1316, i32 11}
!58 = !{ptr @omap_aes_driver, !59, !"omap_aes_driver", i1 false, i1 false}
!59 = !{!"../drivers/crypto/omap-aes.c", i32 1312, i32 31}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/omap-aes.c", i32 1112, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @omap_aes_probe._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_aes_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/omap-aes.c", i32 1138, i32 3}
!67 = !{ptr @omap_aes_probe._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap_aes_probe._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/omap-aes.c", i32 1149, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @omap_aes_probe._entry.31, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @omap_aes_probe._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/omap-aes.c", i32 1170, i32 4}
!76 = !{ptr @omap_aes_probe._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @omap_aes_probe._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @omap_aes_probe.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/crypto/omap-aes.c", i32 1175, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/omap-aes.c", i32 1198, i32 5}
!83 = !{ptr @omap_aes_probe.__UNIQUE_ID_ddebug259, !82, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!84 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @omap_aes_probe.__UNIQUE_ID_ddebug260, !86, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!86 = !{!"../drivers/crypto/omap-aes.c", i32 1214, i32 4}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/omap-aes.c", i32 1226, i32 3}
!89 = !{ptr @omap_aes_probe._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @omap_aes_probe._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/crypto/omap-aes.c", i32 1254, i32 2}
!93 = !{ptr @omap_aes_probe._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @omap_aes_probe._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/omap-aes.c", i32 969, i32 3}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @omap_aes_get_res_of._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @omap_aes_get_res_of._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/omap-aes.c", i32 976, i32 3}
!102 = !{ptr @omap_aes_get_res_of._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @omap_aes_get_res_of._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/omap-aes.c", i32 1006, i32 3}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @omap_aes_get_res_pdev._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @omap_aes_get_res_pdev._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @omap_aes_pdata_omap2, !110, !"omap_aes_pdata_omap2", i1 false, i1 false}
!110 = !{!"../drivers/crypto/omap-aes.c", i32 791, i32 36}
!111 = !{ptr @omap_aes_algs_info_ecb_cbc, !112, !"omap_aes_algs_info_ecb_cbc", i1 false, i1 false}
!112 = !{!"../drivers/crypto/omap-aes.c", i32 736, i32 34}
!113 = !{ptr @algs_ecb_cbc, !114, !"algs_ecb_cbc", i1 false, i1 false}
!114 = !{!"../drivers/crypto/omap-aes.c", i32 671, i32 28}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/omap-aes.c", i32 586, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @omap_aes_setkey.__UNIQUE_ID_ddebug256, !116, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!119 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/omap-aes.c", i32 546, i32 2}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @omap_aes_crypt.__UNIQUE_ID_ddebug255, !121, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!124 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @aes_fallback_sz, !126, !"aes_fallback_sz", i1 false, i1 false}
!126 = !{!"../drivers/crypto/omap-aes.c", i32 46, i32 12}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/crypto/omap-aes.c", i32 509, i32 2}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @omap_aes_done_task.__UNIQUE_ID_ddebug253, !128, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!131 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/omap-aes.c", i32 532, i32 2}
!134 = !{ptr @omap_aes_done_task.__UNIQUE_ID_ddebug254, !133, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!135 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/omap-aes.c", i32 402, i32 2}
!138 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @omap_aes_finish_req.__UNIQUE_ID_ddebug251, !137, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!140 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/crypto/omap-aes.c", i32 237, i32 45}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/crypto/omap-aes.c", i32 239, i32 3}
!145 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @omap_aes_dma_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @omap_aes_dma_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/omap-aes.c", i32 243, i32 46}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/omap-aes.c", i32 245, i32 3}
!152 = !{ptr @omap_aes_dma_init._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @omap_aes_dma_init._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @omap_aes_attr_group, !155, !"omap_aes_attr_group", i1 false, i1 false}
!155 = !{!"../drivers/crypto/omap-aes.c", i32 1096, i32 31}
!156 = !{ptr @omap_aes_attrs, !157, !"omap_aes_attrs", i1 false, i1 false}
!157 = !{!"../drivers/crypto/omap-aes.c", i32 1090, i32 26}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/omap-aes.c", i32 1087, i32 8}
!160 = !{ptr @dev_attr_queue_len, !159, !"dev_attr_queue_len", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/crypto/omap-aes.c", i32 1051, i32 22}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/crypto/omap-aes.c", i32 1088, i32 8}
!165 = !{ptr @dev_attr_fallback, !164, !"dev_attr_fallback", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/omap-aes.c", i32 1037, i32 3}
!168 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @fallback_store._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @fallback_store._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @omap_aes_of_match, !172, !"omap_aes_of_match", i1 false, i1 false}
!172 = !{!"../drivers/crypto/omap-aes.c", i32 944, i32 34}
!173 = !{ptr @omap_aes_pdata_omap3, !174, !"omap_aes_pdata_omap3", i1 false, i1 false}
!174 = !{!"../drivers/crypto/omap-aes.c", i32 822, i32 36}
!175 = !{ptr @omap_aes_algs_info_ecb_cbc_ctr, !176, !"omap_aes_algs_info_ecb_cbc_ctr", i1 false, i1 false}
!176 = !{!"../drivers/crypto/omap-aes.c", i32 811, i32 34}
!177 = !{ptr @algs_ctr, !178, !"algs_ctr", i1 false, i1 false}
!178 = !{!"../drivers/crypto/omap-aes.c", i32 713, i32 28}
!179 = !{ptr @omap_aes_pdata_omap4, !180, !"omap_aes_pdata_omap4", i1 false, i1 false}
!180 = !{!"../drivers/crypto/omap-aes.c", i32 841, i32 36}
!181 = !{ptr @omap_aes_aead_info, !182, !"omap_aes_aead_info", i1 false, i1 false}
!182 = !{!"../drivers/crypto/omap-aes.c", i32 786, i32 34}
!183 = !{ptr @algs_aead_gcm, !184, !"algs_aead_gcm", i1 false, i1 false}
!184 = !{!"../drivers/crypto/omap-aes.c", i32 743, i32 24}
!185 = !{ptr @omap_aes_pm_ops, !186, !"omap_aes_pm_ops", i1 false, i1 false}
!186 = !{!"../drivers/crypto/omap-aes.c", i32 1310, i32 8}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 6239608}
!197 = !{i64 6239190}
!198 = !{i64 2148369187}
!199 = !{i64 854807, i64 854832, i64 854854, i64 854870, i64 854882, i64 854902, i64 854926, i64 854942, i64 854954}
!200 = !{i64 2148369375}
!201 = !{i64 2148983145, i64 2148983150, i64 2148983163, i64 2148983207, i64 2148983241, i64 2148983262}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{i64 2154797575, i64 2154798065, i64 2154797612, i64 2154797668, i64 2154797702, i64 2154797726, i64 2154797767, i64 2154797788, i64 2154797816, i64 2154797850}
!204 = !{i64 2154799348, i64 2154799838, i64 2154799385, i64 2154799441, i64 2154799475, i64 2154799499, i64 2154799540, i64 2154799561, i64 2154799589, i64 2154799623}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{i64 2153800874, i64 2153801366, i64 2153800911, i64 2153800967, i64 2153801001, i64 2153801025, i64 2153801066, i64 2153801087, i64 2153801115, i64 2153801149}
!207 = !{i64 2154801489, i64 2154801979, i64 2154801526, i64 2154801582, i64 2154801616, i64 2154801640, i64 2154801681, i64 2154801702, i64 2154801730, i64 2154801764}
!208 = !{i64 2154803272, i64 2154803762, i64 2154803309, i64 2154803365, i64 2154803399, i64 2154803423, i64 2154803464, i64 2154803485, i64 2154803513, i64 2154803547}
!209 = !{!"auto-init"}
