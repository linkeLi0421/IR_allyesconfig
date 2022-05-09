; ModuleID = '/llk/IR_all_yes/drivers/crypto/atmel-tdes.c_pt.bc'
source_filename = "../drivers/crypto/atmel-tdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_tdes_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.75, ptr, ptr, ptr, ptr, %union.anon.76, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.75 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
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
%struct.atmel_tdes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.atmel_tdes_dma, ptr, i32, i32, %struct.atmel_tdes_dma, %struct.atmel_tdes_caps, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.atmel_tdes_dma = type { ptr, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.atmel_tdes_caps = type { i8, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_tdes_ctx = type { ptr, i32, [6 x i32], i32, i16 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.des_ctx = type { [32 x i32] }

@__initcall__kmod_atmel_tdes__269_1296_atmel_tdes_driver_init6 = internal global ptr @atmel_tdes_driver_init, section ".initcall6.init", align 4
@atmel_tdes_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_tdes_probe, ptr @atmel_tdes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_tdes_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_tdes_driver_exit = internal global ptr @atmel_tdes_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description270 = internal constant [63 x i8] c"atmel_tdes.description=Atmel DES/TDES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [42 x i8] c"atmel_tdes.file=drivers/crypto/atmel-tdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [26 x i8] c"atmel_tdes.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [57 x i8] c"atmel_tdes.author=Nicolas Royer - Eukr\C3\A9a Electromatique\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel_tdes\00", [21 x i8] zeroinitializer }, align 32
@atmel_tdes_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g46-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_tdes_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tdes_dd->lock\00", [17 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no MEM resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel_tdes_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/crypto/atmel-tdes.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry_ptr = internal global ptr @atmel_tdes_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel-tdes\00", [21 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to request tdes irq.\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry_ptr.10 = internal global ptr @atmel_tdes_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tdes_clk\00", [23 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock initialization failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry_ptr.14 = internal global ptr @atmel_tdes_probe._entry.12, section ".printk_index", align 4
@atmel_tdes_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1233, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"using %s, %s for DMA transfers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry_ptr.18 = internal global ptr @atmel_tdes_probe._entry.15, section ".printk_index", align 4
@atmel_tdes = internal global { %struct.atmel_tdes_drv, [44 x i8] } { %struct.atmel_tdes_drv { %struct.list_head { ptr @atmel_tdes, ptr @atmel_tdes }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1244, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Atmel DES/TDES\0A\00", [16 x i8] zeroinitializer }, align 32
@atmel_tdes_probe._entry_ptr.21 = internal global ptr @atmel_tdes_probe._entry.19, section ".printk_index", align 4
@atmel_tdes_crypt_pdc_stop.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel_tdes_crypt_pdc_stop\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"not all data converted: %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt_dma_stop.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.23, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel_tdes_crypt_dma_stop\00", [38 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt_start.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel_tdes_crypt_start\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma_map_sg() error\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt_start.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atmel_tdes_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1089, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TDES interrupt when no active requests.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_tdes_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_tdes_irq._entry_ptr = internal global ptr @atmel_tdes_irq._entry, section ".printk_index", align 4
@atmel_tdes_hw_version_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 243, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_tdes_hw_version_init\00", [37 x i8] zeroinitializer }, align 32
@atmel_tdes_hw_version_init._entry_ptr = internal global ptr @atmel_tdes_hw_version_init._entry, section ".printk_index", align 4
@atmel_tdes_get_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1141, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unmanaged tdes version, set minimum capabilities\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_tdes_get_cap\00", [45 x i8] zeroinitializer }, align 32
@atmel_tdes_get_cap._entry_ptr = internal global ptr @atmel_tdes_get_cap._entry, section ".printk_index", align 4
@atmel_tdes_buff_init.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_tdes_buff_init\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to alloc pages.\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_tdes_buff_init.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma %zd bytes error\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_tdes_buff_init.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@atmel_tdes_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 779, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no DMA channel available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_tdes_dma_init\00", [44 x i8] zeroinitializer }, align 32
@atmel_tdes_dma_init._entry_ptr = internal global ptr @atmel_tdes_dma_init._entry, section ".printk_index", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_tdes.lock\00", [16 x i8] zeroinitializer }, align 32
@tdes_algs = internal global [10 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_ecb_encrypt, ptr @atmel_tdes_ecb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cbc_encrypt, ptr @atmel_tdes_cbc_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb_encrypt, ptr @atmel_tdes_cfb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb8_encrypt, ptr @atmel_tdes_cfb8_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb8(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb8-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb16_encrypt, ptr @atmel_tdes_cfb16_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 2, i32 0, i32 1, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb16(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb16-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb32_encrypt, ptr @atmel_tdes_cfb32_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 4, i32 0, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb32(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb32-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_ofb_encrypt, ptr @atmel_tdes_ofb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_ecb_encrypt, ptr @atmel_tdes_ecb_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_cbc_encrypt, ptr @atmel_tdes_cbc_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_ofb_encrypt, ptr @atmel_tdes_ofb_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.75 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.76 zeroinitializer, [120 x i8] undef } }], align 128
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel_tdes_crypt\00", [47 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"request size is not exact amount of CFB16 blocks\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.47, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"request size is not exact amount of CFB32 blocks\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_tdes_crypt.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.48, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"request size is not exact amount of DES blocks\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1536, i64 1792]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 143360, i64 208896]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 77824, i64 143360, i64 208896]
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"atmel_tdes_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1287, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1291, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"atmel_tdes_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1147, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1170, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1182, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1196, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1198, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1203, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1205, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1231, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"atmel_tdes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 145, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1244, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 315, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 671, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 513, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1089, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 242, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1140, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 332, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 341, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 326, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 742, i32 50 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 758, i32 51 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 779, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 147, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 691, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 699, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 707, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [31 x i8] c"../drivers/crypto/atmel-tdes.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 715, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_atmel_tdes_driver_exit, ptr @__initcall__kmod_atmel_tdes__269_1296_atmel_tdes_driver_init6, ptr @atmel_tdes_dma_init._entry, ptr @atmel_tdes_dma_init._entry_ptr, ptr @atmel_tdes_driver_exit, ptr @atmel_tdes_get_cap._entry, ptr @atmel_tdes_get_cap._entry_ptr, ptr @atmel_tdes_hw_version_init._entry, ptr @atmel_tdes_hw_version_init._entry_ptr, ptr @atmel_tdes_irq._entry, ptr @atmel_tdes_irq._entry_ptr, ptr @atmel_tdes_probe._entry, ptr @atmel_tdes_probe._entry.12, ptr @atmel_tdes_probe._entry.15, ptr @atmel_tdes_probe._entry.19, ptr @atmel_tdes_probe._entry.8, ptr @atmel_tdes_probe._entry_ptr, ptr @atmel_tdes_probe._entry_ptr.10, ptr @atmel_tdes_probe._entry_ptr.14, ptr @atmel_tdes_probe._entry_ptr.18, ptr @atmel_tdes_probe._entry_ptr.21, ptr @atmel_tdes_driver, ptr @.str, ptr @atmel_tdes_dt_ids, ptr @atmel_tdes_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @atmel_tdes, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_hw_version_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_get_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tdes_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_tdes_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tdes_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_tdes_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 328, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @atmel_tdes_probe.__key, i16 noundef signext 3) #6
  %done_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %call to i32
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @atmel_tdes_done_task, i32 noundef %4) #6
  %queue_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 11
  tail call void @tasklet_init(ptr noundef %queue_task, ptr noundef nonnull @atmel_tdes_queue_task, i32 noundef %4) #6
  %queue = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 9
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 50) #6
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %err_tasklet_kill

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call5, align 4
  %phys_base = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 4
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.err_tasklet_kill_crit_edge, label %if.end16

if.end11.err_tasklet_kill_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tasklet_kill

if.end16:                                         ; preds = %if.end11
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @atmel_tdes_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %err_tasklet_kill

if.end25:                                         ; preds = %if.end16
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #6
  %iclk = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %iclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %iclk, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %10 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %err_tasklet_kill

if.end36:                                         ; preds = %if.end25
  %call38 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call5) #6
  %io_base = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38, ptr %io_base, align 4
  %cmp.i140 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call38 to i32
  br label %err_tasklet_kill

if.end44:                                         ; preds = %if.end36
  %15 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iclk, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end44.err_tasklet_kill_crit_edge

if.end44.err_tasklet_kill_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tasklet_kill

if.end.i.i.i:                                     ; preds = %if.end44
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i, label %atmel_tdes_hw_version_init.exit

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %flags.i.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end48_crit_edge

if.end.i.i.if.end48_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 65536) #6, !srcloc !127
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %22, 8
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %if.end48

atmel_tdes_hw_version_init.exit:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %err_tasklet_kill

if.end48:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end48_crit_edge
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 252
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !128
  %26 = and i32 %25, -15794176
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %hw_version.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 31
  %28 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hw_version.i, align 4
  %29 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef %27) #9
  %31 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  %caps.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 30
  %33 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %caps.i, align 4
  %has_cfb_3keys.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %has_cfb_3keys.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %has_cfb_3keys.i, align 4
  %35 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_version.i, align 4
  %and.i = and i32 %36, 3840
  %37 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.i [
    i32 1792, label %sw.bb.i
    i32 1536, label %if.end48.atmel_tdes_get_cap.exit_crit_edge
  ]

