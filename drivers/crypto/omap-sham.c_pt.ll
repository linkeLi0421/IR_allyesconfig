; ModuleID = '/llk/IR_all_yes/drivers/crypto/omap-sham.c_pt.bc'
source_filename = "../drivers/crypto/omap-sham.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_sham_drv = type { %struct.list_head, %struct.spinlock, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.omap_sham_pdata = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_sham_algs_info = type { ptr, i32, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.75, ptr, ptr, ptr, ptr, %union.anon.76, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.75 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.omap_sham_dev = type { %struct.list_head, i32, ptr, ptr, i32, i32, ptr, %struct.tasklet_struct, i8, [3 x i8], [128 x i8], i32, i32, %struct.crypto_queue, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.omap_sham_reqctx = type { ptr, i32, i8, [3 x i8], [64 x i8], i32, i32, i32, ptr, [2 x %struct.scatterlist], i32, i32, i32, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_omap_sham__271_2232_omap_sham_driver_init6 = internal global ptr @omap_sham_driver_init, section ".initcall6.init", align 4
@omap_sham_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_sham_probe, ptr @omap_sham_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_sham_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_sham_driver_exit = internal global ptr @omap_sham_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [61 x i8] c"omap_sham.description=OMAP SHA1/MD5 hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [40 x i8] c"omap_sham.file=drivers/crypto/omap-sham\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [25 x i8] c"omap_sham.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [33 x i8] c"omap_sham.author=Dmitry Kasatkin\00", section ".modinfo", align 1
@__UNIQUE_ID_alias276 = internal constant [35 x i8] c"omap_sham.alias=platform:omap-sham\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap-sham\00", [22 x i8] zeroinitializer }, align 32
@omap_sham_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_sham_pdata_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_sham_pdata_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_sham_pdata_omap4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-sham\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_sham_pdata_omap5 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to alloc data struct.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_sham_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/crypto/omap-sham.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr = internal global ptr @omap_sham_probe._entry, section ".printk_index", align 4
@omap_sham_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to request irq %d, err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr.8 = internal global ptr @omap_sham_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@omap_sham_probe.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 2, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_sham\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using polling mode instead of dma\0A\00", [61 x i8] zeroinitializer }, align 32
@sham = internal global { %struct.omap_sham_drv, [40 x i8] } { %struct.omap_sham_drv { %struct.list_head { ptr @sham, ptr @sham }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get sync: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr.14 = internal global ptr @omap_sham_probe._entry.12, section ".printk_index", align 4
@omap_sham_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2128, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hw accel on OMAP rev %u.%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr.18 = internal global ptr @omap_sham_probe._entry.15, section ".printk_index", align 4
@omap_sham_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @omap_sham_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not create sysfs device attrs\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr.21 = internal global ptr @omap_sham_probe._entry.19, section ".printk_index", align 4
@omap_sham_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 2189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"initialization failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_sham_probe._entry_ptr.24 = internal global ptr @omap_sham_probe._entry.22, section ".printk_index", align 4
@omap_sham_done_task.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_sham_done_task\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: flags=%lx\0A\00", [17 x i8] zeroinitializer }, align 32
@omap_sham_done_task.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update done: err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_sham_finish.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_sham_finish\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"digcnt: %zd, bufcnt: %zd\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_sham_get_res_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no compatible OF match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_sham_get_res_of\00", [43 x i8] zeroinitializer }, align 32
@omap_sham_get_res_of._entry_ptr = internal global ptr @omap_sham_get_res_of._entry, section ".printk_index", align 4
@omap_sham_get_res_of._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 1919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't translate OF node address\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_sham_get_res_of._entry_ptr.34 = internal global ptr @omap_sham_get_res_of._entry.32, section ".printk_index", align 4
@omap_sham_get_res_of._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 1926, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't translate OF irq value\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_sham_get_res_of._entry_ptr.37 = internal global ptr @omap_sham_get_res_of._entry.35, section ".printk_index", align 4
@omap_sham_get_res_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no MEM resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_sham_get_res_pdev\00", [41 x i8] zeroinitializer }, align 32
@omap_sham_get_res_pdev._entry_ptr = internal global ptr @omap_sham_get_res_pdev._entry, section ".printk_index", align 4
@omap_sham_pdata_omap2 = internal constant { %struct.omap_sham_pdata, [40 x i8] } { %struct.omap_sham_pdata { ptr @omap_sham_algs_info_omap2, i32 1, i32 256, i32 20, ptr @omap_sham_copy_hash_omap2, ptr @omap_sham_write_ctrl_omap2, ptr @omap_sham_trigger_omap2, ptr @omap_sham_poll_irq_omap2, ptr @omap_sham_irq_omap2, i32 0, i32 0, i32 28, i32 20, i32 92, i32 96, i32 100, i32 0, i32 0, i32 240, i32 4, i32 15, i32 0 }, [40 x i8] zeroinitializer }, align 32
@omap_sham_algs_info_omap2 = internal global { [1 x %struct.omap_sham_algs_info], [20 x i8] } { [1 x %struct.omap_sham_algs_info] [%struct.omap_sham_algs_info { ptr @algs_sha1_md5, i32 4, i32 0 }], [20 x i8] zeroinitializer }, align 32
@algs_sha1_md5 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_sha1_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_md5_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }], align 128
@omap_sham_init.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_sham_init\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init: digest size: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_sham_cra_init_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: omap-sham: fallback driver '%s' could not be loaded.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_sham_cra_init_alg\00", [41 x i8] zeroinitializer }, align 32
@omap_sham_cra_init_alg._entry_ptr = internal global ptr @omap_sham_cra_init_alg._entry, section ".printk_index", align 4
@omap_sham_cra_init_alg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: omap-sham: base driver '%s' could not be loaded.\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_sham_cra_init_alg._entry_ptr.46 = internal global ptr @omap_sham_cra_init_alg._entry.44, section ".printk_index", align 4
@omap_sham_hash_one_req.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_sham_hash_one_req\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hash-one: op: %u, total: %u, digcnt: %zd, final: %d\00", [44 x i8] zeroinitializer }, align 32
@omap_sham_hash_one_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.47, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@omap_sham_hash_one_req._entry_ptr = internal global ptr @omap_sham_hash_one_req._entry, section ".printk_index", align 4
@omap_sham_update_req.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_sham_update_req\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"update_req: total: %u, digcnt: %zd, final: %d\00", [50 x i8] zeroinitializer }, align 32
@omap_sham_update_req.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"update: err: %d, digcnt: %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_sham_xmit_cpu.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_sham_xmit_cpu\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xmit_cpu: digcnt: %zd, length: %zd, final: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_sham_xmit_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: sg miter failure.\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_sham_xmit_cpu._entry_ptr = internal global ptr @omap_sham_xmit_cpu._entry, section ".printk_index", align 4
@omap_sham_xmit_dma.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_sham_xmit_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xmit_dma: digcnt: %zd, length: %zd, final: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_sham_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_map_sg error\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_sham_xmit_dma._entry_ptr = internal global ptr @omap_sham_xmit_dma._entry, section ".printk_index", align 4
@omap_sham_xmit_dma._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: omap-sham: can't configure dmaengine slave: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_sham_xmit_dma._entry_ptr.60 = internal global ptr @omap_sham_xmit_dma._entry.58, section ".printk_index", align 4
@omap_sham_xmit_dma._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.3, i32 605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prep_slave_sg failed\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_sham_xmit_dma._entry_ptr.63 = internal global ptr @omap_sham_xmit_dma._entry.61, section ".printk_index", align 4
@omap_sham_final_req.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_sham_final_req\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"final_req: err: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_sham_prepare_request.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_sham_prepare_request\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: nbytes=%d, bs=%d, total=%d, offset=%d, bufcnt=%zd\0A\00", [41 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@omap_sham_copy_sgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Couldn't allocate pages for unaligned cases.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_sham_copy_sgs\00", [45 x i8] zeroinitializer }, align 32
@omap_sham_copy_sgs._entry_ptr = internal global ptr @omap_sham_copy_sgs._entry, section ".printk_index", align 4
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sham.lock\00", [22 x i8] zeroinitializer }, align 32
@omap_sham_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_queue_len, ptr @dev_attr_fallback, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_queue_len = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_len_show, ptr @queue_len_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fallback = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fallback_show, ptr @fallback_store }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_len\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fallback\00", [23 x i8] zeroinitializer }, align 32
@fallback_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"minimum fallback size 9\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fallback_store\00", [17 x i8] zeroinitializer }, align 32
@fallback_store._entry_ptr = internal global ptr @fallback_store._entry, section ".printk_index", align 4
@omap_sham_pdata_omap4 = internal constant { %struct.omap_sham_pdata, [40 x i8] } { %struct.omap_sham_pdata { ptr @omap_sham_algs_info_omap4, i32 2, i32 128, i32 32, ptr @omap_sham_copy_hash_omap4, ptr @omap_sham_write_ctrl_omap4, ptr @omap_sham_trigger_omap4, ptr @omap_sham_poll_irq_omap4, ptr @omap_sham_irq_omap4, i32 0, i32 32, i32 128, i32 64, i32 256, i32 272, i32 276, i32 68, i32 72, i32 1792, i32 8, i32 63, i32 0 }, [40 x i8] zeroinitializer }, align 32
@omap_sham_pdata_omap5 = internal constant { %struct.omap_sham_pdata, [40 x i8] } { %struct.omap_sham_pdata { ptr @omap_sham_algs_info_omap5, i32 3, i32 128, i32 64, ptr @omap_sham_copy_hash_omap4, ptr @omap_sham_write_ctrl_omap4, ptr @omap_sham_trigger_omap4, ptr @omap_sham_poll_irq_omap4, ptr @omap_sham_irq_omap4, i32 512, i32 576, i32 128, i32 640, i32 256, i32 272, i32 276, i32 644, i32 648, i32 1792, i32 8, i32 63, i32 0 }, [40 x i8] zeroinitializer }, align 32
@omap_sham_algs_info_omap4 = internal global { [2 x %struct.omap_sham_algs_info], [40 x i8] } { [2 x %struct.omap_sham_algs_info] [%struct.omap_sham_algs_info { ptr @algs_sha1_md5, i32 4, i32 0 }, %struct.omap_sham_algs_info { ptr @algs_sha224_sha256, i32 4, i32 0 }], [40 x i8] zeroinitializer }, align 32
@algs_sha224_sha256 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_sha224_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_sha256_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }], align 128
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@omap_sham_write_ctrl_omap4.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_sham_write_ctrl_omap4\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ctrl: %08x, flags: %08lx\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_sham_algs_info_omap5 = internal global { [3 x %struct.omap_sham_algs_info], [60 x i8] } { [3 x %struct.omap_sham_algs_info] [%struct.omap_sham_algs_info { ptr @algs_sha1_md5, i32 4, i32 0 }, %struct.omap_sham_algs_info { ptr @algs_sha224_sha256, i32 4, i32 0 }, %struct.omap_sham_algs_info { ptr @algs_sha384_sha512, i32 4, i32 0 }], [60 x i8] zeroinitializer }, align 32
@algs_sha384_sha512 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 128, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 128, i32 20, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 128, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_sha384_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @omap_sham_init, ptr @omap_sham_update, ptr @omap_sham_final, ptr @omap_sham_finup, ptr @omap_sham_digest, ptr null, ptr null, ptr @omap_sham_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 128, i32 280, i32 3, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"omap-hmac-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr @omap_sham_cra_sha512_init, ptr @omap_sham_cra_exit, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } } }], align 128
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_final = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 128, i32 64, i32 128, i32 64, i32 0, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_hash_one_req = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 128, i32 64, i32 128, i32 64, i32 0, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_prepare_request = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 128, i32 64, i32 128, i32 64, i32 0, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_update_req = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 128, i32 64, i32 128, i32 64, i32 64, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_xmit_cpu = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 32, i32 16, i32 32, i32 16, i32 0, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_xmit_dma = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 32, i32 16, i32 32, i32 16, i32 0, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.omap_sham_write_ctrl_omap4 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 128, i32 64, i32 128, i32 64, i32 64, i32 64], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"omap_sham_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2223, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2227, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"omap_sham_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1883, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2063, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2089, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2097, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2104, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"sham\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 244, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2119, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2126, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"omap_sham_attr_group\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2048, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2166, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2189, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1717, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1740, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1128, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1912, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1919, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1926, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1956, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"omap_sham_pdata_omap2\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1784, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"omap_sham_algs_info_omap2\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1777, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 959, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1330, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1344, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1074, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1079, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1018, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1031, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 514, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 546, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 580, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 584, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 596, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 605, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1059, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 865, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 707, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1366, i32 37 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1381, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 246, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant [16 x i8] c"omap_sham_attrs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2042, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"dev_attr_queue_len\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"dev_attr_fallback\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2039, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2011, i32 22 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2040, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1997, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [22 x i8] c"omap_sham_pdata_omap4\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1818, i32 37 }
@___asan_gen_.349 = private unnamed_addr constant [22 x i8] c"omap_sham_pdata_omap5\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1858, i32 37 }
@___asan_gen_.352 = private unnamed_addr constant [26 x i8] c"omap_sham_algs_info_omap4\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1807, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1371, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1376, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 485, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [26 x i8] c"omap_sham_algs_info_omap5\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1843, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1386, i32 37 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [30 x i8] c"../drivers/crypto/omap-sham.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1391, i32 37 }
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"switch.table.omap_sham_final\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [36 x i8] c"switch.table.omap_sham_hash_one_req\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [39 x i8] c"switch.table.omap_sham_prepare_request\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [34 x i8] c"switch.table.omap_sham_update_req\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [32 x i8] c"switch.table.omap_sham_xmit_cpu\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [32 x i8] c"switch.table.omap_sham_xmit_dma\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [40 x i8] c"switch.table.omap_sham_write_ctrl_omap4\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_omap_sham_driver_exit, ptr @__initcall__kmod_omap_sham__271_2232_omap_sham_driver_init6, ptr @fallback_store._entry, ptr @fallback_store._entry_ptr, ptr @omap_sham_copy_sgs._entry, ptr @omap_sham_copy_sgs._entry_ptr, ptr @omap_sham_cra_init_alg._entry, ptr @omap_sham_cra_init_alg._entry.44, ptr @omap_sham_cra_init_alg._entry_ptr, ptr @omap_sham_cra_init_alg._entry_ptr.46, ptr @omap_sham_driver_exit, ptr @omap_sham_get_res_of._entry, ptr @omap_sham_get_res_of._entry.32, ptr @omap_sham_get_res_of._entry.35, ptr @omap_sham_get_res_of._entry_ptr, ptr @omap_sham_get_res_of._entry_ptr.34, ptr @omap_sham_get_res_of._entry_ptr.37, ptr @omap_sham_get_res_pdev._entry, ptr @omap_sham_get_res_pdev._entry_ptr, ptr @omap_sham_hash_one_req._entry, ptr @omap_sham_hash_one_req._entry_ptr, ptr @omap_sham_probe._entry, ptr @omap_sham_probe._entry.12, ptr @omap_sham_probe._entry.15, ptr @omap_sham_probe._entry.19, ptr @omap_sham_probe._entry.22, ptr @omap_sham_probe._entry.6, ptr @omap_sham_probe._entry_ptr, ptr @omap_sham_probe._entry_ptr.14, ptr @omap_sham_probe._entry_ptr.18, ptr @omap_sham_probe._entry_ptr.21, ptr @omap_sham_probe._entry_ptr.24, ptr @omap_sham_probe._entry_ptr.8, ptr @omap_sham_xmit_cpu._entry, ptr @omap_sham_xmit_cpu._entry_ptr, ptr @omap_sham_xmit_dma._entry, ptr @omap_sham_xmit_dma._entry.58, ptr @omap_sham_xmit_dma._entry.61, ptr @omap_sham_xmit_dma._entry_ptr, ptr @omap_sham_xmit_dma._entry_ptr.60, ptr @omap_sham_xmit_dma._entry_ptr.63, ptr @omap_sham_driver, ptr @.str, ptr @omap_sham_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sham, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @omap_sham_attr_group, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @omap_sham_pdata_omap2, ptr @omap_sham_algs_info_omap2, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @omap_sham_attrs, ptr @dev_attr_queue_len, ptr @dev_attr_fallback, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @omap_sham_pdata_omap4, ptr @omap_sham_pdata_omap5, ptr @omap_sham_algs_info_omap4, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @omap_sham_algs_info_omap5, ptr @.str.82, ptr @.str.83, ptr @switch.table.omap_sham_final, ptr @switch.table.omap_sham_hash_one_req, ptr @switch.table.omap_sham_prepare_request, ptr @switch.table.omap_sham_update_req, ptr @switch.table.omap_sham_xmit_cpu, ptr @switch.table.omap_sham_xmit_dma, ptr @switch.table.omap_sham_write_ctrl_omap4], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sham to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_get_res_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_get_res_of._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_get_res_of._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_get_res_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_pdata_omap2 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_algs_info_omap2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_cra_init_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_cra_init_alg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_hash_one_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_xmit_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_xmit_dma._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_xmit_dma._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_copy_sgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_len to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fallback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_pdata_omap4 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_pdata_omap5 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_algs_info_omap4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sham_algs_info_omap5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_final to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_hash_one_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_prepare_request to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_update_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_xmit_cpu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_xmit_dma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_sham_write_ctrl_omap4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_sham_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_sham_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #12
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !210
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 228, i32 noundef 3520) #12
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  br label %do.end147

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %prev.i, align 4
  %done_task = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @omap_sham_done_task, i32 noundef %6) #12
  %queue = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 13
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 10) #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i254 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  %pdata.i = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i254, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %call.i254, null
  br i1 %tobool.not.i, label %cond.true.err16.sink.split.i_crit_edge, label %if.end.i

cond.true.err16.sink.split.i_crit_edge:           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %err16.sink.split.i

if.end.i:                                         ; preds = %cond.true
  %call2.i = call i32 @of_address_to_resource(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %res) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.err16.sink.split.i_crit_edge, label %if.end7.i

