; ModuleID = '/llk/IR_all_yes/drivers/crypto/omap-des.c_pt.bc'
source_filename = "../drivers/crypto/omap-des.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_des_pdata = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_des_algs_info = type { ptr, i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.omap_des_dev = type { %struct.list_head, i32, ptr, ptr, ptr, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, ptr, ptr, %struct.scatterlist, %struct.scatterlist, ptr, %struct.scatter_walk, %struct.scatter_walk, ptr, ptr, i32, i32, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.omap_des_ctx = type { %struct.crypto_engine_ctx, ptr, i32, [6 x i32], i32 }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_omap_des__260_1146_omap_des_driver_init6 = internal global ptr @omap_des_driver_init, section ".initcall6.init", align 4
@omap_des_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_des_probe, ptr @omap_des_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_des_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_des_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_des_driver_exit = internal global ptr @omap_des_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description261 = internal constant [55 x i8] c"omap_des.description=OMAP DES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [38 x i8] c"omap_des.file=drivers/crypto/omap-des\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [24 x i8] c"omap_des.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [46 x i8] c"omap_des.author=Joel Fernandes <joelf@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap-des\00", [23 x i8] zeroinitializer }, align 32
@omap_des_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_des_pdata_omap4 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap_des_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_des_suspend, ptr @omap_des_resume, ptr @omap_des_suspend, ptr @omap_des_resume, ptr @omap_des_suspend, ptr @omap_des_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_des_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 968, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to alloc data struct.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_des_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/omap-des.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr = internal global ptr @omap_des_probe._entry, section ".printk_index", align 4
@omap_des_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no MEM resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr.8 = internal global ptr @omap_des_probe._entry.6, section ".printk_index", align 4
@omap_des_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get_sync(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr.11 = internal global ptr @omap_des_probe._entry.9, section ".printk_index", align 4
@omap_des_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1010, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OMAP DES hw accel rev: %u.%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr.15 = internal global ptr @omap_des_probe._entry.12, section ".printk_index", align 4
@omap_des_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1029, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to grab omap-des IRQ\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr.18 = internal global ptr @omap_des_probe._entry.16, section ".printk_index", align 4
@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dev_list, ptr @dev_list }, [24 x i8] zeroinitializer }, align 32
@omap_des_probe.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_des\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg alg: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: reg alg: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_des_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"initialization failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_des_probe._entry_ptr.24 = internal global ptr @omap_des_probe._entry.22, section ".printk_index", align 4
@omap_des_get_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 934, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no compatible OF match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_des_get_of\00", [16 x i8] zeroinitializer }, align 32
@omap_des_get_of._entry_ptr = internal global ptr @omap_des_get_of._entry, section ".printk_index", align 4
@omap_des_done_task.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_des_done_task\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enter done_task\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: enter done_task\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_des_done_task.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"exit\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: exit\0A\00", [22 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma_stop.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_des_crypt_dma_stop\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total: %zd\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: total: %zd\0A\00", [16 x i8] zeroinitializer }, align 32
@omap_des_finish_req.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_des_finish_req\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"err: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: err: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@omap_des_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to request in DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_des_dma_init\00", [46 x i8] zeroinitializer }, align 32
@omap_des_dma_init._entry_ptr = internal global ptr @omap_des_dma_init._entry, section ".printk_index", align 4
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@omap_des_dma_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to request out DMA channel\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_des_dma_init._entry_ptr.44 = internal global ptr @omap_des_dma_init._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@omap_des_pdata_omap4 = internal constant { %struct.omap_des_pdata, [56 x i8] } { %struct.omap_des_pdata { ptr @omap_des_algs_info_ecb_cbc, i32 1, ptr @omap_des_dma_trigger_omap4, i32 20, i32 24, i32 32, i32 40, i32 48, i32 52, i32 64, i32 60, i32 32, i32 64, i32 0, i32 1792, i32 8, i32 63, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap_des_algs_info_ecb_cbc = internal global { [1 x %struct.omap_des_algs_info], [20 x i8] } { [1 x %struct.omap_des_algs_info] [%struct.omap_des_algs_info { ptr @algs_ecb_cbc, i32 4, i32 0 }], [20 x i8] zeroinitializer }, align 32
@algs_ecb_cbc = internal global [4 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @omap_des_setkey, ptr @omap_des_ecb_encrypt, ptr @omap_des_ecb_decrypt, ptr @omap_des_init_tfm, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 8, i32 48, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @omap_des_setkey, ptr @omap_des_cbc_encrypt, ptr @omap_des_cbc_decrypt, ptr @omap_des_init_tfm, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 8, i32 48, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @omap_des3_setkey, ptr @omap_des_ecb_encrypt, ptr @omap_des_ecb_decrypt, ptr @omap_des_init_tfm, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 8, i32 48, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @omap_des3_setkey, ptr @omap_des_cbc_encrypt, ptr @omap_des_cbc_decrypt, ptr @omap_des_init_tfm, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 8, i32 48, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }], align 128
@omap_des_setkey.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_des_setkey\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enter, keylen: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: enter, keylen: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_des_crypt.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_des_crypt\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: nbytes: %d, enc: %d, cbc: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_des_init_tfm.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_des_init_tfm\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: enter\0A\00", [21 x i8] zeroinitializer }, align 32
@omap_des_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.55, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_des_hw_init\00", [47 x i8] zeroinitializer }, align 32
@omap_des_hw_init._entry_ptr = internal global ptr @omap_des_hw_init._entry, section ".printk_index", align 4
@omap_des_crypt_dma_start.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.56, ptr @.str.3, ptr @.str.33, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_des_crypt_dma_start\00", [39 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.56, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma_map_sg() error\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma_start._entry_ptr = internal global ptr @omap_des_crypt_dma_start._entry, section ".printk_index", align 4
@omap_des_crypt_dma_start._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.56, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma_start._entry_ptr.59 = internal global ptr @omap_des_crypt_dma_start._entry.58, section ".printk_index", align 4
@omap_des_crypt_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't configure IN dmaengine slave: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_des_crypt_dma\00", [45 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma._entry_ptr = internal global ptr @omap_des_crypt_dma._entry, section ".printk_index", align 4
@omap_des_crypt_dma._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IN prep_slave_sg() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma._entry_ptr.64 = internal global ptr @omap_des_crypt_dma._entry.62, section ".printk_index", align 4
@omap_des_crypt_dma._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't configure OUT dmaengine slave: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma._entry_ptr.67 = internal global ptr @omap_des_crypt_dma._entry.65, section ".printk_index", align 4
@omap_des_crypt_dma._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OUT prep_slave_sg() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_des_crypt_dma._entry_ptr.70 = internal global ptr @omap_des_crypt_dma._entry.68, section ".printk_index", align 4
@omap_des3_setkey.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.71, ptr @.str.3, ptr @.str.47, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_des3_setkey\00", [47 x i8] zeroinitializer }, align 32
@omap_des_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.72, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_des_resume\00", [16 x i8] zeroinitializer }, align 32
@omap_des_resume._entry_ptr = internal global ptr @omap_des_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"omap_des_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1136, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1140, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"omap_des_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 919, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"omap_des_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1134, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 968, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 976, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 998, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1008, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1029, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"dev_list\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 171, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1055, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1085, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 934, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 601, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 625, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 506, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 496, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 346, i32 45 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 348, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 352, i32 46 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 354, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 172, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"omap_des_pdata_omap4\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 815, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"omap_des_algs_info_ecb_cbc\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 807, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 662, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 635, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 721, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 234, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 463, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 469, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 476, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 410, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 419, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 429, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 438, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 680, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private constant [29 x i8] c"../drivers/crypto/omap-des.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1127, i32 3 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_omap_des_driver_exit, ptr @__initcall__kmod_omap_des__260_1146_omap_des_driver_init6, ptr @omap_des_crypt_dma._entry, ptr @omap_des_crypt_dma._entry.62, ptr @omap_des_crypt_dma._entry.65, ptr @omap_des_crypt_dma._entry.68, ptr @omap_des_crypt_dma._entry_ptr, ptr @omap_des_crypt_dma._entry_ptr.64, ptr @omap_des_crypt_dma._entry_ptr.67, ptr @omap_des_crypt_dma._entry_ptr.70, ptr @omap_des_crypt_dma_start._entry, ptr @omap_des_crypt_dma_start._entry.58, ptr @omap_des_crypt_dma_start._entry_ptr, ptr @omap_des_crypt_dma_start._entry_ptr.59, ptr @omap_des_dma_init._entry, ptr @omap_des_dma_init._entry.42, ptr @omap_des_dma_init._entry_ptr, ptr @omap_des_dma_init._entry_ptr.44, ptr @omap_des_driver_exit, ptr @omap_des_get_of._entry, ptr @omap_des_get_of._entry_ptr, ptr @omap_des_hw_init._entry, ptr @omap_des_hw_init._entry_ptr, ptr @omap_des_probe._entry, ptr @omap_des_probe._entry.12, ptr @omap_des_probe._entry.16, ptr @omap_des_probe._entry.22, ptr @omap_des_probe._entry.6, ptr @omap_des_probe._entry.9, ptr @omap_des_probe._entry_ptr, ptr @omap_des_probe._entry_ptr.11, ptr @omap_des_probe._entry_ptr.15, ptr @omap_des_probe._entry_ptr.18, ptr @omap_des_probe._entry_ptr.24, ptr @omap_des_probe._entry_ptr.8, ptr @omap_des_resume._entry, ptr @omap_des_resume._entry_ptr, ptr @omap_des_driver, ptr @.str, ptr @omap_des_of_match, ptr @omap_des_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @list_lock, ptr @dev_list, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @omap_des_pdata_omap4, ptr @omap_des_algs_info_ecb_cbc, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_get_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_dma_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_pdata_omap4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_algs_info_ecb_cbc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma_start._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_crypt_dma._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_des_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_des_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_des_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_des_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 164, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %do.end138

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %do.end138

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end8
  %call.i235 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %pdata.i = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 24
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i235, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %call.i235, null
  br i1 %tobool.not.i, label %cond.end, label %cond.true.if.end14_crit_edge

cond.true.if.end14_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

cond.false:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %pdata.i237 = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %pdata.i237 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pdata.i237, align 4
  br label %if.end14

cond.end:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  br label %do.end138

if.end14:                                         ; preds = %cond.false, %cond.true.if.end14_crit_edge
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call3) #7
  %io_base = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call15 to i32
  br label %do.end138