if.end48.atmel_tdes_get_cap.exit_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_get_cap.exit

sw.bb.i:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %caps.i, align 4
  %39 = ptrtoint ptr %has_cfb_3keys.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %has_cfb_3keys.i, align 4
  br label %atmel_tdes_get_cap.exit

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.32) #9
  br label %atmel_tdes_get_cap.exit

atmel_tdes_get_cap.exit:                          ; preds = %do.end.i, %sw.bb.i, %if.end48.atmel_tdes_get_cap.exit_crit_edge
  %call49 = tail call fastcc i32 @atmel_tdes_buff_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %atmel_tdes_get_cap.exit.err_tasklet_kill_crit_edge

atmel_tdes_get_cap.exit.err_tasklet_kill_crit_edge: ; preds = %atmel_tdes_get_cap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tasklet_kill

if.end52:                                         ; preds = %atmel_tdes_get_cap.exit
  %42 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %caps.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool53.not = icmp eq i8 %43, 0
  br i1 %tobool53.not, label %if.end52.if.end65_crit_edge, label %if.then54

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then54:                                        ; preds = %if.end52
  %call55 = tail call fastcc i32 @atmel_tdes_dma_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.end61, label %if.then54.err_buff_cleanup_crit_edge

if.then54.err_buff_cleanup_crit_edge:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_buff_cleanup

do.end61:                                         ; preds = %if.then54
  %dma_lch_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 25
  %44 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_lch_in, align 4
  %dev.i143 = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %dev.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i143, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end.i.i144, label %do.end61.dma_chan_name.exit_crit_edge

do.end61.dma_chan_name.exit_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_chan_name.exit

if.end.i.i144:                                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i144, %do.end61.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %51, %if.end.i.i144 ], [ %49, %do.end61.dma_chan_name.exit_crit_edge ]
  %dma_lch_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 29
  %52 = ptrtoint ptr %dma_lch_out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_lch_out, align 4
  %dev.i145 = getelementptr inbounds %struct.dma_chan, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %dev.i145 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i145, align 4
  %init_name.i.i146 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %init_name.i.i146 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i146, align 8
  %tobool.not.i.i147 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i147, label %if.end.i.i149, label %dma_chan_name.exit.dma_chan_name.exit151_crit_edge

dma_chan_name.exit.dma_chan_name.exit151_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_chan_name.exit151

if.end.i.i149:                                    ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device.i148 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %device.i148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device.i148, align 4
  br label %dma_chan_name.exit151

dma_chan_name.exit151:                            ; preds = %if.end.i.i149, %dma_chan_name.exit.dma_chan_name.exit151_crit_edge
  %retval.0.i.i150 = phi ptr [ %59, %if.end.i.i149 ], [ %57, %dma_chan_name.exit.dma_chan_name.exit151_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i150) #9
  br label %if.end65

if.end65:                                         ; preds = %dma_chan_name.exit151, %if.end52.if.end65_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %60 = load ptr, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %60, ptr noundef nonnull @atmel_tdes) #6
  br i1 %call.i.i, label %if.end.i.i152, label %if.end65.list_add_tail.exit_crit_edge

if.end65.list_add_tail.exit_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i152:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 0, i32 1), align 4
  %61 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @atmel_tdes, ptr %call, align 4
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %prev.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i152, %if.end65.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %call67 = tail call fastcc i32 @atmel_tdes_register_algs()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.end73, label %err_algs

do.end73:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %cleanup

err_algs:                                         ; preds = %list_add_tail.exit
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %call.i.i153 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #6
  br i1 %call.i.i153, label %if.end.i.i154, label %err_algs.list_del.exit_crit_edge

err_algs.list_del.exit_crit_edge:                 ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i154:                                    ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i154, %err_algs.list_del.exit_crit_edge
  %70 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %72 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %caps.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool77.not = icmp eq i8 %73, 0
  br i1 %tobool77.not, label %list_del.exit.err_buff_cleanup_crit_edge, label %if.then78

list_del.exit.err_buff_cleanup_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_buff_cleanup

if.then78:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @atmel_tdes_dma_cleanup(ptr noundef nonnull %call)
  br label %err_buff_cleanup

err_buff_cleanup:                                 ; preds = %if.then78, %list_del.exit.err_buff_cleanup_crit_edge, %if.then54.err_buff_cleanup_crit_edge
  %err.0 = phi i32 [ %call55, %if.then54.err_buff_cleanup_crit_edge ], [ %call67, %if.then78 ], [ %call67, %list_del.exit.err_buff_cleanup_crit_edge ]
  %74 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev3, align 4
  %dma_addr_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 28
  %76 = ptrtoint ptr %dma_addr_out.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_addr_out.i, align 4
  %buflen.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 20
  %78 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buflen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef 2, i32 noundef 0) #6
  %80 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev3, align 4
  %dma_addr_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 24
  %82 = ptrtoint ptr %dma_addr_in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_addr_in.i, align 4
  %84 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buflen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef 1, i32 noundef 0) #6
  %buf_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 26
  %86 = ptrtoint ptr %buf_out.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf_out.i, align 4
  %88 = ptrtoint ptr %87 to i32
  tail call void @free_pages(i32 noundef %88, i32 noundef 0) #6
  %buf_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %call, i32 0, i32 22
  %89 = ptrtoint ptr %buf_in.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf_in.i, align 4
  %91 = ptrtoint ptr %90 to i32
  tail call void @free_pages(i32 noundef %91, i32 noundef 0) #6
  br label %err_tasklet_kill

err_tasklet_kill:                                 ; preds = %err_buff_cleanup, %atmel_tdes_get_cap.exit.err_tasklet_kill_crit_edge, %atmel_tdes_hw_version_init.exit, %if.end44.err_tasklet_kill_crit_edge, %if.then41, %do.end33, %do.end24, %if.end11.err_tasklet_kill_crit_edge, %do.end10
  %err.1 = phi i32 [ %call.i, %do.end24 ], [ %12, %do.end33 ], [ %14, %if.then41 ], [ %call1.i.i.i, %atmel_tdes_hw_version_init.exit ], [ %call49, %atmel_tdes_get_cap.exit.err_tasklet_kill_crit_edge ], [ %err.0, %err_buff_cleanup ], [ -19, %do.end10 ], [ %call12, %if.end11.err_tasklet_kill_crit_edge ], [ %call.i.i.i, %if.end44.err_tasklet_kill_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %done_task) #6
  tail call void @tasklet_kill(ptr noundef %queue_task) #6
  br label %cleanup

cleanup:                                          ; preds = %err_tasklet_kill, %do.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_tasklet_kill ], [ 0, %do.end73 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @tdes_algs) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 1)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 2)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 3)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 4)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 5)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 6)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 7)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 8)) #6
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 9)) #6
  %done_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %done_task) #6
  %queue_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %queue_task) #6
  %caps = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %list_del.exit.if.end3_crit_edge, label %if.then2

list_del.exit.if.end3_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dma_lch_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_lch_in.i, align 4
  tail call void @dma_release_channel(ptr noundef %13) #6
  %dma_lch_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 29
  %14 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_lch_out.i, align 4
  tail call void @dma_release_channel(ptr noundef %15) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %list_del.exit.if.end3_crit_edge
  %dev.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %dma_addr_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %dma_addr_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr_out.i, align 4
  %buflen.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buflen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 2, i32 noundef 0) #6
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %dma_addr_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %dma_addr_in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr_in.i, align 4
  %26 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buflen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 1, i32 noundef 0) #6
  %buf_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %buf_out.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf_out.i, align 4
  %30 = ptrtoint ptr %29 to i32
  tail call void @free_pages(i32 noundef %30, i32 noundef 0) #6
  %buf_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %buf_in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf_in.i, align 4
  %33 = ptrtoint ptr %32 to i32
  tail call void @free_pages(i32 noundef %33, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tdes_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @atmel_tdes_crypt_pdc_stop(ptr noundef %0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @atmel_tdes_crypt_dma_stop(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  %total = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 13
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool3.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then4, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and6 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then4.if.then21_crit_edge, label %if.end19

if.then4.if.then21_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19:                                         ; preds = %if.then4
  %in_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 14
  %7 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_sg, align 4
  %call9 = tail call ptr @sg_next(ptr noundef %8) #6
  %9 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %in_sg, align 4
  %out_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 17
  %10 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_sg, align 4
  %call11 = tail call ptr @sg_next(ptr noundef %11) #6
  %12 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %out_sg, align 4
  %13 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_sg, align 4
  %tobool14.not = icmp eq ptr %14, null
  %tobool16.not = icmp eq ptr %call11, null
  %or.cond46 = select i1 %tobool14.not, i1 true, i1 %tobool16.not
  br i1 %or.cond46, label %if.end19.if.end23_crit_edge, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %if.then4.if.then21_crit_edge
  %call22 = tail call fastcc i32 @atmel_tdes_crypt_start(ptr noundef %0)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %err.2 = phi i32 [ -22, %if.end19.if.end23_crit_edge ], [ %call22, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool24.not = icmp eq i32 %err.2, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end23.if.end27_crit_edge ], [ %err.0, %if.end.if.end27_crit_edge ]
  tail call fastcc void @atmel_tdes_finish_req(ptr noundef %0, i32 noundef %err.3)
  %call28 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tdes_queue_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %call = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !128
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #6, !srcloc !128
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %2) #6, !srcloc !127
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dev_id, i32 0, i32 7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and2 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dev_id, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %done_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dev_id, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %done_task) #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dev_id, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_buff_init(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %0 = inttoptr i32 %call to ptr
  %buf_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 22
  %1 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %buf_in, align 4
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %2 = inttoptr i32 %call1 to ptr
  %buf_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 26
  %3 = ptrtoint ptr %buf_out to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %buf_out, align 4
  %buflen = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 20
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %buflen, align 4
  %5 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_in, align 4
  %tobool.not = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool5.not = icmp eq i32 %call1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_buff_init, %if.then10)) #6
          to label %err_alloc [label %if.then10], !srcloc !130

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_buff_init.__UNIQUE_ID_ddebug255, ptr noundef %8, ptr noundef nonnull @.str.35) #6
  br label %err_alloc