if.end.i.err16.sink.split.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err16.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @irq_of_parse_and_map(ptr noundef %10, i32 noundef 0) #12
  %irq.i = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool10.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.err16.sink.split.i_crit_edge, label %cond.end

if.end7.i.err16.sink.split.i_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err16.sink.split.i

err16.sink.split.i:                               ; preds = %if.end7.i.err16.sink.split.i_crit_edge, %if.end.i.err16.sink.split.i_crit_edge, %cond.true.err16.sink.split.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.30, %cond.true.err16.sink.split.i_crit_edge ], [ @.str.33, %if.end.i.err16.sink.split.i_crit_edge ], [ @.str.36, %if.end7.i.err16.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.36.sink.i) #15
  br label %do.end147

cond.false:                                       ; preds = %if.end
  %call.i255 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool.not.i256 = icmp eq ptr %call.i255, null
  br i1 %tobool.not.i256, label %do.end.i, label %if.end.i260

do.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #15
  br label %do.end147

if.end.i260:                                      ; preds = %cond.false
  %13 = call ptr @memcpy(ptr %res, ptr %call.i255, i32 32)
  %call2.i257 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq.i258 = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %irq.i258 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i257, ptr %irq.i258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i257)
  %cmp.i259 = icmp slt i32 %call2.i257, 0
  br i1 %cmp.i259, label %if.end.i260.do.end147_crit_edge, label %cond.end.thread276

if.end.i260.do.end147_crit_edge:                  ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

cond.end.thread276:                               ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #14
  %pdata.i261 = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %pdata.i261 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @omap_sham_pdata_omap2, ptr %pdata.i261, align 4
  br label %if.end7

cond.end:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %cond.end.if.end7_crit_edge, label %cond.end.do.end147_crit_edge

cond.end.do.end147_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %cond.end.if.end7_crit_edge, %cond.end.thread276
  %call8 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #12
  %io_base = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %io_base, align 4
  %cmp.i263 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call8 to i32
  br label %do.end147

if.end14:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 4
  %phys_base = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phys_base, align 4
  %irq = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 4
  %intr_hdlr = getelementptr inbounds %struct.omap_sham_pdata, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %intr_hdlr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intr_hdlr, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i264 = icmp eq ptr %28, null
  br i1 %tobool.not.i264, label %if.end.i265, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i265:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i265, %if.end14.dev_name.exit_crit_edge
  %retval.0.i266 = phi ptr [ %30, %if.end.i265 ], [ %28, %if.end14.dev_name.exit_crit_edge ]
  %call.i267 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef %26, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i266, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool17.not = icmp eq i32 %call.i267, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %32, i32 noundef %call.i267) #15
  br label %do.end147

if.end23:                                         ; preds = %dev_name.exit
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #12
  %call24 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  %dma_lch = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %dma_lch to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call24, ptr %dma_lch, align 4
  %cmp.i268 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then27, label %if.end23.if.end42_crit_edge

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then27:                                        ; preds = %if.end23
  %cmp30 = icmp eq ptr %call24, inttoptr (i32 -517 to ptr)
  br i1 %cmp30, label %if.then27.do.end147_crit_edge, label %if.end32

if.then27.do.end147_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %polling_mode = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %polling_mode to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %polling_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_probe.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_probe, %if.then38)) #12
          to label %if.end42 [label %if.then38], !srcloc !211

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_probe.__UNIQUE_ID_ddebug270, ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end32, %if.end23.if.end42_crit_edge
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.omap_sham_pdata, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %flags44 = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 11
  %40 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags44, align 4
  %or = or i32 %41, %39
  store i32 %or, ptr %flags44, align 4
  %42 = load i32, ptr %flags, align 4
  %43 = load i32, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 2), align 4
  %or47 = or i32 %43, %42
  store i32 %or47, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 2), align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #12
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #12
  %fallback_sz = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 12
  %44 = ptrtoint ptr %fallback_sz to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 256, ptr %fallback_sz, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #12
  %call.i269 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp49 = icmp slt i32 %call.i269, 0
  br i1 %cmp49, label %do.end53, label %if.end54

do.end53:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i269) #15
  br label %err_pm

if.end54:                                         ; preds = %if.end42
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 4
  %rev_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %rev_ofs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rev_ofs, align 4
  %49 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 %48
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !212
  %call.i270 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #12
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata, align 4
  %major_mask = getelementptr inbounds %struct.omap_sham_pdata, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %major_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %major_mask, align 4
  %and = and i32 %55, %51
  %major_shift = getelementptr inbounds %struct.omap_sham_pdata, ptr %53, i32 0, i32 19
  %56 = ptrtoint ptr %major_shift to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %major_shift, align 4
  %shr = lshr i32 %and, %57
  %minor_mask = getelementptr inbounds %struct.omap_sham_pdata, ptr %53, i32 0, i32 20
  %58 = ptrtoint ptr %minor_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %minor_mask, align 4
  %and65 = and i32 %59, %51
  %minor_shift = getelementptr inbounds %struct.omap_sham_pdata, ptr %53, i32 0, i32 21
  %60 = ptrtoint ptr %minor_shift to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %minor_shift, align 4
  %shr67 = lshr i32 %and65, %61
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %shr, i32 noundef %shr67) #15
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %62 = load ptr, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %62, ptr noundef nonnull @sham) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.list_add_tail.exit_crit_edge

if.end54.list_add_tail.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call.i, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sham, ptr %call.i, align 4
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %prev.i, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %call.i, ptr %62, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end54.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %call69 = call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #12
  %engine = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 15
  %66 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call69, ptr %engine, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %list_add_tail.exit.err_engine_crit_edge, label %if.end73

list_add_tail.exit.err_engine_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_engine

if.end73:                                         ; preds = %list_add_tail.exit
  %call75 = call i32 @crypto_engine_start(ptr noundef nonnull %call69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.cond.preheader, label %if.end73.err_engine_start_crit_edge

if.end73.err_engine_start_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_engine_start

for.cond.preheader:                               ; preds = %if.end73
  %67 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdata, align 4
  %algs_info_size284 = getelementptr inbounds %struct.omap_sham_pdata, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %algs_info_size284 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %algs_info_size284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp80285.not = icmp eq i32 %70, 0
  br i1 %cmp80285.not, label %for.cond.preheader.for.end106_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end106_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.body:                                         ; preds = %for.inc104.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %71 = phi ptr [ %100, %for.inc104.for.body_crit_edge ], [ %68, %for.cond.preheader.for.body_crit_edge ]
  %i.0286 = phi i32 [ %inc105, %for.inc104.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %registered = getelementptr %struct.omap_sham_algs_info, ptr %73, i32 %i.0286, i32 2
  %74 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool82.not = icmp eq i32 %75, 0
  br i1 %tobool82.not, label %for.cond85.preheader, label %for.body.for.end106_crit_edge

for.body.for.end106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.cond85.preheader:                             ; preds = %for.body
  %76 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %size281 = getelementptr %struct.omap_sham_algs_info, ptr %79, i32 %i.0286, i32 1
  %80 = ptrtoint ptr %size281 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp89282.not = icmp eq i32 %81, 0
  br i1 %cmp89282.not, label %for.cond85.preheader.for.inc104_crit_edge, label %for.cond85.preheader.for.body90_crit_edge

for.cond85.preheader.for.body90_crit_edge:        ; preds = %for.cond85.preheader
  br label %for.body90

for.cond85.preheader.for.inc104_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc104

for.body90:                                       ; preds = %for.inc.for.body90_crit_edge, %for.cond85.preheader.for.body90_crit_edge
  %82 = phi ptr [ %96, %for.inc.for.body90_crit_edge ], [ %79, %for.cond85.preheader.for.body90_crit_edge ]
  %j.0283 = phi i32 [ %inc103, %for.inc.for.body90_crit_edge ], [ 0, %for.cond85.preheader.for.body90_crit_edge ]
  %arrayidx88 = getelementptr %struct.omap_sham_algs_info, ptr %82, i32 %i.0286
  %83 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx88, align 4
  %arrayidx94 = getelementptr %struct.ahash_alg, ptr %84, i32 %j.0283
  %export = getelementptr %struct.ahash_alg, ptr %84, i32 %j.0283, i32 5
  %85 = ptrtoint ptr %export to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @omap_sham_export, ptr %export, align 4
  %import = getelementptr %struct.ahash_alg, ptr %84, i32 %j.0283, i32 6
  %86 = ptrtoint ptr %import to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @omap_sham_import, ptr %import, align 8
  %statesize = getelementptr %struct.ahash_alg, ptr %84, i32 %j.0283, i32 11, i32 1
  %87 = ptrtoint ptr %statesize to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 272, ptr %statesize, align 4
  %call95 = call i32 @crypto_register_ahash(ptr noundef %arrayidx94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %for.inc, label %for.body90.err_algs_crit_edge

for.body90.err_algs_crit_edge:                    ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_algs

for.inc:                                          ; preds = %for.body90
  %88 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %registered102 = getelementptr %struct.omap_sham_algs_info, ptr %91, i32 %i.0286, i32 2
  %92 = ptrtoint ptr %registered102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %registered102, align 4
  %inc = add i32 %93, 1
  store i32 %inc, ptr %registered102, align 4
  %inc103 = add nuw i32 %j.0283, 1
  %94 = load ptr, ptr %pdata, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %size = getelementptr %struct.omap_sham_algs_info, ptr %96, i32 %i.0286, i32 1
  %97 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size, align 4
  %cmp89 = icmp ult i32 %inc103, %98
  br i1 %cmp89, label %for.inc.for.body90_crit_edge, label %for.inc.for.inc104_crit_edge

for.inc.for.inc104_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc104

for.inc.for.body90_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body90

for.inc104:                                       ; preds = %for.inc.for.inc104_crit_edge, %for.cond85.preheader.for.inc104_crit_edge
  %inc105 = add nuw i32 %i.0286, 1
  %99 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdata, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_sham_pdata, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %algs_info_size, align 4
  %cmp80 = icmp ult i32 %inc105, %102
  br i1 %cmp80, label %for.inc104.for.body_crit_edge, label %for.inc104.for.end106_crit_edge

for.inc104.for.end106_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.inc104.for.body_crit_edge:                    ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end106:                                       ; preds = %for.inc104.for.end106_crit_edge, %for.body.for.end106_crit_edge, %for.cond.preheader.for.end106_crit_edge
  %call107 = call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @omap_sham_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %for.end106.cleanup148_crit_edge, label %do.end112

for.end106.cleanup148_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

do.end112:                                        ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #15
  br label %err_algs

err_algs:                                         ; preds = %do.end112, %for.body90.err_algs_crit_edge
  %err.0 = phi i32 [ %call107, %do.end112 ], [ %call95, %for.body90.err_algs_crit_edge ]
  %103 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdata, align 4
  %algs_info_size115 = getelementptr inbounds %struct.omap_sham_pdata, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %algs_info_size115 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %algs_info_size115, align 4
  %i.1291 = add i32 %106, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1291)
  %cmp117292 = icmp sgt i32 %i.1291, -1
  br i1 %cmp117292, label %err_algs.for.body118_crit_edge, label %err_algs.err_engine_start_crit_edge

err_algs.err_engine_start_crit_edge:              ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_engine_start

err_algs.for.body118_crit_edge:                   ; preds = %err_algs
  br label %for.body118

for.cond116.loopexit:                             ; preds = %for.body126.for.cond116.loopexit_crit_edge, %for.body118.for.cond116.loopexit_crit_edge
  %i.1 = add i32 %i.1293, -1
  %cmp117 = icmp sgt i32 %i.1, -1
  br i1 %cmp117, label %for.cond116.loopexit.for.body118_crit_edge, label %for.cond116.loopexit.err_engine_start_crit_edge

for.cond116.loopexit.err_engine_start_crit_edge:  ; preds = %for.cond116.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_engine_start

for.cond116.loopexit.for.body118_crit_edge:       ; preds = %for.cond116.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body118

for.body118:                                      ; preds = %for.cond116.loopexit.for.body118_crit_edge, %err_algs.for.body118_crit_edge
  %i.1293 = phi i32 [ %i.1, %for.cond116.loopexit.for.body118_crit_edge ], [ %i.1291, %err_algs.for.body118_crit_edge ]
  %107 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdata, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %registered122 = getelementptr %struct.omap_sham_algs_info, ptr %110, i32 %i.1293, i32 2
  %111 = ptrtoint ptr %registered122 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %registered122, align 4
  %j.1288 = add i32 %112, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1288)
  %cmp125289 = icmp sgt i32 %j.1288, -1
  br i1 %cmp125289, label %for.body118.for.body126_crit_edge, label %for.body118.for.cond116.loopexit_crit_edge

for.body118.for.cond116.loopexit_crit_edge:       ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond116.loopexit

for.body118.for.body126_crit_edge:                ; preds = %for.body118
  br label %for.body126

for.body126:                                      ; preds = %for.body126.for.body126_crit_edge, %for.body118.for.body126_crit_edge
  %j.1290 = phi i32 [ %j.1, %for.body126.for.body126_crit_edge ], [ %j.1288, %for.body118.for.body126_crit_edge ]
  %113 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdata, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %arrayidx129 = getelementptr %struct.omap_sham_algs_info, ptr %116, i32 %i.1293
  %117 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx129, align 4
  %arrayidx131 = getelementptr %struct.ahash_alg, ptr %118, i32 %j.1290
  call void @crypto_unregister_ahash(ptr noundef %arrayidx131) #12
  %j.1 = add nsw i32 %j.1290, -1
  %cmp125 = icmp sgt i32 %j.1290, 0
  br i1 %cmp125, label %for.body126.for.body126_crit_edge, label %for.body126.for.cond116.loopexit_crit_edge

for.body126.for.cond116.loopexit_crit_edge:       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond116.loopexit

for.body126.for.body126_crit_edge:                ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body126

err_engine_start:                                 ; preds = %for.cond116.loopexit.err_engine_start_crit_edge, %err_algs.err_engine_start_crit_edge, %if.end73.err_engine_start_crit_edge
  %err.1 = phi i32 [ %call75, %if.end73.err_engine_start_crit_edge ], [ %err.0, %err_algs.err_engine_start_crit_edge ], [ %err.0, %for.cond116.loopexit.err_engine_start_crit_edge ]
  %119 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %engine, align 4
  %call138 = call i32 @crypto_engine_exit(ptr noundef %120) #12
  br label %err_engine

err_engine:                                       ; preds = %err_engine_start, %list_add_tail.exit.err_engine_crit_edge
  %err.2 = phi i32 [ %err.1, %err_engine_start ], [ -12, %list_add_tail.exit.err_engine_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %call.i.i271 = call zeroext i1 @__list_del_entry_valid(ptr noundef %call.i) #12
  br i1 %call.i.i271, label %if.end.i.i272, label %err_engine.list_del.exit_crit_edge

err_engine.list_del.exit_crit_edge:               ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i272:                                    ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i, align 4
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i272, %err_engine.list_del.exit_crit_edge
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  br label %err_pm

err_pm:                                           ; preds = %list_del.exit, %do.end53
  %err.3 = phi i32 [ %call.i269, %do.end53 ], [ %err.2, %list_del.exit ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #12
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #12
  %polling_mode140 = getelementptr inbounds %struct.omap_sham_dev, ptr %call.i, i32 0, i32 8
  %129 = ptrtoint ptr %polling_mode140 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %polling_mode140, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool141.not = icmp eq i8 %130, 0
  br i1 %tobool141.not, label %if.then142, label %err_pm.do.end147_crit_edge

err_pm.do.end147_crit_edge:                       ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

if.then142:                                       ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma_lch, align 4
  call void @dma_release_channel(ptr noundef %132) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then142, %err_pm.do.end147_crit_edge, %if.then27.do.end147_crit_edge, %do.end21, %if.then11, %cond.end.do.end147_crit_edge, %if.end.i260.do.end147_crit_edge, %do.end.i, %err16.sink.split.i, %do.end
  %err.4 = phi i32 [ -12, %do.end ], [ %call2.i, %cond.end.do.end147_crit_edge ], [ %17, %if.then11 ], [ %call.i267, %do.end21 ], [ -517, %if.then27.do.end147_crit_edge ], [ %err.3, %err_pm.do.end147_crit_edge ], [ %err.3, %if.then142 ], [ %call2.i257, %if.end.i260.do.end147_crit_edge ], [ -19, %do.end.i ], [ -22, %err16.sink.split.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #15
  br label %cleanup148

cleanup148:                                       ; preds = %do.end147, %for.end106.cleanup148_crit_edge
  %retval.0 = phi i32 [ %err.4, %do.end147 ], [ 0, %for.end106.cleanup148_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %algs_info_size = getelementptr inbounds %struct.omap_sham_pdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %algs_info_size, align 4
  %i.045 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.045)
  %cmp46 = icmp sgt i32 %i.045, -1
  br i1 %cmp46, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end17_crit_edge

list_del.exit.for.end17_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body5.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %i.0 = add i32 %i.047, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end17_crit_edge

for.cond.loopexit.for.end17_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %i.047 = phi i32 [ %i.0, %for.cond.loopexit.for.body_crit_edge ], [ %i.045, %list_del.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %registered = getelementptr %struct.omap_sham_algs_info, ptr %17, i32 %i.047, i32 2
  %18 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %registered, align 4
  %j.042 = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.042)
  %cmp443 = icmp sgt i32 %j.042, -1
  br i1 %cmp443, label %for.body.for.body5_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %j.044 = phi i32 [ %j.0, %for.body5.for.body5_crit_edge ], [ %j.042, %for.body.for.body5_crit_edge ]
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx8 = getelementptr %struct.omap_sham_algs_info, ptr %23, i32 %i.047
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.ahash_alg, ptr %25, i32 %j.044
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx9) #12
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %registered13 = getelementptr %struct.omap_sham_algs_info, ptr %29, i32 %i.047, i32 2
  %30 = ptrtoint ptr %registered13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %registered13, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %registered13, align 4
  %j.0 = add nsw i32 %j.044, -1
  %cmp4 = icmp sgt i32 %j.044, 0
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.cond.loopexit_crit_edge

for.body5.for.cond.loopexit_crit_edge:            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end17:                                        ; preds = %for.cond.loopexit.for.end17_crit_edge, %list_del.exit.for.end17_crit_edge
  %done_task = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %done_task) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %polling_mode = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %polling_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool19.not = icmp eq i8 %33, 0
  br i1 %tobool19.not, label %if.then20, label %for.end17.if.end21_crit_edge

for.end17.if.end21_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  %dma_lch = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_lch, align 4
  tail call void @dma_release_channel(ptr noundef %35) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.end17.if.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev22, align 4
  tail call void @sysfs_remove_group(ptr noundef %37, ptr noundef nonnull @omap_sham_attr_group) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_done_task.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_done_task, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_done_task.__UNIQUE_ID_ddebug268, ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags3 = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 11
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags3, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %if.then6.do.body35_crit_edge

if.then6.do.body35_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %do.end
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags3, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.else
  %11 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags3, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.then15.if.end26_crit_edge, label %if.then19

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then19:                                        ; preds = %if.then15
  %req.i = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 14
  %14 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req.i, align 4
  %dev.i = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 48
  %18 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags3) #12
  %err21 = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 5
  %22 = ptrtoint ptr %err21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.then19.if.end26_crit_edge, label %if.then19.do.body35_crit_edge

if.then19.do.body35_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.then15.if.end26_crit_edge
  %call28 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.then30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags3) #12
  br label %do.body35