if.end21:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call3, align 4
  %phys_base = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phys_base, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i238 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp.i239 = icmp slt i32 %call.i238, 0
  br i1 %cmp.i239, label %if.then.i, label %if.end29

if.then.i:                                        ; preds = %if.end21
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !163
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end27_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !164
  br label %do.end27

do.end27:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end27_crit_edge
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %call.i238) #10
  br label %err_get

if.end29:                                         ; preds = %if.end21
  %pdata.i241 = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 24
  %16 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i241, align 4
  %dma_enable_out.i = getelementptr inbounds %struct.omap_des_pdata, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %dma_enable_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_enable_out.i, align 4
  %dma_enable_in.i = getelementptr inbounds %struct.omap_des_pdata, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %dma_enable_in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_enable_in.i, align 4
  %or.i = or i32 %21, %19
  %dma_start.i = getelementptr inbounds %struct.omap_des_pdata, ptr %17, i32 0, i32 13
  %22 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_start.i, align 4
  %or3.i = or i32 %or.i, %23
  %mask_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %mask_ofs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_ofs.i, align 4
  %26 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !165
  %neg.i.i = xor i32 %or3.i, -1
  %and.i.i = and i32 %28, %neg.i.i
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %30, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and.i.i) #7, !srcloc !166
  %31 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata.i241, align 4
  %rev_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %rev_ofs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rev_ofs, align 4
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !165
  %call.i242 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  %38 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i241, align 4
  %major_mask = getelementptr inbounds %struct.omap_des_pdata, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %major_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %major_mask, align 4
  %and = and i32 %41, %37
  %major_shift = getelementptr inbounds %struct.omap_des_pdata, ptr %39, i32 0, i32 15
  %42 = ptrtoint ptr %major_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %major_shift, align 4
  %shr = lshr i32 %and, %43
  %minor_mask = getelementptr inbounds %struct.omap_des_pdata, ptr %39, i32 0, i32 16
  %44 = ptrtoint ptr %minor_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %minor_mask, align 4
  %and38 = and i32 %45, %37
  %minor_shift = getelementptr inbounds %struct.omap_des_pdata, ptr %39, i32 0, i32 17
  %46 = ptrtoint ptr %minor_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minor_shift, align 4
  %shr40 = lshr i32 %and38, %47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %shr, i32 noundef %shr40) #10
  %done_task = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @omap_des_done_task, i32 noundef %48) #7
  %dma_lch_out.i = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 20
  %49 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dma_lch_out.i, align 4
  %dma_lch_in.i = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 19
  %50 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dma_lch_in.i, align 4
  %51 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev2, align 4
  %call.i244 = tail call ptr @dma_request_chan(ptr noundef %52, ptr noundef nonnull @.str.38) #7
  %53 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i244, ptr %dma_lch_in.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i244, inttoptr (i32 -4096 to ptr)
  %54 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i.i, label %do.end.i245, label %if.end.i

do.end.i245:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.39) #10
  %56 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_lch_in.i, align 4
  br label %omap_des_dma_init.exit

if.end.i:                                         ; preds = %if.end29
  %call8.i = tail call ptr @dma_request_chan(ptr noundef %55, ptr noundef nonnull @.str.41) #7
  %58 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call8.i, ptr %dma_lch_out.i, align 4
  %cmp.i33.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i, label %do.end15.i, label %if.end.i.if.end64_crit_edge

if.end.i.if.end64_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.43) #10
  %61 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_lch_out.i, align 4
  %63 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_lch_in.i, align 4
  tail call void @dma_release_channel(ptr noundef %64) #7
  br label %omap_des_dma_init.exit

omap_des_dma_init.exit:                           ; preds = %do.end15.i, %do.end.i245
  %retval.0.i246.in = phi ptr [ %57, %do.end.i245 ], [ %62, %do.end15.i ]
  %retval.0.i246 = ptrtoint ptr %retval.0.i246.in to i32
  %65 = zext i32 %retval.0.i246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i246, label %land.lhs.true [
    i32 -517, label %omap_des_dma_init.exit.err_irq_crit_edge
    i32 0, label %omap_des_dma_init.exit.if.end64_crit_edge
  ]

omap_des_dma_init.exit.if.end64_crit_edge:        ; preds = %omap_des_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

omap_des_dma_init.exit.err_irq_crit_edge:         ; preds = %omap_des_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

land.lhs.true:                                    ; preds = %omap_des_dma_init.exit
  %66 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata.i241, align 4
  %irq_status_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %irq_status_ofs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq_status_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool46.not = icmp eq i32 %69, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true47

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.lhs.true47:                                  ; preds = %land.lhs.true
  %irq_enable_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %67, i32 0, i32 9
  %70 = ptrtoint ptr %irq_enable_ofs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq_enable_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool49.not = icmp eq i32 %71, 0
  br i1 %tobool49.not, label %land.lhs.true47.if.end64_crit_edge, label %if.then50

land.lhs.true47.if.end64_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then50:                                        ; preds = %land.lhs.true47
  %pio_only = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 23
  %72 = ptrtoint ptr %pio_only to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %pio_only, align 4
  %call51 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then50.err_irq_crit_edge, label %if.end54

if.then50.err_irq_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end54:                                         ; preds = %if.then50
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i247 = icmp eq ptr %74, null
  br i1 %tobool.not.i247, label %if.end.i248, label %if.end54.dev_name.exit_crit_edge

if.end54.dev_name.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i248:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i248, %if.end54.dev_name.exit_crit_edge
  %retval.0.i249 = phi ptr [ %76, %if.end.i248 ], [ %74, %if.end54.dev_name.exit_crit_edge ]
  %call.i250 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call51, ptr noundef nonnull @omap_des_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i249, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool57.not = icmp eq i32 %call.i250, 0
  br i1 %tobool57.not, label %dev_name.exit.if.end64_crit_edge, label %do.end61

dev_name.exit.if.end64_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end61:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %err_irq

if.end64:                                         ; preds = %dev_name.exit.if.end64_crit_edge, %land.lhs.true47.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %omap_des_dma_init.exit.if.end64_crit_edge, %if.end.i.if.end64_crit_edge
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %prev.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #7
  %79 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %79, ptr noundef nonnull @dev_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.list_add_tail.exit_crit_edge

if.end64.list_add_tail.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
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

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end64.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  %call66 = tail call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #7
  %engine = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 9
  %83 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call66, ptr %engine, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %list_add_tail.exit.if.end134_crit_edge, label %if.end70

list_add_tail.exit.if.end134_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.end70:                                         ; preds = %list_add_tail.exit
  %call72 = tail call i32 @crypto_engine_start(ptr noundef nonnull %call66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.cond.preheader, label %if.end70.err_engine_crit_edge

if.end70.err_engine_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_engine

for.cond.preheader:                               ; preds = %if.end70
  %84 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata.i241, align 4
  %algs_info_size269 = getelementptr inbounds %struct.omap_des_pdata, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %algs_info_size269 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %algs_info_size269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp77270.not = icmp eq i32 %87, 0
  br i1 %cmp77270.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.cond78.preheader_crit_edge

for.cond.preheader.for.cond78.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond78.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond78.preheader:                             ; preds = %for.inc103.for.cond78.preheader_crit_edge, %for.cond.preheader.for.cond78.preheader_crit_edge
  %i.0271 = phi i32 [ %inc104, %for.inc103.for.cond78.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond78.preheader_crit_edge ]
  %88 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata.i241, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %size265 = getelementptr %struct.omap_des_algs_info, ptr %91, i32 %i.0271, i32 1
  %92 = ptrtoint ptr %size265 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp80266.not = icmp eq i32 %93, 0
  br i1 %cmp80266.not, label %for.cond78.preheader.for.inc103_crit_edge, label %for.cond78.preheader.for.body81_crit_edge

for.cond78.preheader.for.body81_crit_edge:        ; preds = %for.cond78.preheader
  br label %for.body81

for.cond78.preheader.for.inc103_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103

for.body81:                                       ; preds = %if.end98.for.body81_crit_edge, %for.cond78.preheader.for.body81_crit_edge
  %94 = phi ptr [ %106, %if.end98.for.body81_crit_edge ], [ %91, %for.cond78.preheader.for.body81_crit_edge ]
  %j.0267 = phi i32 [ %inc102, %if.end98.for.body81_crit_edge ], [ 0, %for.cond78.preheader.for.body81_crit_edge ]
  %arrayidx = getelementptr %struct.omap_des_algs_info, ptr %94, i32 %i.0271
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  %arrayidx85 = getelementptr %struct.skcipher_alg, ptr %96, i32 %j.0267
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_probe.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_probe, %if.then91)) #7
          to label %do.end94 [label %if.then91], !srcloc !167

if.then91:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #9
  %cra_name = getelementptr %struct.skcipher_alg, ptr %96, i32 %j.0267, i32 11, i32 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_probe.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, ptr noundef %cra_name) #7
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %for.body81
  %call95 = tail call i32 @crypto_register_skcipher(ptr noundef %arrayidx85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  %97 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdata.i241, align 4
  br i1 %tobool96.not, label %if.end98, label %err_algs

if.end98:                                         ; preds = %do.end94
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %registered = getelementptr %struct.omap_des_algs_info, ptr %100, i32 %i.0271, i32 2
  %101 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %registered, align 4
  %inc = add i32 %102, 1
  store i32 %inc, ptr %registered, align 4
  %inc102 = add nuw i32 %j.0267, 1
  %103 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdata.i241, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %size = getelementptr %struct.omap_des_algs_info, ptr %106, i32 %i.0271, i32 1
  %107 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size, align 4
  %cmp80 = icmp ult i32 %inc102, %108
  br i1 %cmp80, label %if.end98.for.body81_crit_edge, label %if.end98.for.inc103_crit_edge

if.end98.for.inc103_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103

if.end98.for.body81_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body81

for.inc103:                                       ; preds = %if.end98.for.inc103_crit_edge, %for.cond78.preheader.for.inc103_crit_edge
  %inc104 = add nuw i32 %i.0271, 1
  %109 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdata.i241, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_des_pdata, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %algs_info_size, align 4
  %cmp77 = icmp ult i32 %inc104, %112
  br i1 %cmp77, label %for.inc103.for.cond78.preheader_crit_edge, label %for.inc103.cleanup_crit_edge

for.inc103.cleanup_crit_edge:                     ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc103.for.cond78.preheader_crit_edge:        ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond78.preheader

err_algs:                                         ; preds = %do.end94
  %algs_info_size107 = getelementptr inbounds %struct.omap_des_pdata, ptr %98, i32 0, i32 1
  %113 = ptrtoint ptr %algs_info_size107 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %algs_info_size107, align 4
  %i.1276 = add i32 %114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1276)
  %cmp109277 = icmp sgt i32 %i.1276, -1
  br i1 %cmp109277, label %err_algs.for.body110_crit_edge, label %err_algs.err_engine_crit_edge