if.end11:                                         ; preds = %entry
  %dev12 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %6) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !131

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef nonnull %6, i32 noundef 4096) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i108 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 24
  %17 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i108, ptr %dma_addr_in, align 4
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %retval.0.i108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i108)
  %cmp.i = icmp eq i32 %retval.0.i108, -1
  br i1 %cmp.i, label %do.body21, label %if.end39

do.body21:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_buff_init, %if.then33)) #6
          to label %err_alloc [label %if.then33], !srcloc !130

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 4
  %22 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buflen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_buff_init.__UNIQUE_ID_ddebug256, ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef %23) #6
  br label %err_alloc

if.end39:                                         ; preds = %dma_map_single_attrs.exit
  %24 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12, align 4
  %26 = ptrtoint ptr %buf_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf_out, align 4
  %28 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buflen, align 4
  %call.i109 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #6
  br i1 %call.i109, label %land.rhs.i111, label %if.end39.i124

land.rhs.i111:                                    ; preds = %if.end39
  %.b1.i110 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i110, label %land.rhs.i111.dma_map_single_attrs.exit126_crit_edge, label %if.then.i115, !prof !131

land.rhs.i111.dma_map_single_attrs.exit126_crit_edge: ; preds = %land.rhs.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit126

if.then.i115:                                     ; preds = %land.rhs.i111
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i112 = tail call ptr @dev_driver_string(ptr noundef %25) #6
  %init_name.i.i113 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i113 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i113, align 8
  %tobool.not.i.i114 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i114, label %if.end.i.i116, label %if.then.i115.dev_name.exit.i118_crit_edge

if.then.i115.dev_name.exit.i118_crit_edge:        ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i118

if.end.i.i116:                                    ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  br label %dev_name.exit.i118

dev_name.exit.i118:                               ; preds = %if.end.i.i116, %if.then.i115.dev_name.exit.i118_crit_edge
  %retval.0.i.i117 = phi ptr [ %33, %if.end.i.i116 ], [ %31, %if.then.i115.dev_name.exit.i118_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i112, ptr noundef %retval.0.i.i117) #6
  br label %dma_map_single_attrs.exit126

if.end39.i124:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %25, ptr noundef %27, i32 noundef %29) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %27 to i32
  %sub.i119 = add i32 %35, 1073741824
  %shr.i120 = lshr i32 %sub.i119, 12
  %add.ptr.i121 = getelementptr %struct.page, ptr %34, i32 %shr.i120
  %and.i122 = and i32 %35, 4095
  %call41.i123 = tail call i32 @dma_map_page_attrs(ptr noundef %25, ptr noundef %add.ptr.i121, i32 noundef %and.i122, i32 noundef %29, i32 noundef 2, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit126

dma_map_single_attrs.exit126:                     ; preds = %if.end39.i124, %dev_name.exit.i118, %land.rhs.i111.dma_map_single_attrs.exit126_crit_edge
  %retval.0.i125 = phi i32 [ %call41.i123, %if.end39.i124 ], [ -1, %dev_name.exit.i118 ], [ -1, %land.rhs.i111.dma_map_single_attrs.exit126_crit_edge ]
  %dma_addr_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 28
  %36 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i125, ptr %dma_addr_out, align 4
  %37 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev12, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %retval.0.i125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i125)
  %cmp.i127 = icmp eq i32 %retval.0.i125, -1
  br i1 %cmp.i127, label %do.body49, label %dma_map_single_attrs.exit126.cleanup_crit_edge

dma_map_single_attrs.exit126.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %dma_map_single_attrs.exit126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_buff_init, %if.then61)) #6
          to label %err_map_out [label %if.then61], !srcloc !130

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev12, align 4
  %41 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buflen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_buff_init.__UNIQUE_ID_ddebug257, ptr noundef %40, ptr noundef nonnull @.str.36, i32 noundef %42) #6
  br label %err_map_out

err_map_out:                                      ; preds = %if.then61, %do.body49
  %43 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev12, align 4
  %45 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_addr_in, align 4
  %47 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buflen, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0) #6
  br label %err_alloc