do.body35:                                        ; preds = %if.then30, %if.then19.do.body35_crit_edge, %if.then6.do.body35_crit_edge
  %err.0 = phi i32 [ 0, %if.then6.do.body35_crit_edge ], [ 0, %if.then30 ], [ %23, %if.then19.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_done_task.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_done_task, %if.then47)) #12
          to label %do.end51 [label %if.then47], !srcloc !211

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_done_task.__UNIQUE_ID_ddebug269, ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef %err.0) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %req = getelementptr inbounds %struct.omap_sham_dev, ptr %0, i32 0, i32 14
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req, align 4
  tail call fastcc void @omap_sham_finish_req(ptr noundef %27, i32 noundef %err.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_sham_export(ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %out) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %0 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bufcnt, align 4
  %add = add i32 %1, 144
  %2 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 %add)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_sham_import(ptr nocapture noundef writeonly %req, ptr nocapture noundef readonly %in) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %bufcnt = getelementptr inbounds %struct.omap_sham_reqctx, ptr %in, i32 0, i32 6
  %0 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bufcnt, align 4
  %add = add i32 %1, 144
  %2 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 %add)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_sham_finish_req(ptr noundef %req, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 48
  %5 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !213

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

sg_virt.exit:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %9) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %dec.i = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i60 = lshr i32 %dec.i, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %shr.i60, i1 true) #12, !range !215
  %sub.i.i = sub nuw nsw i32 32, %17
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @free_pages(i32 noundef %12, i32 noundef %cond.i.i) #12
  br label %if.end

if.end:                                           ; preds = %sg_virt.exit, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sg10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 48
  %21 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg10, align 4
  tail call void @kfree(ptr noundef %22) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %sg12 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 48
  %23 = ptrtoint ptr %sg12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sg12, align 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, -1641
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool14.not = icmp eq i32 %err, 0
  br i1 %tobool14.not, label %if.end16, label %if.end16.thread

if.end16:                                         ; preds = %if.end11
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %copy_hash = getelementptr inbounds %struct.omap_sham_pdata, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %copy_hash to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %copy_hash, align 4
  tail call void %29(ptr noundef %req, i32 noundef 1) #12
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and18 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then24, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.end16.thread:                                  ; preds = %if.end11
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and1866 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1866)
  %tobool19.not67 = icmp eq i32 %and1866, 0
  br i1 %tobool19.not67, label %if.else, label %if.end16.thread.if.then20_crit_edge

if.end16.thread.if.then20_crit_edge:              ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then20:                                        ; preds = %if.end16.thread.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %34 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__ctx.i, align 4
  %engine.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %37, ptr noundef %req) #12
  br label %cleanup

if.then24:                                        ; preds = %if.end16
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool27.not = icmp eq i32 %40, 0
  br i1 %tobool27.not, label %if.then24.if.end32_crit_edge, label %if.then28

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call fastcc i32 @omap_sham_finish(ptr noundef %req)
  br label %if.end32

if.else:                                          ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #14
  %flags31 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags31, align 4
  %or = or i32 %42, 4194304
  store i32 %or, ptr %flags31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28, %if.then24.if.end32_crit_edge
  %err.addr.0 = phi i32 [ %err, %if.else ], [ %call29, %if.then28 ], [ 0, %if.then24.if.end32_crit_edge ]
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and34 = and i32 %44, -107
  store i32 %and34, ptr %flags, align 4
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 12, i32 22
  %47 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i32 @__pm_runtime_suspend(ptr noundef %49, i32 noundef 13) #12
  %offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %offset, align 4
  %engine = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 15
  %51 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %52, ptr noundef %req, i32 noundef %err.addr.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_sham_finish(ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  %__shash_desc.i = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 36
  %2 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  %digest.i = getelementptr %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %result.i, align 32
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.omap_sham_copy_ready_hash.exit_crit_edge, label %if.end.i

if.then.omap_sham_copy_ready_hash.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_copy_ready_hash.exit

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %7, 18
  %8 = and i32 %and.i, 7
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.i.omap_sham_copy_ready_hash.exit_crit_edge [
    i32 0, label %if.end.i.for.body16.preheader.i_crit_edge
    i32 2, label %sw.epilog.i
    i32 4, label %sw.bb7.i
    i32 6, label %sw.bb8.i
    i32 1, label %sw.bb9.i
    i32 3, label %sw.bb10.i
  ]

if.end.i.for.body16.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

if.end.i.omap_sham_copy_ready_hash.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_copy_ready_hash.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

sw.epilog.i:                                      ; preds = %if.end.i
  %flags2.i = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags2.i, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %sw.epilog.i.for.body16.preheader.i_crit_edge, label %for.body.i.preheader

sw.epilog.i.for.body16.preheader.i_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.preheader.i

for.body.i.preheader:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %digest.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digest.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %5, align 4
  %add.ptr.i.1 = getelementptr %struct.ahash_request, ptr %req, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.1, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %5, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.i.1, align 4
  %add.ptr.i.2 = getelementptr %struct.ahash_request, ptr %req, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.2, align 4
  %arrayidx.i.2 = getelementptr i32, ptr %5, i32 2
  %21 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.i.2, align 4
  %add.ptr.i.3 = getelementptr %struct.ahash_request, ptr %req, i32 1, i32 1
  %22 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.3, align 4
  %arrayidx.i.3 = getelementptr i32, ptr %5, i32 3
  %24 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i.3, align 4
  %add.ptr.i.4 = getelementptr %struct.ahash_request, ptr %req, i32 1, i32 2
  %25 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.4, align 4
  %arrayidx.i.4 = getelementptr i32, ptr %5, i32 4
  %27 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.i.4, align 4
  br label %omap_sham_copy_ready_hash.exit

for.body16.preheader.i:                           ; preds = %sw.epilog.i.for.body16.preheader.i_crit_edge, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %if.end.i.for.body16.preheader.i_crit_edge
  %d.05558.i = phi i32 [ 5, %sw.epilog.i.for.body16.preheader.i_crit_edge ], [ 4, %if.end.i.for.body16.preheader.i_crit_edge ], [ 16, %sw.bb10.i ], [ 12, %sw.bb9.i ], [ 8, %sw.bb8.i ], [ 7, %sw.bb7.i ]
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.preheader.i
  %i.147.i = phi i32 [ %inc21.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.body16.preheader.i ]
  %add.ptr17.i = getelementptr i32, ptr %digest.i, i32 %i.147.i
  %28 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr17.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %arrayidx19.i = getelementptr i32, ptr %5, i32 %i.147.i
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx19.i, align 4
  %inc21.i = add nuw nsw i32 %i.147.i, 1
  %exitcond50.not.i = icmp eq i32 %inc21.i, %d.05558.i
  br i1 %exitcond50.not.i, label %for.body16.i.omap_sham_copy_ready_hash.exit_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i

for.body16.i.omap_sham_copy_ready_hash.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_copy_ready_hash.exit

omap_sham_copy_ready_hash.exit:                   ; preds = %for.body16.i.omap_sham_copy_ready_hash.exit_crit_edge, %for.body.i.preheader, %if.end.i.omap_sham_copy_ready_hash.exit_crit_edge, %if.then.omap_sham_copy_ready_hash.exit_crit_edge
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %omap_sham_copy_ready_hash.exit.do.body_crit_edge, label %land.lhs.true

omap_sham_copy_ready_hash.exit.do.body_crit_edge: ; preds = %omap_sham_copy_ready_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true:                                    ; preds = %omap_sham_copy_ready_hash.exit
  %flags3 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags3, align 4
  %36 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool5.not = icmp eq i32 %36, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then6:                                         ; preds = %land.lhs.true
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tfm.i, align 16
  %base1.i = getelementptr inbounds %struct.crypto_tfm, ptr %38, i32 1, i32 4, i32 4
  %39 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base1.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %40, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %42, i32 -128
  %45 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %digestsize.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i) #12
  %47 = call ptr @memset(ptr %__shash_desc.i, i32 255, i32 376)
  %48 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base1.i, align 4
  %50 = ptrtoint ptr %__shash_desc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %__shash_desc.i, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_shash_init.exit.i, label %if.then6.omap_sham_finish_hmac.exit_crit_edge

if.then6.omap_sham_finish_hmac.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_finish_hmac.exit

crypto_shash_init.exit.i:                         ; preds = %if.then6
  %__crt_alg.i.i28.i = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %__crt_alg.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__crt_alg.i.i28.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 -256
  %55 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = call i32 %56(ptr noundef nonnull %__shash_desc.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i23 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i23, label %cond.false.i, label %crypto_shash_init.exit.i.omap_sham_finish_hmac.exit_crit_edge

crypto_shash_init.exit.i.omap_sham_finish_hmac.exit_crit_edge: ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_finish_hmac.exit

cond.false.i:                                     ; preds = %crypto_shash_init.exit.i
  %opad.i = getelementptr inbounds %struct.crypto_tfm, ptr %38, i32 2, i32 4, i32 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc.i, ptr noundef %opad.i, i32 noundef %44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %cond.false14.i, label %cond.false.i.omap_sham_finish_hmac.exit_crit_edge

cond.false.i.omap_sham_finish_hmac.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_finish_hmac.exit

cond.false14.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %result.i, align 32
  %call16.i = call i32 @crypto_shash_finup(ptr noundef nonnull %__shash_desc.i, ptr noundef %58, i32 noundef %46, ptr noundef %58) #12
  br label %omap_sham_finish_hmac.exit

omap_sham_finish_hmac.exit:                       ; preds = %cond.false14.i, %cond.false.i.omap_sham_finish_hmac.exit_crit_edge, %crypto_shash_init.exit.i.omap_sham_finish_hmac.exit_crit_edge, %if.then6.omap_sham_finish_hmac.exit_crit_edge
  %cond18.i = phi i32 [ %call3.i.i, %crypto_shash_init.exit.i.omap_sham_finish_hmac.exit_crit_edge ], [ %call16.i, %cond.false14.i ], [ %call11.i, %cond.false.i.omap_sham_finish_hmac.exit_crit_edge ], [ -126, %if.then6.omap_sham_finish_hmac.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i) #12
  br label %do.body

do.body:                                          ; preds = %omap_sham_finish_hmac.exit, %land.lhs.true.do.body_crit_edge, %omap_sham_copy_ready_hash.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.do.body_crit_edge ], [ %cond18.i, %omap_sham_finish_hmac.exit ], [ 0, %omap_sham_copy_ready_hash.exit.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_finish.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_finish, %if.then13)) #12
          to label %do.end [label %if.then13], !srcloc !211

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %digcnt, align 4
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %63 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bufcnt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_finish.__UNIQUE_ID_ddebug267, ptr noundef %60, ptr noundef nonnull @.str.29, i32 noundef %62, i32 noundef %64) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_copy_hash_omap2(ptr nocapture noundef %req, i32 noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %digest = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %digest_size23 = getelementptr inbounds %struct.omap_sham_pdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %digest_size23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digest_size23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp25.not = icmp ult i32 %5, 4
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not = icmp eq i32 %out, 0
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %idigest_ofs5 = getelementptr inbounds %struct.omap_sham_pdata, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %idigest_ofs5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idigest_ofs5, align 4
  %mul6 = shl i32 %i.026, 2
  %add7 = add i32 %8, %mul6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !212
  %arrayidx = getelementptr i32, ptr %digest, i32 %i.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr i32, ptr %digest, i32 %i.026
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %14) #12, !srcloc !216
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.026, 1
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 4
  %digest_size = getelementptr inbounds %struct.omap_sham_pdata, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %digest_size, align 4
  %div20 = lshr i32 %20, 2
  %cmp = icmp ult i32 %inc, %div20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_write_ctrl_omap2(ptr nocapture noundef readonly %dd, i32 noundef %length, i32 noundef %final, i32 noundef %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %2 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !217

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %digcnt_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %digcnt_ofs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digcnt_ofs, align 4
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #12, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shl = shl i32 %length, 5
  %pdata4 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %10 = ptrtoint ptr %pdata4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata4, align 4
  %mask_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %mask_ofs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma)
  %tobool5.not = icmp eq i32 %dma, 0
  %or = select i1 %tobool5.not, i32 4, i32 12
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !212
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, %or
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %18, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #12, !srcloc !216
  %flags = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %and)
  %cmp = icmp eq i32 %and, 524288
  %or7 = or i32 %shl, 4
  %spec.select = select i1 %cmp, i32 %or7, i32 %shl
  %21 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %digcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  %or12 = or i32 %spec.select, 8
  %val.1 = select i1 %tobool10.not, i32 %or12, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool14.not = icmp eq i32 %final, 0
  %or16 = or i32 %val.1, 16
  %val.2 = select i1 %tobool14.not, i32 %val.1, i32 %or16
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #12, !srcloc !212
  %and.i31 = and i32 %25, 3
  %or.i32 = or i32 %val.2, %and.i31
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i33 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i33, i32 %or.i32) #12, !srcloc !216
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap_sham_trigger_omap2(ptr nocapture noundef %dd, i32 noundef %length) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_poll_irq_omap2(ptr nocapture noundef readonly %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 100
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %1 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !212
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.cond.i.omap_sham_wait.exit_crit_edge

while.cond.i.omap_sham_wait.exit_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_wait.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.omap_sham_wait.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.omap_sham_wait.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_wait.exit

omap_sham_wait.exit:                              ; preds = %while.body.i.omap_sham_wait.exit_crit_edge, %while.cond.i.omap_sham_wait.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %while.body.i.omap_sham_wait.exit_crit_edge ], [ 0, %while.cond.i.omap_sham_wait.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_irq_omap2(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !213

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 3
  %3 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !212
  %and.i = and i32 %5, 31
  %6 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %and.i) #12, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io_base.i.i9 = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %io_base.i.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #12, !srcloc !212
  %or.i = or i32 %10, 1
  %11 = ptrtoint ptr %io_base.i.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i.i9, align 4
  %add.ptr.i6.i12 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i12, i32 %or.i) #12, !srcloc !216
  %13 = ptrtoint ptr %io_base.i.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i.i9, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !212
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #12
  %state.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.omap_sham_irq_common.exit_crit_edge

if.end.omap_sham_irq_common.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_irq_common.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %done_task.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task.i) #12
  br label %omap_sham_irq_common.exit

omap_sham_irq_common.exit:                        ; preds = %if.then.i.i, %if.end.omap_sham_irq_common.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_init(ptr nocapture noundef %req) #2 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %__ctx.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %3 = load ptr, ptr @sham, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__list_del_entry.exit.i.i_crit_edge

if.end.i.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i.__list_del_entry.exit.i.i_crit_edge
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %10, ptr noundef nonnull @sham) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.omap_sham_find_dev.exit_crit_edge

__list_del_entry.exit.i.i.omap_sham_find_dev.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_find_dev.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %3, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sham, ptr %3, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %3, ptr %10, align 4
  br label %omap_sham_find_dev.exit

omap_sham_find_dev.exit:                          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.omap_sham_find_dev.exit_crit_edge
  %14 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %__ctx.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %omap_sham_find_dev.exit.cleanup_crit_edge, label %if.end

omap_sham_find_dev.exit.cleanup_crit_edge:        ; preds = %omap_sham_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %omap_sham_find_dev.exit
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_init.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_init, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !211

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %18 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -128
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_init.__UNIQUE_ID_ddebug262, ptr noundef %17, ptr noundef nonnull @.str.41, i32 noundef %21) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %__crt_alg.i.i71 = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %__crt_alg.i.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i71, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %add.ptr.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i72, align 128
  %26 = add i32 %25, -16
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 30)
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %27, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 3, label %sw.bb17
    i32 4, label %sw.bb20
    i32 8, label %sw.bb23
    i32 12, label %sw.bb26
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or16 = or i32 %30, 524288
  store i32 %or16, ptr %flags, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or19 = or i32 %32, 1048576
  store i32 %or19, ptr %flags, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or22 = or i32 %34, 1572864
  store i32 %or22, ptr %flags, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or25 = or i32 %36, 262144
  store i32 %or25, ptr %flags, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or28 = or i32 %38, 786432
  store i32 %or28, ptr %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb, %do.end.sw.epilog_crit_edge
  %bs.0 = phi i32 [ 0, %do.end.sw.epilog_crit_edge ], [ 128, %sw.bb26 ], [ 128, %sw.bb23 ], [ 64, %sw.bb20 ], [ 64, %sw.bb17 ], [ 64, %sw.bb14 ], [ 64, %sw.bb ]
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %39 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bufcnt, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 36
  %40 = ptrtoint ptr %digcnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %digcnt, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %total, align 4
  %offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %offset, align 4
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 44
  %43 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 128, ptr %buflen, align 4
  %flags29 = getelementptr i8, ptr %1, i32 140
  %44 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags29, align 4
  %and = and i32 %45, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %sw.epilog.cleanup_crit_edge, label %if.then31

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %sw.epilog
  %flags32 = getelementptr inbounds %struct.omap_sham_dev, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags32, align 4
  %48 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool34.not = icmp eq i32 %48, 0
  br i1 %tobool34.not, label %if.then35, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %ipad = getelementptr i8, ptr %1, i32 152
  %49 = call ptr @memcpy(ptr %buffer, ptr %ipad, i32 %bs.0)
  %50 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bs.0, ptr %bufcnt, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then31.if.end39_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or41 = or i32 %52, 2097152
  store i32 %or41, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %sw.epilog.cleanup_crit_edge, %omap_sham_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %omap_sham_find_dev.exit.cleanup_crit_edge ], [ 0, %if.end39 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.omap_sham_find_dev.exit_crit_edge

entry.omap_sham_find_dev.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_find_dev.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  %2 = load ptr, ptr @sham, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__list_del_entry.exit.i.i_crit_edge

if.end.i.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i.__list_del_entry.exit.i.i_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %9, ptr noundef nonnull @sham) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %2, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sham, ptr %2, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %2, ptr %9, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %13 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %2, ptr %__ctx.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 1)) #12
  br label %omap_sham_find_dev.exit