err_algs.err_engine_crit_edge:                    ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_engine

err_algs.for.body110_crit_edge:                   ; preds = %err_algs
  br label %for.body110

for.cond108.loopexit:                             ; preds = %for.body118.for.cond108.loopexit_crit_edge, %for.body110.for.cond108.loopexit_crit_edge
  %i.1 = add i32 %i.1278, -1
  %cmp109 = icmp sgt i32 %i.1, -1
  br i1 %cmp109, label %for.cond108.loopexit.for.body110_crit_edge, label %for.cond108.loopexit.err_engine_crit_edge

for.cond108.loopexit.err_engine_crit_edge:        ; preds = %for.cond108.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_engine

for.cond108.loopexit.for.body110_crit_edge:       ; preds = %for.cond108.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body110

for.body110:                                      ; preds = %for.cond108.loopexit.for.body110_crit_edge, %err_algs.for.body110_crit_edge
  %i.1278 = phi i32 [ %i.1, %for.cond108.loopexit.for.body110_crit_edge ], [ %i.1276, %err_algs.for.body110_crit_edge ]
  %115 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdata.i241, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %registered114 = getelementptr %struct.omap_des_algs_info, ptr %118, i32 %i.1278, i32 2
  %119 = ptrtoint ptr %registered114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %registered114, align 4
  %j.1273 = add i32 %120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1273)
  %cmp117274 = icmp sgt i32 %j.1273, -1
  br i1 %cmp117274, label %for.body110.for.body118_crit_edge, label %for.body110.for.cond108.loopexit_crit_edge

for.body110.for.cond108.loopexit_crit_edge:       ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond108.loopexit

for.body110.for.body118_crit_edge:                ; preds = %for.body110
  br label %for.body118

for.body118:                                      ; preds = %for.body118.for.body118_crit_edge, %for.body110.for.body118_crit_edge
  %j.1275 = phi i32 [ %j.1, %for.body118.for.body118_crit_edge ], [ %j.1273, %for.body110.for.body118_crit_edge ]
  %121 = ptrtoint ptr %pdata.i241 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdata.i241, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %arrayidx121 = getelementptr %struct.omap_des_algs_info, ptr %124, i32 %i.1278
  %125 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx121, align 4
  %arrayidx123 = getelementptr %struct.skcipher_alg, ptr %126, i32 %j.1275
  tail call void @crypto_unregister_skcipher(ptr noundef %arrayidx123) #7
  %j.1 = add nsw i32 %j.1275, -1
  %cmp117 = icmp sgt i32 %j.1275, 0
  br i1 %cmp117, label %for.body118.for.body118_crit_edge, label %for.body118.for.cond108.loopexit_crit_edge

for.body118.for.cond108.loopexit_crit_edge:       ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond108.loopexit

for.body118.for.body118_crit_edge:                ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body118

err_engine:                                       ; preds = %for.cond108.loopexit.err_engine_crit_edge, %err_algs.err_engine_crit_edge, %if.end70.err_engine_crit_edge
  %err.0.ph = phi i32 [ %call72, %if.end70.err_engine_crit_edge ], [ %call95, %err_algs.err_engine_crit_edge ], [ %call95, %for.cond108.loopexit.err_engine_crit_edge ]
  %127 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr = load ptr, ptr %engine, align 4
  %tobool130.not = icmp eq ptr %.pr, null
  br i1 %tobool130.not, label %err_engine.if.end134_crit_edge, label %if.then131

err_engine.if.end134_crit_edge:                   ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then131:                                       ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #9
  %call133 = tail call i32 @crypto_engine_exit(ptr noundef nonnull %.pr) #7
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %err_engine.if.end134_crit_edge, %list_add_tail.exit.if.end134_crit_edge
  %err.0264 = phi i32 [ %err.0.ph, %if.then131 ], [ %err.0.ph, %err_engine.if.end134_crit_edge ], [ -12, %list_add_tail.exit.if.end134_crit_edge ]
  %pio_only.i = getelementptr inbounds %struct.omap_des_dev, ptr %call.i, i32 0, i32 23
  %128 = ptrtoint ptr %pio_only.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pio_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i251 = icmp eq i32 %129, 0
  br i1 %tobool.not.i251, label %if.end.i254, label %if.end134.err_irq_crit_edge

if.end134.err_irq_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end.i254:                                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dma_lch_out.i, align 4
  tail call void @dma_release_channel(ptr noundef %131) #7
  %132 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dma_lch_in.i, align 4
  tail call void @dma_release_channel(ptr noundef %133) #7
  br label %err_irq

err_irq:                                          ; preds = %if.end.i254, %if.end134.err_irq_crit_edge, %do.end61, %if.then50.err_irq_crit_edge, %omap_des_dma_init.exit.err_irq_crit_edge
  %err.1 = phi i32 [ %retval.0.i246, %omap_des_dma_init.exit.err_irq_crit_edge ], [ %call.i250, %do.end61 ], [ %call51, %if.then50.err_irq_crit_edge ], [ %err.0264, %if.end134.err_irq_crit_edge ], [ %err.0264, %if.end.i254 ]
  tail call void @tasklet_kill(ptr noundef %done_task) #7
  br label %err_get

err_get:                                          ; preds = %err_irq, %do.end27
  %err.2 = phi i32 [ %call.i238, %do.end27 ], [ %err.1, %err_irq ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %do.end138

do.end138:                                        ; preds = %err_get, %if.then18, %cond.end, %do.end7, %do.end
  %err.4 = phi i32 [ -12, %do.end ], [ -22, %cond.end ], [ %9, %if.then18 ], [ %err.2, %err_get ], [ -12, %do.end7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end138, %for.inc103.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %do.end138 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #7
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
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  %pdata = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_des_pdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %algs_info_size, align 4
  %i.030 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.030)
  %cmp31 = icmp sgt i32 %i.030, -1
  br i1 %cmp31, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end12_crit_edge

list_del.exit.for.end12_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body5.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %i.0 = add i32 %i.032, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end12_crit_edge

for.cond.loopexit.for.end12_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.032 = phi i32 [ %i.0, %for.cond.loopexit.for.body_crit_edge ], [ %i.030, %list_del.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %registered = getelementptr %struct.omap_des_algs_info, ptr %17, i32 %i.032, i32 2
  %18 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %registered, align 4
  %j.027 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.027)
  %cmp428 = icmp sgt i32 %j.027, -1
  br i1 %cmp428, label %for.body.for.body5_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %j.029 = phi i32 [ %j.0, %for.body5.for.body5_crit_edge ], [ %j.027, %for.body.for.body5_crit_edge ]
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx8 = getelementptr %struct.omap_des_algs_info, ptr %23, i32 %i.032
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.skcipher_alg, ptr %25, i32 %j.029
  tail call void @crypto_unregister_skcipher(ptr noundef %arrayidx9) #7
  %j.0 = add nsw i32 %j.029, -1
  %cmp4 = icmp sgt i32 %j.029, 0
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.cond.loopexit_crit_edge

for.body5.for.cond.loopexit_crit_edge:            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end12:                                        ; preds = %for.cond.loopexit.for.end12_crit_edge, %list_del.exit.for.end12_crit_edge
  %done_task = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %done_task) #7
  %pio_only.i = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 23
  %26 = ptrtoint ptr %pio_only.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pio_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end12.omap_des_dma_cleanup.exit_crit_edge

for.end12.omap_des_dma_cleanup.exit_crit_edge:    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_des_dma_cleanup.exit

if.end.i:                                         ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dma_lch_out.i = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_lch_out.i, align 4
  tail call void @dma_release_channel(ptr noundef %29) #7
  %dma_lch_in.i = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_lch_in.i, align 4
  tail call void @dma_release_channel(ptr noundef %31) #7
  br label %omap_des_dma_cleanup.exit

omap_des_dma_cleanup.exit:                        ; preds = %if.end.i, %for.end12.omap_des_dma_cleanup.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap_des_dev, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %33, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %omap_des_dma_cleanup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_des_dma_cleanup.exit ], [ -19, %entry.cleanup_crit_edge ]
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
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_des_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_done_task.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_done_task, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_done_task.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pio_only = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 23
  %1 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %out_sg = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 13
  %5 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_sg, align 4
  %out_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 22
  %7 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_sg_len, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef 2) #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %in_sg = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 12
  %11 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_sg, align 4
  %in_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 21
  %13 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_sg_len, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_sg, align 4
  %19 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_sg_len, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 2, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_crypt_dma_stop.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_done_task, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %total.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 10
  %21 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_crypt_dma_stop.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %22) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then4
  %pdata.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 24
  %23 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i.i, align 4
  %dma_enable_out.i.i = getelementptr inbounds %struct.omap_des_pdata, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %dma_enable_out.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_enable_out.i.i, align 4
  %dma_enable_in.i.i = getelementptr inbounds %struct.omap_des_pdata, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %dma_enable_in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_enable_in.i.i, align 4
  %or.i.i = or i32 %28, %26
  %dma_start.i.i = getelementptr inbounds %struct.omap_des_pdata, ptr %24, i32 0, i32 13
  %29 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_start.i.i, align 4
  %or3.i.i = or i32 %or.i.i, %30
  %mask_ofs.i.i = getelementptr inbounds %struct.omap_des_pdata, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %mask_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask_ofs.i.i, align 4
  %io_base.i.i.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %io_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !165
  %neg.i.i.i = xor i32 %or3.i.i, -1
  %and.i.i.i = and i32 %35, %neg.i.i.i
  %36 = ptrtoint ptr %io_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %37, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %and.i.i.i) #7, !srcloc !166
  %dma_lch_in.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 19
  %38 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_lch_in.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %do.end.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

do.end.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %43(ptr noundef %39) #7
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %do.end.i.dmaengine_terminate_all.exit.i_crit_edge
  %dma_lch_out.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 20
  %44 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_lch_out.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %device_terminate_all.i1.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 47
  %48 = ptrtoint ptr %device_terminate_all.i1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_terminate_all.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %49, null
  br i1 %tobool.not.i2.i, label %dmaengine_terminate_all.exit.i.if.end10_crit_edge, label %if.then.i4.i