err_alloc:                                        ; preds = %err_map_out, %if.then33, %do.body21, %if.then10, %do.body
  %49 = ptrtoint ptr %buf_out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf_out, align 4
  %51 = ptrtoint ptr %50 to i32
  tail call void @free_pages(i32 noundef %51, i32 noundef 0) #6
  %52 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf_in, align 4
  %54 = ptrtoint ptr %53 to i32
  tail call void @free_pages(i32 noundef %54, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %dma_map_single_attrs.exit126.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_alloc ], [ 0, %dma_map_single_attrs.exit126.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_dma_init(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.39) #6
  %dma_lch_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25
  %2 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma_lch_in, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %phys_base = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 1
  %3 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_base, align 4
  %add = add i32 %4, 64
  %dst_addr = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 2
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %dst_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 5
  %6 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %src_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 3
  %7 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %src_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 6
  %8 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dst_maxburst, align 4
  %dst_addr_width = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %dst_addr_width, align 4
  %device_fc = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 9
  %10 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %device_fc, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call19 = tail call ptr @dma_request_chan(ptr noundef %12, ptr noundef nonnull @.str.40) #6
  %dma_lch_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29
  %13 = ptrtoint ptr %dma_lch_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %dma_lch_out, align 4
  %cmp.i74 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_lch_in, align 4
  tail call void @dma_release_channel(ptr noundef %15) #6
  br label %do.end

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_base, align 4
  %add30 = add i32 %17, 80
  %src_addr = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 1
  %18 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add30, ptr %src_addr, align 4
  %src_maxburst35 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 5
  %19 = ptrtoint ptr %src_maxburst35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %src_maxburst35, align 4
  %src_addr_width38 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 3
  %20 = ptrtoint ptr %src_addr_width38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %src_addr_width38, align 4
  %dst_maxburst41 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 6
  %21 = ptrtoint ptr %dst_maxburst41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dst_maxburst41, align 4
  %dst_addr_width44 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 4
  %22 = ptrtoint ptr %dst_addr_width44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %dst_addr_width44, align 4
  %device_fc47 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 9
  %23 = ptrtoint ptr %device_fc47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %device_fc47, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then24, %entry.do.end_crit_edge
  %ret.0.in = phi ptr [ %call19, %if.then24 ], [ %call, %entry.do.end_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.41) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end28
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_register_algs() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03
  %cra_priority.i = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03, i32 11, i32 6
  %0 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 300, ptr %cra_priority.i, align 32
  %cra_flags.i = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03, i32 11, i32 2
  %1 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %cra_flags.i, align 16
  %cra_ctxsize.i = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03, i32 11, i32 4
  %2 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 40, ptr %cra_ctxsize.i, align 8
  %cra_module.i = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03, i32 11, i32 15
  %3 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cra_module.i, align 4
  %init.i = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %i.03, i32 3
  %4 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @atmel_tdes_init_tfm, ptr %init.i, align 4
  %call = tail call i32 @crypto_register_skcipher(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03)
  %cmp34.not = icmp eq i32 %i.03, 0
  br i1 %cmp34.not, label %for.cond2.preheader.cleanup_crit_edge, label %for.cond2.preheader.for.body4_crit_edge

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %j.05 = phi i32 [ %inc7, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %j.05
  tail call void @crypto_unregister_skcipher(ptr noundef %arrayidx5) #6
  %inc7 = add nuw nsw i32 %j.05, 1
  %exitcond9.not = icmp eq i32 %inc7, %i.03
  br i1 %exitcond9.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body4.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_tdes_dma_cleanup(ptr nocapture noundef readonly %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_lch_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25
  %0 = ptrtoint ptr %dma_lch_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_lch_in, align 4
  tail call void @dma_release_channel(ptr noundef %1) #6
  %dma_lch_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29
  %2 = ptrtoint ptr %dma_lch_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_lch_out, align 4
  tail call void @dma_release_channel(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_crypt_pdc_stop(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33685504) #6, !srcloc !127
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dev2 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %6 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %in_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %10 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %if.end14

if.else:                                          ; preds = %entry
  %dma_addr_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 28
  %12 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr_out, align 4
  %dma_size = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 21
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %13, i32 noundef %15, i32 noundef 2) #6
  %out_sg3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %out_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 19
  %buf_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 26
  %16 = ptrtoint ptr %buf_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf_out, align 4
  %buflen = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 20
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buflen, align 4
  %20 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not46.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not47.i = icmp eq i32 %21, 0
  %or.cond48.i = or i1 %tobool.not46.i, %tobool1.not47.i
  br i1 %or.cond48.i, label %if.else.atmel_tdes_sg_copy.exit_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.atmel_tdes_sg_copy.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

while.body.i:                                     ; preds = %if.end18.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %buflen.addr.051.i = phi i32 [ %sub9.i, %if.end18.i.while.body.i_crit_edge ], [ %19, %if.else.while.body.i_crit_edge ]
  %off.050.i = phi i32 [ %add.i, %if.end18.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %total.addr.049.i = phi i32 [ %sub11.i, %if.end18.i.while.body.i_crit_edge ], [ %21, %if.else.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %out_sg3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_sg3, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %26 = ptrtoint ptr %out_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_offset, align 4
  %sub.i = sub i32 %25, %27
  %28 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %total.addr.049.i) #6
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %buflen.addr.051.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i, label %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end.i

while.body.i.atmel_tdes_sg_copy.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i31 = getelementptr i8, ptr %17, i32 %off.050.i
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i31, ptr noundef %23, i32 noundef %27, i32 noundef %29, i32 noundef 1) #6
  %add.i = add i32 %29, %off.050.i
  %sub9.i = sub i32 %buflen.addr.051.i, %29
  %30 = ptrtoint ptr %out_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %out_offset, align 4
  %add10.i = add i32 %31, %29
  store i32 %add10.i, ptr %out_offset, align 4
  %sub11.i = sub i32 %total.addr.049.i, %29
  %32 = ptrtoint ptr %out_sg3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %out_sg3, align 4
  %length12.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %35)
  %cmp13.i = icmp eq i32 %add10.i, %35
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  %call.i = tail call ptr @sg_next(ptr noundef %33) #6
  %36 = ptrtoint ptr %out_sg3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %out_sg3, align 4
  %tobool15.not.i = icmp eq ptr %call.i, null
  br i1 %tobool15.not.i, label %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.then16.i

if.then14.i.atmel_tdes_sg_copy.exit_crit_edge:    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %out_offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %out_offset, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %tobool.not.i = icmp eq i32 %sub9.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %tobool1.not.i = icmp eq i32 %sub11.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end18.i.atmel_tdes_sg_copy.exit_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

atmel_tdes_sg_copy.exit:                          ; preds = %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, %if.else.atmel_tdes_sg_copy.exit_crit_edge
  %off.0.lcssa.i = phi i32 [ 0, %if.else.atmel_tdes_sg_copy.exit_crit_edge ], [ %off.050.i, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge ]
  %38 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0.lcssa.i, i32 %39)
  %cmp.not = icmp eq i32 %off.0.lcssa.i, %39
  br i1 %cmp.not, label %atmel_tdes_sg_copy.exit.if.end14_crit_edge, label %if.then6

atmel_tdes_sg_copy.exit.if.end14_crit_edge:       ; preds = %atmel_tdes_sg_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6:                                         ; preds = %atmel_tdes_sg_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt_pdc_stop.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt_pdc_stop, %if.then11)) #6
          to label %if.end14 [label %if.then11], !srcloc !130

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt_pdc_stop.__UNIQUE_ID_ddebug254, ptr noundef %41, ptr noundef nonnull @.str.23, i32 noundef %off.0.lcssa.i) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then6, %atmel_tdes_sg_copy.exit.if.end14_crit_edge, %if.then
  %err.0 = phi i32 [ 0, %if.then ], [ -22, %if.then11 ], [ 0, %atmel_tdes_sg_copy.exit.if.end14_crit_edge ], [ -22, %if.then6 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_crypt_dma_stop(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %dev6 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %out_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %4 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %in_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %8 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %if.end19

if.else:                                          ; preds = %if.then
  %dma_addr_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 28
  %10 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr_out, align 4
  %dma_size = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 21
  %12 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %11, i32 noundef %13, i32 noundef 2) #6
  %out_sg7 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %out_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 19
  %buf_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 26
  %14 = ptrtoint ptr %buf_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_out, align 4
  %buflen = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 20
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buflen, align 4
  %18 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not46.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not47.i = icmp eq i32 %19, 0
  %or.cond48.i = or i1 %tobool.not46.i, %tobool1.not47.i
  br i1 %or.cond48.i, label %if.else.atmel_tdes_sg_copy.exit_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.atmel_tdes_sg_copy.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

while.body.i:                                     ; preds = %if.end18.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %buflen.addr.051.i = phi i32 [ %sub9.i, %if.end18.i.while.body.i_crit_edge ], [ %17, %if.else.while.body.i_crit_edge ]
  %off.050.i = phi i32 [ %add.i, %if.end18.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %total.addr.049.i = phi i32 [ %sub11.i, %if.end18.i.while.body.i_crit_edge ], [ %19, %if.else.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %out_sg7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out_sg7, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i, align 4
  %24 = ptrtoint ptr %out_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out_offset, align 4
  %sub.i = sub i32 %23, %25
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %total.addr.049.i) #6
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %buflen.addr.051.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp eq i32 %27, 0
  br i1 %tobool8.not.i, label %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end.i

while.body.i.atmel_tdes_sg_copy.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 %off.050.i
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i, ptr noundef %21, i32 noundef %25, i32 noundef %27, i32 noundef 1) #6
  %add.i = add i32 %27, %off.050.i
  %sub9.i = sub i32 %buflen.addr.051.i, %27
  %28 = ptrtoint ptr %out_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_offset, align 4
  %add10.i = add i32 %29, %27
  store i32 %add10.i, ptr %out_offset, align 4
  %sub11.i = sub i32 %total.addr.049.i, %27
  %30 = ptrtoint ptr %out_sg7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_sg7, align 4
  %length12.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %33)
  %cmp13.i = icmp eq i32 %add10.i, %33
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  %call.i = tail call ptr @sg_next(ptr noundef %31) #6
  %34 = ptrtoint ptr %out_sg7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %out_sg7, align 4
  %tobool15.not.i = icmp eq ptr %call.i, null
  br i1 %tobool15.not.i, label %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.then16.i

if.then14.i.atmel_tdes_sg_copy.exit_crit_edge:    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %out_offset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %out_offset, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %tobool.not.i = icmp eq i32 %sub9.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %tobool1.not.i = icmp eq i32 %sub11.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end18.i.atmel_tdes_sg_copy.exit_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

atmel_tdes_sg_copy.exit:                          ; preds = %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, %if.else.atmel_tdes_sg_copy.exit_crit_edge
  %off.0.lcssa.i = phi i32 [ 0, %if.else.atmel_tdes_sg_copy.exit_crit_edge ], [ %off.050.i, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge ]
  %36 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0.lcssa.i, i32 %37)
  %cmp.not = icmp eq i32 %off.0.lcssa.i, %37
  br i1 %cmp.not, label %atmel_tdes_sg_copy.exit.if.end19_crit_edge, label %if.then10

atmel_tdes_sg_copy.exit.if.end19_crit_edge:       ; preds = %atmel_tdes_sg_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then10:                                        ; preds = %atmel_tdes_sg_copy.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt_dma_stop.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt_dma_stop, %if.then15)) #6
          to label %if.end19 [label %if.then15], !srcloc !130

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt_dma_stop.__UNIQUE_ID_ddebug264, ptr noundef %39, ptr noundef nonnull @.str.23, i32 noundef %off.0.lcssa.i) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then10, %atmel_tdes_sg_copy.exit.if.end19_crit_edge, %if.then4, %entry.if.end19_crit_edge
  %err.0 = phi i32 [ 0, %if.then4 ], [ -22, %if.then15 ], [ 0, %atmel_tdes_sg_copy.exit.if.end19_crit_edge ], [ -22, %entry.if.end19_crit_edge ], [ -22, %if.then10 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_crypt_start(ptr noundef %dd) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca [2 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %in_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 16
  %0 = ptrtoint ptr %in_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %out_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 19
  %2 = ptrtoint ptr %out_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %in_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %4 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_sg, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %if.then.land.end_crit_edge

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %ctx = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 3
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %block_size = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %block_size, align 4
  %conv = zext i16 %13 to i32
  %sub = add nsw i32 %conv, -1
  %and3 = and i32 %sub, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.land.end_crit_edge
  %14 = phi i1 [ false, %if.then.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  %out_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %15 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out_sg, align 4
  %offset6 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset6, align 4
  %and7 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %land.end20, label %land.end.if.else_crit_edge

land.end.if.else_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.end20:                                       ; preds = %land.end
  %length12 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length12, align 4
  %ctx13 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 3
  %21 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx13, align 4
  %block_size14 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %block_size14 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %block_size14, align 4
  %conv15 = zext i16 %24 to i32
  %sub16 = add nsw i32 %conv15, -1
  %and17 = and i32 %sub16, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp ne i32 %and17, 0
  %not. = xor i1 %14, true
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length, align 4
  %dma_length29 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp30.not = icmp ne i32 %26, %28
  %29 = select i1 %cmp30.not, i1 true, i1 %not.
  %or.cond = select i1 %29, i1 true, i1 %cmp18
  br i1 %or.cond, label %land.end20.if.else_crit_edge, label %if.then35

land.end20.if.else_crit_edge:                     ; preds = %land.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then35:                                        ; preds = %land.end20
  %total = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 13
  %30 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total, align 4
  %32 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in_sg, align 4
  %dma_length37 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %dma_length37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_length37, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %31, i32 %35)
  %37 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_sg, align 4
  %dma_length41 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %dma_length41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_length41, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %36, i32 %40)
  %dev = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %43, ptr noundef %33, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool50.not = icmp eq i32 %call, 0
  br i1 %tobool50.not, label %do.body, label %if.end60

do.body:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt_start, %if.then57)) #6
          to label %cleanup [label %if.then57], !srcloc !130