omap_sham_find_dev.exit:                          ; preds = %list_move_tail.exit.i, %entry.omap_sham_find_dev.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %list_move_tail.exit.i ], [ %1, %entry.omap_sham_find_dev.exit_crit_edge ]
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %omap_sham_find_dev.exit.cleanup_crit_edge, label %if.end

omap_sham_find_dev.exit.cleanup_crit_edge:        ; preds = %omap_sham_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %omap_sham_find_dev.exit
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %16 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufcnt, align 4
  %add = add i32 %17, %15
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 44
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp.not = icmp ugt i32 %add, %19
  br i1 %cmp.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %buffer, i32 %17
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %21, i32 noundef 0, i32 noundef %15, i32 noundef 0) #12
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 8
  %24 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bufcnt, align 4
  %add8 = add i32 %25, %23
  store i32 %add8, ptr %bufcnt, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %polling_mode = getelementptr inbounds %struct.omap_sham_dev, ptr %retval.0.i, i32 0, i32 8
  %26 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %polling_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not = icmp eq i8 %27, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or = or i32 %29, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %30 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__ctx.i, align 4
  %op2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %op2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %op2.i, align 4
  %engine.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %31, i32 0, i32 15
  %33 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %34, ptr noundef %req) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3, %omap_sham_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call.i.i, %if.end12 ], [ 0, %omap_sham_find_dev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 65536
  store i32 %or, ptr %flags, align 4
  %and = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 36
  %2 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %4 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufcnt, align 4
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__ctx.i, align 4
  %fallback_sz = getelementptr inbounds %struct.omap_sham_dev, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %fallback_sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fallback_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp = icmp ult i32 %5, %9
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i, align 16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then3.omap_sham_final_shash.exit_crit_edge, label %land.lhs.true.i

if.then3.omap_sham_final_shash.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_final_shash.exit

land.lhs.true.i:                                  ; preds = %if.then3
  %flags3.i = getelementptr inbounds %struct.omap_sham_dev, ptr %7, i32 0, i32 11
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags3.i, align 4
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %if.then.i, label %land.lhs.true.i.omap_sham_final_shash.exit_crit_edge

land.lhs.true.i.omap_sham_final_shash.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_final_shash.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %and.i.i = lshr i32 %13, 18
  %18 = and i32 %and.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %.not = icmp eq i32 %18, 7
  br i1 %.not, label %if.then.i.omap_sham_final_shash.exit_crit_edge, label %switch.lookup

if.then.i.omap_sham_final_shash.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_final_shash.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_final, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %omap_sham_final_shash.exit

omap_sham_final_shash.exit:                       ; preds = %switch.lookup, %if.then.i.omap_sham_final_shash.exit_crit_edge, %land.lhs.true.i.omap_sham_final_shash.exit_crit_edge, %if.then3.omap_sham_final_shash.exit_crit_edge
  %offset.0.i = phi i32 [ 0, %land.lhs.true.i.omap_sham_final_shash.exit_crit_edge ], [ 0, %if.then3.omap_sham_final_shash.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.omap_sham_final_shash.exit_crit_edge ]
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 1, i32 4
  %20 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fallback.i, align 4
  %buffer.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %buffer.i, i32 %offset.0.i
  %22 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufcnt, align 4
  %sub.i = sub i32 %23, %offset.0.i
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %result.i, align 32
  %call7.i = tail call i32 @crypto_shash_tfm_digest(ptr noundef %21, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %25) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %bufcnt5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 40
  %26 = ptrtoint ptr %bufcnt5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bufcnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not = icmp eq i32 %27, 0
  br i1 %tobool6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__ctx.i, align 4
  %op2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %op2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %op2.i, align 4
  %engine.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %29, i32 0, i32 15
  %31 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %32, ptr noundef %req) #12
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @omap_sham_finish(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %omap_sham_final_shash.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then7 ], [ %call11, %if.end10 ], [ %call7.i, %omap_sham_final_shash.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 65536
  store i32 %or, ptr %flags, align 4
  %call1 = tail call i32 @omap_sham_update(ptr noundef %req)
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call1, label %if.end [
    i32 -115, label %entry.cleanup_crit_edge
    i32 -16, label %entry.cleanup_crit_edge11
  ]

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @omap_sham_final(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 %call3, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge11
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_sham_init(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %1, 65536
  store i32 %or.i, ptr %flags.i, align 4
  %call1.i = tail call i32 @omap_sham_update(ptr noundef %req) #12
  %2 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call1.i, label %if.end.i [
    i32 -115, label %cond.false.cond.end_crit_edge
    i32 -16, label %cond.false.cond.end_crit_edge3
  ]

cond.false.cond.end_crit_edge3:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @omap_sham_final(ptr noundef %req) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %call3.i, i32 %call1.i
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.false.cond.end_crit_edge, %cond.false.cond.end_crit_edge3, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %entry.cond.end_crit_edge ], [ %spec.select.i, %if.end.i ], [ %call1.i, %cond.false.cond.end_crit_edge ], [ %call1.i, %cond.false.cond.end_crit_edge3 ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2.i = tail call ptr @crypto_alloc_shash(ptr noundef %cra_name.i.i, i32 noundef 0, i32 noundef 256) #12
  %fallback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %fallback.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2.i, ptr %fallback.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef %cra_name.i.i) #15
  %3 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %omap_sham_cra_init_alg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 272, ptr %reqsize1.i.i, align 32
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %7 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @omap_sham_hash_one_req, ptr %do_one_request.i, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @omap_sham_prepare_request, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %9 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %unprepare_request.i, align 4
  br label %omap_sham_cra_init_alg.exit

omap_sham_cra_init_alg.exit:                      ; preds = %if.end.i, %do.end.i
  %retval.1.i = phi i32 [ %5, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_cra_exit(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #12
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fallback, align 4
  %flags = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %base.i.i5 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %base.i.i5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digestsize.i, align 128
  %fallback = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 4
  %8 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fallback, align 4
  %call4 = tail call i32 @crypto_shash_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %keylen)
  %cmp = icmp ult i32 %5, %keylen
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %ipad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 6
  %call8 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %11, ptr noundef %key, i32 noundef %keylen, ptr noundef %ipad) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end14_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ipad12 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 6
  %12 = call ptr @memcpy(ptr %ipad12, ptr %key, i32 %keylen)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5.if.end14_crit_edge
  %keylen.addr.0 = phi i32 [ %keylen, %if.else ], [ %7, %if.then5.if.end14_crit_edge ]
  %ipad15 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 6
  %add.ptr = getelementptr i8, ptr %ipad15, i32 %keylen.addr.0
  %sub = sub i32 %5, %keylen.addr.0
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.omap_sham_drv, ptr @sham, i32 0, i32 2), align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.then19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end14
  %opad = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 10, i32 4, i32 8
  %16 = call ptr @memcpy(ptr %opad, ptr %ipad15, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2365 = icmp sgt i32 %5, 0
  br i1 %cmp2365, label %if.then19.for.body_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19.for.body_crit_edge:                     ; preds = %if.then19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then19.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then19.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i8], ptr %ipad15, i32 0, i32 %i.066
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = xor i8 %18, 54
  store i8 %19, ptr %arrayidx, align 1
  %arrayidx27 = getelementptr [128 x i8], ptr %opad, i32 0, i32 %i.066
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27, align 1
  %22 = xor i8 %21, 92
  store i8 %22, ptr %arrayidx27, align 1
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call8, %if.then5.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_sha1_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.70)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_md5_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.71)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_sham_cra_init_alg(ptr nocapture noundef %tfm, ptr noundef %alg_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call2 = tail call ptr @crypto_alloc_shash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #12
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %fallback, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef %cra_name.i) #15
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup28

if.end:                                           ; preds = %entry
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %6 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 272, ptr %reqsize1.i, align 32
  %tobool.not = icmp eq ptr %alg_base, null
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.then9

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then9:                                         ; preds = %if.end
  %base = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %flags = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 2097152
  store i32 %or, ptr %flags, align 4
  %call10 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %alg_base, i32 noundef 0, i32 noundef 256) #12
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %base, align 4
  %cmp.i45 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %cleanup.thread, label %if.then9.if.end23_crit_edge

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef nonnull %alg_base) #15
  %10 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i) #12
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup28

if.end23:                                         ; preds = %if.then9.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %15 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @omap_sham_hash_one_req, ptr %do_one_request, align 4
  %16 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap_sham_prepare_request, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %17 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %unprepare_request, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end23, %cleanup.thread, %do.end
  %retval.1 = phi i32 [ %5, %do.end ], [ 0, %if.end23 ], [ %14, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_hash_one_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags2 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  %and3 = lshr i32 %5, 11
  %and3.lobit = and i32 %and3, 1
  %6 = xor i32 %and3.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %6, %land.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_hash_one_req.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_hash_one_req, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %op = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %op, align 4
  %conv = zext i8 %11 to i32
  %total = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 36
  %14 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %digcnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_hash_one_req.__UNIQUE_ID_ddebug266, ptr noundef %9, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %13, i32 noundef %15, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.end
  %dev14 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end22

if.then.i:                                        ; preds = %do.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !218
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !219
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end20_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  br label %do.end20

do.end20:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end20_crit_edge
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %call.i) #15
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %err23 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %err23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %err23, align 4
  %req24 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %req24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %areq, ptr %req24, align 4
  %digcnt25 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 36
  %23 = ptrtoint ptr %digcnt25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %digcnt25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %if.end22.if.end28_crit_edge, label %if.then27

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 4
  %copy_hash = getelementptr inbounds %struct.omap_sham_pdata, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %copy_hash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %copy_hash, align 4
  tail call void %28(ptr noundef %areq, i32 noundef 0) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22.if.end28_crit_edge
  %op29 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %op29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %op29, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %30, label %if.end28.if.then45_crit_edge [
    i8 1, label %if.then33
    i8 2, label %if.then39
  ]

if.end28.if.then45_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call fastcc i32 @omap_sham_update_req(ptr noundef %1)
  br label %if.end42

if.then39:                                        ; preds = %if.end28
  %32 = ptrtoint ptr %req24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req24, align 4
  %flags.i = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then39.if.then45_crit_edge

if.then39.if.then45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.end.i:                                         ; preds = %if.then39
  %total.i = getelementptr inbounds %struct.ahash_request, ptr %33, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %total.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ahash_request, ptr %33, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %39, 18
  %40 = and i32 %and.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %.not = icmp eq i32 %40, 7
  br i1 %.not, label %if.end.i.get_block_size.exit.i_crit_edge, label %switch.lookup

if.end.i.get_block_size.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_block_size.exit.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_hash_one_req, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_block_size.exit.i

get_block_size.exit.i:                            ; preds = %switch.lookup, %if.end.i.get_block_size.exit.i_crit_edge
  %d.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.get_block_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %d.0.i.i)
  %cmp.not.i = icmp ugt i32 %37, %d.0.i.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %get_block_size.exit.i.if.then4.i_crit_edge

get_block_size.exit.i.if.then4.i_crit_edge:       ; preds = %get_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %get_block_size.exit.i
  %polling_mode.i = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %polling_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %polling_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i, label %if.then7.i, label %lor.lhs.false.i.if.then4.i_crit_edge

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %get_block_size.exit.i.if.then4.i_crit_edge
  %call11.i = tail call fastcc i32 @omap_sham_xmit_cpu(ptr noundef %1, i32 noundef %37, i32 noundef 1) #12
  br label %if.end12.i

if.then7.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call fastcc i32 @omap_sham_xmit_dma(ptr noundef %1, i32 noundef %37, i32 noundef 1) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.then4.i
  %err.0.i = phi i32 [ %call9.i, %if.then7.i ], [ %call11.i, %if.then4.i ]
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %33, i32 1, i32 5, i32 40
  %44 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %bufcnt.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_final_req.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_hash_one_req, %if.then17.i)) #12
          to label %if.end42 [label %if.then17.i], !srcloc !211

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_final_req.__UNIQUE_ID_ddebug265, ptr noundef %46, ptr noundef nonnull @.str.65, i32 noundef %err.0.i) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then17.i, %if.end12.i, %if.then33
  %err.0 = phi i32 [ %call34, %if.then33 ], [ %err.0.i, %if.then17.i ], [ %err.0.i, %if.end12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.0)
  %cmp43.not = icmp eq i32 %err.0, -115
  br i1 %cmp43.not, label %if.end42.cleanup_crit_edge, label %if.end42.if.then45_crit_edge

if.end42.if.then45_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %if.end42.if.then45_crit_edge, %if.then39.if.then45_crit_edge, %if.end28.if.then45_crit_edge
  %err.081 = phi i32 [ %err.0, %if.end42.if.then45_crit_edge ], [ 0, %if.then39.if.then45_crit_edge ], [ 0, %if.end28.if.then45_crit_edge ]
  tail call fastcc void @omap_sham_finish_req(ptr noundef %areq, i32 noundef %err.081)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %do.end20
  %retval.0 = phi i32 [ %call.i, %do.end20 ], [ 0, %if.then45 ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_prepare_request(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %flags = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %op = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %and.i = lshr i32 %1, 18
  %4 = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %.not = icmp eq i32 %4, 7
  br i1 %.not, label %entry.get_block_size.exit_crit_edge, label %switch.lookup

entry.get_block_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_block_size.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_prepare_request, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_block_size.exit

get_block_size.exit:                              ; preds = %switch.lookup, %entry.get_block_size.exit_crit_edge
  %d.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.get_block_size.exit_crit_edge ]
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 40
  %6 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufcnt, align 4
  br i1 %cmp, label %if.then, label %get_block_size.exit.do.body_crit_edge

get_block_size.exit.do.body_crit_edge:            ; preds = %get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nbytes5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes5, align 8
  %offset = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %sub = add i32 %9, %7
  %add = sub i32 %sub, %11
  br label %do.body

do.body:                                          ; preds = %if.then, %get_block_size.exit.do.body_crit_edge
  %nbytes.0 = phi i32 [ %add, %if.then ], [ %7, %get_block_size.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_prepare_request.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_prepare_request, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !211

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__ctx.i, align 4
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total, align 4
  %offset13 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset13, align 4
  %20 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bufcnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_prepare_request.__UNIQUE_ID_ddebug259, ptr noundef %15, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %nbytes.0, i32 noundef %d.0.i, i32 noundef %17, i32 noundef %19, i32 noundef %21) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.0)
  %tobool16.not = icmp eq i32 %nbytes.0, 0
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %total19 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %total19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %nbytes.0, ptr %total19, align 4
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end44thread-pre-split_crit_edge

if.end18.if.end44thread-pre-split_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44thread-pre-split

land.lhs.true:                                    ; preds = %if.end18
  %nbytes22 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %23 = ptrtoint ptr %nbytes22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end44thread-pre-split_crit_edge, label %land.lhs.true24

land.lhs.true.if.end44thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44thread-pre-split

land.lhs.true24:                                  ; preds = %land.lhs.true
  %25 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bufcnt, align 4
  %sub26 = add nsw i32 %d.0.i, -1
  %and27 = and i32 %26, %sub26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %land.lhs.true24.if.end44_crit_edge, label %if.then30

land.lhs.true24.if.end44_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then30:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  %rem = urem i32 %26, %d.0.i
  %sub32 = sub nsw i32 %d.0.i, %rem
  %27 = tail call i32 @llvm.umin.i32(i32 %sub32, i32 %24)
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %add.ptr40 = getelementptr i8, ptr %buffer, i32 %26
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr40, ptr noundef %29, i32 noundef 0, i32 noundef %27, i32 noundef 0) #12
  %30 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bufcnt, align 4
  %add42 = add i32 %31, %27
  store i32 %add42, ptr %bufcnt, align 4
  %offset43 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %offset43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %offset43, align 4
  br label %if.end44

if.end44thread-pre-split:                         ; preds = %land.lhs.true.if.end44thread-pre-split_crit_edge, %if.end18.if.end44thread-pre-split_crit_edge
  %33 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %bufcnt, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.then30, %land.lhs.true24.if.end44_crit_edge
  %34 = phi i32 [ %.pr, %if.end44thread-pre-split ], [ %add42, %if.then30 ], [ %26, %land.lhs.true24.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not = icmp eq i32 %34, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__ctx.i, align 4
  %xmit_buf = getelementptr inbounds %struct.omap_sham_dev, ptr %36, i32 0, i32 10
  %buffer50 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %xmit_buf, ptr %buffer50, i32 %34)
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.end44.if.end53_crit_edge
  %src54 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %38 = ptrtoint ptr %src54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src54, align 4
  %offset1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset1.i, align 4
  %42 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bufcnt, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end53.if.then.i_crit_edge, label %lor.lhs.false.i

if.end53.if.then.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end53
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end14.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end53.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool6.not.i = icmp eq i32 %43, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end59_crit_edge, label %if.then7.i