dmaengine_terminate_all.exit.i.if.end10_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i4.i:                                     ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call i32 %49(ptr noundef %45) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then.i4.i, %dmaengine_terminate_all.exit.i.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %in_sgl = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 14
  %total_save = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 11
  %50 = ptrtoint ptr %total_save to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total_save, align 4
  %flags = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 5
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  tail call void @omap_crypto_cleanup(ptr noundef %in_sgl, ptr noundef null, i32 noundef 0, i32 noundef %51, i8 noundef zeroext 8, i32 noundef %53) #7
  %out_sgl = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 15
  %orig_out = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 16
  %54 = ptrtoint ptr %orig_out to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %orig_out, align 4
  %56 = ptrtoint ptr %total_save to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %total_save, align 4
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  tail call void @omap_crypto_cleanup(ptr noundef %out_sgl, ptr noundef %55, i32 noundef 0, i32 noundef %57, i8 noundef zeroext 10, i32 noundef %59) #7
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %and = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %req = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 8
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iv, align 4
  %tobool15.not = icmp eq ptr %65, null
  br i1 %tobool15.not, label %land.lhs.true.if.end20_crit_edge, label %for.cond.preheader

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %pdata = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 24
  %io_base.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 2
  %66 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata, align 4
  %iv_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %iv_ofs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iv_ofs, align 4
  %70 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 %69
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !165
  %73 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %req, align 4
  %iv19 = getelementptr inbounds %struct.skcipher_request, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %iv19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iv19, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %72, ptr %76, align 4
  %78 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata, align 4
  %iv_ofs.1 = getelementptr inbounds %struct.omap_des_pdata, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %iv_ofs.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iv_ofs.1, align 4
  %add.1 = add i32 %81, 4
  %82 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %83, i32 %add.1
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !165
  %85 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %req, align 4
  %iv19.1 = getelementptr inbounds %struct.skcipher_request, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %iv19.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iv19.1, align 4
  %arrayidx.1 = getelementptr i32, ptr %88, i32 1
  %89 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %84, ptr %arrayidx.1, align 4
  br label %if.end20

if.end20:                                         ; preds = %for.cond.preheader, %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %req1.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 8
  %90 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_finish_req.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_done_task, %if.then.i66)) #7
          to label %omap_des_finish_req.exit [label %if.then.i66], !srcloc !167

if.then.i66:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_finish_req.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 0) #7
  br label %omap_des_finish_req.exit

omap_des_finish_req.exit:                         ; preds = %if.then.i66, %if.end20
  %engine.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 9
  %92 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %engine.i, align 4
  tail call void @crypto_finalize_skcipher_request(ptr noundef %93, ptr noundef %91, i32 noundef 0) #7
  %dev.i = getelementptr inbounds %struct.omap_des_dev, ptr %0, i32 0, i32 4
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  %call.i.i67 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 12, i32 22
  %96 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store volatile i64 %call.i.i67, ptr %last_busy.i.i, align 8
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %98, i32 noundef 13) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_done_task.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_done_task, %if.then33)) #7
          to label %do.end36 [label %if.then33], !srcloc !167

if.then33:                                        ; preds = %omap_des_finish_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_done_task.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %omap_des_finish_req.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 24
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %irq_status_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_status_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_status_ofs, align 4
  %io_base.i = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !165
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else75, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %irq_enable_ofs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_enable_ofs, align 4
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 0) #7, !srcloc !166
  %in_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 12
  %13 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_sg, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %do.body7, label %do.body13, !prof !168

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-des.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 845, 0\0A.popsection", ""() #7, !srcloc !169
  unreachable

do.body13:                                        ; preds = %if.then
  %in_walk = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 17
  %offset = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 17, i32 1
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
  br i1 %cmp, label %do.body24, label %do.end32, !prof !168

do.body24:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-des.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 847, 0\0A.popsection", ""() #7, !srcloc !170
  unreachable

do.end32:                                         ; preds = %do.body13
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %14, align 4
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !171

do.body2.i.i:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !172
  unreachable

sg_virt.exit:                                     ; preds = %do.end32
  %and.i.i = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %23) #7
  %24 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset15, align 4
  %add.ptr.i279 = getelementptr i8, ptr %call1.i, i32 %25
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
  %add.ptr = getelementptr i8, ptr %add.ptr.i279, i32 %sub39
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 4
  %data_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %data_ofs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_ofs, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %39, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %37) #7, !srcloc !166
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

if.then51:                                        ; preds = %sg_virt.exit
  %call53 = tail call ptr @sg_next(ptr noundef %43) #7
  %48 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call53, ptr %in_sg, align 4
  %tobool56.not = icmp eq ptr %call53, null
  br i1 %tobool56.not, label %if.then51.for.inc_crit_edge, label %if.then57

if.then51.for.inc_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then57:                                        ; preds = %if.then51
  %49 = ptrtoint ptr %in_walk to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call53, ptr %in_walk, align 4
  %offset.i283 = getelementptr inbounds %struct.scatterlist, ptr %call53, i32 0, i32 1
  %50 = ptrtoint ptr %offset.i283 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset.i283, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %offset, align 4
  %53 = ptrtoint ptr %call53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call53, align 4
  %and.i.i.i284 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i284)
  %tobool.i.not.i.i285 = icmp eq i32 %and.i.i.i284, 0
  br i1 %tobool.i.not.i.i285, label %sg_virt.exit291, label %if.then57.do.body2.i.i286_crit_edge, !prof !171

if.then57.do.body2.i.i286_crit_edge:              ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i286

do.body2.i.i286:                                  ; preds = %if.then57.1.do.body2.i.i286_crit_edge, %if.then57.do.body2.i.i286_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !172
  unreachable

sg_virt.exit291:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i287 = and i32 %54, -4
  %55 = inttoptr i32 %and.i.i287 to ptr
  %call1.i288 = tail call ptr @page_address(ptr noundef %55) #7
  %56 = ptrtoint ptr %offset.i283 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i283, align 4
  %add.ptr.i290 = getelementptr i8, ptr %call1.i288, i32 %57
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
  %add.ptr67 = getelementptr i8, ptr %add.ptr.i290, i32 %sub66
  br label %for.inc

if.else:                                          ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %sg_virt.exit291, %if.then51.for.inc_crit_edge
  %src.1 = phi ptr [ %add.ptr67, %sg_virt.exit291 ], [ %add.ptr, %if.then51.for.inc_crit_edge ], [ %incdec.ptr, %if.else ]
  %64 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata, align 4
  %data_ofs.1 = getelementptr inbounds %struct.omap_des_pdata, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %data_ofs.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_ofs.1, align 4
  %add.1 = add i32 %67, 4
  %68 = ptrtoint ptr %src.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src.1, align 4
  %70 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i281.1 = getelementptr i8, ptr %71, i32 %add.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281.1, i32 %69) #7, !srcloc !166
  %72 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset, align 4
  %add.i.1 = add i32 %73, 4
  store i32 %add.i.1, ptr %offset, align 4
  %74 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_sg, align 4
  %length44.1 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %length44.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length44.1, align 4
  %offset48.1 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %offset48.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset48.1, align 4
  %sub49.1 = sub i32 %add.i.1, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %sub49.1)
  %cmp50.1 = icmp eq i32 %77, %sub49.1
  br i1 %cmp50.1, label %if.then51.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then51.1:                                      ; preds = %for.inc
  %call53.1 = tail call ptr @sg_next(ptr noundef %75) #7
  %80 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call53.1, ptr %in_sg, align 4
  %tobool56.not.1 = icmp eq ptr %call53.1, null
  br i1 %tobool56.not.1, label %if.then51.1.for.inc.1_crit_edge, label %if.then57.1

if.then51.1.for.inc.1_crit_edge:                  ; preds = %if.then51.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then57.1:                                      ; preds = %if.then51.1
  %81 = ptrtoint ptr %in_walk to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call53.1, ptr %in_walk, align 4
  %offset.i283.1 = getelementptr inbounds %struct.scatterlist, ptr %call53.1, i32 0, i32 1
  %82 = ptrtoint ptr %offset.i283.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset.i283.1, align 4
  %84 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %offset, align 4
  %85 = ptrtoint ptr %call53.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call53.1, align 4
  %and.i.i.i284.1 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i284.1)
  %tobool.i.not.i.i285.1 = icmp eq i32 %and.i.i.i284.1, 0
  br i1 %tobool.i.not.i.i285.1, label %sg_virt.exit291.1, label %if.then57.1.do.body2.i.i286_crit_edge, !prof !171

if.then57.1.do.body2.i.i286_crit_edge:            ; preds = %if.then57.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i286

sg_virt.exit291.1:                                ; preds = %if.then57.1
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i287.1 = and i32 %86, -4
  %87 = inttoptr i32 %and.i.i287.1 to ptr
  %call1.i288.1 = tail call ptr @page_address(ptr noundef %87) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %sg_virt.exit291.1, %if.then51.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and70 = and i32 %6, -3
  %88 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata, align 4
  %irq_status_ofs72 = getelementptr inbounds %struct.omap_des_pdata, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %irq_status_ofs72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_status_ofs72, align 4
  %92 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %93, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %and70) #7, !srcloc !166
  %94 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs74 = getelementptr inbounds %struct.omap_des_pdata, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %irq_enable_ofs74 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq_enable_ofs74, align 4
  %98 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %99, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 4) #7, !srcloc !166
  br label %if.end205

if.else75:                                        ; preds = %entry
  %and76 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else75.if.end205_crit_edge, label %if.then78

if.else75.if.end205_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.then78:                                        ; preds = %if.else75
  %100 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs80 = getelementptr inbounds %struct.omap_des_pdata, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %irq_enable_ofs80 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq_enable_ofs80, align 4
  %104 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %105, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 0) #7, !srcloc !166
  %out_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 13
  %106 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %out_sg, align 4
  %tobool82.not = icmp eq ptr %107, null
  br i1 %tobool82.not, label %do.body92, label %do.body101, !prof !168

do.body92:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-des.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #7, !srcloc !173
  unreachable

do.body101:                                       ; preds = %if.then78
  %out_walk = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 18
  %offset102 = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 18, i32 1
  %108 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %offset102, align 4
  %offset104 = getelementptr inbounds %struct.scatterlist, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset104, align 4
  %sub105 = sub i32 %109, %111
  %length107 = getelementptr inbounds %struct.scatterlist, ptr %107, i32 0, i32 2
  %112 = ptrtoint ptr %length107 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %length107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub105, i32 %113)
  %cmp108 = icmp ugt i32 %sub105, %113
  br i1 %cmp108, label %do.body116, label %do.end124, !prof !168