if.then57:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug262, ptr noundef %45, ptr noundef nonnull @.str.26) #6
  br label %cleanup

if.end60:                                         ; preds = %if.then35
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %out_sg, align 4
  %call63 = tail call i32 @dma_map_sg_attrs(ptr noundef %47, ptr noundef %49, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body66, label %if.end85

do.body66:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt_start, %if.then78)) #6
          to label %do.end82 [label %if.then78], !srcloc !130

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug263, ptr noundef %51, ptr noundef nonnull @.str.26) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body66
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %53, ptr noundef %55, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %cleanup

if.end85:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %in_sg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %in_sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_address, align 4
  %60 = ptrtoint ptr %out_sg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %out_sg, align 4
  %dma_address88 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dma_address88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address88, align 4
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %or = or i32 %65, 16
  store i32 %or, ptr %flags, align 4
  br label %if.end95

if.else:                                          ; preds = %land.end20.if.else_crit_edge, %land.end.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %in_sg89 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %buf_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 22
  %66 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf_in, align 4
  %buflen = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 20
  %68 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buflen, align 4
  %total91 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 13
  %70 = ptrtoint ptr %total91 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %total91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not46.i = icmp eq i32 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool1.not47.i = icmp eq i32 %71, 0
  %or.cond48.i = or i1 %tobool.not46.i, %tobool1.not47.i
  br i1 %or.cond48.i, label %if.else.atmel_tdes_sg_copy.exit_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.atmel_tdes_sg_copy.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

while.body.i:                                     ; preds = %if.end18.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %buflen.addr.051.i = phi i32 [ %sub9.i, %if.end18.i.while.body.i_crit_edge ], [ %69, %if.else.while.body.i_crit_edge ]
  %off.050.i = phi i32 [ %add.i, %if.end18.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %total.addr.049.i = phi i32 [ %sub11.i, %if.end18.i.while.body.i_crit_edge ], [ %71, %if.else.while.body.i_crit_edge ]
  %72 = ptrtoint ptr %in_sg89 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %in_sg89, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.i, align 4
  %76 = ptrtoint ptr %in_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %in_offset, align 4
  %sub.i = sub i32 %75, %77
  %78 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %total.addr.049.i) #6
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 %buflen.addr.051.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool8.not.i = icmp eq i32 %79, 0
  br i1 %tobool8.not.i, label %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end.i

while.body.i.atmel_tdes_sg_copy.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %67, i32 %off.050.i
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr.i, ptr noundef %73, i32 noundef %77, i32 noundef %79, i32 noundef 0) #6
  %add.i = add i32 %79, %off.050.i
  %sub9.i = sub i32 %buflen.addr.051.i, %79
  %80 = ptrtoint ptr %in_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %in_offset, align 4
  %add10.i = add i32 %81, %79
  store i32 %add10.i, ptr %in_offset, align 4
  %sub11.i = sub i32 %total.addr.049.i, %79
  %82 = ptrtoint ptr %in_sg89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %in_sg89, align 4
  %length12.i = getelementptr inbounds %struct.scatterlist, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %85)
  %cmp13.i = icmp eq i32 %add10.i, %85
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  %call.i = tail call ptr @sg_next(ptr noundef %83) #6
  %86 = ptrtoint ptr %in_sg89 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %in_sg89, align 4
  %tobool15.not.i = icmp eq ptr %call.i, null
  br i1 %tobool15.not.i, label %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.then16.i

if.then14.i.atmel_tdes_sg_copy.exit_crit_edge:    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %in_offset to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %in_offset, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %tobool.not.i = icmp eq i32 %sub9.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %tobool1.not.i = icmp eq i32 %sub11.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end18.i.atmel_tdes_sg_copy.exit_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_sg_copy.exit

atmel_tdes_sg_copy.exit:                          ; preds = %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge, %if.else.atmel_tdes_sg_copy.exit_crit_edge
  %off.0.lcssa.i = phi i32 [ 0, %if.else.atmel_tdes_sg_copy.exit_crit_edge ], [ %off.050.i, %while.body.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.end18.i.atmel_tdes_sg_copy.exit_crit_edge ], [ %add.i, %if.then14.i.atmel_tdes_sg_copy.exit_crit_edge ]
  %dma_addr_in = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 24
  %88 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_addr_in, align 4
  %dma_addr_out = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 28
  %90 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_addr_out, align 4
  %flags93 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %92 = ptrtoint ptr %flags93 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags93, align 4
  %and94 = and i32 %93, -17
  store i32 %and94, ptr %flags93, align 4
  br label %if.end95

if.end95:                                         ; preds = %atmel_tdes_sg_copy.exit, %if.end85
  %addr_in.0 = phi i32 [ %59, %if.end85 ], [ %89, %atmel_tdes_sg_copy.exit ]
  %addr_out.0 = phi i32 [ %63, %if.end85 ], [ %91, %atmel_tdes_sg_copy.exit ]
  %count.0 = phi i32 [ %41, %if.end85 ], [ %off.0.lcssa.i, %atmel_tdes_sg_copy.exit ]
  %total96 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 13
  %94 = ptrtoint ptr %total96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %total96, align 4
  %sub97 = sub i32 %95, %count.0
  store i32 %sub97, ptr %total96, align 4
  %caps = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 30
  %96 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %caps, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool98.not = icmp eq i8 %97, 0
  %req.i182 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 12
  %98 = ptrtoint ptr %req.i182 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %req.i182, align 4
  %__ctx.i.i183 = getelementptr inbounds %struct.skcipher_request, ptr %99, i32 0, i32 6
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %if.end95
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg.i) #6
  %100 = call ptr @memset(ptr %sg.i, i32 255, i32 40)
  %dma_size.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 21
  %101 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %count.0, ptr %dma_size.i, align 4
  %flags.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i179 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i179, label %if.then.i, label %if.then99.if.end.i180_crit_edge

if.then99.if.end.i180_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i180

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %105, i32 noundef %addr_in.0, i32 noundef %count.0, i32 noundef 1) #6
  br label %if.end.i180

if.end.i180:                                      ; preds = %if.then.i, %if.then99.if.end.i180_crit_edge
  %106 = ptrtoint ptr %__ctx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %__ctx.i.i183, align 4
  %and1.i = and i32 %107, 208896
  call void @__sanitizer_cov_trace_const_cmp4(i32 143360, i32 %and1.i)
  %switch.selectcmp.i = icmp eq i32 %and1.i, 143360
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 208896, i32 %and1.i)
  %switch.selectcmp69.i = icmp eq i32 %and1.i, 208896
  %switch.select70.i = select i1 %switch.selectcmp69.i, i32 1, i32 %switch.select.i
  %dma_lch_in.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25
  %dst_addr_width.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1, i32 4
  %108 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %switch.select70.i, ptr %dst_addr_width.i, align 4
  %dma_lch_out.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29
  %dma_conf3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1
  %src_addr_width.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 29, i32 1, i32 3
  %109 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %switch.select70.i, ptr %src_addr_width.i, align 4
  %110 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dma_lch_in.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i.i, label %if.end.i180.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.end.i180.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  %dma_conf.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 25, i32 1
  %call.i.i = tail call i32 %115(ptr noundef %111, ptr noundef %dma_conf.i) #6
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.end.i180.dmaengine_slave_config.exit.i_crit_edge
  %116 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_lch_out.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %device_config.i71.i = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 44
  %120 = ptrtoint ptr %device_config.i71.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_config.i71.i, align 4
  %tobool.not.i72.i = icmp eq ptr %121, null
  br i1 %tobool.not.i72.i, label %dmaengine_slave_config.exit.i.dmaengine_slave_config.exit75.i_crit_edge, label %if.then.i74.i

dmaengine_slave_config.exit.i.dmaengine_slave_config.exit75.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit75.i

if.then.i74.i:                                    ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i73.i = tail call i32 %121(ptr noundef %117, ptr noundef %dma_conf3.i) #6
  br label %dmaengine_slave_config.exit75.i