if.then.i.if.end59_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then7.i:                                       ; preds = %if.then.i
  %add.i = add nsw i32 %d.0.i, -1
  %sub.i = add i32 %add.i, %43
  %46 = srem i32 %sub.i, %d.0.i
  %mul.i = sub i32 %sub.i, %46
  %sgl.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 52
  tail call void @sg_init_table(ptr noundef %sgl.i, i32 noundef 1) #12
  %47 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__ctx.i, align 4
  %xmit_buf.i = getelementptr inbounds %struct.omap_sham_dev, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %xmit_buf.i to i32
  %cmp.i.i = icmp ugt ptr %xmit_buf.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then7.i.do.body5.i.i_crit_edge, !prof !213

if.then7.i.do.body5.i.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.then7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %50 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %50, %xmit_buf.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !213

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %49, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %51, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !217

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.then7.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !221
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %52, i32 %shr.i.i
  %53 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sgl.i, align 4
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !213

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !222
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !213

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !223
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %49, 4095
  %and.i.i.i.i = and i32 %54, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %55
  %56 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i.i.i, ptr %sgl.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %57 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %58 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.i, ptr %length.i.i.i, align 4
  %sg13.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %59 = ptrtoint ptr %sg13.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sgl.i, ptr %sg13.i, align 4
  %sg_len.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 1
  %60 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %sg_len.i, align 4
  br label %if.end59

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %add20.i = add nsw i32 %d.0.i, -1
  %sub24.sink391.v.i = select i1 %tobool.not, i32 -1, i32 %add20.i
  %sub24.sink391.i = add i32 %nbytes.0, %sub24.sink391.v.i
  %61 = srem i32 %sub24.sink391.i, %d.0.i
  %mul26.i = sub i32 %sub24.sink391.i, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24.sink391.i, i32 %61)
  %tobool28.not.i = icmp eq i32 %sub24.sink391.i, %61
  br i1 %tobool28.not.i, label %if.end14.i.if.end59_crit_edge, label %if.end30.i

if.end14.i.if.end59_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end30.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool15.not.i = icmp eq i32 %41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26.i, i32 %nbytes.0)
  %cmp.not.i = icmp eq i32 %mul26.i, %nbytes.0
  %spec.select.i = select i1 %cmp.not.i, i1 %tobool15.not.i, i1 false
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end40.i, %if.end30.i
  %nbytes.addr.0.ph.i = phi i32 [ %sub41.i, %if.end40.i ], [ %nbytes.0, %if.end30.i ]
  %n.0.ph.i = phi i32 [ %inc.i, %if.end40.i ], [ 0, %if.end30.i ]
  %list_ok.2.off0.ph.i = phi i1 [ %spec.select207.i, %if.end40.i ], [ %spec.select.i, %if.end30.i ]
  %sg_tmp.0.ph.i = phi ptr [ %sg_tmp.0.i, %if.end40.i ], [ %39, %if.end30.i ]
  %offset.0.ph.i = phi i32 [ %offset.0.i, %if.end40.i ], [ %41, %if.end30.i ]
  %bufcnt.0.ph.i = phi i32 [ 0, %if.end40.i ], [ %43, %if.end30.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end78.i.while.cond.i_crit_edge, %while.cond.outer.i
  %nbytes.addr.0.i = phi i32 [ %nbytes.addr.1.i, %if.end78.i.while.cond.i_crit_edge ], [ %nbytes.addr.0.ph.i, %while.cond.outer.i ]
  %n.0.i = phi i32 [ %inc.i, %if.end78.i.while.cond.i_crit_edge ], [ %n.0.ph.i, %while.cond.outer.i ]
  %sg_tmp.0.i = phi ptr [ %call79.i, %if.end78.i.while.cond.i_crit_edge ], [ %sg_tmp.0.ph.i, %while.cond.outer.i ]
  %offset.0.i = phi i32 [ %offset.1.i, %if.end78.i.while.cond.i_crit_edge ], [ %offset.0.ph.i, %while.cond.outer.i ]
  %bufcnt.0.i = phi i32 [ 0, %if.end78.i.while.cond.i_crit_edge ], [ %bufcnt.0.ph.i, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbytes.addr.0.i)
  %cmp33.i = icmp slt i32 %nbytes.addr.0.i, 1
  %tobool34.not.i = icmp eq ptr %sg_tmp.0.i, null
  %or.cond.i = select i1 %cmp33.i, i1 true, i1 %tobool34.not.i
  br i1 %or.cond.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %n.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufcnt.0.i)
  %tobool35.not.i = icmp eq i32 %bufcnt.0.i, 0
  br i1 %tobool35.not.i, label %if.end45.i, label %if.then36.i

if.then36.i:                                      ; preds = %while.body.i
  %and.i160 = and i32 %bufcnt.0.i, %add20.i
  %cmp38.i = icmp eq i32 %and.i160, 0
  br i1 %cmp38.i, label %if.end40.i, label %if.then36.i.while.end.thread358.i_crit_edge

if.then36.i.while.end.thread358.i_crit_edge:      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread358.i

if.end40.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub41.i = sub i32 %nbytes.addr.0.i, %bufcnt.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41.i)
  %tobool42.not.i = icmp ne i32 %sub41.i, 0
  %spec.select207.i = select i1 %tobool42.not.i, i1 %list_ok.2.off0.ph.i, i1 false
  br label %while.cond.outer.i

if.end45.i:                                       ; preds = %while.body.i
  %62 = ptrtoint ptr %sg_tmp.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sg_tmp.0.i, align 4
  %and.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !213

do.body2.i.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

sg_page.exit.i:                                   ; preds = %if.end45.i
  %and.i212.i = and i32 %63, -4
  %64 = inttoptr i32 %and.i212.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %66)
  %cmp47.not.i = icmp ult i32 %66, 1073741824
  br i1 %cmp47.not.i, label %if.end49.i, label %sg_page.exit.i.while.end.thread358.i_crit_edge

sg_page.exit.i.while.end.thread358.i_crit_edge:   ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread358.i

if.end49.i:                                       ; preds = %sg_page.exit.i
  %length50.i = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0.i, i32 0, i32 2
  %67 = ptrtoint ptr %length50.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %offset.0.i)
  %cmp51.i = icmp ugt i32 %68, %offset.0.i
  br i1 %cmp51.i, label %if.then52.i, label %if.end49.i.if.end66.i_crit_edge

if.end49.i.if.end66.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then52.i:                                      ; preds = %if.end49.i
  %offset53.i = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0.i, i32 0, i32 1
  %69 = ptrtoint ptr %offset53.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset53.i, align 4
  %add54.i = add i32 %70, %offset.0.i
  %and55.i = and i32 %add54.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %cmp56.i = icmp eq i32 %and55.i, 0
  br i1 %cmp56.i, label %if.end58.i, label %if.then52.i.while.end.thread358.i_crit_edge

if.then52.i.while.end.thread358.i_crit_edge:      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread358.i

if.end58.i:                                       ; preds = %if.then52.i
  %sub60.i = sub i32 %68, %offset.0.i
  %and62.i = and i32 %sub60.i, %add20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %cmp63.i = icmp eq i32 %and62.i, 0
  br i1 %cmp63.i, label %if.end58.i.if.end66.i_crit_edge, label %if.end58.i.while.end.thread358.i_crit_edge

if.end58.i.while.end.thread358.i_crit_edge:       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread358.i

if.end58.i.if.end66.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end58.i.if.end66.i_crit_edge, %if.end49.i.if.end66.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0.i)
  %tobool67.not.i = icmp eq i32 %offset.0.i, 0
  br i1 %tobool67.not.i, label %if.else75.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub70.i = sub i32 %offset.0.i, %68
  %71 = tail call i32 @llvm.smin.i32(i32 %sub70.i, i32 0) #12
  %spec.select309.i = add nsw i32 %71, %nbytes.addr.0.i
  %72 = tail call i32 @llvm.smax.i32(i32 %sub70.i, i32 0) #12
  br label %if.end78.i

if.else75.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub77.i = sub i32 %nbytes.addr.0.i, %68
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else75.i, %if.then68.i
  %nbytes.addr.1.i = phi i32 [ %sub77.i, %if.else75.i ], [ %spec.select309.i, %if.then68.i ]
  %offset.1.i = phi i32 [ 0, %if.else75.i ], [ %72, %if.then68.i ]
  %call79.i = tail call ptr @sg_next(ptr noundef nonnull %sg_tmp.0.i) #12
  %cmp80.i = icmp slt i32 %nbytes.addr.1.i, 0
  br i1 %cmp80.i, label %while.end.thread.i, label %if.end78.i.while.cond.i_crit_edge

if.end78.i.while.cond.i_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.thread358.i:                            ; preds = %if.end58.i.while.end.thread358.i_crit_edge, %if.then52.i.while.end.thread358.i_crit_edge, %sg_page.exit.i.while.end.thread358.i_crit_edge, %if.then36.i.while.end.thread358.i_crit_edge
  %73 = tail call i32 @llvm.smin.i32(i32 %mul26.i, i32 2097152) #12
  br label %get_order.exit.i.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097153, i32 %mul26.i)
  %cmp83.i = icmp slt i32 %mul26.i, 2097153
  %74 = tail call i32 @llvm.smin.i32(i32 %mul26.i, i32 2097152) #12
  br i1 %cmp83.i, label %if.else89.i, label %while.end.i.get_order.exit.i.i_crit_edge

while.end.i.get_order.exit.i.i_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_order.exit.i.i

while.end.thread.i:                               ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul26.i)
  %cmp83297.i = icmp sgt i32 %mul26.i, 2097152
  %75 = tail call i32 @llvm.smin.i32(i32 %mul26.i, i32 2097152) #12
  br i1 %cmp83297.i, label %while.end.thread.i.get_order.exit.i.i_crit_edge, label %while.end.thread.i.if.then91.i_crit_edge

while.end.thread.i.if.then91.i_crit_edge:         ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91.i

while.end.thread.i.get_order.exit.i.i_crit_edge:  ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_order.exit.i.i

get_order.exit.i.i:                               ; preds = %while.end.thread.i.get_order.exit.i.i_crit_edge, %while.end.i.get_order.exit.i.i_crit_edge, %while.end.thread358.i
  %spec.select211303.i = phi i32 [ %75, %while.end.thread.i.get_order.exit.i.i_crit_edge ], [ %74, %while.end.i.get_order.exit.i.i_crit_edge ], [ %73, %while.end.thread358.i ]
  %dec.i.i.i = add i32 %spec.select211303.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i)
  %tobool.not.i.i.i214.i = icmp ult i32 %dec.i.i.i, 4096
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  %76 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #12, !range !215
  %sub.i.i.i.i = sub nuw nsw i32 32, %76
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i214.i, i32 0, i32 %sub.i.i.i.i
  %call1.i.i = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %cond.i.i.i.i) #12
  %77 = inttoptr i32 %call1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %get_order.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #15
  br label %cleanup

if.end.i.i:                                       ; preds = %get_order.exit.i.i
  %78 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool3.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %__ctx.i, align 4
  %xmit_buf.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %81, i32 0, i32 10
  %82 = call ptr @memcpy(ptr %77, ptr %xmit_buf.i.i, i32 %79)
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %83 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bufcnt, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %77, i32 %84
  %85 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset1.i, align 4
  %87 = ptrtoint ptr %total19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %total19, align 4
  %89 = tail call i32 @llvm.umin.i32(i32 %88, i32 %spec.select211303.i) #12
  %sub.i216.i = sub i32 %89, %84
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i215.i, ptr noundef nonnull %39, i32 noundef %86, i32 noundef %sub.i216.i, i32 noundef 0) #12
  %sgl.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 52
  tail call void @sg_init_table(ptr noundef %sgl.i.i, i32 noundef 1) #12
  %cmp.i1.i.i = icmp ugt ptr %77, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i1.i.i, label %land.lhs.true.i.i.i, label %if.end6.i.i.do.body5.i.i.i_crit_edge, !prof !213

if.end6.i.i.do.body5.i.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %90 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %90, %77
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !213

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %sub.i2.i.i = add i32 %call1.i.i, 1073741824
  %shr.i3.i.i = lshr i32 %sub.i2.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %91 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i4.i.i = add i32 %91, %shr.i3.i.i
  %call.i.i.i = tail call i32 @pfn_valid(i32 noundef %add.i4.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !217

land.rhs.i.i.i.do.body5.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.end6.i.i.do.body5.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !221
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %92, i32 %shr.i3.i.i
  %93 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sgl.i.i, align 4
  %95 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and2.i.i.i.i.i = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !213

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !222
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i, !prof !213

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !223
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i217.i = and i32 %call1.i.i, 4095
  %and.i.i.i.i218.i = and i32 %94, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i218.i, %95
  %96 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i.i.i.i.i, ptr %sgl.i.i, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %97 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i.i217.i, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %98 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %spec.select211303.i, ptr %length.i.i.i.i, align 4
  %sg15.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %99 = ptrtoint ptr %sg15.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %sgl.i.i, ptr %sg15.i.i, align 4
  %100 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %__ctx.i, align 4
  %flags.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %101, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags.i.i) #12
  %sg_len.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 1
  %102 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %sg_len.i.i, align 4
  %103 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bufcnt, align 4
  %sub18.i.i = sub i32 %spec.select211303.i, %104
  %105 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset1.i, align 4
  %add.i219.i = add i32 %sub18.i.i, %106
  store i32 %add.i219.i, ptr %offset1.i, align 4
  store i32 0, ptr %bufcnt, align 4
  %107 = ptrtoint ptr %total19 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.select211303.i, ptr %total19, align 4
  br label %if.end59

if.else89.i:                                      ; preds = %while.end.i
  br i1 %list_ok.2.off0.ph.i, label %if.end94.i, label %if.else89.i.if.then91.i_crit_edge

if.else89.i.if.then91.i_crit_edge:                ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91.i

if.then91.i:                                      ; preds = %if.else89.i.if.then91.i_crit_edge, %while.end.thread.i.if.then91.i_crit_edge
  %spec.select211302308.i = phi i32 [ %74, %if.else89.i.if.then91.i_crit_edge ], [ %75, %while.end.thread.i.if.then91.i_crit_edge ]
  %call.i220.i = tail call i32 @sg_nents(ptr noundef nonnull %39) #12
  %108 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %offset1.i, align 4
  %110 = ptrtoint ptr %total19 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select211302308.i, ptr %total19, align 4
  %111 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i223.i = icmp ne i32 %112, 0
  %inc.i.i = zext i1 %tobool.not.i223.i to i32
  %spec.select.i.i = add i32 %call.i220.i, %inc.i.i
  %113 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i.i, i32 20) #12
  %114 = extractvalue { i32, i1 } %113, 1
  br i1 %114, label %kmalloc_array.exit.thread.i.i, label %if.end7.i.i.i, !prof !217

kmalloc_array.exit.thread.i.i:                    ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg38.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %115 = ptrtoint ptr %sg38.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %sg38.i.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.then91.i
  %116 = extractvalue { i32, i1 } %113, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %116, i32 noundef 3264) #16
  %sg3.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %117 = ptrtoint ptr %sg3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call8.i.i.i, ptr %sg3.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end7.i.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end7.i.i.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i.i, i32 noundef %spec.select.i.i) #12
  %118 = ptrtoint ptr %sg3.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sg3.i.i, align 4
  %sg_len.i227.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 1
  %120 = ptrtoint ptr %sg_len.i227.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %sg_len.i227.i, align 4
  %121 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool11.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool11.not.i.i, label %if.end7.i.i.land.rhs.i254.i.preheader_crit_edge, label %if.then12.i.i

if.end7.i.i.land.rhs.i254.i.preheader_crit_edge:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i254.i.preheader

if.then12.i.i:                                    ; preds = %if.end7.i.i
  %123 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %__ctx.i, align 4
  %xmit_buf.i228.i = getelementptr inbounds %struct.omap_sham_dev, ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %xmit_buf.i228.i to i32
  %cmp.i.i229.i = icmp ugt ptr %xmit_buf.i228.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i229.i, label %land.lhs.true.i.i231.i, label %if.then12.i.i.do.body5.i.i238.i_crit_edge, !prof !213

if.then12.i.i.do.body5.i.i238.i_crit_edge:        ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i238.i

land.lhs.true.i.i231.i:                           ; preds = %if.then12.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %126 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i230.i = icmp ugt ptr %126, %xmit_buf.i228.i
  br i1 %cmp1.i.i230.i, label %land.rhs.i.i237.i, label %land.lhs.true.i.i231.i.do.body5.i.i238.i_crit_edge, !prof !213

land.lhs.true.i.i231.i.do.body5.i.i238.i_crit_edge: ; preds = %land.lhs.true.i.i231.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i238.i

land.rhs.i.i237.i:                                ; preds = %land.lhs.true.i.i231.i
  %sub.i.i232.i = add i32 %125, 1073741824
  %shr.i.i233.i = lshr i32 %sub.i.i232.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %127 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i234.i = add i32 %127, %shr.i.i233.i
  %call.i.i235.i = tail call i32 @pfn_valid(i32 noundef %add.i.i234.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i235.i)
  %tobool.i.i236.i = icmp eq i32 %call.i.i235.i, 0
  br i1 %tobool.i.i236.i, label %land.rhs.i.i237.i.do.body5.i.i238.i_crit_edge, label %do.end8.i.i241.i, !prof !217

land.rhs.i.i237.i.do.body5.i.i238.i_crit_edge:    ; preds = %land.rhs.i.i237.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i238.i

do.body5.i.i238.i:                                ; preds = %land.rhs.i.i237.i.do.body5.i.i238.i_crit_edge, %land.lhs.true.i.i231.i.do.body5.i.i238.i_crit_edge, %if.then12.i.i.do.body5.i.i238.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !221
  unreachable

do.end8.i.i241.i:                                 ; preds = %land.rhs.i.i237.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %128 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i239.i = getelementptr %struct.page, ptr %128, i32 %shr.i.i233.i
  %129 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %119, align 4
  %131 = ptrtoint ptr %add.ptr.i.i239.i to i32
  %and2.i.i.i.i240.i = and i32 %131, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i240.i)
  %tobool.not.i.i.i2.i.i = icmp eq i32 %and2.i.i.i.i240.i, 0
  br i1 %tobool.not.i.i.i2.i.i, label %do.body11.i.i.i.i245.i, label %do.body5.i.i.i.i242.i, !prof !213