do.body116:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-des.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 880, 0\0A.popsection", ""() #7, !srcloc !174
  unreachable

do.end124:                                        ; preds = %do.body101
  %114 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %107, align 4
  %and.i.i.i298 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i298)
  %tobool.i.not.i.i299 = icmp eq i32 %and.i.i.i298, 0
  br i1 %tobool.i.not.i.i299, label %sg_virt.exit305, label %do.body2.i.i300, !prof !171

do.body2.i.i300:                                  ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !172
  unreachable

sg_virt.exit305:                                  ; preds = %do.end124
  %and.i.i301 = and i32 %115, -4
  %116 = inttoptr i32 %and.i.i301 to ptr
  %call1.i302 = tail call ptr @page_address(ptr noundef %116) #7
  %117 = ptrtoint ptr %offset104 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %offset104, align 4
  %add.ptr.i304 = getelementptr i8, ptr %call1.i302, i32 %118
  %119 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset102, align 4
  %121 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %out_sg, align 4
  %offset130 = getelementptr inbounds %struct.scatterlist, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %offset130 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offset130, align 4
  %sub131 = sub i32 %120, %124
  %add.ptr132 = getelementptr i8, ptr %add.ptr.i304, i32 %sub131
  %125 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdata, align 4
  %data_ofs137 = getelementptr inbounds %struct.omap_des_pdata, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %data_ofs137 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_ofs137, align 4
  %129 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %130, i32 %128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #7, !srcloc !165
  %132 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %add.ptr132, align 4
  %133 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %offset102, align 4
  %add.i309 = add i32 %134, 4
  store i32 %add.i309, ptr %offset102, align 4
  %135 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %out_sg, align 4
  %length143 = getelementptr inbounds %struct.scatterlist, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %length143 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %length143, align 4
  %offset147 = getelementptr inbounds %struct.scatterlist, ptr %136, i32 0, i32 1
  %139 = ptrtoint ptr %offset147 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %offset147, align 4
  %sub148 = sub i32 %add.i309, %140
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %sub148)
  %cmp149 = icmp eq i32 %138, %sub148
  br i1 %cmp149, label %if.then150, label %if.else168

if.then150:                                       ; preds = %sg_virt.exit305
  %call152 = tail call ptr @sg_next(ptr noundef %136) #7
  %141 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call152, ptr %out_sg, align 4
  %tobool155.not = icmp eq ptr %call152, null
  br i1 %tobool155.not, label %if.then150.for.inc171_crit_edge, label %if.then156

if.then150.for.inc171_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc171

if.then156:                                       ; preds = %if.then150
  %142 = ptrtoint ptr %out_walk to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call152, ptr %out_walk, align 4
  %offset.i310 = getelementptr inbounds %struct.scatterlist, ptr %call152, i32 0, i32 1
  %143 = ptrtoint ptr %offset.i310 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %offset.i310, align 4
  %145 = ptrtoint ptr %offset102 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %offset102, align 4
  %146 = ptrtoint ptr %call152 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %call152, align 4
  %and.i.i.i312 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i312)
  %tobool.i.not.i.i313 = icmp eq i32 %and.i.i.i312, 0
  br i1 %tobool.i.not.i.i313, label %sg_virt.exit319, label %if.then156.do.body2.i.i314_crit_edge, !prof !171

if.then156.do.body2.i.i314_crit_edge:             ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i314

do.body2.i.i314:                                  ; preds = %if.then156.1.do.body2.i.i314_crit_edge, %if.then156.do.body2.i.i314_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !172
  unreachable

sg_virt.exit319:                                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i315 = and i32 %147, -4
  %148 = inttoptr i32 %and.i.i315 to ptr
  %call1.i316 = tail call ptr @page_address(ptr noundef %148) #7
  %149 = ptrtoint ptr %offset.i310 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %offset.i310, align 4
  %add.ptr.i318 = getelementptr i8, ptr %call1.i316, i32 %150
  %151 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %offset102, align 4
  %153 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %out_sg, align 4
  %offset164 = getelementptr inbounds %struct.scatterlist, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %offset164 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset164, align 4
  %sub165 = sub i32 %152, %156
  %add.ptr166 = getelementptr i8, ptr %add.ptr.i318, i32 %sub165
  br label %for.inc171

if.else168:                                       ; preds = %sg_virt.exit305
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr169 = getelementptr i32, ptr %add.ptr132, i32 1
  br label %for.inc171

for.inc171:                                       ; preds = %if.else168, %sg_virt.exit319, %if.then150.for.inc171_crit_edge
  %dst.1 = phi ptr [ %add.ptr166, %sg_virt.exit319 ], [ %add.ptr132, %if.then150.for.inc171_crit_edge ], [ %incdec.ptr169, %if.else168 ]
  %157 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdata, align 4
  %data_ofs137.1 = getelementptr inbounds %struct.omap_des_pdata, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %data_ofs137.1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %data_ofs137.1, align 4
  %add139.1 = add i32 %160, 4
  %161 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i307.1 = getelementptr i8, ptr %162, i32 %add139.1
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307.1) #7, !srcloc !165
  %164 = ptrtoint ptr %dst.1 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %dst.1, align 4
  %165 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %offset102, align 4
  %add.i309.1 = add i32 %166, 4
  store i32 %add.i309.1, ptr %offset102, align 4
  %167 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %out_sg, align 4
  %length143.1 = getelementptr inbounds %struct.scatterlist, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %length143.1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %length143.1, align 4
  %offset147.1 = getelementptr inbounds %struct.scatterlist, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %offset147.1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offset147.1, align 4
  %sub148.1 = sub i32 %add.i309.1, %172
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %sub148.1)
  %cmp149.1 = icmp eq i32 %170, %sub148.1
  br i1 %cmp149.1, label %if.then150.1, label %for.inc171.for.inc171.1_crit_edge

for.inc171.for.inc171.1_crit_edge:                ; preds = %for.inc171
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc171.1

if.then150.1:                                     ; preds = %for.inc171
  %call152.1 = tail call ptr @sg_next(ptr noundef %168) #7
  %173 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call152.1, ptr %out_sg, align 4
  %tobool155.not.1 = icmp eq ptr %call152.1, null
  br i1 %tobool155.not.1, label %if.then150.1.for.inc171.1_crit_edge, label %if.then156.1

if.then150.1.for.inc171.1_crit_edge:              ; preds = %if.then150.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc171.1

if.then156.1:                                     ; preds = %if.then150.1
  %174 = ptrtoint ptr %out_walk to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call152.1, ptr %out_walk, align 4
  %offset.i310.1 = getelementptr inbounds %struct.scatterlist, ptr %call152.1, i32 0, i32 1
  %175 = ptrtoint ptr %offset.i310.1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %offset.i310.1, align 4
  %177 = ptrtoint ptr %offset102 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %offset102, align 4
  %178 = ptrtoint ptr %call152.1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %call152.1, align 4
  %and.i.i.i312.1 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i312.1)
  %tobool.i.not.i.i313.1 = icmp eq i32 %and.i.i.i312.1, 0
  br i1 %tobool.i.not.i.i313.1, label %sg_virt.exit319.1, label %if.then156.1.do.body2.i.i314_crit_edge, !prof !171

if.then156.1.do.body2.i.i314_crit_edge:           ; preds = %if.then156.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i.i314

sg_virt.exit319.1:                                ; preds = %if.then156.1
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i315.1 = and i32 %179, -4
  %180 = inttoptr i32 %and.i.i315.1 to ptr
  %call1.i316.1 = tail call ptr @page_address(ptr noundef %180) #7
  br label %for.inc171.1

for.inc171.1:                                     ; preds = %sg_virt.exit319.1, %if.then150.1.for.inc171.1_crit_edge, %for.inc171.for.inc171.1_crit_edge
  %total = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 10
  %181 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %182)
  %cmp175 = icmp ult i32 %182, 8
  br i1 %cmp175, label %do.body183, label %do.end191, !prof !168

do.body183:                                       ; preds = %for.inc171.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/omap-des.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 900, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

do.end191:                                        ; preds = %for.inc171.1
  %sub193 = add i32 %182, -8
  %183 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %sub193, ptr %total, align 4
  %and194 = and i32 %6, -5
  %184 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdata, align 4
  %irq_status_ofs196 = getelementptr inbounds %struct.omap_des_pdata, ptr %185, i32 0, i32 10
  %186 = ptrtoint ptr %irq_status_ofs196 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %irq_status_ofs196, align 4
  %188 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %189, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 %and194) #7, !srcloc !166
  %190 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool198.not = icmp eq i32 %191, 0
  br i1 %tobool198.not, label %if.then199, label %if.else200

if.then199:                                       ; preds = %do.end191
  %state.i = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then199.if.end205_crit_edge

if.then199.if.end205_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.then.i:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  %done_task = getelementptr inbounds %struct.omap_des_dev, ptr %dev_id, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task) #7
  br label %if.end205

if.else200:                                       ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pdata, align 4
  %irq_enable_ofs202 = getelementptr inbounds %struct.omap_des_pdata, ptr %193, i32 0, i32 9
  %194 = ptrtoint ptr %irq_enable_ofs202 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %irq_enable_ofs202, align 4
  %196 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %197, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 2) #7, !srcloc !166
  br label %if.end205

if.end205:                                        ; preds = %if.else200, %if.then.i, %if.then199.if.end205_crit_edge, %if.else75.if.end205_crit_edge, %for.inc.1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crypto_cleanup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_des_dma_trigger_omap4(ptr nocapture noundef readonly %dd, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %length) #7, !srcloc !166
  %pdata = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 24
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %dma_start = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dma_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_start, align 4
  %dma_lch_out = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 20
  %6 = ptrtoint ptr %dma_lch_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_lch_out, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_enable_out = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %dma_enable_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_enable_out, align 4
  %or = or i32 %9, %5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %or, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %dma_lch_in = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 19
  %10 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_lch_in, align 4
  %cmp2.not = icmp eq ptr %11, null
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma_enable_in = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %dma_enable_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_enable_in, align 4
  %or5 = or i32 %13, %val.0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %val.1 = phi i32 [ %or5, %if.then3 ], [ %val.0, %if.end.if.end6_crit_edge ]
  %dma_enable_out8 = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %dma_enable_out8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_enable_out8, align 4
  %dma_enable_in10 = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %dma_enable_in10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_enable_in10, align 4
  %or11 = or i32 %15, %5
  %or14 = or i32 %or11, %17
  %mask_ofs = getelementptr inbounds %struct.omap_des_pdata, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %mask_ofs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask_ofs, align 4
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !165
  %neg.i = xor i32 %or14, -1
  %and.i = and i32 %22, %neg.i
  %or.i = or i32 %and.i, %val.1
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %24, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #7, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_setkey.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_setkey.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #7
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.verify_skcipher_des_key.exit_crit_edge