dmaengine_slave_config.exit75.i:                  ; preds = %if.then.i74.i, %dmaengine_slave_config.exit.i.dmaengine_slave_config.exit75.i_crit_edge
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %123, 64
  store i32 %or.i, ptr %flags.i, align 4
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #6
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %124 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %addr_in.0, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %125 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %count.0, ptr %dma_length.i, align 4
  %arrayidx16.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg.i, i32 0, i32 1
  call void @sg_init_table(ptr noundef %arrayidx16.i, i32 noundef 1) #6
  %dma_address18.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg.i, i32 0, i32 1, i32 3
  %126 = ptrtoint ptr %dma_address18.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %addr_out.0, ptr %dma_address18.i, align 4
  %dma_length20.i = getelementptr inbounds [2 x %struct.scatterlist], ptr %sg.i, i32 0, i32 1, i32 4
  %127 = ptrtoint ptr %dma_length20.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %count.0, ptr %dma_length20.i, align 4
  %128 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_lch_in.i, align 4
  %tobool.not.i76.i = icmp eq ptr %129, null
  br i1 %tobool.not.i76.i, label %dmaengine_slave_config.exit75.i.land.lhs.true105_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit75.i.land.lhs.true105_crit_edge: ; preds = %dmaengine_slave_config.exit75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit75.i
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %tobool1.not.i.i = icmp eq ptr %131, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.land.lhs.true105_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.land.lhs.true105_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 39
  %132 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %133, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.land.lhs.true105_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.land.lhs.true105_crit_edge:    ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i77.i = call ptr %133(ptr noundef nonnull %129, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #6
  %tobool25.not.i = icmp eq ptr %call.i77.i, null
  br i1 %tobool25.not.i, label %dmaengine_prep_slave_sg.exit.i.land.lhs.true105_crit_edge, label %if.end27.i

dmaengine_prep_slave_sg.exit.i.land.lhs.true105_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

if.end27.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  %134 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dma_lch_out.i, align 4
  %tobool.not.i78.i = icmp eq ptr %135, null
  br i1 %tobool.not.i78.i, label %if.end27.i.land.lhs.true105_crit_edge, label %lor.lhs.false.i80.i

if.end27.i.land.lhs.true105_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

lor.lhs.false.i80.i:                              ; preds = %if.end27.i
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %tobool1.not.i79.i = icmp eq ptr %137, null
  br i1 %tobool1.not.i79.i, label %lor.lhs.false.i80.i.land.lhs.true105_crit_edge, label %lor.lhs.false2.i83.i

lor.lhs.false.i80.i.land.lhs.true105_crit_edge:   ; preds = %lor.lhs.false.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

lor.lhs.false2.i83.i:                             ; preds = %lor.lhs.false.i80.i
  %device_prep_slave_sg.i81.i = getelementptr inbounds %struct.dma_device, ptr %137, i32 0, i32 39
  %138 = ptrtoint ptr %device_prep_slave_sg.i81.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %device_prep_slave_sg.i81.i, align 4
  %tobool4.not.i82.i = icmp eq ptr %139, null
  br i1 %tobool4.not.i82.i, label %lor.lhs.false2.i83.i.land.lhs.true105_crit_edge, label %dmaengine_prep_slave_sg.exit87.i

lor.lhs.false2.i83.i.land.lhs.true105_crit_edge:  ; preds = %lor.lhs.false2.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

dmaengine_prep_slave_sg.exit87.i:                 ; preds = %lor.lhs.false2.i83.i
  %call.i84.i = call ptr %139(ptr noundef nonnull %135, ptr noundef %arrayidx16.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #6
  %tobool32.not.i = icmp eq ptr %call.i84.i, null
  br i1 %tobool32.not.i, label %dmaengine_prep_slave_sg.exit87.i.land.lhs.true105_crit_edge, label %if.end103

dmaengine_prep_slave_sg.exit87.i.land.lhs.true105_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true105

if.else101:                                       ; preds = %if.end95
  %dma_size.i184 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 21
  %140 = ptrtoint ptr %dma_size.i184 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %count.0, ptr %dma_size.i184, align 4
  %flags.i185 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %141 = ptrtoint ptr %flags.i185 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags.i185, align 4
  %and.i186 = and i32 %142, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %tobool.not.i187, label %if.then.i189, label %if.else101.if.end.i191_crit_edge

if.else101.if.end.i191_crit_edge:                 ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i191

if.then.i189:                                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i188 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %143 = ptrtoint ptr %dev.i188 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i188, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %144, i32 noundef %addr_in.0, i32 noundef %count.0, i32 noundef 1) #6
  br label %if.end.i191

if.end.i191:                                      ; preds = %if.then.i189, %if.else101.if.end.i191_crit_edge
  %145 = ptrtoint ptr %__ctx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %__ctx.i.i183, align 4
  %and1.i190 = and i32 %146, 208896
  %147 = zext i32 %and1.i190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and1.i190, label %sw.default.i [
    i32 208896, label %if.end.i191.if.end103.thread_crit_edge
    i32 143360, label %sw.bb2.i
  ]

if.end.i191.if.end103.thread_crit_edge:           ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.thread

sw.bb2.i:                                         ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  %sub4.i = add i32 %count.0, 1
  %div51.i = lshr i32 %sub4.i, 1
  br label %if.end103.thread

sw.default.i:                                     ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  %sub7.i = add i32 %count.0, 3
  %div82.i = lshr i32 %sub7.i, 2
  br label %if.end103.thread

if.end103.thread:                                 ; preds = %sw.default.i, %sw.bb2.i, %if.end.i191.if.end103.thread_crit_edge
  %len32.0.i = phi i32 [ %div82.i, %sw.default.i ], [ %div51.i, %sw.bb2.i ], [ %count.0, %if.end.i191.if.end103.thread_crit_edge ]
  %io_base.i.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 2
  %148 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %149, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33685504) #6, !srcloc !127
  %150 = tail call i32 @llvm.bswap.i32(i32 %addr_in.0) #6
  %151 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %152, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %150) #6, !srcloc !127
  %153 = tail call i32 @llvm.bswap.i32(i32 %len32.0.i) #6
  %154 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %155, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %153) #6, !srcloc !127
  %156 = tail call i32 @llvm.bswap.i32(i32 %addr_out.0) #6
  %157 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %158, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %156) #6, !srcloc !127
  %159 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %160, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %153) #6, !srcloc !127
  %161 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %162, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 33554432) #6, !srcloc !127
  %163 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %164, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 16842752) #6, !srcloc !127
  br label %cleanup

if.end103:                                        ; preds = %dmaengine_prep_slave_sg.exit87.i
  call void @__sanitizer_cov_trace_pc() #8
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i, i32 0, i32 6
  %165 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @atmel_tdes_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i, i32 0, i32 8
  %166 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %dd, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i, i32 0, i32 4
  %167 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i88.i = call i32 %168(ptr noundef nonnull %call.i84.i) #6
  %169 = ptrtoint ptr %dma_lch_out.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dma_lch_out.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 50
  %173 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %174(ptr noundef %170) #6
  %tx_submit.i89.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i77.i, i32 0, i32 4
  %175 = ptrtoint ptr %tx_submit.i89.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_submit.i89.i, align 4
  %call.i90.i = call i32 %176(ptr noundef nonnull %call.i77.i) #6
  %177 = ptrtoint ptr %dma_lch_in.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dma_lch_in.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %device_issue_pending.i91.i = getelementptr inbounds %struct.dma_device, ptr %180, i32 0, i32 50
  %181 = ptrtoint ptr %device_issue_pending.i91.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %device_issue_pending.i91.i, align 4
  call void %182(ptr noundef %178) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg.i) #6
  br label %cleanup

land.lhs.true105:                                 ; preds = %dmaengine_prep_slave_sg.exit87.i.land.lhs.true105_crit_edge, %lor.lhs.false2.i83.i.land.lhs.true105_crit_edge, %lor.lhs.false.i80.i.land.lhs.true105_crit_edge, %if.end27.i.land.lhs.true105_crit_edge, %dmaengine_prep_slave_sg.exit.i.land.lhs.true105_crit_edge, %lor.lhs.false2.i.i.land.lhs.true105_crit_edge, %lor.lhs.false.i.i.land.lhs.true105_crit_edge, %dmaengine_slave_config.exit75.i.land.lhs.true105_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg.i) #6
  %183 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flags.i, align 4
  %and107 = and i32 %184, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %land.lhs.true105.cleanup_crit_edge, label %if.then109