do.body5.i.i.i.i242.i:                            ; preds = %do.end8.i.i241.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !222
  unreachable

do.body11.i.i.i.i245.i:                           ; preds = %do.end8.i.i241.i
  %and.i.i.i.i.i243.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i243.i)
  %tobool.i.not.i.i.i.i244.i = icmp eq i32 %and.i.i.i.i.i243.i, 0
  br i1 %tobool.i.not.i.i.i.i244.i, label %sg_set_buf.exit.i253.i, label %do.body19.i.i.i.i246.i, !prof !213

do.body19.i.i.i.i246.i:                           ; preds = %do.body11.i.i.i.i245.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !223
  unreachable

sg_set_buf.exit.i253.i:                           ; preds = %do.body11.i.i.i.i245.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i247.i = and i32 %125, 4095
  %and.i.i.i.i248.i = and i32 %130, 3
  %or.i.i.i.i249.i = or i32 %and.i.i.i.i248.i, %131
  %132 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i.i.i.i249.i, ptr %119, align 4
  %offset1.i.i.i250.i = getelementptr inbounds %struct.scatterlist, ptr %119, i32 0, i32 1
  %133 = ptrtoint ptr %offset1.i.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and.i.i247.i, ptr %offset1.i.i.i250.i, align 4
  %length.i.i.i251.i = getelementptr inbounds %struct.scatterlist, ptr %119, i32 0, i32 2
  %134 = ptrtoint ptr %length.i.i.i251.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %122, ptr %length.i.i.i251.i, align 4
  %call14.i.i = tail call ptr @sg_next(ptr noundef %119) #12
  %135 = ptrtoint ptr %sg_len.i227.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sg_len.i227.i, align 4
  %inc16.i.i = add i32 %136, 1
  store i32 %inc16.i.i, ptr %sg_len.i227.i, align 4
  %137 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bufcnt, align 4
  %sub.i252.i = sub i32 %spec.select211302308.i, %138
  br label %land.rhs.i254.i.preheader

land.rhs.i254.i.preheader:                        ; preds = %sg_set_buf.exit.i253.i, %if.end7.i.i.land.rhs.i254.i.preheader_crit_edge
  %tmp.129.i.i.ph = phi ptr [ %119, %if.end7.i.i.land.rhs.i254.i.preheader_crit_edge ], [ %call14.i.i, %sg_set_buf.exit.i253.i ]
  %new_len.addr.128.i.i.ph = phi i32 [ %spec.select211302308.i, %if.end7.i.i.land.rhs.i254.i.preheader_crit_edge ], [ %sub.i252.i, %sg_set_buf.exit.i253.i ]
  br label %land.rhs.i254.i

land.rhs.i254.i:                                  ; preds = %cleanup.i.i.land.rhs.i254.i_crit_edge, %land.rhs.i254.i.preheader
  %offset.030.i.i = phi i32 [ %offset.2.i.i, %cleanup.i.i.land.rhs.i254.i_crit_edge ], [ %109, %land.rhs.i254.i.preheader ]
  %tmp.129.i.i = phi ptr [ %tmp.3.i.i, %cleanup.i.i.land.rhs.i254.i_crit_edge ], [ %tmp.129.i.i.ph, %land.rhs.i254.i.preheader ]
  %new_len.addr.128.i.i = phi i32 [ %new_len.addr.3.i.i, %cleanup.i.i.land.rhs.i254.i_crit_edge ], [ %new_len.addr.128.i.i.ph, %land.rhs.i254.i.preheader ]
  %sg.addr.026.i.i = phi ptr [ %call43.i.i, %cleanup.i.i.land.rhs.i254.i_crit_edge ], [ %39, %land.rhs.i254.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_len.addr.128.i.i)
  %tobool20.not.i.i = icmp eq i32 %new_len.addr.128.i.i, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i254.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs.i254.i.while.end.i.i_crit_edge:          ; preds = %land.rhs.i254.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i254.i
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i.i, i32 0, i32 2
  %139 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %length.i.i, align 4
  %sub21.i.i = sub i32 %140, %offset.030.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub21.i.i)
  %cmp.i255.i = icmp slt i32 %sub21.i.i, 1
  br i1 %cmp.i255.i, label %if.then22.i.i, label %if.end26.i.i

if.then22.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub24.i.i = sub i32 %offset.030.i.i, %140
  br label %cleanup.i.i

if.end26.i.i:                                     ; preds = %while.body.i.i
  %141 = tail call i32 @llvm.smin.i32(i32 %new_len.addr.128.i.i, i32 %sub21.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp30.i.i = icmp sgt i32 %141, 0
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end26.i.i.cleanup.i.i_crit_edge

if.end26.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.then31.i.i:                                    ; preds = %if.end26.i.i
  %sub32.i.i = sub i32 %new_len.addr.128.i.i, %141
  %142 = ptrtoint ptr %sg.addr.026.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sg.addr.026.i.i, align 4
  %and.i.i.i256.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i256.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i256.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !213

do.body2.i.i.i:                                   ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

sg_page.exit.i.i:                                 ; preds = %if.then31.i.i
  %144 = ptrtoint ptr %tmp.129.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tmp.129.i.i, align 4
  %and.i.i.i4.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool.i.not.i.i.i257.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool.i.not.i.i.i257.i, label %sg_set_page.exit.i.i, label %do.body19.i.i.i258.i, !prof !213

do.body19.i.i.i258.i:                             ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !223
  unreachable

sg_set_page.exit.i.i:                             ; preds = %sg_page.exit.i.i
  %offset34.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.026.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %offset34.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %offset34.i.i, align 4
  %add.i259.i = add i32 %147, %offset.030.i.i
  %and.i3.i.i = and i32 %143, -4
  %and.i.i5.i.i = and i32 %145, 3
  %or.i.i.i260.i = or i32 %and.i.i5.i.i, %and.i3.i.i
  %148 = ptrtoint ptr %tmp.129.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i.i.i260.i, ptr %tmp.129.i.i, align 4
  %offset1.i.i261.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.129.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %offset1.i.i261.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add.i259.i, ptr %offset1.i.i261.i, align 4
  %length.i.i262.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.129.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %length.i.i262.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %141, ptr %length.i.i262.i, align 4
  %151 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %offset1.i, align 4
  %152 = ptrtoint ptr %sg_len.i227.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sg_len.i227.i, align 4
  %inc37.i.i = add i32 %153, 1
  store i32 %inc37.i.i, ptr %sg_len.i227.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub32.i.i)
  %cmp38.i.i = icmp slt i32 %sub32.i.i, 1
  br i1 %cmp38.i.i, label %sg_set_page.exit.i.i.while.end.i.i_crit_edge, label %if.end40.i.i

sg_set_page.exit.i.i.while.end.i.i_crit_edge:     ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.end40.i.i:                                     ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call41.i.i = tail call ptr @sg_next(ptr noundef %tmp.129.i.i) #12
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end40.i.i, %if.end26.i.i.cleanup.i.i_crit_edge, %if.then22.i.i
  %new_len.addr.3.i.i = phi i32 [ %new_len.addr.128.i.i, %if.then22.i.i ], [ %sub32.i.i, %if.end40.i.i ], [ %new_len.addr.128.i.i, %if.end26.i.i.cleanup.i.i_crit_edge ]
  %tmp.3.i.i = phi ptr [ %tmp.129.i.i, %if.then22.i.i ], [ %call41.i.i, %if.end40.i.i ], [ %tmp.129.i.i, %if.end26.i.i.cleanup.i.i_crit_edge ]
  %offset.2.i.i = phi i32 [ %sub24.i.i, %if.then22.i.i ], [ 0, %if.end40.i.i ], [ %offset.030.i.i, %if.end26.i.i.cleanup.i.i_crit_edge ]
  %call43.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.026.i.i) #12
  %tobool19.not.i.i = icmp eq ptr %call43.i.i, null
  br i1 %tobool19.not.i.i, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.land.rhs.i254.i_crit_edge

cleanup.i.i.land.rhs.i254.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i254.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %sg_set_page.exit.i.i.while.end.i.i_crit_edge, %land.rhs.i254.i.while.end.i.i_crit_edge
  %tmp.1.lcssa.i.i = phi ptr [ %tmp.129.i.i, %sg_set_page.exit.i.i.while.end.i.i_crit_edge ], [ %tmp.3.i.i, %cleanup.i.i.while.end.i.i_crit_edge ], [ %tmp.129.i.i, %land.rhs.i254.i.while.end.i.i_crit_edge ]
  %new_len.addr.4.i.i = phi i32 [ %sub32.i.i, %sg_set_page.exit.i.i.while.end.i.i_crit_edge ], [ %new_len.addr.3.i.i, %cleanup.i.i.while.end.i.i_crit_edge ], [ 0, %land.rhs.i254.i.while.end.i.i_crit_edge ]
  %tobool44.not.i.i = icmp eq ptr %tmp.1.lcssa.i.i, null
  br i1 %tobool44.not.i.i, label %while.end.i.i.if.end46.i.i_crit_edge, label %if.then45.i.i

while.end.i.i.if.end46.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i.i

if.then45.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %tmp.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tmp.1.lcssa.i.i, align 4
  %or.i.i.i = and i32 %155, -4
  %and.i6.i.i = or i32 %or.i.i.i, 2
  store i32 %and.i6.i.i, ptr %tmp.1.lcssa.i.i, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then45.i.i, %while.end.i.i.if.end46.i.i_crit_edge
  %156 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %__ctx.i, align 4
  %flags.i263.i = getelementptr inbounds %struct.omap_sham_dev, ptr %157, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i263.i) #12
  %158 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bufcnt, align 4
  %sub49.i.i = sub i32 %new_len.addr.4.i.i, %159
  %160 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %offset1.i, align 4
  %add51.i.i = add i32 %sub49.i.i, %161
  store i32 %add51.i.i, ptr %offset1.i, align 4
  store i32 0, ptr %bufcnt, align 4
  br label %if.end59

if.end94.i:                                       ; preds = %if.else89.i
  %162 = ptrtoint ptr %total19 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %74, ptr %total19, align 4
  %163 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %offset1.i, align 4
  %add96.i = add i32 %164, %74
  store i32 %add96.i, ptr %offset1.i, align 4
  %sg_len97.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 1
  %165 = ptrtoint ptr %sg_len97.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %n.0.i, ptr %sg_len97.i, align 4
  %166 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bufcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool99.not.i = icmp eq i32 %167, 0
  br i1 %tobool99.not.i, label %if.else114.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end94.i
  %sgl101.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 52
  tail call void @sg_init_table(ptr noundef %sgl101.i, i32 noundef 2) #12
  %168 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %__ctx.i, align 4
  %xmit_buf106.i = getelementptr inbounds %struct.omap_sham_dev, ptr %169, i32 0, i32 10
  %170 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bufcnt, align 4
  %172 = ptrtoint ptr %xmit_buf106.i to i32
  %cmp.i265.i = icmp ugt ptr %xmit_buf106.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i265.i, label %land.lhs.true.i267.i, label %if.then100.i.do.body5.i274.i_crit_edge, !prof !213

if.then100.i.do.body5.i274.i_crit_edge:           ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i274.i

land.lhs.true.i267.i:                             ; preds = %if.then100.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %173 = load ptr, ptr @high_memory, align 4
  %cmp1.i266.i = icmp ugt ptr %173, %xmit_buf106.i
  br i1 %cmp1.i266.i, label %land.rhs.i273.i, label %land.lhs.true.i267.i.do.body5.i274.i_crit_edge, !prof !213

land.lhs.true.i267.i.do.body5.i274.i_crit_edge:   ; preds = %land.lhs.true.i267.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i274.i

land.rhs.i273.i:                                  ; preds = %land.lhs.true.i267.i
  %sub.i268.i = add i32 %172, 1073741824
  %shr.i269.i = lshr i32 %sub.i268.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %174 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i270.i = add i32 %174, %shr.i269.i
  %call.i271.i = tail call i32 @pfn_valid(i32 noundef %add.i270.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i)
  %tobool.i272.i = icmp eq i32 %call.i271.i, 0
  br i1 %tobool.i272.i, label %land.rhs.i273.i.do.body5.i274.i_crit_edge, label %do.end8.i278.i, !prof !217

land.rhs.i273.i.do.body5.i274.i_crit_edge:        ; preds = %land.rhs.i273.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i274.i

do.body5.i274.i:                                  ; preds = %land.rhs.i273.i.do.body5.i274.i_crit_edge, %land.lhs.true.i267.i.do.body5.i274.i_crit_edge, %if.then100.i.do.body5.i274.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !221
  unreachable

do.end8.i278.i:                                   ; preds = %land.rhs.i273.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %175 = load ptr, ptr @mem_map, align 4
  %add.ptr.i275.i = getelementptr %struct.page, ptr %175, i32 %shr.i269.i
  %176 = ptrtoint ptr %sgl101.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sgl101.i, align 4
  %178 = ptrtoint ptr %add.ptr.i275.i to i32
  %and2.i.i.i276.i = and i32 %178, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i276.i)
  %tobool.not.i.i.i277.i = icmp eq i32 %and2.i.i.i276.i, 0
  br i1 %tobool.not.i.i.i277.i, label %do.body11.i.i.i282.i, label %do.body5.i.i.i279.i, !prof !213

do.body5.i.i.i279.i:                              ; preds = %do.end8.i278.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !222
  unreachable

do.body11.i.i.i282.i:                             ; preds = %do.end8.i278.i
  %and.i.i.i.i280.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i280.i)
  %tobool.i.not.i.i.i281.i = icmp eq i32 %and.i.i.i.i280.i, 0
  br i1 %tobool.i.not.i.i.i281.i, label %sg_set_buf.exit290.i, label %do.body19.i.i.i283.i, !prof !213

do.body19.i.i.i283.i:                             ; preds = %do.body11.i.i.i282.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !223
  unreachable

sg_set_buf.exit290.i:                             ; preds = %do.body11.i.i.i282.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i284.i = and i32 %172, 4095
  %and.i.i.i285.i = and i32 %177, 3
  %or.i.i.i286.i = or i32 %and.i.i.i285.i, %178
  %179 = ptrtoint ptr %sgl101.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.i.i.i286.i, ptr %sgl101.i, align 4
  %offset1.i.i287.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 56
  %180 = ptrtoint ptr %offset1.i.i287.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %and.i284.i, ptr %offset1.i.i287.i, align 4
  %length.i.i288.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 60
  %181 = ptrtoint ptr %length.i.i288.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %171, ptr %length.i.i288.i, align 4
  %arrayidx.i.i = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 72
  %offset.i.i.i = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 76
  %182 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %offset.i.i.i, align 4
  %length.i.i291.i = getelementptr %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 80
  %183 = ptrtoint ptr %length.i.i291.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %length.i.i291.i, align 4
  %184 = ptrtoint ptr %39 to i32
  %or.i.i292.i = and i32 %184, -4
  %and.i.i293.i = or i32 %or.i.i292.i, 1
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %and.i.i293.i, ptr %arrayidx.i.i, align 4
  %sg113.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %186 = ptrtoint ptr %sg113.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %sgl101.i, ptr %sg113.i, align 4
  br label %if.end59

if.else114.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg115.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 48
  %187 = ptrtoint ptr %sg115.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %39, ptr %sg115.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else114.i, %sg_set_buf.exit290.i, %if.end46.i.i, %sg_set_buf.exit.i.i, %if.end14.i.if.end59_crit_edge, %sg_set_buf.exit.i, %if.then.i.if.end59_crit_edge
  %188 = ptrtoint ptr %total19 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %total19, align 4
  %sub61 = sub i32 %nbytes.0, %189
  %190 = tail call i32 @llvm.smax.i32(i32 %sub61, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub61)
  %tobool66.not = icmp slt i32 %sub61, 1
  br i1 %tobool66.not, label %if.end59.if.end78_crit_edge, label %land.lhs.true67

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true67:                                  ; preds = %if.end59
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 44
  %191 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp68.not = icmp ugt i32 %190, %192
  br i1 %cmp68.not, label %land.lhs.true67.if.end78_crit_edge, label %if.then70

land.lhs.true67.if.end78_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then70:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  %buffer71 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %193 = ptrtoint ptr %src54 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %src54, align 4
  %nbytes74 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %195 = ptrtoint ptr %nbytes74 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nbytes74, align 8
  %sub75 = sub i32 %196, %190
  tail call void @scatterwalk_map_and_copy(ptr noundef %buffer71, ptr noundef %194, i32 noundef %sub75, i32 noundef %190, i32 noundef 0) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %land.lhs.true67.if.end78_crit_edge, %if.end59.if.end78_crit_edge
  %storemerge = phi i32 [ %190, %if.then70 ], [ 0, %land.lhs.true67.if.end78_crit_edge ], [ 0, %if.end59.if.end78_crit_edge ]
  %197 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %storemerge, ptr %bufcnt, align 4
  %buflen79 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 44
  %198 = ptrtoint ptr %buflen79 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buflen79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %199)
  %cmp80 = icmp ugt i32 %190, %199
  br i1 %cmp80, label %if.then82, label %if.end78.if.end85_crit_edge

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %__ctx.i, align 4
  %flags84 = getelementptr inbounds %struct.omap_sham_dev, ptr %201, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags84) #12
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge
  %202 = ptrtoint ptr %total19 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %total19, align 4
  %204 = tail call i32 @llvm.umin.i32(i32 %nbytes.0, i32 %203)
  %205 = ptrtoint ptr %total19 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %total19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end7.i.i.i.cleanup_crit_edge, %kmalloc_array.exit.thread.i.i, %do.end.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ 0, %do.end.cleanup_crit_edge ], [ -12, %do.end.i.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_sham_update_req(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags2 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 11
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  %and3 = lshr i32 %5, 11
  %and3.lobit = and i32 %and3, 1
  %6 = xor i32 %and3.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %6, %land.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_update_req.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_update_req, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %12 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %digcnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_update_req.__UNIQUE_ID_ddebug263, ptr noundef %9, ptr noundef nonnull @.str.50, i32 noundef %11, i32 noundef %13, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.end
  %total12 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %total12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total12, align 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and.i = lshr i32 %17, 18
  %18 = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %.not = icmp eq i32 %18, 7
  br i1 %.not, label %do.end.lor.lhs.false_crit_edge, label %switch.hole_check

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %18 to i8
  %switch.shifted = lshr i8 95, %switch.maskindex
  %19 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.lobit.not = icmp eq i8 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lor.lhs.false_crit_edge, label %switch.lookup

switch.hole_check.lor.lhs.false_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_update_req, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %switch.load)
  %cmp = icmp ult i32 %15, %switch.load
  br i1 %cmp, label %switch.lookup.if.then18_crit_edge, label %switch.lookup.lor.lhs.false_crit_edge

switch.lookup.lor.lhs.false_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.lookup.if.then18_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

lor.lhs.false:                                    ; preds = %switch.lookup.lor.lhs.false_crit_edge, %switch.hole_check.lor.lhs.false_crit_edge, %do.end.lor.lhs.false_crit_edge
  %fallback_sz = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 12
  %21 = ptrtoint ptr %fallback_sz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fallback_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %22)
  %cmp16 = icmp ult i32 %15, %22
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %switch.lookup.if.then18_crit_edge
  %or = or i32 %17, 32
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false.if.end20_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and22 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %26 = ptrtoint ptr %total12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total12, align 4
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call fastcc i32 @omap_sham_xmit_cpu(ptr noundef %dd, i32 noundef %27, i32 noundef %7)
  br label %do.body34

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call fastcc i32 @omap_sham_xmit_dma(ptr noundef %dd, i32 noundef %27, i32 noundef %7)
  br label %do.body34