do.end.verify_skcipher_des_key.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %do.end.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %do.end.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #7, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool5.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  %key8 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 16
  %4 = call ptr @memcpy(ptr %key8, ptr %key, i32 %keylen)
  %keylen9 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 12
  %5 = ptrtoint ptr %keylen9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keylen, ptr %keylen9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_des_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_des_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_init_tfm.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_init_tfm, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_init_tfm.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %tfm, align 128
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @omap_des_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %unprepare_request, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %3 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @omap_des_crypt_req, ptr %do_one_request, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_des_crypt(ptr noundef %req, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_des_crypt(ptr noundef %req, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des3_setkey(ptr nocapture noundef %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des3_setkey.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des3_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des3_setkey.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.71, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %2 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %6 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.i.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %14 = icmp eq i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %15 = icmp eq i32 %11, %13
  %tobool.not.i.i.i = and i1 %14, %15
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end
  %16 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %17 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %19)
  %22 = icmp ne i32 %9, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %23 = icmp ne i32 %13, %21
  %tobool12.not.not.i.i.i = or i1 %22, %23
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end7_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end7_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.i.i.i:                              ; preds = %do.end
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end7_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end7_crit_edge:            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.i.i.i.if.end7_crit_edge, %lor.lhs.false.i.i.i.if.end7_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %key8 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 16
  %26 = call ptr @memcpy(ptr %key8, ptr %key, i32 %keylen)
  %keylen9 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 12
  %27 = ptrtoint ptr %keylen9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %keylen, ptr %keylen9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i20 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end7 ]
  ret i32 %ret.0.i.i.i20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_des_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_crypt.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_crypt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  %and = and i32 %mode, 1
  %and11 = lshr i32 %mode, 1
  %and11.lobit = and i32 %and11, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_crypt.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %3, i32 noundef %and, i32 noundef %and11.lobit) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %if.end20

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %and22 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp = icmp eq i32 %and22, 0
  br i1 %cmp, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #7
  %dd1.i = getelementptr i8, ptr %1, i32 140
  %6 = ptrtoint ptr %dd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %omap_des_find_dev.exit, label %omap_des_find_dev.exit.thread

omap_des_find_dev.exit.thread:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  br label %if.end28

omap_des_find_dev.exit:                           ; preds = %if.end24
  %8 = load ptr, ptr @dev_list, align 4
  %cmp.not.i = icmp eq ptr %8, @dev_list
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %8
  %9 = ptrtoint ptr %dd1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i, ptr %dd1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  %tobool26.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool26.not, label %omap_des_find_dev.exit.cleanup_crit_edge, label %omap_des_find_dev.exit.if.end28_crit_edge

omap_des_find_dev.exit.if.end28_crit_edge:        ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

omap_des_find_dev.exit.cleanup_crit_edge:         ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %omap_des_find_dev.exit.if.end28_crit_edge, %omap_des_find_dev.exit.thread
  %dd.1.i47 = phi ptr [ %7, %omap_des_find_dev.exit.thread ], [ %8, %omap_des_find_dev.exit.if.end28_crit_edge ]
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %__ctx.i, align 4
  %tobool.not.i41 = icmp eq ptr %req, null
  br i1 %tobool.not.i41, label %if.end28.cleanup_crit_edge, label %if.then.i42

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i42:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %engine.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i47, i32 0, i32 9
  %11 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %engine.i, align 4
  %call.i = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %12, ptr noundef nonnull %req) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i42, %if.end28.cleanup_crit_edge, %omap_des_find_dev.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -19, %omap_des_find_dev.exit.cleanup_crit_edge ], [ %call.i, %if.then.i42 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_prepare_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #7
  %dd1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %dd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %omap_des_find_dev.exit, label %omap_des_find_dev.exit.thread

omap_des_find_dev.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  br label %if.end

omap_des_find_dev.exit:                           ; preds = %entry
  %4 = load ptr, ptr @dev_list, align 4
  %cmp.not.i = icmp eq ptr %4, @dev_list
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %dd1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %dd1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %omap_des_find_dev.exit.cleanup_crit_edge, label %omap_des_find_dev.exit.if.end_crit_edge

omap_des_find_dev.exit.if.end_crit_edge:          ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

omap_des_find_dev.exit.cleanup_crit_edge:         ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %omap_des_find_dev.exit.if.end_crit_edge, %omap_des_find_dev.exit.thread
  %dd.1.i113 = phi ptr [ %3, %omap_des_find_dev.exit.thread ], [ %4, %omap_des_find_dev.exit.if.end_crit_edge ]
  %req3 = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 8
  %6 = ptrtoint ptr %req3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %req3, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 128
  %total = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 10
  %9 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %total, align 4
  %10 = load i32, ptr %add.ptr, align 128
  %total_save = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 11
  %11 = ptrtoint ptr %total_save to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %total_save, align 4
  %src = getelementptr i8, ptr %areq, i32 -8
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 8
  %in_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 12
  %14 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %in_sg, align 4
  %dst = getelementptr i8, ptr %areq, i32 -4
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 4
  %out_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 13
  %17 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %out_sg, align 4
  %18 = load ptr, ptr %dst, align 4
  %orig_out = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 16
  %19 = ptrtoint ptr %orig_out to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %orig_out, align 4
  %20 = load ptr, ptr %src, align 8
  %21 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %20, %21
  %spec.select = select i1 %cmp, i16 3, i16 1
  %in_sgl = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 14
  %flags13 = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 5
  %call14 = tail call i32 @omap_crypto_align_sg(ptr noundef %in_sg, i32 noundef %8, i32 noundef 8, ptr noundef %in_sgl, i16 noundef zeroext %spec.select, i8 noundef zeroext 8, ptr noundef %flags13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %22 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total, align 4
  %out_sgl = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 15
  %call21 = tail call i32 @omap_crypto_align_sg(ptr noundef %out_sg, i32 noundef %23, i32 noundef 8, ptr noundef %out_sgl, i16 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef %flags13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %24 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_sg, align 4
  %26 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total, align 4
  %conv27 = zext i32 %27 to i64
  %call28 = tail call i32 @sg_nents_for_len(ptr noundef %25, i64 noundef %conv27) #7
  %in_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 21
  %28 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call28, ptr %in_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %if.end24.cleanup_crit_edge, label %if.end34

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out_sg, align 4
  %31 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total, align 4
  %conv37 = zext i32 %32 to i64
  %call38 = tail call i32 @sg_nents_for_len(ptr noundef %30, i64 noundef %conv37) #7
  %out_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 22
  %33 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call38, ptr %out_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %if.end34.cleanup_crit_edge, label %if.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %__ctx.i = getelementptr i8, ptr %areq, i32 112
  %34 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i109 = getelementptr i8, ptr %35, i32 128
  %36 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__ctx.i, align 4
  %and = and i32 %37, 15
  store i32 %and, ptr %__ctx.i, align 4
  %38 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags13, align 4
  %and49 = and i32 %39, -16
  %or51 = or i32 %and49, %and
  store i32 %or51, ptr %flags13, align 4
  %ctx53 = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 3
  %40 = ptrtoint ptr %ctx53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %__crt_ctx.i.i109, ptr %ctx53, align 4
  %dd54 = getelementptr i8, ptr %35, i32 140
  %41 = ptrtoint ptr %dd54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dd.1.i113, ptr %dd54, align 4
  %dev.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 4
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.end44
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #7, !srcloc !163
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.omap_des_hw_init.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.omap_des_hw_init.exit.i_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_des_hw_init.exit.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !164
  br label %omap_des_hw_init.exit.i

if.end.i.i:                                       ; preds = %if.end44
  %45 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags13, align 4
  %and.i.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %46, 16
  %47 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %flags13, align 4
  %err4.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 6
  %48 = ptrtoint ptr %err4.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %err4.i.i, align 4
  br label %if.end.i

omap_des_hw_init.exit.i:                          ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.omap_des_hw_init.exit.i_crit_edge
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.55, i32 noundef %call.i.i.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end.i_crit_edge
  %51 = ptrtoint ptr %ctx53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx53, align 4
  %keylen.i = getelementptr inbounds %struct.omap_des_ctx, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %keylen.i, align 4
  %div52.i = lshr i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp59.not.i = icmp ult i32 %54, 4
  br i1 %cmp59.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %pdata.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 24
  %io_base.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div52.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata.i, align 4
  %key_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %key_ofs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_ofs.i, align 4
  %xor.i = shl i32 %i.060.i, 2
  %59 = xor i32 %xor.i, -5
  %mul.neg.i = add i32 %59, 1
  %sub.i = add i32 %mul.neg.i, %58
  %60 = ptrtoint ptr %ctx53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx53, align 4
  %arrayidx.i = getelementptr %struct.omap_des_ctx, ptr %61, i32 0, i32 3, i32 %i.060.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %65 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %66, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110, i32 %64) #7, !srcloc !166
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %67 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags13, align 4
  %and.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %for.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end8.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %69 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %req3, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iv.i, align 4
  %tobool3.not.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdata5.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 24
  %73 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata5.i, align 4
  %iv_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %iv_ofs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iv_ofs.i, align 4
  %io_base.i.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 2
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %72, align 4
  %79 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %78) #7, !srcloc !166
  %incdec.ptr.i.i = getelementptr i32, ptr %72, i32 1
  %add.i.i = add i32 %76, 4
  %81 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr.i.i, align 4
  %83 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %84, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %82) #7, !srcloc !166
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end8.i_crit_edge, %for.end.i.if.end8.i_crit_edge
  %85 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags13, align 4
  %and10.i = shl i32 %86, 3
  %87 = and i32 %and10.i, 16
  %and15.i = shl i32 %86, 2
  %88 = and i32 %and15.i, 4
  %89 = or i32 %88, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div52.i)
  %cmp20.i = icmp eq i32 %div52.i, 6
  %or22.i = or i32 %89, 8
  %val.2.i = select i1 %cmp20.i, i32 %or22.i, i32 %89
  %pdata25.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 24
  %90 = ptrtoint ptr %pdata25.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdata25.i, align 4
  %ctrl_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %ctrl_ofs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctrl_ofs.i, align 4
  %io_base.i.i53.i = getelementptr inbounds %struct.omap_des_dev, ptr %dd.1.i113, i32 0, i32 2
  %94 = ptrtoint ptr %io_base.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %io_base.i.i53.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %95, i32 %93
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i) #7, !srcloc !165
  %and.i55.i = and i32 %96, -29
  %or.i56.i = or i32 %and.i55.i, %val.2.i
  %97 = ptrtoint ptr %io_base.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base.i.i53.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %98, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or.i56.i) #7, !srcloc !166
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %omap_des_hw_init.exit.i, %if.end34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %omap_des_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %omap_des_find_dev.exit.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ %call21, %if.end17.cleanup_crit_edge ], [ %call28, %if.end24.cleanup_crit_edge ], [ %call38, %if.end34.cleanup_crit_edge ], [ 0, %if.end8.i ], [ %call.i.i.i, %omap_des_hw_init.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_crypt_req(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @list_lock) #7
  %dd1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %dd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %omap_des_find_dev.exit, label %omap_des_find_dev.exit.thread

omap_des_find_dev.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  br label %if.end

omap_des_find_dev.exit:                           ; preds = %entry
  %4 = load ptr, ptr @dev_list, align 4
  %cmp.not.i = icmp eq ptr %4, @dev_list
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %dd1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %dd1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @list_lock) #7
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %omap_des_find_dev.exit.cleanup_crit_edge, label %omap_des_find_dev.exit.if.end_crit_edge