land.lhs.true105.cleanup_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then109:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #8
  %dev110 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 4
  %185 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev110, align 4
  %in_sg111 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %187 = ptrtoint ptr %in_sg111 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %in_sg111, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %186, ptr noundef %188, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %189 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev110, align 4
  %out_sg113 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %191 = ptrtoint ptr %out_sg113 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %out_sg113, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %190, ptr noundef %192, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %land.lhs.true105.cleanup_crit_edge, %if.end103, %if.end103.thread, %do.end82, %if.then57, %do.body
  %retval.0 = phi i32 [ -22, %do.end82 ], [ -22, %if.then57 ], [ -22, %if.then109 ], [ -22, %land.lhs.true105.cleanup_crit_edge ], [ 0, %if.end103 ], [ -22, %do.body ], [ 0, %if.end103.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_tdes_finish_req(ptr nocapture noundef %dd, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 12
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %iclk = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 5
  %2 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %flags = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -33
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 4
  %and2 = and i32 %7, 208896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req1, align 4
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %11, i32 12
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %13, i32 -100
  %14 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ivsize.i.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i = icmp ult i32 %17, %15
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__ctx.i.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst.i, align 4
  %sub.i = sub i32 %17, %15
  tail call void @scatterwalk_map_and_copy(ptr noundef %21, ptr noundef %23, i32 noundef %sub.i, i32 noundef %15, i32 noundef 0) #6
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 2
  %24 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src.i, align 8
  %dst6.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 3
  %26 = ptrtoint ptr %dst6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst6.i, align 4
  %cmp7.i = icmp eq ptr %25, %27
  %iv9.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 1
  %28 = ptrtoint ptr %iv9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iv9.i, align 4
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 1, i32 1
  %30 = call ptr @memcpy(ptr %29, ptr %lastc.i, i32 %15)
  br label %if.end

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub14.i = sub i32 %17, %15
  tail call void @scatterwalk_map_and_copy(ptr noundef %29, ptr noundef %25, i32 noundef %sub14.i, i32 noundef %15, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else10.i, %if.then8.i, %if.then4.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete, align 8
  tail call void %32(ptr noundef %base, i32 noundef %err) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_handle_queue(ptr noundef %dd, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %queue = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 9
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call5 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %flags6 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 7
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %queue11 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 9
  %backlog.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %queue11
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call14 = tail call ptr @crypto_dequeue_request(ptr noundef %queue11) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then21.critedge, label %if.then16

if.then16:                                        ; preds = %if.end10
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %or = or i32 %5, 32
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %if.then16.if.end25_crit_edge, label %if.then24

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  tail call void %7(ptr noundef nonnull %spec.select.i, i32 noundef -115) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call14, i32 -16
  %req27 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 12
  %8 = ptrtoint ptr %req27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %req27, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 128
  %total = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 13
  %11 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %total, align 4
  %in_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 16
  %12 = ptrtoint ptr %in_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %in_offset, align 4
  %src = getelementptr i8, ptr %call14, i32 -8
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 8
  %in_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 14
  %15 = ptrtoint ptr %in_sg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %in_sg, align 4
  %out_offset = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 19
  %16 = ptrtoint ptr %out_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %out_offset, align 4
  %dst = getelementptr i8, ptr %call14, i32 -4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %out_sg = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 17
  %19 = ptrtoint ptr %out_sg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %out_sg, align 4
  %__ctx.i = getelementptr i8, ptr %call14, i32 112
  %tfm.i = getelementptr i8, ptr %call14, i32 16
  %20 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %21, i32 128
  %22 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %__ctx.i, align 4
  %and31 = and i32 %23, 208897
  store i32 %and31, ptr %__ctx.i, align 4
  %24 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags6, align 4
  %and33 = and i32 %25, -208898
  %or35 = or i32 %and33, %and31
  store i32 %or35, ptr %flags6, align 4
  %ctx37 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 3
  %26 = ptrtoint ptr %ctx37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %__crt_ctx.i.i, ptr %ctx37, align 4
  %iclk.i.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 5
  %27 = ptrtoint ptr %iclk.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iclk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end25.if.then44_crit_edge

if.end25.if.then44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.end.i.i.i:                                     ; preds = %if.end25
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %28) #6
  br label %if.then44

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %29 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags6, align 4
  %and.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 2
  %31 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 65536) #6, !srcloc !127
  %33 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags6, align 4
  %or.i.i = or i32 %34, 8
  store i32 %or.i.i, ptr %flags6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end.i_crit_edge
  %caps.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 30
  %35 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %caps.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not.i = icmp eq i8 %36, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %io_base.i.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 2
  %37 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %38, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89, i32 33685504) #6, !srcloc !127
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %39 = ptrtoint ptr %ctx37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx37, align 4
  %keylen.i = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp.i90 = icmp sgt i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp8.i = icmp sgt i32 %42, 8
  %..i = select i1 %cmp8.i, i32 530, i32 512
  %valmr.0.i = select i1 %cmp.i90, i32 514, i32 %..i
  %43 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags6, align 4
  %and.i = and i32 %44, 208897
  %or16.i = or i32 %valmr.0.i, %and.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #6
  %io_base.i49.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 2
  %46 = ptrtoint ptr %io_base.i49.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i49.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %45) #6, !srcloc !127
  %48 = ptrtoint ptr %ctx37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx37, align 4
  %keylen19.i = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %keylen19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %keylen19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %tobool.not3.i.i = icmp ult i32 %51, 4
  br i1 %tobool.not3.i.i, label %if.end3.i.atmel_tdes_write_n.exit.i_crit_edge, label %for.body.i.preheader.i

if.end3.i.atmel_tdes_write_n.exit.i_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_write_n.exit.i

for.body.i.preheader.i:                           ; preds = %if.end3.i
  %shr.i = ashr i32 %51, 2
  %key.i = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %49, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %52 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.addr.05.i.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  %55 = ptrtoint ptr %io_base.i49.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i49.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %54) #6, !srcloc !127
  %incdec.ptr.i.i = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_tdes_write_n.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.atmel_tdes_write_n.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_write_n.exit.i

atmel_tdes_write_n.exit.i:                        ; preds = %for.body.i.i.atmel_tdes_write_n.exit.i_crit_edge, %if.end3.i.atmel_tdes_write_n.exit.i_crit_edge
  %57 = ptrtoint ptr %req27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req27, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iv.i, align 4
  %tobool20.not.i = icmp eq ptr %60, null
  %and21.i = and i32 %44, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.not.i = icmp eq i32 %and21.i, 0
  %or.cond.i = select i1 %tobool20.not.i, i1 true, i1 %cmp22.not.i
  br i1 %or.cond.i, label %atmel_tdes_write_n.exit.i.if.end42_crit_edge, label %for.body.i62.preheader.i

atmel_tdes_write_n.exit.i.if.end42_crit_edge:     ; preds = %atmel_tdes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.body.i62.preheader.i:                         ; preds = %atmel_tdes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %64 = ptrtoint ptr %io_base.i49.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base.i49.i, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %65, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58.i, i32 %63) #6, !srcloc !127
  %incdec.ptr.i59.i = getelementptr i32, ptr %60, i32 1
  %66 = ptrtoint ptr %incdec.ptr.i59.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.i59.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %69 = ptrtoint ptr %io_base.i49.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base.i49.i, align 4
  %add.ptr.i.i58.1.i = getelementptr i8, ptr %70, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58.1.i, i32 %68) #6, !srcloc !127
  br label %if.end42

if.end42:                                         ; preds = %for.body.i62.preheader.i, %atmel_tdes_write_n.exit.i.if.end42_crit_edge
  %call41 = tail call fastcc i32 @atmel_tdes_crypt_start(ptr noundef %dd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.end42.if.then44_crit_edge

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.then3.i.i.i, %if.end25.if.then44_crit_edge
  %err.096 = phi i32 [ %call41, %if.end42.if.then44_crit_edge ], [ %call.i.i.i, %if.end25.if.then44_crit_edge ], [ %call1.i.i.i, %if.then3.i.i.i ]
  tail call fastcc void @atmel_tdes_finish_req(ptr noundef %dd, i32 noundef %err.096)
  %state.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 11, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %queue_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %dd, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %queue_task) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then44.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then21.critedge, %if.then8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_tdes_dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %data, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %done_task = getelementptr inbounds %struct.atmel_tdes_dev, ptr %data, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %done_task) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %0 = load volatile ptr, ptr @atmel_tdes, align 4
  %cmp.not.i = icmp eq ptr %0, @atmel_tdes
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %0
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #6
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.select.i, ptr %__crt_ctx.i.i, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %tfm, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_des_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #6
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #6, !srcloc !132
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %4 = call ptr @memcpy(ptr %key2, ptr %key, i32 %keylen)
  %keylen3 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keylen, ptr %keylen3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and61.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.i, label %sw.epilog.i, label %do.body64.i

do.body64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_ecb_encrypt, %if.then76.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then76.i], !srcloc !130

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then76.i, %do.body64.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then76.i ], [ -22, %do.body64.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and61.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.i, label %sw.epilog.i, label %do.body64.i

do.body64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_ecb_decrypt, %if.then76.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then76.i], !srcloc !130

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then76.i, %do.body64.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then76.i ], [ -22, %do.body64.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and61.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.i, label %sw.epilog.i, label %do.body64.i

do.body64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_cbc_encrypt, %if.then76.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then76.i], !srcloc !130

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4097, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then76.i, %do.body64.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then76.i ], [ -22, %do.body64.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef 4096)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and61.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.i, label %sw.epilog.i, label %do.body64.i

do.body64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_cfb_encrypt, %if.then76.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then76.i], !srcloc !130

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12289, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then76.i, %do.body64.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then76.i ], [ -22, %do.body64.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef 12288)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb8_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size81.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %block_size81.i, align 4
  %5 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 208897, ptr %__ctx.i.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %7, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %if.end.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %if.end.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb8_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %4 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %block_size81.i, align 4
  %5 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 208896, ptr %__ctx.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst.i, align 4
  %cmp88.i = icmp eq ptr %7, %9
  br i1 %cmp88.i, label %if.then89.i, label %if.end.i.if.end97.i_crit_edge

if.end.i.if.end97.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then89.i:                                      ; preds = %if.end.i
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %10 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %11, i32 -100
  %12 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ivsize.i.i, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp92.not.i = icmp ult i32 %15, %13
  br i1 %cmp92.not.i, label %if.then89.i.if.end97.i_crit_edge, label %if.then93.i

if.then89.i.if.end97.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then93.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #8
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub.i = sub i32 %15, %13
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %7, i32 noundef %sub.i, i32 noundef %13, i32 noundef 0) #6
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then93.i, %if.then89.i.if.end97.i_crit_edge, %if.end.i.if.end97.i_crit_edge
  %16 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %17, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %if.end97.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %if.end97.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb16_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and16.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 0
  br i1 %cmp17.i, label %sw.epilog.i, label %do.body19.i

do.body19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_cfb16_encrypt, %if.then31.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then31.i], !srcloc !130

if.then31.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug266, ptr noundef %5, ptr noundef nonnull @.str.46) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 143361, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then31.i, %do.body19.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then31.i ], [ -22, %do.body19.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb16_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef 143360)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb32_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and39.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %cmp40.i = icmp eq i32 %and39.i, 0
  br i1 %cmp40.i, label %sw.epilog.i, label %do.body42.i