do.body34:                                        ; preds = %if.else, %if.then24
  %err.0 = phi i32 [ %call28, %if.then24 ], [ %call32, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_update_req.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_update_req, %if.then46)) #12
          to label %do.end51 [label %if.then46], !srcloc !211

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %dev47 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %28 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev47, align 4
  %digcnt48 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %30 = ptrtoint ptr %digcnt48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %digcnt48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_update_req.__UNIQUE_ID_ddebug264, ptr noundef %29, ptr noundef nonnull @.str.51, i32 noundef %err.0, i32 noundef %31) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body34
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_sham_xmit_cpu(ptr noundef %dd, i32 noundef %length, i32 noundef %final) unnamed_addr #2 align 64 {
entry:
  %mi = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mi) #12
  %2 = call ptr @memset(ptr %mi, i32 255, i32 44)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_xmit_cpu.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_xmit_cpu, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %5 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %digcnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_xmit_cpu.__UNIQUE_ID_ddebug251, ptr noundef %4, ptr noundef nonnull @.str.53, i32 noundef %6, i32 noundef %length, i32 noundef %final) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %write_ctrl = getelementptr inbounds %struct.omap_sham_pdata, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_ctrl, align 4
  tail call void %10(ptr noundef %dd, i32 noundef %length, i32 noundef %final, i32 noundef 0) #12
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 4
  %trigger = getelementptr inbounds %struct.omap_sham_pdata, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trigger, align 4
  tail call void %14(ptr noundef %dd, i32 noundef %length) #12
  %digcnt5 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %15 = ptrtoint ptr %digcnt5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %digcnt5, align 4
  %add = add i32 %16, %length
  store i32 %add, ptr %digcnt5, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %total, align 4
  %sub = sub i32 %18, %length
  store i32 %sub, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool6.not = icmp eq i32 %final, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %flags9 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags9) #12
  %sub11 = add i32 %length, 3
  %div89 = lshr i32 %sub11, 2
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %20, 18
  %21 = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %.not = icmp eq i32 %21, 7
  br i1 %.not, label %if.end8.get_block_size.exit_crit_edge, label %switch.lookup

if.end8.get_block_size.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_block_size.exit

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_xmit_cpu, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_block_size.exit

get_block_size.exit:                              ; preds = %switch.lookup, %if.end8.get_block_size.exit_crit_edge
  %d.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end8.get_block_size.exit_crit_edge ]
  %sg = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 48
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_len, align 4
  call void @sg_miter_start(ptr noundef nonnull %mi, ptr noundef %24, i32 noundef %26, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub11)
  %tobool14.not105 = icmp ult i32 %sub11, 4
  br i1 %tobool14.not105, label %get_block_size.exit.while.end_crit_edge, label %while.body.lr.ph

get_block_size.exit.while.end_crit_edge:          ; preds = %get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %get_block_size.exit
  %length25 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 1
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %len32.0109 = phi i32 [ %div89, %while.body.lr.ph ], [ %sub45, %for.end.while.body_crit_edge ]
  %mlen.0108 = phi i32 [ 0, %while.body.lr.ph ], [ %mlen.1.lcssa, %for.end.while.body_crit_edge ]
  %buffer.0107 = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph ], [ %buffer.1.lcssa, %for.end.while.body_crit_edge ]
  %offset.0106 = phi i32 [ 0, %while.body.lr.ph ], [ %offset.1.lcssa, %for.end.while.body_crit_edge ]
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 4
  %poll_irq = getelementptr inbounds %struct.omap_sham_pdata, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %poll_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %poll_irq, align 4
  %call16 = call i32 %30(ptr noundef %dd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond.preheader, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %while.body
  %31 = call i32 @llvm.smin.i32(i32 %len32.0109, i32 %d.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2197 = icmp sgt i32 %31, 0
  br i1 %cmp2197, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.0101 = phi i32 [ %inc, %if.end34.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mlen.1100 = phi i32 [ %sub37, %if.end34.for.body_crit_edge ], [ %mlen.0108, %for.cond.preheader.for.body_crit_edge ]
  %buffer.199 = phi ptr [ %buffer.2, %if.end34.for.body_crit_edge ], [ %buffer.0107, %for.cond.preheader.for.body_crit_edge ]
  %offset.198 = phi i32 [ %inc38, %if.end34.for.body_crit_edge ], [ %offset.0106, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mlen.1100)
  %tobool22.not = icmp eq i32 %mlen.1100, 0
  br i1 %tobool22.not, label %if.then23, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then23:                                        ; preds = %for.body
  %call24 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #12
  %32 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not = icmp eq i32 %33, 0
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #15
  br label %cleanup

if.end33:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %for.body.if.end34_crit_edge
  %offset.2 = phi i32 [ %offset.198, %for.body.if.end34_crit_edge ], [ 0, %if.end33 ]
  %buffer.2 = phi ptr [ %buffer.199, %for.body.if.end34_crit_edge ], [ %35, %if.end33 ]
  %mlen.2 = phi i32 [ %mlen.1100, %for.body.if.end34_crit_edge ], [ %33, %if.end33 ]
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 4
  %din_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %din_ofs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %din_ofs, align 4
  %mul = shl i32 %count.0101, 2
  %add36 = add i32 %39, %mul
  %arrayidx = getelementptr i32, ptr %buffer.2, i32 %offset.2
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %add36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #12, !srcloc !216
  %sub37 = add i32 %mlen.2, -4
  %inc = add nuw nsw i32 %count.0101, 1
  %inc38 = add i32 %offset.2, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %offset.1.lcssa = phi i32 [ %offset.0106, %for.cond.preheader.for.end_crit_edge ], [ %inc38, %if.end34.for.end_crit_edge ]
  %buffer.1.lcssa = phi ptr [ %buffer.0107, %for.cond.preheader.for.end_crit_edge ], [ %buffer.2, %if.end34.for.end_crit_edge ]
  %mlen.1.lcssa = phi i32 [ %mlen.0108, %for.cond.preheader.for.end_crit_edge ], [ %sub37, %if.end34.for.end_crit_edge ]
  %sub45 = sub i32 %len32.0109, %31
  %tobool14.not = icmp eq i32 %sub45, 0
  br i1 %tobool14.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %get_block_size.exit.while.end_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %mi) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end30, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -115, %while.end ], [ -110, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mi) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_sham_xmit_dma(ptr noundef %dd, i32 noundef %length, i32 noundef %final) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_xmit_dma.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_xmit_dma, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %4 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digcnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_xmit_dma.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %5, i32 noundef %length, i32 noundef %final) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 48
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call5 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.57) #15
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %14 = call ptr @memset(ptr %cfg, i32 0, i32 48)
  %phys_base = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 1
  %15 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys_base, align 4
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 4
  %din_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %din_ofs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %din_ofs, align 4
  %add13 = add i32 %20, %16
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %21 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add13, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %22 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %dst_addr_width, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %24, 18
  %25 = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %.not = icmp eq i32 %25, 7
  br i1 %.not, label %if.end12.get_block_size.exit_crit_edge, label %switch.lookup

if.end12.get_block_size.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_block_size.exit

switch.lookup:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_xmit_dma, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_block_size.exit

get_block_size.exit:                              ; preds = %switch.lookup, %if.end12.get_block_size.exit_crit_edge
  %d.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end12.get_block_size.exit_crit_edge ]
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %27 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %d.0.i, ptr %dst_maxburst, align 4
  %dma_lch = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 6
  %28 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_lch, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %get_block_size.exit.do.end20_crit_edge, label %dmaengine_slave_config.exit

get_block_size.exit.do.end20_crit_edge:           ; preds = %get_block_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

dmaengine_slave_config.exit:                      ; preds = %get_block_size.exit
  %call.i = call i32 %33(ptr noundef %29, ptr noundef nonnull %cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end23, label %dmaengine_slave_config.exit.do.end20_crit_edge

dmaengine_slave_config.exit.do.end20_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end20:                                         ; preds = %dmaengine_slave_config.exit.do.end20_crit_edge, %get_block_size.exit.do.end20_crit_edge
  %retval.0.i8290 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end20_crit_edge ], [ -38, %get_block_size.exit.do.end20_crit_edge ]
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.55, i32 noundef %retval.0.i8290) #15
  br label %cleanup

if.end23:                                         ; preds = %dmaengine_slave_config.exit
  %34 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_lch, align 4
  %36 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg, align 4
  %38 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_len, align 4
  %tobool.not.i83 = icmp eq ptr %35, null
  br i1 %tobool.not.i83, label %if.end23.do.end32_crit_edge, label %lor.lhs.false.i

if.end23.do.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

lor.lhs.false.i:                                  ; preds = %if.end23
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end32_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end32_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %43, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end32_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end32_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i84 = call ptr %43(ptr noundef nonnull %35, ptr noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 3, ptr noundef null) #12
  %tobool28.not = icmp eq ptr %call.i84, null
  br i1 %tobool28.not, label %dmaengine_prep_slave_sg.exit.do.end32_crit_edge, label %if.end34

dmaengine_prep_slave_sg.exit.do.end32_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

do.end32:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end32_crit_edge, %lor.lhs.false2.i.do.end32_crit_edge, %lor.lhs.false.i.do.end32_crit_edge, %if.end23.do.end32_crit_edge
  %44 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.62) #15
  br label %cleanup

if.end34:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84, i32 0, i32 6
  %46 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @omap_sham_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84, i32 0, i32 8
  %47 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dd, ptr %callback_param, align 4
  %48 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata, align 4
  %write_ctrl = getelementptr inbounds %struct.omap_sham_pdata, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_ctrl, align 4
  call void %51(ptr noundef %dd, i32 noundef %length, i32 noundef %final, i32 noundef 1) #12
  %digcnt36 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %52 = ptrtoint ptr %digcnt36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %digcnt36, align 4
  %add37 = add i32 %53, %length
  store i32 %add37, ptr %digcnt36, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total, align 4
  %sub = sub i32 %55, %length
  store i32 %sub, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool38.not = icmp eq i32 %final, 0
  br i1 %tobool38.not, label %if.end34.if.end40_crit_edge, label %if.then39

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34.if.end40_crit_edge
  %flags41 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %flags41) #12
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84, i32 0, i32 4
  %56 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_submit.i, align 4
  %call.i86 = call i32 %57(ptr noundef nonnull %call.i84) #12
  %58 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_lch, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 50
  %62 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_issue_pending.i, align 4
  call void %63(ptr noundef %59) #12
  %64 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata, align 4
  %trigger = getelementptr inbounds %struct.omap_sham_pdata, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trigger, align 4
  call void %67(ptr noundef %dd, i32 noundef %length) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end32, %do.end20, %do.end10
  %retval.0 = phi i32 [ %retval.0.i8290, %do.end20 ], [ -115, %if.end40 ], [ -22, %do.end32 ], [ -22, %do.end10 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_sham_dev, ptr %param, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #12
  %state.i = getelementptr inbounds %struct.omap_sham_dev, ptr %param, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %done_task = getelementptr inbounds %struct.omap_sham_dev, ptr %param, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_len_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max_qlen = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %max_qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_len_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !210
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_qlen = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %max_qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_qlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fallback_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fallback_sz = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fallback_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fallback_sz, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fallback_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !210
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fallback_sz = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %fallback_sz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fallback_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %size, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_copy_hash_omap4(ptr nocapture noundef %req, i32 noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %entry
  %req2 = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req2, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i, align 16
  %opad5 = getelementptr i8, ptr %7, i32 280
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %digest_size35 = getelementptr inbounds %struct.omap_sham_pdata, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %digest_size35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digest_size35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp37.not = icmp ult i32 %11, 4
  br i1 %cmp37.not, label %if.then.if.end16_crit_edge, label %for.body.lr.ph

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.body.lr.ph:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool7.not = icmp eq i32 %out, 0
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi ptr [ %9, %for.body.lr.ph ], [ %24, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %odigest_ofs12 = getelementptr inbounds %struct.omap_sham_pdata, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %odigest_ofs12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %odigest_ofs12, align 4
  %mul13 = shl i32 %i.038, 2
  %add14 = add i32 %14, %mul13
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !212
  %arrayidx = getelementptr i32, ptr %opad5, i32 %i.038
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx15 = getelementptr i32, ptr %opad5, i32 %i.038
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15, align 4
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %20) #12, !srcloc !216
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then8
  %inc = add nuw nsw i32 %i.038, 1
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 4
  %digest_size = getelementptr inbounds %struct.omap_sham_pdata, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %digest_size, align 4
  %div31 = lshr i32 %26, 2
  %cmp = icmp ult i32 %inc, %div31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end16_crit_edge

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end16:                                         ; preds = %for.inc.if.end16_crit_edge, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %27 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__ctx.i, align 4
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %pdata.i = getelementptr inbounds %struct.omap_sham_dev, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata.i, align 4
  %digest_size23.i = getelementptr inbounds %struct.omap_sham_pdata, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %digest_size23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %digest_size23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp25.not.i = icmp ult i32 %32, 4
  br i1 %cmp25.not.i, label %if.end16.omap_sham_copy_hash_omap2.exit_crit_edge, label %for.body.lr.ph.i

if.end16.omap_sham_copy_hash_omap2.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_copy_hash_omap2.exit

for.body.lr.ph.i:                                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not.i = icmp eq i32 %out, 0
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %28, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %33 = phi ptr [ %30, %for.body.lr.ph.i ], [ %45, %for.inc.i.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %idigest_ofs5.i = getelementptr inbounds %struct.omap_sham_pdata, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %idigest_ofs5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idigest_ofs5.i, align 4
  %mul6.i = shl i32 %i.026.i, 2
  %add7.i = add i32 %35, %mul6.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %37, i32 %add7.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #12, !srcloc !212
  %arrayidx.i = getelementptr i32, ptr %digest.i, i32 %i.026.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8.i = getelementptr i32, ptr %digest.i, i32 %i.026.i
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8.i, align 4
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %43, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %41) #12, !srcloc !216
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %44 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata.i, align 4
  %digest_size.i = getelementptr inbounds %struct.omap_sham_pdata, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %digest_size.i, align 4
  %div20.i = lshr i32 %47, 2
  %cmp.i = icmp ult i32 %inc.i, %div20.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.omap_sham_copy_hash_omap2.exit_crit_edge

for.inc.i.omap_sham_copy_hash_omap2.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_copy_hash_omap2.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

omap_sham_copy_hash_omap2.exit:                   ; preds = %for.inc.i.omap_sham_copy_hash_omap2.exit_crit_edge, %if.end16.omap_sham_copy_hash_omap2.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_write_ctrl_omap4(ptr nocapture noundef readonly %dd, i32 noundef %length, i32 noundef %final, i32 noundef %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 14
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 36
  %2 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end, !prof !217

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags106 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %flags106 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags106, align 4
  %and107 = lshr i32 %5, 18
  %shr108 = and i32 %and107, 7
  br label %if.then6

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %digcnt_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %digcnt_ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %digcnt_ofs, align 4
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #12, !srcloc !216
  %12 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %digcnt, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = lshr i32 %14, 18
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.end.if.then6_crit_edge, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.thread
  %shr113 = phi i32 [ %shr108, %if.end.thread ], [ %shr, %if.end.if.then6_crit_edge ]
  %15 = phi i32 [ %5, %if.end.thread ], [ %14, %if.end.if.then6_crit_edge ]
  %flags111 = phi ptr [ %flags106, %if.end.thread ], [ %flags, %if.end.if.then6_crit_edge ]
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 16
  %or = or i32 %shr113, 8
  %and11 = and i32 %15, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then6.if.end25_crit_edge, label %if.then13

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr113)
  %.not = icmp eq i32 %shr113, 7
  br i1 %.not, label %if.then13.omap_sham_write_n.exit95_crit_edge, label %switch.hole_check

if.then13.omap_sham_write_n.exit95_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_write_n.exit95

switch.hole_check:                                ; preds = %if.then13
  %switch.maskindex = trunc i32 %shr113 to i8
  %switch.shifted = lshr i8 95, %switch.maskindex
  %20 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.lobit.not = icmp eq i8 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.omap_sham_write_n.exit95_crit_edge, label %switch.lookup

switch.hole_check.omap_sham_write_n.exit95_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_write_n.exit95

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_sham_write_ctrl_omap4, i32 0, i32 %shr113
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %div81115 = lshr exact i32 %switch.load, 3
  %pdata16117 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %22 = ptrtoint ptr %pdata16117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata16117, align 4
  %odigest_ofs118 = getelementptr inbounds %struct.omap_sham_pdata, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %odigest_ofs118 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %odigest_ofs118, align 4
  %ipad119 = getelementptr i8, ptr %19, i32 152
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %switch.lookup
  %count.addr.06.i = phi i32 [ %div81115, %switch.lookup ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %value.addr.05.i = phi ptr [ %ipad119, %switch.lookup ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %offset.addr.04.i = phi i32 [ %25, %switch.lookup ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.addr.06.i, -1
  %26 = ptrtoint ptr %value.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.addr.05.i, align 4
  %28 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %29, i32 %offset.addr.04.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 %27) #12, !srcloc !216
  %incdec.ptr.i = getelementptr i32, ptr %value.addr.05.i, i32 1
  %add.i = add i32 %offset.addr.04.i, 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.lr.ph.i85, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.lr.ph.i85:                               ; preds = %for.body.i
  %30 = ptrtoint ptr %pdata16117 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata16117, align 4
  %idigest_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %idigest_ofs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idigest_ofs, align 4
  %add.ptr = getelementptr i32, ptr %ipad119, i32 %div81115
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %for.body.lr.ph.i85
  %count.addr.06.i86 = phi i32 [ %div81115, %for.body.lr.ph.i85 ], [ %dec.i89, %for.body.i94.for.body.i94_crit_edge ]
  %value.addr.05.i87 = phi ptr [ %add.ptr, %for.body.lr.ph.i85 ], [ %incdec.ptr.i91, %for.body.i94.for.body.i94_crit_edge ]
  %offset.addr.04.i88 = phi i32 [ %33, %for.body.lr.ph.i85 ], [ %add.i92, %for.body.i94.for.body.i94_crit_edge ]
  %dec.i89 = add nsw i32 %count.addr.06.i86, -1
  %34 = ptrtoint ptr %value.addr.05.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value.addr.05.i87, align 4
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %37, i32 %offset.addr.04.i88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 %35) #12, !srcloc !216
  %incdec.ptr.i91 = getelementptr i32, ptr %value.addr.05.i87, i32 1
  %add.i92 = add i32 %offset.addr.04.i88, 4
  %tobool.not.i93 = icmp eq i32 %dec.i89, 0
  br i1 %tobool.not.i93, label %for.body.i94.omap_sham_write_n.exit95_crit_edge, label %for.body.i94.for.body.i94_crit_edge

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i94

for.body.i94.omap_sham_write_n.exit95_crit_edge:  ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_write_n.exit95

omap_sham_write_n.exit95:                         ; preds = %for.body.i94.omap_sham_write_n.exit95_crit_edge, %switch.hole_check.omap_sham_write_n.exit95_crit_edge, %if.then13.omap_sham_write_n.exit95_crit_edge
  %d.0.i122142 = phi i32 [ 0, %if.then13.omap_sham_write_n.exit95_crit_edge ], [ 0, %switch.hole_check.omap_sham_write_n.exit95_crit_edge ], [ %switch.load, %for.body.i94.omap_sham_write_n.exit95_crit_edge ]
  %or15126141 = or i32 %shr113, 40
  %38 = ptrtoint ptr %digcnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %digcnt, align 4
  %add23 = add i32 %39, %d.0.i122142
  store i32 %add23, ptr %digcnt, align 4
  br label %if.end25

if.end25:                                         ; preds = %omap_sham_write_n.exit95, %if.then6.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %flags110 = phi ptr [ %flags, %if.end.if.end25_crit_edge ], [ %flags111, %omap_sham_write_n.exit95 ], [ %flags111, %if.then6.if.end25_crit_edge ]
  %val.1 = phi i32 [ %shr, %if.end.if.end25_crit_edge ], [ %or15126141, %omap_sham_write_n.exit95 ], [ %or, %if.then6.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool26.not = icmp eq i32 %final, 0
  br i1 %tobool26.not, label %if.end25.if.end35_crit_edge, label %if.then27

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %flags110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags110, align 4
  %and30 = and i32 %41, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %spec.select.v = select i1 %tobool31.not, i32 16, i32 144
  %spec.select = or i32 %spec.select.v, %val.1
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end25.if.end35_crit_edge
  %val.2 = phi i32 [ %val.1, %if.end25.if.end35_crit_edge ], [ %spec.select, %if.then27 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_sham_write_ctrl_omap4.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_sham_write_ctrl_omap4, %if.then44)) #12
          to label %do.end [label %if.then44], !srcloc !211

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %flags110 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags110, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_sham_write_ctrl_omap4.__UNIQUE_ID_ddebug250, ptr noundef %43, ptr noundef nonnull @.str.81, i32 noundef %val.2, i32 noundef %45) #12
  br label %do.end

do.end:                                           ; preds = %if.then44, %if.end35
  %pdata47 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %46 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata47, align 4
  %mode_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %mode_ofs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode_ofs, align 4
  %io_base.i.i96 = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  %50 = ptrtoint ptr %io_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base.i.i96, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %51, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #12, !srcloc !212
  %and.i98 = and i32 %52, -192
  %or.i = or i32 %and.i98, %val.2
  %53 = ptrtoint ptr %io_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i.i96, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %54, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #12, !srcloc !216
  %55 = ptrtoint ptr %io_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i.i96, align 4
  %add.ptr.i100 = getelementptr i8, ptr %56, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 1) #12, !srcloc !216
  %57 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata47, align 4
  %mask_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %mask_ofs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma)
  %tobool49.not = icmp eq i32 %dma, 0
  %or50 = select i1 %tobool49.not, i32 4, i32 12
  %61 = ptrtoint ptr %io_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base.i.i96, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %62, i32 %60
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i102) #12, !srcloc !212
  %and.i103 = and i32 %63, -13
  %or.i104 = or i32 %and.i103, %or50
  %64 = ptrtoint ptr %io_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base.i.i96, align 4
  %add.ptr.i6.i105 = getelementptr i8, ptr %65, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i105, i32 %or.i104) #12, !srcloc !216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sham_trigger_omap4(ptr nocapture noundef readonly %dd, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 16
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %length_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %length_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_ofs, align 4
  %io_base.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %length) #12, !srcloc !216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_poll_irq_omap4(ptr nocapture noundef readonly %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 100
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dd, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %1 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 280
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !212
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.cond.i.omap_sham_wait.exit_crit_edge