omap_des_find_dev.exit.if.end_crit_edge:          ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

omap_des_find_dev.exit.cleanup_crit_edge:         ; preds = %omap_des_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %omap_des_find_dev.exit.if.end_crit_edge, %omap_des_find_dev.exit.thread
  %dd.1.i9 = phi ptr [ %3, %omap_des_find_dev.exit.thread ], [ %4, %omap_des_find_dev.exit.if.end_crit_edge ]
  %call3 = tail call fastcc i32 @omap_des_crypt_dma_start(ptr noundef nonnull %dd.1.i9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %omap_des_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %omap_des_find_dev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crypto_align_sg(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_des_crypt_dma_start(ptr nocapture noundef readonly %dd) unnamed_addr #2 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_des_crypt_dma_start.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_des_crypt_dma_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %total = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 10
  %4 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_des_crypt_dma_start.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.56, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pio_only = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 23
  %6 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then6:                                         ; preds = %do.end
  %dev = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %in_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 12
  %10 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_sg, align 4
  %in_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 21
  %12 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_sg_len, align 4
  %call7 = tail call i32 @dma_map_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.end14:                                         ; preds = %if.then6
  %out_sg = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 13
  %16 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out_sg, align 4
  %out_sg_len = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 22
  %18 = ptrtoint ptr %out_sg_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_sg_len, align 4
  %call16 = tail call i32 @dma_map_sg_attrs(ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end21, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end14.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %in_sg25 = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 12
  %22 = ptrtoint ptr %in_sg25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_sg25, align 4
  %out_sg26 = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 13
  %24 = ptrtoint ptr %out_sg26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_sg26, align 4
  %in_sg_len27 = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 21
  %26 = ptrtoint ptr %in_sg_len27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %in_sg_len27, align 4
  %out_sg_len28 = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 22
  %28 = ptrtoint ptr %out_sg_len28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_sg_len28, align 4
  %dd1.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 3
  %30 = ptrtoint ptr %dd1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #7
  %pio_only.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %pio_only.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pio_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %in_walk.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 17
  %in_sg2.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %in_sg2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_sg2.i, align 4
  %36 = ptrtoint ptr %in_walk.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %in_walk.i, align 4
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %offset2.i.i, align 4
  %out_walk.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 18
  %out_sg3.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 13
  %40 = ptrtoint ptr %out_sg3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out_sg3.i, align 4
  %42 = ptrtoint ptr %out_walk.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %out_walk.i, align 4
  %offset.i92.i = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %offset.i92.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i92.i, align 4
  %offset2.i93.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %offset2.i93.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %offset2.i93.i, align 4
  %pdata.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 24
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %irq_enable_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %irq_enable_ofs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_enable_ofs.i, align 4
  %io_base.i.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 2
  %50 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %51, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 2) #7, !srcloc !166
  br label %omap_des_crypt_dma.exit

if.end.i:                                         ; preds = %if.end24
  %dev.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 4
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %in_sg4.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 12
  %54 = ptrtoint ptr %in_sg4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in_sg4.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %53, ptr noundef %55, i32 noundef %27, i32 noundef 1) #7
  %56 = call ptr @memset(ptr %cfg.i, i32 0, i32 48)
  %phys_base.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 1
  %57 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phys_base.i, align 4
  %pdata5.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 24
  %59 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata5.i, align 4
  %data_ofs.i = getelementptr inbounds %struct.omap_des_pdata, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %data_ofs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_ofs.i, align 4
  %add6.i = add i32 %62, %58
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %63 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add6.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %64 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add6.i, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %65 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %66 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %67 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %68 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %dst_maxburst.i, align 4
  %dma_lch_in.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 19
  %69 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_lch_in.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end.i
  %call.i.i = call i32 %74(ptr noundef %70, ptr noundef nonnull %cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %if.end16.i, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %retval.0.i119.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i_crit_edge ], [ -38, %if.end.i.do.end.i_crit_edge ]
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i119.i) #10
  br label %land.lhs.true

if.end16.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %77 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_lch_in.i, align 4
  %tobool.not.i94.i = icmp eq ptr %78, null
  br i1 %tobool.not.i94.i, label %if.end16.i.do.end23.i_crit_edge, label %lor.lhs.false.i.i

if.end16.i.do.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool1.not.i.i = icmp eq ptr %80, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end23.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end23.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 39
  %81 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %82, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end23.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end23.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i95.i = call ptr %82(ptr noundef nonnull %78, ptr noundef %23, i32 noundef %27, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  %tobool19.not.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool19.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge, label %if.end25.i

dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23.i

do.end23.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge, %lor.lhs.false2.i.i.do.end23.i_crit_edge, %lor.lhs.false.i.i.do.end23.i_crit_edge, %if.end16.i.do.end23.i_crit_edge
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.63) #10
  br label %land.lhs.true

if.end25.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i95.i, i32 0, i32 8
  %85 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %31, ptr %callback_param.i, align 4
  %dma_lch_out.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 20
  %86 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dma_lch_out.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %device_config.i97.i = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %device_config.i97.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device_config.i97.i, align 4
  %tobool.not.i98.i = icmp eq ptr %91, null
  br i1 %tobool.not.i98.i, label %if.end25.i.do.end31.i_crit_edge, label %dmaengine_slave_config.exit102.i

if.end25.i.do.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

dmaengine_slave_config.exit102.i:                 ; preds = %if.end25.i
  %call.i99.i = call i32 %91(ptr noundef %87, ptr noundef nonnull %cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool27.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %dmaengine_slave_config.exit102.i.do.end31.i_crit_edge

dmaengine_slave_config.exit102.i.do.end31.i_crit_edge: ; preds = %dmaengine_slave_config.exit102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

do.end31.i:                                       ; preds = %dmaengine_slave_config.exit102.i.do.end31.i_crit_edge, %if.end25.i.do.end31.i_crit_edge
  %retval.0.i101124.i = phi i32 [ %call.i99.i, %dmaengine_slave_config.exit102.i.do.end31.i_crit_edge ], [ -38, %if.end25.i.do.end31.i_crit_edge ]
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i101124.i) #10
  br label %land.lhs.true

if.end33.i:                                       ; preds = %dmaengine_slave_config.exit102.i
  %94 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma_lch_out.i, align 4
  %tobool.not.i103.i = icmp eq ptr %95, null
  br i1 %tobool.not.i103.i, label %if.end33.i.do.end40.i_crit_edge, label %lor.lhs.false.i105.i

if.end33.i.do.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

lor.lhs.false.i105.i:                             ; preds = %if.end33.i
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %tobool1.not.i104.i = icmp eq ptr %97, null
  br i1 %tobool1.not.i104.i, label %lor.lhs.false.i105.i.do.end40.i_crit_edge, label %lor.lhs.false2.i108.i

lor.lhs.false.i105.i.do.end40.i_crit_edge:        ; preds = %lor.lhs.false.i105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

lor.lhs.false2.i108.i:                            ; preds = %lor.lhs.false.i105.i
  %device_prep_slave_sg.i106.i = getelementptr inbounds %struct.dma_device, ptr %97, i32 0, i32 39
  %98 = ptrtoint ptr %device_prep_slave_sg.i106.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device_prep_slave_sg.i106.i, align 4
  %tobool4.not.i107.i = icmp eq ptr %99, null
  br i1 %tobool4.not.i107.i, label %lor.lhs.false2.i108.i.do.end40.i_crit_edge, label %dmaengine_prep_slave_sg.exit112.i

lor.lhs.false2.i108.i.do.end40.i_crit_edge:       ; preds = %lor.lhs.false2.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

dmaengine_prep_slave_sg.exit112.i:                ; preds = %lor.lhs.false2.i108.i
  %call.i109.i = call ptr %99(ptr noundef nonnull %95, ptr noundef %25, i32 noundef %29, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  %tobool36.not.i = icmp eq ptr %call.i109.i, null
  br i1 %tobool36.not.i, label %dmaengine_prep_slave_sg.exit112.i.do.end40.i_crit_edge, label %if.end42.i

dmaengine_prep_slave_sg.exit112.i.do.end40.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

do.end40.i:                                       ; preds = %dmaengine_prep_slave_sg.exit112.i.do.end40.i_crit_edge, %lor.lhs.false2.i108.i.do.end40.i_crit_edge, %lor.lhs.false.i105.i.do.end40.i_crit_edge, %if.end33.i.do.end40.i_crit_edge
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.69) #10
  br label %land.lhs.true