do.body42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_cfb32_encrypt, %if.then54.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then54.i], !srcloc !130

if.then54.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug267, ptr noundef %5, ptr noundef nonnull @.str.47) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 77825, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then54.i, %do.body42.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then54.i ], [ -22, %do.body42.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb32_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef 77824)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ofb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.atmel_tdes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_tdes_crypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %atmel_tdes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and61.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.i, label %sw.epilog.i, label %do.body64.i

do.body64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_ofb_encrypt, %if.then76.i)) #6
          to label %atmel_tdes_crypt.exit [label %if.then76.i], !srcloc !130

if.then76.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %atmel_tdes_crypt.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %block_size81.i = getelementptr i8, ptr %1, i32 164
  %8 = ptrtoint ptr %block_size81.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8, ptr %block_size81.i, align 4
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8193, ptr %__ctx.i.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call99.i = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %11, ptr noundef %req) #6
  br label %atmel_tdes_crypt.exit

atmel_tdes_crypt.exit:                            ; preds = %sw.epilog.i, %if.then76.i, %do.body64.i, %entry.atmel_tdes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call99.i, %sw.epilog.i ], [ 0, %entry.atmel_tdes_crypt.exit_crit_edge ], [ -22, %if.then76.i ], [ -22, %do.body64.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ofb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef 8192)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_tdes_setkey(ptr nocapture noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #6
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

lor.lhs.false.i.i.i:                              ; preds = %entry
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
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #6, !srcloc !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #6, !srcloc !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #6
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %26 = call ptr @memcpy(ptr %key2, ptr %key, i32 %keylen)
  %keylen3 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %27 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %keylen, ptr %keylen3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i12 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end ]
  ret i32 %ret.0.i.i.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %dev3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %mode, 208896
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and, label %sw.default [
    i32 208896, label %if.end.sw.epilog_crit_edge
    i32 143360, label %sw.bb14
    i32 77824, label %sw.bb37
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %and16 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %sw.bb14.sw.epilog_crit_edge, label %do.body19

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body19:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !130

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug266, ptr noundef %5, ptr noundef nonnull @.str.46) #6
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  %and39 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %sw.bb37.sw.epilog_crit_edge, label %do.body42

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body42:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt, %if.then54)) #6
          to label %cleanup [label %if.then54], !srcloc !130

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug267, ptr noundef %5, ptr noundef nonnull @.str.47) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %and61 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %sw.default.sw.epilog_crit_edge, label %do.body64

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body64:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_tdes_crypt, %if.then76)) #6
          to label %cleanup [label %if.then76], !srcloc !130

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.48) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink = phi i16 [ 1, %if.end.sw.epilog_crit_edge ], [ 2, %sw.bb14.sw.epilog_crit_edge ], [ 4, %sw.bb37.sw.epilog_crit_edge ], [ 8, %sw.default.sw.epilog_crit_edge ]
  %block_size81 = getelementptr i8, ptr %1, i32 164
  %9 = ptrtoint ptr %block_size81 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %block_size81, align 4
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp84.not = icmp ne i32 %and, 0
  %and85 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %or.cond = and i1 %cmp84.not, %tobool86.not
  br i1 %or.cond, label %land.lhs.true87, label %sw.epilog.if.end97_crit_edge

sw.epilog.if.end97_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

land.lhs.true87:                                  ; preds = %sw.epilog
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %cmp88 = icmp eq ptr %12, %14
  br i1 %cmp88, label %if.then89, label %land.lhs.true87.if.end97_crit_edge

land.lhs.true87.if.end97_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then89:                                        ; preds = %land.lhs.true87
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %15 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %16, i32 -100
  %17 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ivsize.i, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp92.not = icmp ult i32 %20, %18
  br i1 %cmp92.not, label %if.then89.if.end97_crit_edge, label %if.then93

if.then89.if.end97_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %lastc = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub = sub i32 %20, %18
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc, ptr noundef %12, i32 noundef %sub, i32 noundef %18, i32 noundef 0) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.then89.if.end97_crit_edge, %land.lhs.true87.if.end97_crit_edge, %sw.epilog.if.end97_crit_edge
  %21 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call99 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %22, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then76, %do.body64, %if.then54, %do.body42, %if.then31, %do.body19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call99, %if.end97 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then31 ], [ -22, %if.then54 ], [ -22, %if.then76 ], [ -22, %do.body19 ], [ -22, %do.body42 ], [ -22, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_atmel_tdes__269_1296_atmel_tdes_driver_init6, !1, !"__initcall__kmod_atmel_tdes__269_1296_atmel_tdes_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/atmel-tdes.c", i32 1296, i32 1}
!2 = !{ptr @__exitcall_atmel_tdes_driver_exit, !1, !"__exitcall_atmel_tdes_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description270, !4, !"__UNIQUE_ID_description270", i1 false, i1 false}
!4 = !{!"../drivers/crypto/atmel-tdes.c", i32 1298, i32 1}
!5 = !{ptr @__UNIQUE_ID_file271, !6, !"__UNIQUE_ID_file271", i1 false, i1 false}
!6 = !{!"../drivers/crypto/atmel-tdes.c", i32 1299, i32 1}
!7 = !{ptr @__UNIQUE_ID_license272, !6, !"__UNIQUE_ID_license272", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author273, !9, !"__UNIQUE_ID_author273", i1 false, i1 false}
!9 = !{!"../drivers/crypto/atmel-tdes.c", i32 1300, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/atmel-tdes.c", i32 1291, i32 11}
!12 = !{ptr @atmel_tdes_driver, !13, !"atmel_tdes_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/atmel-tdes.c", i32 1287, i32 31}
!14 = !{ptr @atmel_tdes_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/crypto/atmel-tdes.c", i32 1170, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/atmel-tdes.c", i32 1182, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atmel_tdes_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @atmel_tdes_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/atmel-tdes.c", i32 1196, i32 24}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/atmel-tdes.c", i32 1198, i32 3}
!29 = !{ptr @atmel_tdes_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atmel_tdes_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/atmel-tdes.c", i32 1203, i32 43}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/atmel-tdes.c", i32 1205, i32 3}
!35 = !{ptr @atmel_tdes_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @atmel_tdes_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/atmel-tdes.c", i32 1231, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @atmel_tdes_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @atmel_tdes_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/atmel-tdes.c", i32 1244, i32 2}
!44 = !{ptr @atmel_tdes_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_tdes_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/atmel-tdes.c", i32 315, i32 4}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @atmel_tdes_crypt_pdc_stop.__UNIQUE_ID_ddebug254, !47, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/atmel-tdes.c", i32 671, i32 5}
!52 = !{ptr @atmel_tdes_crypt_dma_stop.__UNIQUE_ID_ddebug264, !51, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/crypto/atmel-tdes.c", i32 513, i32 4}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug262, !54, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!57 = !{ptr @atmel_tdes_crypt_start.__UNIQUE_ID_ddebug263, !58, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!58 = !{!"../drivers/crypto/atmel-tdes.c", i32 520, i32 4}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/atmel-tdes.c", i32 1089, i32 4}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @atmel_tdes_irq._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @atmel_tdes_irq._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/atmel-tdes.c", i32 242, i32 2}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @atmel_tdes_hw_version_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @atmel_tdes_hw_version_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/atmel-tdes.c", i32 1140, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @atmel_tdes_get_cap._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @atmel_tdes_get_cap._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/atmel-tdes.c", i32 332, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug255, !76, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/atmel-tdes.c", i32 341, i32 3}
!81 = !{ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug256, !80, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!82 = !{ptr @atmel_tdes_buff_init.__UNIQUE_ID_ddebug257, !83, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!83 = !{!"../drivers/crypto/atmel-tdes.c", i32 349, i32 3}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/atmel-tdes.c", i32 742, i32 50}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/atmel-tdes.c", i32 758, i32 51}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/atmel-tdes.c", i32 779, i32 2}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @atmel_tdes_dma_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @atmel_tdes_dma_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/atmel-tdes.c", i32 147, i32 10}
!99 = !{ptr @atmel_tdes, !100, !"atmel_tdes", i1 false, i1 false}
!100 = !{!"../drivers/crypto/atmel-tdes.c", i32 145, i32 30}
!101 = !{ptr @tdes_algs, !102, !"tdes_algs", i1 false, i1 false}
!102 = !{!"../drivers/crypto/atmel-tdes.c", i32 913, i32 28}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/atmel-tdes.c", i32 691, i32 4}
!105 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !104, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/crypto/atmel-tdes.c", i32 699, i32 4}
!109 = !{ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug266, !108, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/atmel-tdes.c", i32 707, i32 4}
!112 = !{ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug267, !111, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/atmel-tdes.c", i32 715, i32 4}
!115 = !{ptr @atmel_tdes_crypt.__UNIQUE_ID_ddebug268, !114, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!116 = !{ptr @atmel_tdes_dt_ids, !117, !"atmel_tdes_dt_ids", i1 false, i1 false}
!117 = !{!"../drivers/crypto/atmel-tdes.c", i32 1147, i32 34}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 4993918}
!128 = !{i64 4994336}
!129 = !{i8 0, i8 2}
!130 = !{i64 2148721028, i64 2148721033, i64 2148721046, i64 2148721090, i64 2148721124, i64 2148721145}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2149040036}