while.cond.i.omap_sham_wait.exit_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_wait.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.omap_sham_wait.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.omap_sham_wait.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_wait.exit

omap_sham_wait.exit:                              ; preds = %while.body.i.omap_sham_wait.exit_crit_edge, %while.cond.i.omap_sham_wait.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %while.body.i.omap_sham_wait.exit_crit_edge ], [ 0, %while.cond.i.omap_sham_wait.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_irq_omap4(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %mask_ofs = getelementptr inbounds %struct.omap_sham_pdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mask_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask_ofs, align 4
  %io_base.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !212
  %and.i = and i32 %6, -5
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %8, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %and.i) #12, !srcloc !216
  %flags.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #12
  %state.i.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.omap_sham_irq_common.exit_crit_edge

entry.omap_sham_irq_common.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %omap_sham_irq_common.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %done_task.i = getelementptr inbounds %struct.omap_sham_dev, ptr %dev_id, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %done_task.i) #12
  br label %omap_sham_irq_common.exit

omap_sham_irq_common.exit:                        ; preds = %if.then.i.i, %entry.omap_sham_irq_common.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_sha224_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.78)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_sha256_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.79)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_sha384_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.82)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sham_cra_sha512_init(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_sham_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.83)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !154, !156, !158, !160, !162, !164, !165, !167, !169, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !193, !195, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_omap_sham__271_2232_omap_sham_driver_init6, !1, !"__initcall__kmod_omap_sham__271_2232_omap_sham_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/omap-sham.c", i32 2232, i32 1}
!2 = !{ptr @__exitcall_omap_sham_driver_exit, !1, !"__exitcall_omap_sham_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/crypto/omap-sham.c", i32 2234, i32 1}
!5 = !{ptr @__UNIQUE_ID_file273, !6, !"__UNIQUE_ID_file273", i1 false, i1 false}
!6 = !{!"../drivers/crypto/omap-sham.c", i32 2235, i32 1}
!7 = !{ptr @__UNIQUE_ID_license274, !6, !"__UNIQUE_ID_license274", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author275, !9, !"__UNIQUE_ID_author275", i1 false, i1 false}
!9 = !{!"../drivers/crypto/omap-sham.c", i32 2236, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias276, !11, !"__UNIQUE_ID_alias276", i1 false, i1 false}
!11 = !{!"../drivers/crypto/omap-sham.c", i32 2237, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/omap-sham.c", i32 2227, i32 11}
!14 = !{ptr @omap_sham_driver, !15, !"omap_sham_driver", i1 false, i1 false}
!15 = !{!"../drivers/crypto/omap-sham.c", i32 2223, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/omap-sham.c", i32 2063, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap_sham_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_sham_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/omap-sham.c", i32 2089, i32 3}
!26 = !{ptr @omap_sham_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap_sham_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/omap-sham.c", i32 2097, i32 38}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/omap-sham.c", i32 2104, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @omap_sham_probe.__UNIQUE_ID_ddebug270, !31, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/omap-sham.c", i32 2119, i32 3}
!36 = !{ptr @omap_sham_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @omap_sham_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/omap-sham.c", i32 2126, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap_sham_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap_sham_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/omap-sham.c", i32 2166, i32 3}
!45 = !{ptr @omap_sham_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap_sham_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/omap-sham.c", i32 2189, i32 2}
!49 = !{ptr @omap_sham_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omap_sham_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/omap-sham.c", i32 1717, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @omap_sham_done_task.__UNIQUE_ID_ddebug268, !52, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/omap-sham.c", i32 1740, i32 2}
!57 = !{ptr @omap_sham_done_task.__UNIQUE_ID_ddebug269, !56, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/omap-sham.c", i32 1128, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @omap_sham_finish.__UNIQUE_ID_ddebug267, !59, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/omap-sham.c", i32 1912, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @omap_sham_get_res_of._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @omap_sham_get_res_of._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/omap-sham.c", i32 1919, i32 3}
!69 = !{ptr @omap_sham_get_res_of._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @omap_sham_get_res_of._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/omap-sham.c", i32 1926, i32 3}
!73 = !{ptr @omap_sham_get_res_of._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @omap_sham_get_res_of._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/omap-sham.c", i32 1956, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @omap_sham_get_res_pdev._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @omap_sham_get_res_pdev._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @omap_sham_pdata_omap2, !81, !"omap_sham_pdata_omap2", i1 false, i1 false}
!81 = !{!"../drivers/crypto/omap-sham.c", i32 1784, i32 37}
!82 = !{ptr @omap_sham_algs_info_omap2, !83, !"omap_sham_algs_info_omap2", i1 false, i1 false}
!83 = !{!"../drivers/crypto/omap-sham.c", i32 1777, i32 35}
!84 = !{ptr @algs_sha1_md5, !85, !"algs_sha1_md5", i1 false, i1 false}
!85 = !{!"../drivers/crypto/omap-sham.c", i32 1426, i32 25}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/omap-sham.c", i32 959, i32 2}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @omap_sham_init.__UNIQUE_ID_ddebug262, !87, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/omap-sham.c", i32 1330, i32 3}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @omap_sham_cra_init_alg._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @omap_sham_cra_init_alg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/omap-sham.c", i32 1344, i32 4}
!97 = !{ptr @omap_sham_cra_init_alg._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @omap_sham_cra_init_alg._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/omap-sham.c", i32 1074, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @omap_sham_hash_one_req.__UNIQUE_ID_ddebug266, !100, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!103 = !{ptr @omap_sham_hash_one_req._entry, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/crypto/omap-sham.c", i32 1079, i32 3}
!105 = !{ptr @omap_sham_hash_one_req._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/omap-sham.c", i32 1018, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @omap_sham_update_req.__UNIQUE_ID_ddebug263, !107, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/omap-sham.c", i32 1031, i32 2}
!112 = !{ptr @omap_sham_update_req.__UNIQUE_ID_ddebug264, !111, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/omap-sham.c", i32 514, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @omap_sham_xmit_cpu.__UNIQUE_ID_ddebug251, !114, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/omap-sham.c", i32 546, i32 6}
!119 = !{ptr @omap_sham_xmit_cpu._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @omap_sham_xmit_cpu._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/crypto/omap-sham.c", i32 580, i32 2}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @omap_sham_xmit_dma.__UNIQUE_ID_ddebug256, !122, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/omap-sham.c", i32 584, i32 3}
!127 = !{ptr @omap_sham_xmit_dma._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @omap_sham_xmit_dma._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/crypto/omap-sham.c", i32 596, i32 3}
!131 = !{ptr @omap_sham_xmit_dma._entry.58, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @omap_sham_xmit_dma._entry_ptr.60, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/omap-sham.c", i32 605, i32 3}
!135 = !{ptr @omap_sham_xmit_dma._entry.61, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @omap_sham_xmit_dma._entry_ptr.63, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/crypto/omap-sham.c", i32 1059, i32 2}
!139 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @omap_sham_final_req.__UNIQUE_ID_ddebug265, !138, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/crypto/omap-sham.c", i32 865, i32 2}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @omap_sham_prepare_request.__UNIQUE_ID_ddebug259, !142, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/omap-sham.c", i32 707, i32 3}
!147 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @omap_sham_copy_sgs._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @omap_sham_copy_sgs._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/omap-sham.c", i32 1366, i32 37}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/omap-sham.c", i32 1381, i32 37}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/omap-sham.c", i32 246, i32 10}
!156 = !{ptr @sham, !157, !"sham", i1 false, i1 false}
!157 = !{!"../drivers/crypto/omap-sham.c", i32 244, i32 29}
!158 = !{ptr @omap_sham_attr_group, !159, !"omap_sham_attr_group", i1 false, i1 false}
!159 = !{!"../drivers/crypto/omap-sham.c", i32 2048, i32 31}
!160 = !{ptr @omap_sham_attrs, !161, !"omap_sham_attrs", i1 false, i1 false}
!161 = !{!"../drivers/crypto/omap-sham.c", i32 2042, i32 26}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/omap-sham.c", i32 2039, i32 8}
!164 = !{ptr @dev_attr_queue_len, !163, !"dev_attr_queue_len", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/omap-sham.c", i32 2011, i32 22}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/crypto/omap-sham.c", i32 2040, i32 8}
!169 = !{ptr @dev_attr_fallback, !168, !"dev_attr_fallback", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/crypto/omap-sham.c", i32 1997, i32 3}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @fallback_store._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @fallback_store._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @omap_sham_of_match, !176, !"omap_sham_of_match", i1 false, i1 false}
!176 = !{!"../drivers/crypto/omap-sham.c", i32 1883, i32 34}
!177 = !{ptr @omap_sham_pdata_omap4, !178, !"omap_sham_pdata_omap4", i1 false, i1 false}
!178 = !{!"../drivers/crypto/omap-sham.c", i32 1818, i32 37}
!179 = !{ptr @omap_sham_algs_info_omap4, !180, !"omap_sham_algs_info_omap4", i1 false, i1 false}
!180 = !{!"../drivers/crypto/omap-sham.c", i32 1807, i32 35}
!181 = !{ptr @algs_sha224_sha256, !182, !"algs_sha224_sha256", i1 false, i1 false}
!182 = !{!"../drivers/crypto/omap-sham.c", i32 1522, i32 25}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/omap-sham.c", i32 1371, i32 37}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/crypto/omap-sham.c", i32 1376, i32 37}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/crypto/omap-sham.c", i32 485, i32 2}
!189 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @omap_sham_write_ctrl_omap4.__UNIQUE_ID_ddebug250, !188, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!191 = !{ptr @omap_sham_pdata_omap5, !192, !"omap_sham_pdata_omap5", i1 false, i1 false}
!192 = !{!"../drivers/crypto/omap-sham.c", i32 1858, i32 37}
!193 = !{ptr @omap_sham_algs_info_omap5, !194, !"omap_sham_algs_info_omap5", i1 false, i1 false}
!194 = !{!"../drivers/crypto/omap-sham.c", i32 1843, i32 35}
!195 = !{ptr @algs_sha384_sha512, !196, !"algs_sha384_sha512", i1 false, i1 false}
!196 = !{!"../drivers/crypto/omap-sham.c", i32 1617, i32 25}
!197 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/crypto/omap-sham.c", i32 1386, i32 37}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/crypto/omap-sham.c", i32 1391, i32 37}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
!211 = !{i64 2148340645, i64 2148340650, i64 2148340663, i64 2148340707, i64 2148340741, i64 2148340762}
!212 = !{i64 4911913}
!213 = !{!"branch_weights", i32 2000, i32 1}
!214 = !{i64 2154103147, i64 2154103639, i64 2154103184, i64 2154103240, i64 2154103274, i64 2154103298, i64 2154103339, i64 2154103360, i64 2154103388, i64 2154103422}
!215 = !{i32 0, i32 33}
!216 = !{i64 4911495}
!217 = !{!"branch_weights", i32 1, i32 2000}
!218 = !{i64 2148526671}
!219 = !{i64 1013271, i64 1013296, i64 1013318, i64 1013334, i64 1013346, i64 1013366, i64 1013390, i64 1013406, i64 1013418}
!220 = !{i64 2148526859}
!221 = !{i64 2154109969, i64 2154110461, i64 2154110006, i64 2154110062, i64 2154110096, i64 2154110120, i64 2154110161, i64 2154110182, i64 2154110210, i64 2154110244}
!222 = !{i64 2154099589, i64 2154100081, i64 2154099626, i64 2154099682, i64 2154099716, i64 2154099740, i64 2154099781, i64 2154099802, i64 2154099830, i64 2154099864}
!223 = !{i64 2154101199, i64 2154101691, i64 2154101236, i64 2154101292, i64 2154101326, i64 2154101350, i64 2154101391, i64 2154101412, i64 2154101440, i64 2154101474}