if.end42.i:                                       ; preds = %dmaengine_prep_slave_sg.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i109.i, i32 0, i32 6
  %102 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @omap_des_dma_out_callback, ptr %callback.i, align 4
  %callback_param43.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i109.i, i32 0, i32 8
  %103 = ptrtoint ptr %callback_param43.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %31, ptr %callback_param43.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i95.i, i32 0, i32 4
  %104 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i113.i = call i32 %105(ptr noundef nonnull %call.i95.i) #7
  %tx_submit.i114.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i109.i, i32 0, i32 4
  %106 = ptrtoint ptr %tx_submit.i114.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx_submit.i114.i, align 4
  %call.i115.i = call i32 %107(ptr noundef nonnull %call.i109.i) #7
  %108 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_lch_in.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 50
  %112 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %113(ptr noundef %109) #7
  %114 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dma_lch_out.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %device_issue_pending.i116.i = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 50
  %118 = ptrtoint ptr %device_issue_pending.i116.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device_issue_pending.i116.i, align 4
  call void %119(ptr noundef %115) #7
  %120 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdata5.i, align 4
  %trigger.i = getelementptr inbounds %struct.omap_des_pdata, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %trigger.i, align 4
  %total.i = getelementptr inbounds %struct.omap_des_dev, ptr %31, i32 0, i32 10
  %124 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %total.i, align 4
  call void %123(ptr noundef %31, i32 noundef %125) #7
  br label %omap_des_crypt_dma.exit

omap_des_crypt_dma.exit:                          ; preds = %if.end42.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end40.i, %do.end31.i, %do.end23.i, %do.end.i
  %retval.0.i67.ph = phi i32 [ -22, %do.end23.i ], [ -22, %do.end40.i ], [ %retval.0.i101124.i, %do.end31.i ], [ %retval.0.i119.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  %126 = ptrtoint ptr %pio_only to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pio_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool32.not = icmp eq i32 %127, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.omap_des_dev, ptr %dd, i32 0, i32 4
  %128 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev34, align 4
  %130 = ptrtoint ptr %in_sg25 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %in_sg25, align 4
  %132 = ptrtoint ptr %in_sg_len27 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %in_sg_len27, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %129, ptr noundef %131, i32 noundef %133, i32 noundef 1, i32 noundef 0) #7
  %134 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev34, align 4
  %136 = ptrtoint ptr %out_sg26 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %out_sg26, align 4
  %138 = ptrtoint ptr %out_sg_len28 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %out_sg_len28, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %135, ptr noundef %137, i32 noundef %139, i32 noundef 2, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %land.lhs.true.cleanup_crit_edge, %omap_des_crypt_dma.exit, %do.end21, %do.end12
  %retval.0 = phi i32 [ -22, %do.end21 ], [ -22, %do.end12 ], [ %retval.0.i67.ph, %if.then33 ], [ %retval.0.i67.ph, %land.lhs.true.cleanup_crit_edge ], [ 0, %omap_des_crypt_dma.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_des_dma_out_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.omap_des_dev, ptr %data, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %done_task = getelementptr inbounds %struct.omap_des_dev, ptr %data, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_des_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !163
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !164
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.72, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !151, !152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_omap_des__260_1146_omap_des_driver_init6, !1, !"__initcall__kmod_omap_des__260_1146_omap_des_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/omap-des.c", i32 1146, i32 1}
!2 = !{ptr @__exitcall_omap_des_driver_exit, !1, !"__exitcall_omap_des_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description261, !4, !"__UNIQUE_ID_description261", i1 false, i1 false}
!4 = !{!"../drivers/crypto/omap-des.c", i32 1148, i32 1}
!5 = !{ptr @__UNIQUE_ID_file262, !6, !"__UNIQUE_ID_file262", i1 false, i1 false}
!6 = !{!"../drivers/crypto/omap-des.c", i32 1149, i32 1}
!7 = !{ptr @__UNIQUE_ID_license263, !6, !"__UNIQUE_ID_license263", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author264, !9, !"__UNIQUE_ID_author264", i1 false, i1 false}
!9 = !{!"../drivers/crypto/omap-des.c", i32 1150, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/omap-des.c", i32 1140, i32 11}
!12 = !{ptr @omap_des_driver, !13, !"omap_des_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/omap-des.c", i32 1136, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/omap-des.c", i32 968, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omap_des_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap_des_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/omap-des.c", i32 976, i32 3}
!24 = !{ptr @omap_des_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @omap_des_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/omap-des.c", i32 998, i32 3}
!28 = !{ptr @omap_des_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap_des_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/omap-des.c", i32 1008, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @omap_des_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap_des_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/omap-des.c", i32 1029, i32 4}
!37 = !{ptr @omap_des_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_des_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/omap-des.c", i32 1055, i32 4}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @omap_des_probe.__UNIQUE_ID_ddebug259, !40, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!43 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/omap-des.c", i32 1085, i32 2}
!46 = !{ptr @omap_des_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_des_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/omap-des.c", i32 934, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @omap_des_get_of._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @omap_des_get_of._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/omap-des.c", i32 601, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap_des_done_task.__UNIQUE_ID_ddebug253, !54, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!57 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/omap-des.c", i32 625, i32 2}
!60 = !{ptr @omap_des_done_task.__UNIQUE_ID_ddebug254, !59, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/omap-des.c", i32 506, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @omap_des_crypt_dma_stop.__UNIQUE_ID_ddebug252, !63, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!66 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/omap-des.c", i32 496, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @omap_des_finish_req.__UNIQUE_ID_ddebug251, !68, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!71 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/omap-des.c", i32 346, i32 45}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/omap-des.c", i32 348, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @omap_des_dma_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap_des_dma_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/omap-des.c", i32 352, i32 46}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/omap-des.c", i32 354, i32 3}
!83 = !{ptr @omap_des_dma_init._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @omap_des_dma_init._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/omap-des.c", i32 172, i32 8}
!87 = !{ptr @list_lock, !86, !"list_lock", i1 false, i1 false}
!88 = !{ptr @dev_list, !89, !"dev_list", i1 false, i1 false}
!89 = !{!"../drivers/crypto/omap-des.c", i32 171, i32 8}
!90 = !{ptr @omap_des_of_match, !91, !"omap_des_of_match", i1 false, i1 false}
!91 = !{!"../drivers/crypto/omap-des.c", i32 919, i32 34}
!92 = !{ptr @omap_des_pdata_omap4, !93, !"omap_des_pdata_omap4", i1 false, i1 false}
!93 = !{!"../drivers/crypto/omap-des.c", i32 815, i32 36}
!94 = !{ptr @omap_des_algs_info_ecb_cbc, !95, !"omap_des_algs_info_ecb_cbc", i1 false, i1 false}
!95 = !{!"../drivers/crypto/omap-des.c", i32 807, i32 34}
!96 = !{ptr @algs_ecb_cbc, !97, !"algs_ecb_cbc", i1 false, i1 false}
!97 = !{!"../drivers/crypto/omap-des.c", i32 734, i32 28}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/omap-des.c", i32 662, i32 2}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @omap_des_setkey.__UNIQUE_ID_ddebug256, !99, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!102 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/omap-des.c", i32 635, i32 2}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @omap_des_crypt.__UNIQUE_ID_ddebug255, !104, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!107 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/omap-des.c", i32 721, i32 2}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @omap_des_init_tfm.__UNIQUE_ID_ddebug258, !109, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!112 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/omap-des.c", i32 234, i32 3}
!115 = !{ptr @omap_des_hw_init._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @omap_des_hw_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/omap-des.c", i32 463, i32 2}
!119 = !{ptr @omap_des_crypt_dma_start.__UNIQUE_ID_ddebug250, !118, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/omap-des.c", i32 469, i32 4}
!122 = !{ptr @omap_des_crypt_dma_start._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @omap_des_crypt_dma_start._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @omap_des_crypt_dma_start._entry.58, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/crypto/omap-des.c", i32 476, i32 4}
!126 = !{ptr @omap_des_crypt_dma_start._entry_ptr.59, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/crypto/omap-des.c", i32 410, i32 3}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @omap_des_crypt_dma._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @omap_des_crypt_dma._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/omap-des.c", i32 419, i32 3}
!134 = !{ptr @omap_des_crypt_dma._entry.62, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @omap_des_crypt_dma._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/omap-des.c", i32 429, i32 3}
!138 = !{ptr @omap_des_crypt_dma._entry.65, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @omap_des_crypt_dma._entry_ptr.67, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/omap-des.c", i32 438, i32 3}
!142 = !{ptr @omap_des_crypt_dma._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @omap_des_crypt_dma._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/omap-des.c", i32 680, i32 2}
!146 = !{ptr @omap_des3_setkey.__UNIQUE_ID_ddebug257, !145, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!147 = !{ptr @omap_des_pm_ops, !148, !"omap_des_pm_ops", i1 false, i1 false}
!148 = !{!"../drivers/crypto/omap-des.c", i32 1134, i32 8}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/crypto/omap-des.c", i32 1127, i32 3}
!151 = !{ptr @omap_des_resume._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @omap_des_resume._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2148364954}
!163 = !{i64 850574, i64 850599, i64 850621, i64 850637, i64 850649, i64 850669, i64 850693, i64 850709, i64 850721}
!164 = !{i64 2148365142}
!165 = !{i64 6235361}
!166 = !{i64 6234943}
!167 = !{i64 2148978912, i64 2148978917, i64 2148978930, i64 2148978974, i64 2148979008, i64 2148979029}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2154774828, i64 2154775318, i64 2154774865, i64 2154774921, i64 2154774955, i64 2154774979, i64 2154775020, i64 2154775041, i64 2154775069, i64 2154775103}
!170 = !{i64 2154776601, i64 2154777091, i64 2154776638, i64 2154776694, i64 2154776728, i64 2154776752, i64 2154776793, i64 2154776814, i64 2154776842, i64 2154776876}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2153796627, i64 2153797119, i64 2153796664, i64 2153796720, i64 2153796754, i64 2153796778, i64 2153796819, i64 2153796840, i64 2153796868, i64 2153796902}
!173 = !{i64 2154778741, i64 2154779231, i64 2154778778, i64 2154778834, i64 2154778868, i64 2154778892, i64 2154778933, i64 2154778954, i64 2154778982, i64 2154779016}
!174 = !{i64 2154780524, i64 2154781014, i64 2154780561, i64 2154780617, i64 2154780651, i64 2154780675, i64 2154780716, i64 2154780737, i64 2154780765, i64 2154780799}
!175 = !{i64 2154782419, i64 2154782909, i64 2154782456, i64 2154782512, i64 2154782546, i64 2154782570, i64 2154782611, i64 2154782632, i64 2154782660, i64 2154782694}
!176 = !{i64 2149036048}
