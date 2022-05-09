; ModuleID = '/llk/IR_all_yes/drivers/crypto/atmel-aes.c_pt.bc'
source_filename = "../drivers/crypto/atmel-aes.c"
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
%struct.atmel_aes_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
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
%struct.atmel_aes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, i32, i32, ptr, %struct.atmel_aes_dma, %struct.atmel_aes_dma, i32, ptr, %struct.scatterlist, ptr, %struct.atmel_aes_caps, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.atmel_aes_dma = type { ptr, ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_aes_caps = type { i8, i8, i8, i8, i8, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.atmel_aes_base_ctx = type { ptr, ptr, i32, [8 x i32], i16, i8 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.atmel_aes_ctr_ctx = type { %struct.atmel_aes_base_ctx, [4 x i32], i32, [2 x %struct.scatterlist], [2 x %struct.scatterlist], i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.atmel_aes_gcm_ctx = type { %struct.atmel_aes_base_ctx, [2 x %struct.scatterlist], [2 x %struct.scatterlist], [4 x i32], [4 x i32], [4 x i32], i32, ptr, ptr, ptr }
%struct.atmel_aes_xts_ctx = type { %struct.atmel_aes_base_ctx, [8 x i32], ptr }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }

@__initcall__kmod_atmel_aes__250_2699_atmel_aes_driver_init6 = internal global ptr @atmel_aes_driver_init, section ".initcall6.init", align 4
@atmel_aes_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_aes_probe, ptr @atmel_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_aes_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_aes_driver_exit = internal global ptr @atmel_aes_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [57 x i8] c"atmel_aes.description=Atmel AES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [40 x i8] c"atmel_aes.file=drivers/crypto/atmel-aes\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [25 x i8] c"atmel_aes.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [56 x i8] c"atmel_aes.author=Nicolas Royer - Eukr\C3\A9a Electromatique\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_aes\00", [22 x i8] zeroinitializer }, align 32
@atmel_aes_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g46-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_aes_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&aes_dd->lock\00", [18 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2576, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no MEM resource info\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_aes_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/crypto/atmel-aes.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry_ptr = internal global ptr @atmel_aes_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-aes\00", [22 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to request aes irq.\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry_ptr.10 = internal global ptr @atmel_aes_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aes_clk\00", [24 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 2599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock initialization failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry_ptr.14 = internal global ptr @atmel_aes_probe._entry.12, section ".printk_index", align 4
@atmel_aes_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 2606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"can't ioremap\0A\00", [17 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry_ptr.17 = internal global ptr @atmel_aes_probe._entry.15, section ".printk_index", align 4
@atmel_aes = internal global { %struct.atmel_aes_drv, [44 x i8] } { %struct.atmel_aes_drv { %struct.list_head { ptr @atmel_aes, ptr @atmel_aes }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 2646, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Atmel AES - Using %s, %s for DMA transfers\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_aes_probe._entry_ptr.21 = internal global ptr @atmel_aes_probe._entry.18, section ".printk_index", align 4
@atmel_aes_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 2393, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AES interrupt when no active requests.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel_aes_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_aes_irq._entry_ptr = internal global ptr @atmel_aes_irq._entry, section ".printk_index", align 4
@atmel_aes_hw_version_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 464, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel_aes_hw_version_init\00", [38 x i8] zeroinitializer }, align 32
@atmel_aes_hw_version_init._entry_ptr = internal global ptr @atmel_aes_hw_version_init._entry, section ".printk_index", align 4
@atmel_aes_get_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 2535, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unmanaged aes version, set minimum capabilities\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_aes_get_cap\00", [46 x i8] zeroinitializer }, align 32
@atmel_aes_get_cap._entry_ptr = internal global ptr @atmel_aes_get_cap._entry, section ".printk_index", align 4
@atmel_aes_buff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 2323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to alloc pages.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_aes_buff_init\00", [44 x i8] zeroinitializer }, align 32
@atmel_aes_buff_init._entry_ptr = internal global ptr @atmel_aes_buff_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@atmel_aes_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 2357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no DMA channel available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_aes_dma_init\00", [45 x i8] zeroinitializer }, align 32
@atmel_aes_dma_init._entry_ptr = internal global ptr @atmel_aes_dma_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_aes.lock\00", [17 x i8] zeroinitializer }, align 32
@aes_algs = internal global [8 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ecb_encrypt, ptr @atmel_aes_ecb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cbc_encrypt, ptr @atmel_aes_cbc_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ofb_encrypt, ptr @atmel_aes_ofb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb_encrypt, ptr @atmel_aes_cfb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb32_encrypt, ptr @atmel_aes_cfb32_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 4, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb32(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb32-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb16_encrypt, ptr @atmel_aes_cfb16_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 2, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb16(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb16-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb8_encrypt, ptr @atmel_aes_cfb8_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb8(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb8-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ctr_encrypt, ptr @atmel_aes_ctr_decrypt, ptr @atmel_aes_ctr_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 152, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }], align 128
@aes_cfb64_alg = internal global %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb64_encrypt, ptr @atmel_aes_cfb64_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb64(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb64-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, align 128
@aes_gcm_alg = internal global %struct.aead_alg { ptr @atmel_aes_gcm_setkey, ptr @atmel_aes_gcm_setauthsize, ptr @atmel_aes_gcm_encrypt, ptr @atmel_aes_gcm_decrypt, ptr @atmel_aes_gcm_init, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 192, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, align 128
@aes_xts_alg = internal global %struct.skcipher_alg { ptr @atmel_aes_xts_setkey, ptr @atmel_aes_xts_encrypt, ptr @atmel_aes_xts_decrypt, ptr @atmel_aes_xts_init_tfm, ptr @atmel_aes_xts_exit_tfm, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 84, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-xts-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, align 128
@aes_authenc_algs = internal global [5 x %struct.aead_alg] [%struct.aead_alg { ptr @atmel_aes_authenc_setkey, ptr null, ptr @atmel_aes_authenc_cbc_aes_encrypt, ptr @atmel_aes_authenc_cbc_aes_decrypt, ptr @atmel_aes_authenc_hmac_sha1_init_tfm, ptr @atmel_aes_authenc_exit_tfm, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 52, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-authenc-hmac-sha1-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @atmel_aes_authenc_setkey, ptr null, ptr @atmel_aes_authenc_cbc_aes_encrypt, ptr @atmel_aes_authenc_cbc_aes_decrypt, ptr @atmel_aes_authenc_hmac_sha224_init_tfm, ptr @atmel_aes_authenc_exit_tfm, i32 16, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 52, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-authenc-hmac-sha224-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @atmel_aes_authenc_setkey, ptr null, ptr @atmel_aes_authenc_cbc_aes_encrypt, ptr @atmel_aes_authenc_cbc_aes_decrypt, ptr @atmel_aes_authenc_hmac_sha256_init_tfm, ptr @atmel_aes_authenc_exit_tfm, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 52, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-authenc-hmac-sha256-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @atmel_aes_authenc_setkey, ptr null, ptr @atmel_aes_authenc_cbc_aes_encrypt, ptr @atmel_aes_authenc_cbc_aes_decrypt, ptr @atmel_aes_authenc_hmac_sha384_init_tfm, ptr @atmel_aes_authenc_exit_tfm, i32 16, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 52, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-authenc-hmac-sha384-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, %struct.aead_alg { ptr @atmel_aes_authenc_setkey, ptr null, ptr @atmel_aes_authenc_cbc_aes_encrypt, ptr @atmel_aes_authenc_cbc_aes_decrypt, ptr @atmel_aes_authenc_hmac_sha512_init_tfm, ptr @atmel_aes_authenc_exit_tfm, i32 16, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 52, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-authenc-hmac-sha512-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }], align 128
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@switch.table.atmel_aes_crypt = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 8, i16 4, i16 2, i16 1], [24 x i8] zeroinitializer }, align 32
@switch.table.atmel_aes_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 288, i64 304, i64 512, i64 1280]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4096]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16384]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"atmel_aes_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2690, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2694, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"atmel_aes_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2541, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2564, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2576, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2590, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2592, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2597, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2599, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2606, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"atmel_aes\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2644, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2393, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 464, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2534, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2323, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2340, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2346, i32 43 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2357, i32 2 }
@___asan_gen_.166 = private constant [30 x i8] c"../drivers/crypto/atmel-aes.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 232, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1169, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [29 x i8] c"switch.table.atmel_aes_crypt\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [39 x i8] c"switch.table.atmel_aes_gcm_setauthsize\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_atmel_aes_driver_exit, ptr @__initcall__kmod_atmel_aes__250_2699_atmel_aes_driver_init6, ptr @atmel_aes_buff_init._entry, ptr @atmel_aes_buff_init._entry_ptr, ptr @atmel_aes_dma_init._entry, ptr @atmel_aes_dma_init._entry_ptr, ptr @atmel_aes_driver_exit, ptr @atmel_aes_get_cap._entry, ptr @atmel_aes_get_cap._entry_ptr, ptr @atmel_aes_hw_version_init._entry, ptr @atmel_aes_hw_version_init._entry_ptr, ptr @atmel_aes_irq._entry, ptr @atmel_aes_irq._entry_ptr, ptr @atmel_aes_probe._entry, ptr @atmel_aes_probe._entry.12, ptr @atmel_aes_probe._entry.15, ptr @atmel_aes_probe._entry.18, ptr @atmel_aes_probe._entry.8, ptr @atmel_aes_probe._entry_ptr, ptr @atmel_aes_probe._entry_ptr.10, ptr @atmel_aes_probe._entry_ptr.14, ptr @atmel_aes_probe._entry_ptr.17, ptr @atmel_aes_probe._entry_ptr.21, ptr @atmel_aes_driver, ptr @.str, ptr @atmel_aes_dt_ids, ptr @atmel_aes_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @atmel_aes, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.atmel_aes_crypt, ptr @switch.table.atmel_aes_gcm_setauthsize], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_hw_version_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_get_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_buff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_aes_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_aes_crypt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_aes_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_aes_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_aes_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 264, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
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
  %lock = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @atmel_aes_probe.__key, i16 noundef signext 3) #9
  %done_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %call.i to i32
  tail call void @tasklet_init(ptr noundef %done_task, ptr noundef nonnull @atmel_aes_done_task, i32 noundef %4) #9
  %queue_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 15
  tail call void @tasklet_init(ptr noundef %queue_task, ptr noundef nonnull @atmel_aes_queue_task, i32 noundef %4) #9
  %queue = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 13
  tail call void @crypto_init_queue(ptr noundef %queue, i32 noundef 50) #9
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %err_tasklet_kill

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call5, align 4
  %phys_base = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 4
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.err_tasklet_kill_crit_edge, label %if.end16

if.end11.err_tasklet_kill_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tasklet_kill

if.end16:                                         ; preds = %if.end11
  %call.i144 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @atmel_aes_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool20.not = icmp eq i32 %call.i144, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %err_tasklet_kill

if.end25:                                         ; preds = %if.end16
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %iclk = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %iclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %iclk, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  %10 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %err_tasklet_kill

if.end36:                                         ; preds = %if.end25
  %call38 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call5) #9
  %io_base = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38, ptr %io_base, align 4
  %cmp.i145 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %err_tasklet_kill

if.end47:                                         ; preds = %if.end36
  %17 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iclk, align 4
  %call49 = tail call i32 @clk_prepare(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.err_tasklet_kill_crit_edge

if.end47.err_tasklet_kill_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tasklet_kill

if.end52:                                         ; preds = %if.end47
  %19 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iclk, align 4
  %call.i.i = tail call i32 @clk_enable(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end56, label %if.end52.err_iclk_unprepare_crit_edge

if.end52.err_iclk_unprepare_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_iclk_unprepare

if.end56:                                         ; preds = %if.end52
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 65536) #9, !srcloc !105
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 57344) #9, !srcloc !105
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %26, i32 252
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #9, !srcloc !106
  %28 = and i32 %27, -15794176
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %hw_version.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 26
  %30 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hw_version.i, align 4
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.25, i32 noundef %29) #12
  %33 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %34) #9
  %caps.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 25
  %has_cfb64.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 25, i32 1
  %max_burst_size.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 25, i32 5
  %35 = call ptr @memset(ptr %caps.i, i32 0, i32 5)
  %36 = ptrtoint ptr %max_burst_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %max_burst_size.i, align 4
  %37 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_version.i, align 4
  %and.i = and i32 %38, 4080
  %39 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.i [
    i32 1280, label %sw.bb.i
    i32 512, label %sw.bb18.i
    i32 304, label %sw.bb27.i
    i32 288, label %if.end56.atmel_aes_get_cap.exit_crit_edge
  ]

if.end56.atmel_aes_get_cap.exit_crit_edge:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_get_cap.exit

sw.bb.i:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %40 = call ptr @memset(ptr %caps.i, i32 1, i32 5)
  %41 = ptrtoint ptr %max_burst_size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %max_burst_size.i, align 4
  br label %atmel_aes_get_cap.exit

sw.bb18.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %has_gcm.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 25, i32 2
  %42 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %caps.i, align 4
  %43 = ptrtoint ptr %has_cfb64.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %has_cfb64.i, align 1
  %44 = ptrtoint ptr %has_gcm.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %has_gcm.i, align 2
  %45 = ptrtoint ptr %max_burst_size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %max_burst_size.i, align 4
  br label %atmel_aes_get_cap.exit

sw.bb27.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %caps.i, align 4
  %47 = ptrtoint ptr %has_cfb64.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %has_cfb64.i, align 1
  %48 = ptrtoint ptr %max_burst_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %max_burst_size.i, align 4
  br label %atmel_aes_get_cap.exit

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.27) #12
  br label %atmel_aes_get_cap.exit

atmel_aes_get_cap.exit:                           ; preds = %do.end.i, %sw.bb27.i, %sw.bb18.i, %sw.bb.i, %if.end56.atmel_aes_get_cap.exit_crit_edge
  %has_authenc = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 25, i32 4
  %51 = ptrtoint ptr %has_authenc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_authenc, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool57.not = icmp eq i8 %52, 0
  br i1 %tobool57.not, label %atmel_aes_get_cap.exit.if.end60_crit_edge, label %land.lhs.true

atmel_aes_get_cap.exit.if.end60_crit_edge:        ; preds = %atmel_aes_get_cap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.lhs.true:                                    ; preds = %atmel_aes_get_cap.exit
  %call58 = tail call zeroext i1 @atmel_sha_authenc_is_ready() #9
  br i1 %call58, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true.err_iclk_unprepare_crit_edge

land.lhs.true.err_iclk_unprepare_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_iclk_unprepare

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %atmel_aes_get_cap.exit.if.end60_crit_edge
  %call.i148 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #9
  %53 = inttoptr i32 %call.i148 to ptr
  %buf.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 22
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %buf.i, align 4
  %buflen.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 21
  %55 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16384, ptr %buflen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i, label %atmel_aes_buff_init.exit, label %if.end64

atmel_aes_buff_init.exit:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.29) #12
  br label %err_iclk_unprepare

if.end64:                                         ; preds = %if.end60
  %call65 = tail call fastcc i32 @atmel_aes_dma_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.err_buff_cleanup_crit_edge

if.end64.err_buff_cleanup_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_buff_cleanup

if.end68:                                         ; preds = %if.end64
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %58 = load ptr, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 0, i32 1), align 4
  %call.i.i151 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %58, ptr noundef nonnull @atmel_aes) #9
  br i1 %call.i.i151, label %if.end.i.i, label %if.end68.list_add_tail.exit_crit_edge

if.end68.list_add_tail.exit_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call.i, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 0, i32 1), align 4
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @atmel_aes, ptr %call.i, align 4
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %prev.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call.i, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end68.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %call70 = tail call fastcc i32 @atmel_aes_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.end76, label %err_algs

do.end76:                                         ; preds = %list_add_tail.exit
  %src = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 19
  %62 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %src, align 4
  %dev.i152 = getelementptr inbounds %struct.dma_chan, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %dev.i152 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i152, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %65, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i153 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i153, label %if.end.i.i154, label %do.end76.dma_chan_name.exit_crit_edge

do.end76.dma_chan_name.exit_crit_edge:            ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_name.exit

if.end.i.i154:                                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i154, %do.end76.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %69, %if.end.i.i154 ], [ %67, %do.end76.dma_chan_name.exit_crit_edge ]
  %dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %call.i, i32 0, i32 20
  %70 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dst, align 4
  %dev.i155 = getelementptr inbounds %struct.dma_chan, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i155, align 4
  %init_name.i.i156 = getelementptr inbounds %struct.dma_chan_dev, ptr %73, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %init_name.i.i156 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i156, align 8
  %tobool.not.i.i157 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i157, label %if.end.i.i159, label %dma_chan_name.exit.dma_chan_name.exit161_crit_edge

dma_chan_name.exit.dma_chan_name.exit161_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_name.exit161

if.end.i.i159:                                    ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device.i158 = getelementptr inbounds %struct.dma_chan_dev, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %device.i158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device.i158, align 4
  br label %dma_chan_name.exit161

dma_chan_name.exit161:                            ; preds = %if.end.i.i159, %dma_chan_name.exit.dma_chan_name.exit161_crit_edge
  %retval.0.i.i160 = phi ptr [ %77, %if.end.i.i159 ], [ %75, %dma_chan_name.exit.dma_chan_name.exit161_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i160) #12
  br label %cleanup

err_algs:                                         ; preds = %list_add_tail.exit
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %call.i.i162 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #9
  br i1 %call.i.i162, label %if.end.i.i163, label %err_algs.list_del.exit_crit_edge

err_algs.list_del.exit_crit_edge:                 ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i163:                                    ; preds = %err_algs
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i, align 4
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i163, %err_algs.list_del.exit_crit_edge
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  tail call fastcc void @atmel_aes_dma_cleanup(ptr noundef nonnull %call.i)
  br label %err_buff_cleanup

err_buff_cleanup:                                 ; preds = %list_del.exit, %if.end64.err_buff_cleanup_crit_edge
  %err.0 = phi i32 [ %call65, %if.end64.err_buff_cleanup_crit_edge ], [ %call70, %list_del.exit ]
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf.i, align 4
  %88 = ptrtoint ptr %87 to i32
  tail call void @free_pages(i32 noundef %88, i32 noundef 0) #9
  br label %err_iclk_unprepare

err_iclk_unprepare:                               ; preds = %err_buff_cleanup, %atmel_aes_buff_init.exit, %land.lhs.true.err_iclk_unprepare_crit_edge, %if.end52.err_iclk_unprepare_crit_edge
  %err.1 = phi i32 [ -12, %atmel_aes_buff_init.exit ], [ %err.0, %err_buff_cleanup ], [ -517, %land.lhs.true.err_iclk_unprepare_crit_edge ], [ %call.i.i, %if.end52.err_iclk_unprepare_crit_edge ]
  %89 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iclk, align 4
  tail call void @clk_unprepare(ptr noundef %90) #9
  br label %err_tasklet_kill

err_tasklet_kill:                                 ; preds = %err_iclk_unprepare, %if.end47.err_tasklet_kill_crit_edge, %do.end44, %do.end33, %do.end24, %if.end11.err_tasklet_kill_crit_edge, %do.end10
  %err.2 = phi i32 [ %call.i144, %do.end24 ], [ %12, %do.end33 ], [ %16, %do.end44 ], [ %call49, %if.end47.err_tasklet_kill_crit_edge ], [ %err.1, %err_iclk_unprepare ], [ -19, %do.end10 ], [ %call12, %if.end11.err_tasklet_kill_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %done_task) #9
  tail call void @tasklet_kill(ptr noundef %queue_task) #9
  br label %cleanup

cleanup:                                          ; preds = %err_tasklet_kill, %dma_chan_name.exit161, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_tasklet_kill ], [ 0, %dma_chan_name.exit161 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %has_authenc.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %has_authenc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_authenc.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %list_del.exit.if.end.i_crit_edge, label %for.body.preheader.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.preheader.i:                             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_authenc_algs) #9
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1)) #9
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2)) #9
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3)) #9
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4)) #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.preheader.i, %list_del.exit.if.end.i_crit_edge
  %has_xts.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 25, i32 3
  %12 = ptrtoint ptr %has_xts.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_xts.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_xts_alg) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %has_gcm.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 25, i32 2
  %14 = ptrtoint ptr %has_gcm.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_gcm.i, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_gcm_alg) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %has_cfb64.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 25, i32 1
  %16 = ptrtoint ptr %has_cfb64.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_cfb64.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not.i = icmp eq i8 %17, 0
  br i1 %tobool10.not.i, label %if.end8.i.atmel_aes_unregister_algs.exit_crit_edge, label %if.then11.i

if.end8.i.atmel_aes_unregister_algs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_unregister_algs.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_cfb64_alg) #9
  br label %atmel_aes_unregister_algs.exit

atmel_aes_unregister_algs.exit:                   ; preds = %if.then11.i, %if.end8.i.atmel_aes_unregister_algs.exit_crit_edge
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #9
  %done_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 14
  tail call void @tasklet_kill(ptr noundef %done_task) #9
  %queue_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %queue_task) #9
  %dst.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i, align 4
  tail call void @dma_release_channel(ptr noundef %19) #9
  %src.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src.i, align 4
  tail call void @dma_release_channel(ptr noundef %21) #9
  %buf.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  tail call void @free_pages(i32 noundef %24, i32 noundef 0) #9
  %iclk = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iclk, align 4
  tail call void @clk_unprepare(ptr noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %atmel_aes_unregister_algs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atmel_aes_unregister_algs.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_done_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %is_async = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %is_async to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_async, align 4
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %call = tail call i32 %3(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_queue_task(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %call = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %0, ptr noundef null)
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
define internal i32 @atmel_aes_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !106
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #9, !srcloc !106
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %2) #9, !srcloc !105
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dev_id, i32 0, i32 11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and2 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %state.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dev_id, i32 0, i32 14, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %done_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %dev_id, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %done_task) #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.atmel_aes_dev, ptr %dev_id, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atmel_sha_authenc_is_ready() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_dma_init(ptr nocapture noundef %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.31) #9
  %src = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %src, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call8 = tail call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.32) #9
  %dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %dst, align 4
  %cmp.i30 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 4
  tail call void @dma_release_channel(ptr noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %entry.do.end_crit_edge
  %ret.0.in = phi ptr [ %call8, %if.then13 ], [ %call, %entry.do.end_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_register_algs(ptr nocapture noundef readonly %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 2), align 16
  %or.i = or i32 %0, 128
  store i32 %or.i, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 15), align 4
  %call = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_algs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 2), align 16
  %or.i.1 = or i32 %1, 128
  store i32 %or.i.1, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 15), align 4
  %call.1 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body51_crit_edge

for.inc.for.body51_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 2), align 16
  %or.i.2 = or i32 %2, 128
  store i32 %or.i.2, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 15), align 4
  %call.2 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body51_crit_edge

for.inc.1.for.body51_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 2), align 16
  %or.i.3 = or i32 %3, 128
  store i32 %or.i.3, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 15), align 4
  %call.3 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.body51_crit_edge

for.inc.2.for.body51_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 2), align 16
  %or.i.4 = or i32 %4, 128
  store i32 %or.i.4, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 15), align 4
  %call.4 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.body51_crit_edge

for.inc.3.for.body51_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 2), align 16
  %or.i.5 = or i32 %5, 128
  store i32 %or.i.5, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 15), align 4
  %call.5 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.body51_crit_edge

for.inc.4.for.body51_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 2), align 16
  %or.i.6 = or i32 %6, 128
  store i32 %or.i.6, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 15), align 4
  %call.6 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.body51_crit_edge

for.inc.5.for.body51_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 2), align 16
  %or.i.7 = or i32 %7, 128
  store i32 %or.i.7, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 15), align 4
  %call.7 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.for.body51_crit_edge

for.inc.6.for.body51_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.7:                                        ; preds = %for.inc.6
  %has_cfb64 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25, i32 1
  %8 = ptrtoint ptr %has_cfb64 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_cfb64, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %for.inc.7.if.end8_crit_edge, label %if.then3

for.inc.7.if.end8_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %for.inc.7
  %10 = load i32, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 2), align 16
  %or.i80 = or i32 %10, 128
  store i32 %or.i80, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 15), align 4
  %call4 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_cfb64_alg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.for.body51_crit_edge

if.then3.for.body51_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %for.inc.7.if.end8_crit_edge
  %has_gcm = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25, i32 2
  %11 = ptrtoint ptr %has_gcm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_gcm, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %13 = load i32, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 2), align 16
  %or.i81 = or i32 %13, 128
  store i32 %or.i81, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 15), align 4
  %call12 = tail call i32 @crypto_register_aead(ptr noundef nonnull @aes_gcm_alg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.err_aes_gcm_alg_crit_edge

if.then11.err_aes_gcm_alg_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_aes_gcm_alg

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %has_xts = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25, i32 3
  %14 = ptrtoint ptr %has_xts to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_xts, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  %16 = load i32, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 2), align 16
  %or.i82 = or i32 %16, 128
  store i32 %or.i82, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 6), align 32
  store ptr null, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 15), align 4
  %call20 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_xts_alg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.err_aes_xts_alg_crit_edge

if.then19.err_aes_xts_alg_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_aes_xts_alg

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %has_authenc = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25, i32 4
  %17 = ptrtoint ptr %has_authenc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_authenc, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %for.body30.preheader

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body30.preheader:                             ; preds = %if.end24
  %19 = load i32, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 0, i32 10, i32 2), align 16
  %or.i84 = or i32 %19, 128
  store i32 %or.i84, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 0, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 0, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 0, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 0, i32 10, i32 15), align 4
  %call34 = tail call i32 @crypto_register_aead(ptr noundef nonnull @aes_authenc_algs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc38, label %for.body30.preheader.for.end48_crit_edge

for.body30.preheader.for.end48_crit_edge:         ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.inc38:                                        ; preds = %for.body30.preheader
  %20 = load i32, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1, i32 10, i32 2), align 16
  %or.i84.1 = or i32 %20, 128
  store i32 %or.i84.1, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1, i32 10, i32 15), align 4
  %call34.1 = tail call i32 @crypto_register_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.1)
  %tobool35.not.1 = icmp eq i32 %call34.1, 0
  br i1 %tobool35.not.1, label %for.inc38.1, label %for.inc38.for.body44_crit_edge

for.inc38.for.body44_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.inc38.1:                                      ; preds = %for.inc38
  %21 = load i32, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2, i32 10, i32 2), align 16
  %or.i84.2 = or i32 %21, 128
  store i32 %or.i84.2, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2, i32 10, i32 15), align 4
  %call34.2 = tail call i32 @crypto_register_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.2)
  %tobool35.not.2 = icmp eq i32 %call34.2, 0
  br i1 %tobool35.not.2, label %for.inc38.2, label %for.inc38.1.for.body44_crit_edge

for.inc38.1.for.body44_crit_edge:                 ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.inc38.2:                                      ; preds = %for.inc38.1
  %22 = load i32, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3, i32 10, i32 2), align 16
  %or.i84.3 = or i32 %22, 128
  store i32 %or.i84.3, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3, i32 10, i32 15), align 4
  %call34.3 = tail call i32 @crypto_register_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.3)
  %tobool35.not.3 = icmp eq i32 %call34.3, 0
  br i1 %tobool35.not.3, label %for.inc38.3, label %for.inc38.2.for.body44_crit_edge

for.inc38.2.for.body44_crit_edge:                 ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.inc38.3:                                      ; preds = %for.inc38.2
  %23 = load i32, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4, i32 10, i32 2), align 16
  %or.i84.4 = or i32 %23, 128
  store i32 %or.i84.4, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4, i32 10, i32 6), align 32
  store ptr null, ptr getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4, i32 10, i32 15), align 4
  %call34.4 = tail call i32 @crypto_register_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.4)
  %tobool35.not.4 = icmp eq i32 %call34.4, 0
  br i1 %tobool35.not.4, label %for.inc38.3.cleanup_crit_edge, label %for.inc38.3.for.body44_crit_edge

for.inc38.3.for.body44_crit_edge:                 ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.inc38.3.cleanup_crit_edge:                    ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body44:                                       ; preds = %for.inc38.3.for.body44_crit_edge, %for.inc38.2.for.body44_crit_edge, %for.inc38.1.for.body44_crit_edge, %for.inc38.for.body44_crit_edge
  %exitcond.not.1 = phi i1 [ false, %for.inc38.3.for.body44_crit_edge ], [ false, %for.inc38.2.for.body44_crit_edge ], [ true, %for.inc38.1.for.body44_crit_edge ], [ false, %for.inc38.for.body44_crit_edge ]
  %exitcond.not.2 = phi i1 [ false, %for.inc38.3.for.body44_crit_edge ], [ true, %for.inc38.2.for.body44_crit_edge ], [ false, %for.inc38.1.for.body44_crit_edge ], [ false, %for.inc38.for.body44_crit_edge ]
  %call34.lcssa.ph = phi i32 [ %call34.4, %for.inc38.3.for.body44_crit_edge ], [ %call34.3, %for.inc38.2.for.body44_crit_edge ], [ %call34.2, %for.inc38.1.for.body44_crit_edge ], [ %call34.1, %for.inc38.for.body44_crit_edge ]
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_authenc_algs) #9
  br i1 %tobool35.not.1, label %for.body44.1, label %for.body44.for.end48_crit_edge

for.body44.for.end48_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body44.1:                                     ; preds = %for.body44
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 1)) #9
  br i1 %exitcond.not.1, label %for.body44.1.for.end48_crit_edge, label %for.body44.2

for.body44.1.for.end48_crit_edge:                 ; preds = %for.body44.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body44.2:                                     ; preds = %for.body44.1
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 2)) #9
  br i1 %exitcond.not.2, label %for.body44.2.for.end48_crit_edge, label %for.body44.3

for.body44.2.for.end48_crit_edge:                 ; preds = %for.body44.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body44.3:                                     ; preds = %for.body44.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aead(ptr noundef getelementptr inbounds ([5 x %struct.aead_alg], ptr @aes_authenc_algs, i32 0, i32 3)) #9
  br label %for.end48

for.end48:                                        ; preds = %for.body44.3, %for.body44.2.for.end48_crit_edge, %for.body44.1.for.end48_crit_edge, %for.body44.for.end48_crit_edge, %for.body30.preheader.for.end48_crit_edge
  %call34.lcssa106 = phi i32 [ %call34, %for.body30.preheader.for.end48_crit_edge ], [ %call34.lcssa.ph, %for.body44.3 ], [ %call34.lcssa.ph, %for.body44.2.for.end48_crit_edge ], [ %call34.lcssa.ph, %for.body44.1.for.end48_crit_edge ], [ %call34.lcssa.ph, %for.body44.for.end48_crit_edge ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_xts_alg) #9
  br label %err_aes_xts_alg

err_aes_xts_alg:                                  ; preds = %for.end48, %if.then19.err_aes_xts_alg_crit_edge
  %err.0 = phi i32 [ %call20, %if.then19.err_aes_xts_alg_crit_edge ], [ %call34.lcssa106, %for.end48 ]
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_gcm_alg) #9
  br label %err_aes_gcm_alg

err_aes_gcm_alg:                                  ; preds = %err_aes_xts_alg, %if.then11.err_aes_gcm_alg_crit_edge
  %err.1 = phi i32 [ %call12, %if.then11.err_aes_gcm_alg_crit_edge ], [ %err.0, %err_aes_xts_alg ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_cfb64_alg) #9
  br label %for.body51

for.body51:                                       ; preds = %err_aes_gcm_alg, %if.then3.for.body51_crit_edge, %for.inc.6.for.body51_crit_edge, %for.inc.5.for.body51_crit_edge, %for.inc.4.for.body51_crit_edge, %for.inc.3.for.body51_crit_edge, %for.inc.2.for.body51_crit_edge, %for.inc.1.for.body51_crit_edge, %for.inc.for.body51_crit_edge
  %err.3.ph = phi i32 [ %call.7, %for.inc.6.for.body51_crit_edge ], [ %call.6, %for.inc.5.for.body51_crit_edge ], [ %call.5, %for.inc.4.for.body51_crit_edge ], [ %call.4, %for.inc.3.for.body51_crit_edge ], [ %call.3, %for.inc.2.for.body51_crit_edge ], [ %call.2, %for.inc.1.for.body51_crit_edge ], [ %call.1, %for.inc.for.body51_crit_edge ], [ %err.1, %err_aes_gcm_alg ], [ %call4, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.1 = phi i1 [ false, %for.inc.6.for.body51_crit_edge ], [ false, %for.inc.5.for.body51_crit_edge ], [ false, %for.inc.4.for.body51_crit_edge ], [ false, %for.inc.3.for.body51_crit_edge ], [ false, %for.inc.2.for.body51_crit_edge ], [ true, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.2 = phi i1 [ false, %for.inc.6.for.body51_crit_edge ], [ false, %for.inc.5.for.body51_crit_edge ], [ false, %for.inc.4.for.body51_crit_edge ], [ false, %for.inc.3.for.body51_crit_edge ], [ true, %for.inc.2.for.body51_crit_edge ], [ false, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.3 = phi i1 [ false, %for.inc.6.for.body51_crit_edge ], [ false, %for.inc.5.for.body51_crit_edge ], [ false, %for.inc.4.for.body51_crit_edge ], [ true, %for.inc.3.for.body51_crit_edge ], [ false, %for.inc.2.for.body51_crit_edge ], [ false, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.4 = phi i1 [ false, %for.inc.6.for.body51_crit_edge ], [ false, %for.inc.5.for.body51_crit_edge ], [ true, %for.inc.4.for.body51_crit_edge ], [ false, %for.inc.3.for.body51_crit_edge ], [ false, %for.inc.2.for.body51_crit_edge ], [ false, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.5 = phi i1 [ false, %for.inc.6.for.body51_crit_edge ], [ true, %for.inc.5.for.body51_crit_edge ], [ false, %for.inc.4.for.body51_crit_edge ], [ false, %for.inc.3.for.body51_crit_edge ], [ false, %for.inc.2.for.body51_crit_edge ], [ false, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  %exitcond102.not.6 = phi i1 [ true, %for.inc.6.for.body51_crit_edge ], [ false, %for.inc.5.for.body51_crit_edge ], [ false, %for.inc.4.for.body51_crit_edge ], [ false, %for.inc.3.for.body51_crit_edge ], [ false, %for.inc.2.for.body51_crit_edge ], [ false, %for.inc.1.for.body51_crit_edge ], [ false, %for.inc.for.body51_crit_edge ], [ false, %err_aes_gcm_alg ], [ false, %if.then3.for.body51_crit_edge ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #9
  br i1 %tobool.not.1, label %for.body51.1, label %for.body51.cleanup_crit_edge

for.body51.cleanup_crit_edge:                     ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.1:                                     ; preds = %for.body51
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #9
  br i1 %exitcond102.not.1, label %for.body51.1.cleanup_crit_edge, label %for.body51.2

for.body51.1.cleanup_crit_edge:                   ; preds = %for.body51.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.2:                                     ; preds = %for.body51.1
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #9
  br i1 %exitcond102.not.2, label %for.body51.2.cleanup_crit_edge, label %for.body51.3

for.body51.2.cleanup_crit_edge:                   ; preds = %for.body51.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.3:                                     ; preds = %for.body51.2
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #9
  br i1 %exitcond102.not.3, label %for.body51.3.cleanup_crit_edge, label %for.body51.4

for.body51.3.cleanup_crit_edge:                   ; preds = %for.body51.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.4:                                     ; preds = %for.body51.3
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #9
  br i1 %exitcond102.not.4, label %for.body51.4.cleanup_crit_edge, label %for.body51.5

for.body51.4.cleanup_crit_edge:                   ; preds = %for.body51.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.5:                                     ; preds = %for.body51.4
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #9
  br i1 %exitcond102.not.5, label %for.body51.5.cleanup_crit_edge, label %for.body51.6

for.body51.5.cleanup_crit_edge:                   ; preds = %for.body51.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.6:                                     ; preds = %for.body51.5
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #9
  br i1 %exitcond102.not.6, label %for.body51.6.cleanup_crit_edge, label %for.body51.7

for.body51.6.cleanup_crit_edge:                   ; preds = %for.body51.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body51.7:                                     ; preds = %for.body51.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body51.7, %for.body51.6.cleanup_crit_edge, %for.body51.5.cleanup_crit_edge, %for.body51.4.cleanup_crit_edge, %for.body51.3.cleanup_crit_edge, %for.body51.2.cleanup_crit_edge, %for.body51.1.cleanup_crit_edge, %for.body51.cleanup_crit_edge, %for.inc38.3.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ 0, %for.inc38.3.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.3.ph, %for.body51.7 ], [ %err.3.ph, %for.body51.6.cleanup_crit_edge ], [ %err.3.ph, %for.body51.5.cleanup_crit_edge ], [ %err.3.ph, %for.body51.4.cleanup_crit_edge ], [ %err.3.ph, %for.body51.3.cleanup_crit_edge ], [ %err.3.ph, %for.body51.2.cleanup_crit_edge ], [ %err.3.ph, %for.body51.1.cleanup_crit_edge ], [ %err.3.ph, %for.body51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_dma_cleanup(ptr nocapture noundef readonly %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  tail call void @dma_release_channel(ptr noundef %1) #9
  %src = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  tail call void @dma_release_channel(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_handle_queue(ptr noundef %dd, ptr noundef %new_areq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tobool.not = icmp eq ptr %new_areq, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 13
  %call5 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef nonnull %new_areq) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %flags6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %queue11 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 13
  %backlog.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlog.i, align 4
  %cmp.i = icmp eq ptr %3, %queue11
  %spec.select.i = select i1 %cmp.i, ptr null, ptr %3
  %call14 = tail call ptr @crypto_dequeue_request(ptr noundef %queue11) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then21.critedge, label %if.then16

if.then16:                                        ; preds = %if.end10
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %tobool23.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool23.not, label %if.then16.if.end25_crit_edge, label %if.then24

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %spec.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete, align 4
  tail call void %7(ptr noundef nonnull %spec.select.i, i32 noundef -115) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %call14, i32 0, i32 3
  %8 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 5
  %areq27 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %10 = ptrtoint ptr %areq27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %areq27, align 4
  %ctx28 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %11 = ptrtoint ptr %ctx28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %__crt_ctx.i, ptr %ctx28, align 4
  %cmp29 = icmp ne ptr %call14, %new_areq
  %frombool = zext i1 %cmp29 to i8
  %is_async = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 5
  %12 = ptrtoint ptr %is_async to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %is_async, align 4
  %start = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 1, i32 1
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %start, align 4
  %call33 = tail call i32 %14(ptr noundef %dd) #9
  %ret.0.call33 = select i1 %cmp29, i32 %ret.0, i32 %call33
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then21.critedge, %if.then8
  %retval.0 = phi i32 [ %ret.0, %if.then8 ], [ %ret.0.call33, %if.end25 ], [ %ret.0, %if.then21.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge11
    i32 32, label %entry.if.end_crit_edge12
  ]

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12
  %key4 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %1 = call ptr @memcpy(ptr %key4, ptr %key, i32 %keylen)
  %keylen5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %2 = ptrtoint ptr %keylen5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ecb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub.i = add i32 %7, -1
  %and22.i = and i32 %sub.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end25.i, label %if.end16.i.atmel_aes_crypt.exit_crit_edge

if.end16.i.atmel_aes_crypt.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %9 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %__ctx.i.i, align 128
  %11 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %12, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end25.i, %if.end16.i.atmel_aes_crypt.exit_crit_edge, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end25.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ], [ -22, %if.end16.i.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ecb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub.i = add i32 %7, -1
  %and22.i = and i32 %sub.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end25.i, label %if.end16.i.atmel_aes_crypt.exit_crit_edge

if.end16.i.atmel_aes_crypt.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %9 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %__ctx.i.i, align 128
  %11 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %12, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end25.i, %if.end16.i.atmel_aes_crypt.exit_crit_edge, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end25.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ], [ -22, %if.end16.i.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not10 = icmp eq ptr %0, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not10
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %tfm, align 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %__crt_ctx.i.i, align 4
  %start = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atmel_aes_start, ptr %start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cbc_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub.i = add i32 %7, -1
  %and22.i = and i32 %sub.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end25.i, label %if.end16.i.atmel_aes_crypt.exit_crit_edge

if.end16.i.atmel_aes_crypt.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %9 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4097, ptr %__ctx.i.i, align 128
  %11 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %12, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end25.i, %if.end16.i.atmel_aes_crypt.exit_crit_edge, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end25.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ], [ -22, %if.end16.i.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cbc_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %sub.i = add i32 %7, -1
  %and22.i = and i32 %sub.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.i, label %if.end25.i, label %if.end16.i.atmel_aes_crypt.exit_crit_edge

if.end16.i.atmel_aes_crypt.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end25.i:                                       ; preds = %if.end16.i
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %9 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %12, %14
  br i1 %cmp41.i, label %if.then42.i, label %if.end25.i.if.end51.i_crit_edge

if.end25.i.if.end51.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end25.i
  %15 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %16, i32 -100
  %17 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ivsize.i.i, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp45.not.i = icmp ult i32 %20, %18
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %20, %18
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %12, i32 noundef %sub49.i, i32 noundef %18, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end25.i.if.end51.i_crit_edge
  %21 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %22, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %if.end16.i.atmel_aes_crypt.exit_crit_edge, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ], [ -22, %if.end16.i.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ofb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8193, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ofb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8192, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12289, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12288, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb32_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 143361, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb32_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 143360, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb16_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 208897, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb16_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 208896, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb8_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 274433, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb8_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 274432, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16385, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not10 = icmp eq ptr %0, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not10
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %tfm, align 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %__crt_ctx.i.i, align 4
  %start = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atmel_aes_ctr_start, ptr %start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_crypt(ptr noundef %req, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %and = and i32 %mode, 487424
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and)
  %cmp = icmp eq i32 %and, 24576
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2 = icmp ult i32 %3, 16
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and5 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.end.if.end25_crit_edge, label %if.then7

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then7:                                         ; preds = %if.end
  %and8 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %1, i32 208
  %4 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %22 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %23 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %dst2.i.i, align 4
  %24 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %3, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %25 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %iv4.i.i, align 4
  br i1 %tobool.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #9
  br label %cleanup

cond.false.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #9
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not.not = icmp eq i32 %3, 0
  br i1 %tobool13.not.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and, label %if.end16.if.end25_crit_edge [
    i32 0, label %if.end16.land.lhs.true19_crit_edge
    i32 4096, label %if.end16.land.lhs.true19_crit_edge92
  ]

if.end16.land.lhs.true19_crit_edge92:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true19

if.end16.land.lhs.true19_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true19

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end16.land.lhs.true19_crit_edge, %if.end16.land.lhs.true19_crit_edge92
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %27 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cra_blocksize.i.i, align 4
  %sub = add i32 %30, -1
  %and22 = and i32 %sub, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %land.lhs.true19.if.end25_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %if.end16.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %31 = add nsw i32 %and, -77824
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %switch.lookup, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.atmel_aes_crypt, i32 0, i32 %32
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %34)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end25.sw.epilog_crit_edge
  %.sink = phi i16 [ %switch.load, %switch.lookup ], [ 16, %if.end25.sw.epilog_crit_edge ]
  %block_size33 = getelementptr i8, ptr %1, i32 172
  %35 = ptrtoint ptr %block_size33 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %block_size33, align 4
  %is_aead = getelementptr i8, ptr %1, i32 174
  %36 = ptrtoint ptr %is_aead to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %is_aead, align 2
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %37 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mode, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp36.not = icmp ne i32 %and, 0
  %and38 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond88 = and i1 %cmp36.not, %tobool39.not
  br i1 %or.cond88, label %land.lhs.true40, label %sw.epilog.if.end51_crit_edge

sw.epilog.if.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true40:                                  ; preds = %sw.epilog
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %cmp41 = icmp eq ptr %39, %41
  br i1 %cmp41, label %if.then42, label %land.lhs.true40.if.end51_crit_edge

land.lhs.true40.if.end51_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true40
  %__crt_alg.i.i89 = getelementptr i8, ptr %1, i32 12
  %42 = ptrtoint ptr %__crt_alg.i.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__crt_alg.i.i89, align 4
  %ivsize.i = getelementptr i8, ptr %43, i32 -100
  %44 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ivsize.i, align 4
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp45.not = icmp ult i32 %47, %45
  br i1 %cmp45.not, label %if.then42.if.end51_crit_edge, label %if.then46

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %lastc = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49 = sub i32 %47, %45
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc, ptr noundef %39, i32 noundef %sub49, i32 noundef %45, i32 noundef 0) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then42.if.end51_crit_edge, %land.lhs.true40.if.end51_crit_edge, %sw.epilog.if.end51_crit_edge
  %48 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_ctx.i.i, align 4
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %49, ptr noundef %base)
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %land.lhs.true19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %cond.false.i, %cond.true.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.end51 ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ -22, %land.lhs.true19.cleanup_crit_edge ], [ %call8.i, %cond.true.i ], [ %call10.i, %cond.false.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_start(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %__ctx.i = getelementptr i8, ptr %1, i32 112
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp ugt i32 %3, 255
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctx = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %block_size = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %7)
  %cmp2 = icmp ne i16 %7, 16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp2, %lor.rhs ]
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 8
  %11 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__ctx.i, align 128
  %or.i = or i32 %and.i, %12
  store i32 %or.i, ptr %flags.i, align 4
  %iclk.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %13 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %call.i)
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 65536) #9, !srcloc !105
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 57344) #9, !srcloc !105
  %iv = getelementptr i8, ptr %1, i32 -12
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iv, align 4
  %ctx.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 4
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 3
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %keylen.i, align 4
  tail call fastcc void @atmel_aes_write_ctrl_key(ptr noundef %dd, i1 noundef zeroext %8, ptr noundef %20, ptr noundef %key.i, i32 noundef %24) #9
  %src = getelementptr i8, ptr %1, i32 -8
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %1, i32 -4
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 128
  br i1 %8, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %dd, ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call10, %if.then8 ], [ %call15, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef returned %err) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %__ctx.i = getelementptr i8, ptr %1, i32 112
  %ctx = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %is_aead = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %is_aead to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_aead, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not.i = icmp eq i32 %err, 0
  br i1 %tobool.not.i, label %if.then.atmel_aes_authenc_complete.exit_crit_edge, label %land.lhs.true.i

if.then.atmel_aes_authenc_complete.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_complete.exit

land.lhs.true.i:                                  ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.atmel_aes_authenc_complete.exit_crit_edge, label %if.then.i

land.lhs.true.i.atmel_aes_authenc_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_complete.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %auth_req.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 5
  tail call void @atmel_sha_authenc_abort(ptr noundef %auth_req.i) #9
  br label %atmel_aes_authenc_complete.exit

atmel_aes_authenc_complete.exit:                  ; preds = %if.then.i, %land.lhs.true.i.atmel_aes_authenc_complete.exit_crit_edge, %if.then.atmel_aes_authenc_complete.exit_crit_edge
  %flags3.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3.i, align 4
  %and4.i = and i32 %9, -33
  store i32 %and4.i, ptr %flags3.i, align 4
  br label %if.end

if.end:                                           ; preds = %atmel_aes_authenc_complete.exit, %entry.if.end_crit_edge
  %iclk = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %10 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, -9
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool2.not = icmp eq i32 %err, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %is_aead4 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %is_aead4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_aead4, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true6:                                   ; preds = %land.lhs.true
  %18 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__ctx.i, align 128
  %and7 = and i32 %19, 487424
  %20 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and7, label %if.then12 [
    i32 0, label %land.lhs.true6.if.end14_crit_edge
    i32 16384, label %if.else
  ]

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true6
  %21 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %areq, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 -16
  %tfm.i.i = getelementptr i8, ptr %22, i32 16
  %23 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %24, i32 12
  %25 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %26, i32 -100
  %27 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ivsize.i.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.i = icmp ult i32 %30, %28
  br i1 %cmp.i, label %if.then12.if.end14_crit_edge, label %if.end.i

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.i:                                         ; preds = %if.then12
  %__ctx.i.i = getelementptr i8, ptr %22, i32 112
  %31 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__ctx.i.i, align 128
  %and.i36 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %iv.i = getelementptr i8, ptr %22, i32 -12
  %33 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iv.i, align 4
  %dst.i = getelementptr i8, ptr %22, i32 -4
  %35 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst.i, align 4
  %sub.i = sub i32 %30, %28
  tail call void @scatterwalk_map_and_copy(ptr noundef %34, ptr noundef %36, i32 noundef %sub.i, i32 noundef %28, i32 noundef 0) #9
  br label %if.end14

if.else.i:                                        ; preds = %if.end.i
  %src.i = getelementptr i8, ptr %22, i32 -8
  %37 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src.i, align 8
  %dst6.i = getelementptr i8, ptr %22, i32 -4
  %39 = ptrtoint ptr %dst6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst6.i, align 4
  %cmp7.i = icmp eq ptr %38, %40
  %iv9.i = getelementptr i8, ptr %22, i32 -12
  %41 = ptrtoint ptr %iv9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv9.i, align 4
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr i8, ptr %22, i32 116
  %43 = call ptr @memcpy(ptr %42, ptr %lastc.i, i32 %28)
  br label %if.end14

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub14.i = sub i32 %30, %28
  tail call void @scatterwalk_map_and_copy(ptr noundef %42, ptr noundef %38, i32 noundef %sub14.i, i32 noundef %28, i32 noundef 0) #9
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true6
  %44 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %areq, align 4
  %tfm.i.i39 = getelementptr i8, ptr %45, i32 16
  %46 = ptrtoint ptr %tfm.i.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tfm.i.i39, align 16
  %__crt_alg.i.i.i40 = getelementptr i8, ptr %47, i32 12
  %48 = ptrtoint ptr %__crt_alg.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_alg.i.i.i40, align 4
  %ivsize.i.i41 = getelementptr i8, ptr %49, i32 -100
  %50 = ptrtoint ptr %ivsize.i.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ivsize.i.i41, align 4
  %blocks.i = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %15, i32 0, i32 5
  %52 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp13.not.i = icmp eq i32 %53, 0
  br i1 %cmp13.not.i, label %if.else.atmel_aes_ctr_update_req_iv.exit_crit_edge, label %for.body.lr.ph.i

if.else.atmel_aes_ctr_update_req_iv.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_ctr_update_req_iv.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %iv.i42 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %15, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void @crypto_inc(ptr noundef %iv.i42, i32 noundef 16) #9
  %inc.i = add nuw i32 %i.014.i, 1
  %54 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blocks.i, align 4
  %cmp.i43 = icmp ult i32 %inc.i, %55
  br i1 %cmp.i43, label %for.body.i.for.body.i_crit_edge, label %for.body.i.atmel_aes_ctr_update_req_iv.exit_crit_edge

for.body.i.atmel_aes_ctr_update_req_iv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_ctr_update_req_iv.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

atmel_aes_ctr_update_req_iv.exit:                 ; preds = %for.body.i.atmel_aes_ctr_update_req_iv.exit_crit_edge, %if.else.atmel_aes_ctr_update_req_iv.exit_crit_edge
  %iv5.i = getelementptr i8, ptr %45, i32 -12
  %56 = ptrtoint ptr %iv5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv5.i, align 4
  %iv6.i = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %15, i32 0, i32 1
  %58 = call ptr @memcpy(ptr %57, ptr %iv6.i, i32 %51)
  br label %if.end14

if.end14:                                         ; preds = %atmel_aes_ctr_update_req_iv.exit, %if.else10.i, %if.then8.i, %if.then4.i, %if.then12.if.end14_crit_edge, %land.lhs.true6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %is_async = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 5
  %59 = ptrtoint ptr %is_async to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_async, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool15.not = icmp eq i8 %60, 0
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %areq, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %complete, align 4
  tail call void %64(ptr noundef %62, i32 noundef %err) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %state.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i44 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i44, label %if.then.i45, label %if.end19.tasklet_schedule.exit_crit_edge

if.end19.tasklet_schedule.exit_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i45:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %queue_task = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %queue_task) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i45, %if.end19.tasklet_schedule.exit_crit_edge
  ret i32 %err
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %src, ptr noundef %dst, i32 noundef %len, ptr noundef %resume) unnamed_addr #2 align 64 {
entry:
  %config.i37 = alloca %struct.dma_slave_config, align 4
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %block_size = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %block_size, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %3, label %entry.exit_crit_edge [
    i16 1, label %entry.sw.epilog_crit_edge
    i16 2, label %sw.bb1
    i16 4, label %entry.sw.bb2_crit_edge
    i16 8, label %entry.sw.bb2_crit_edge111
    i16 16, label %sw.bb3
  ]

entry.sw.bb2_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge111
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_burst_size = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25, i32 5
  %5 = ptrtoint ptr %max_burst_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_burst_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %addr_width.0 = phi i32 [ 4, %sw.bb3 ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %maxburst.0 = phi i32 [ %6, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %total.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %7 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %total.i, align 4
  %sg.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %src, ptr %sg.i, align 4
  %sg3.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %sg3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dst, ptr %sg3.i, align 4
  %real_dst.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 24
  %10 = ptrtoint ptr %real_dst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dst, ptr %real_dst.i, align 4
  %11 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %block_size, align 4
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i = and i32 %sub.i.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, 0
  %tobool.not54.i.i = icmp eq ptr %src, null
  %or.cond.i.i = or i1 %tobool.not54.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %sw.epilog.atmel_aes_check_aligned.exit.i_crit_edge, label %sw.epilog.for.body.i.i_crit_edge

sw.epilog.for.body.i.i_crit_edge:                 ; preds = %sw.epilog
  br label %for.body.i.i

sw.epilog.atmel_aes_check_aligned.exit.i_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_check_aligned.exit.i

for.body.i.i:                                     ; preds = %if.end33.i.i.for.body.i.i_crit_edge, %sw.epilog.for.body.i.i_crit_edge
  %nents.057.i.i = phi i32 [ %phi.bo.i.i, %if.end33.i.i.for.body.i.i_crit_edge ], [ 1, %sw.epilog.for.body.i.i_crit_edge ]
  %len.addr.056.i.i = phi i32 [ %sub35.i.i, %if.end33.i.i.for.body.i.i_crit_edge ], [ %len, %sw.epilog.for.body.i.i_crit_edge ]
  %sg.addr.055.i.i = phi ptr [ %call.i.i, %if.end33.i.i.for.body.i.i_crit_edge ], [ %src, %sw.epilog.for.body.i.i_crit_edge ]
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i.i, align 4
  %and2.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp3.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp3.i.i, label %if.end6.i.i, label %for.body.i.i.atmel_aes_check_aligned.exit.i_crit_edge

for.body.i.i.atmel_aes_check_aligned.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_check_aligned.exit.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.056.i.i, i32 %16)
  %cmp7.not.i.i = icmp ugt i32 %len.addr.056.i.i, %16
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %block_size26.i.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %block_size26.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %block_size26.i.i, align 4
  %conv27.i.i = zext i16 %20 to i32
  %sub28.i.i = add nsw i32 %conv27.i.i, -1
  br i1 %cmp7.not.i.i, label %if.end23.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %and14.i.i = and i32 %sub28.i.i, %len.addr.056.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %cmp15.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %cmp15.i.i, label %if.end18.i.i, label %if.then9.i.i.atmel_aes_check_aligned.exit.i_crit_edge

if.then9.i.i.atmel_aes_check_aligned.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_check_aligned.exit.i

if.end18.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i.i.le = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i.i, i32 0, i32 2
  %nents19.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 2
  %21 = ptrtoint ptr %nents19.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %nents.057.i.i, ptr %nents19.i.i, align 4
  %22 = ptrtoint ptr %length.i.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length.i.i.le, align 4
  %sub21.i.i = sub i32 %23, %len.addr.056.i.i
  %remainder.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 3
  %24 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub21.i.i, ptr %remainder.i.i, align 4
  store i32 %len.addr.056.i.i, ptr %length.i.i.le, align 4
  br label %atmel_aes_check_aligned.exit.i

if.end23.i.i:                                     ; preds = %if.end6.i.i
  %and29.i.i = and i32 %sub28.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %cmp30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %cmp30.i.i, label %if.end33.i.i, label %if.end23.i.i.atmel_aes_check_aligned.exit.i_crit_edge

if.end23.i.i.atmel_aes_check_aligned.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_check_aligned.exit.i

if.end33.i.i:                                     ; preds = %if.end23.i.i
  %sub35.i.i = sub i32 %len.addr.056.i.i, %16
  %call.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.055.i.i) #9
  %phi.bo.i.i = add i32 %nents.057.i.i, 1
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end33.i.i.atmel_aes_check_aligned.exit.i_crit_edge, label %if.end33.i.i.for.body.i.i_crit_edge

if.end33.i.i.for.body.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end33.i.i.atmel_aes_check_aligned.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_check_aligned.exit.i

atmel_aes_check_aligned.exit.i:                   ; preds = %if.end33.i.i.atmel_aes_check_aligned.exit.i_crit_edge, %if.end23.i.i.atmel_aes_check_aligned.exit.i_crit_edge, %if.end18.i.i, %if.then9.i.i.atmel_aes_check_aligned.exit.i_crit_edge, %for.body.i.i.atmel_aes_check_aligned.exit.i_crit_edge, %sw.epilog.atmel_aes_check_aligned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ true, %if.end18.i.i ], [ false, %sw.epilog.atmel_aes_check_aligned.exit.i_crit_edge ], [ false, %if.then9.i.i.atmel_aes_check_aligned.exit.i_crit_edge ], [ false, %for.body.i.i.atmel_aes_check_aligned.exit.i_crit_edge ], [ false, %if.end23.i.i.atmel_aes_check_aligned.exit.i_crit_edge ], [ false, %if.end33.i.i.atmel_aes_check_aligned.exit.i_crit_edge ]
  %cmp.i = icmp eq ptr %src, %dst
  br i1 %cmp.i, label %atmel_aes_check_aligned.exit.i.if.end.i_crit_edge, label %if.else.i

atmel_aes_check_aligned.exit.i.if.end.i_crit_edge: ; preds = %atmel_aes_check_aligned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %atmel_aes_check_aligned.exit.i
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  %block_size.i159.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %block_size.i159.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %block_size.i159.i, align 4
  %conv.i160.i = zext i16 %28 to i32
  %sub.i161.i = add nsw i32 %conv.i160.i, -1
  %and.i162.i = and i32 %sub.i161.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i)
  %cmp.i163.i = icmp ne i32 %and.i162.i, 0
  %tobool.not54.i164.i = icmp eq ptr %dst, null
  %or.cond.i165.i = or i1 %tobool.not54.i164.i, %cmp.i163.i
  br i1 %or.cond.i165.i, label %if.else.i.if.then11.i_crit_edge, label %if.else.i.for.body.i172.i_crit_edge

if.else.i.for.body.i172.i_crit_edge:              ; preds = %if.else.i
  br label %for.body.i172.i

if.else.i.if.then11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

for.body.i172.i:                                  ; preds = %if.end33.i197.i.for.body.i172.i_crit_edge, %if.else.i.for.body.i172.i_crit_edge
  %nents.057.i166.i = phi i32 [ %phi.bo.i195.i, %if.end33.i197.i.for.body.i172.i_crit_edge ], [ 1, %if.else.i.for.body.i172.i_crit_edge ]
  %len.addr.056.i167.i = phi i32 [ %sub35.i193.i, %if.end33.i197.i.for.body.i172.i_crit_edge ], [ %len, %if.else.i.for.body.i172.i_crit_edge ]
  %sg.addr.055.i168.i = phi ptr [ %call.i194.i, %if.end33.i197.i.for.body.i172.i_crit_edge ], [ %dst, %if.else.i.for.body.i172.i_crit_edge ]
  %offset.i169.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i168.i, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i169.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i169.i, align 4
  %and2.i170.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i170.i)
  %cmp3.i171.i = icmp eq i32 %and2.i170.i, 0
  br i1 %cmp3.i171.i, label %if.end6.i175.i, label %for.body.i172.i.if.then11.i_crit_edge

for.body.i172.i.if.then11.i_crit_edge:            ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end6.i175.i:                                   ; preds = %for.body.i172.i
  %length.i173.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i168.i, i32 0, i32 2
  %31 = ptrtoint ptr %length.i173.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i173.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.056.i167.i, i32 %32)
  %cmp7.not.i174.i = icmp ugt i32 %len.addr.056.i167.i, %32
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %block_size26.i187.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %block_size26.i187.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %block_size26.i187.i, align 4
  %conv27.i188.i = zext i16 %36 to i32
  %sub28.i189.i = add nsw i32 %conv27.i188.i, -1
  br i1 %cmp7.not.i174.i, label %if.end23.i192.i, label %if.then9.i181.i

if.then9.i181.i:                                  ; preds = %if.end6.i175.i
  %and14.i179.i = and i32 %sub28.i189.i, %len.addr.056.i167.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i179.i)
  %cmp15.i180.i = icmp eq i32 %and14.i179.i, 0
  br i1 %cmp15.i180.i, label %if.end18.i186.i, label %if.then9.i181.i.if.then11.i_crit_edge

if.then9.i181.i.if.then11.i_crit_edge:            ; preds = %if.then9.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end18.i186.i:                                  ; preds = %if.then9.i181.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i173.i.le = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.055.i168.i, i32 0, i32 2
  %nents19.i183.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 2
  %37 = ptrtoint ptr %nents19.i183.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %nents.057.i166.i, ptr %nents19.i183.i, align 4
  %38 = ptrtoint ptr %length.i173.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i173.i.le, align 4
  %sub21.i184.i = sub i32 %39, %len.addr.056.i167.i
  %remainder.i185.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 3
  %40 = ptrtoint ptr %remainder.i185.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub21.i184.i, ptr %remainder.i185.i, align 4
  store i32 %len.addr.056.i167.i, ptr %length.i173.i.le, align 4
  br label %if.end.i

if.end23.i192.i:                                  ; preds = %if.end6.i175.i
  %and29.i190.i = and i32 %sub28.i189.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i190.i)
  %cmp30.i191.i = icmp eq i32 %and29.i190.i, 0
  br i1 %cmp30.i191.i, label %if.end33.i197.i, label %if.end23.i192.i.if.then11.i_crit_edge

if.end23.i192.i.if.then11.i_crit_edge:            ; preds = %if.end23.i192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end33.i197.i:                                  ; preds = %if.end23.i192.i
  %sub35.i193.i = sub i32 %len.addr.056.i167.i, %32
  %call.i194.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.055.i168.i) #9
  %phi.bo.i195.i = add i32 %nents.057.i166.i, 1
  %tobool.not.i196.i = icmp eq ptr %call.i194.i, null
  br i1 %tobool.not.i196.i, label %if.end33.i197.i.if.then11.i_crit_edge, label %if.end33.i197.i.for.body.i172.i_crit_edge

if.end33.i197.i.for.body.i172.i_crit_edge:        ; preds = %if.end33.i197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i172.i

if.end33.i197.i.if.then11.i_crit_edge:            ; preds = %if.end33.i197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end.i:                                         ; preds = %if.end18.i186.i, %atmel_aes_check_aligned.exit.i.if.end.i_crit_edge
  %dst_aligned.0.in.i = phi i1 [ %retval.0.i.i, %atmel_aes_check_aligned.exit.i.if.end.i_crit_edge ], [ true, %if.end18.i186.i ]
  %brmerge.demorgan.i = and i1 %retval.0.i.i, %dst_aligned.0.in.i
  br i1 %brmerge.demorgan.i, label %if.end.i.if.end40.i_crit_edge, label %if.end.i.if.then11.i_crit_edge

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then11.i:                                      ; preds = %if.end.i.if.then11.i_crit_edge, %if.end33.i197.i.if.then11.i_crit_edge, %if.end23.i192.i.if.then11.i_crit_edge, %if.then9.i181.i.if.then11.i_crit_edge, %for.body.i172.i.if.then11.i_crit_edge, %if.else.i.if.then11.i_crit_edge
  %dst_aligned.0.in211.i = phi i1 [ %dst_aligned.0.in.i, %if.end.i.if.then11.i_crit_edge ], [ false, %if.else.i.if.then11.i_crit_edge ], [ false, %if.then9.i181.i.if.then11.i_crit_edge ], [ false, %for.body.i172.i.if.then11.i_crit_edge ], [ false, %if.end23.i192.i.if.then11.i_crit_edge ], [ false, %if.end33.i197.i.if.then11.i_crit_edge ]
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %block_size.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %block_size.i, align 4
  %conv.i = zext i16 %44 to i32
  %sub.i200.i = add nsw i32 %conv.i, -1
  %and.i201.i = and i32 %sub.i200.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201.i)
  %tobool.not.i202.i = icmp eq i32 %and.i201.i, 0
  %sub1.i.i = sub i32 %conv.i, %and.i201.i
  %spec.select.i.i = select i1 %tobool.not.i202.i, i32 0, i32 %sub1.i.i
  %buflen.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 21
  %45 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buflen.i, align 4
  %add.i = add i32 %spec.select.i.i, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i)
  %cmp13.i = icmp ult i32 %46, %add.i
  br i1 %cmp13.i, label %if.then11.i.exit_crit_edge, label %if.end16.i

if.then11.i.exit_crit_edge:                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end16.i:                                       ; preds = %if.then11.i
  br i1 %retval.0.i.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then18.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 @sg_nents(ptr noundef %src) #9
  %buf.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %47 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf.i, align 4
  %call20.i = tail call i32 @sg_copy_to_buffer(ptr noundef %src, i32 noundef %call19.i, ptr noundef %48, i32 noundef %len) #9
  %aligned_sg.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  %49 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %aligned_sg.i, ptr %sg.i, align 4
  %nents.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 2
  %50 = ptrtoint ptr %nents.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %nents.i, align 4
  %remainder.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 3
  %51 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %remainder.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end25.i_crit_edge
  br i1 %dst_aligned.0.in211.i, label %if.end25.i.if.end35.i_crit_edge, label %if.then27.i

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %aligned_sg28.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  %52 = ptrtoint ptr %sg3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %aligned_sg28.i, ptr %sg3.i, align 4
  %nents32.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 2
  %53 = ptrtoint ptr %nents32.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %nents32.i, align 4
  %remainder34.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 3
  %54 = ptrtoint ptr %remainder34.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %remainder34.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end35.i_crit_edge
  %aligned_sg36.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  tail call void @sg_init_table(ptr noundef %aligned_sg36.i, i32 noundef 1) #9
  %buf38.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %55 = ptrtoint ptr %buf38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf38.i, align 4
  %57 = ptrtoint ptr %56 to i32
  %cmp.i203.i = icmp ugt ptr %56, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i203.i, label %land.lhs.true.i.i, label %if.end35.i.do.body5.i.i_crit_edge, !prof !108

if.end35.i.do.body5.i.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %58 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %58, %56
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !108

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i204.i = add i32 %57, 1073741824
  %shr.i.i = lshr i32 %sub.i204.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %59, %shr.i.i
  %call.i205.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205.i)
  %tobool.i.i = icmp eq i32 %call.i205.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !109

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end35.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !110
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %60, i32 %shr.i.i
  %61 = ptrtoint ptr %aligned_sg36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aligned_sg36.i, align 4
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !108

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !108

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i206.i = and i32 %57, 4095
  %and.i.i.i.i = and i32 %62, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %63
  %64 = ptrtoint ptr %aligned_sg36.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i.i.i, ptr %aligned_sg36.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23, i32 1
  %65 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i206.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23, i32 2
  %66 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %length.i.i.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %sg_set_buf.exit.i, %if.end.i.if.end40.i_crit_edge
  %67 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sg.i, align 4
  %69 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sg3.i, align 4
  %cmp45.i = icmp eq ptr %68, %70
  %dev.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 8
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %nents51.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 2
  %73 = ptrtoint ptr %nents51.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nents51.i, align 4
  br i1 %cmp45.i, label %if.then47.i, label %if.else63.i

if.then47.i:                                      ; preds = %if.end40.i
  %call52.i = tail call i32 @dma_map_sg_attrs(ptr noundef %72, ptr noundef %68, i32 noundef %74, i32 noundef 0, i32 noundef 0) #9
  %sg_len.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 4
  %75 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call52.i, ptr %sg_len.i, align 4
  %sg_len57.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 4
  %76 = ptrtoint ptr %sg_len57.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call52.i, ptr %sg_len57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool60.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool60.not.i, label %if.then47.i.exit_crit_edge, label %if.then47.i.if.end_crit_edge

if.then47.i.if.end_crit_edge:                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then47.i.exit_crit_edge:                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.else63.i:                                      ; preds = %if.end40.i
  %call69.i = tail call i32 @dma_map_sg_attrs(ptr noundef %72, ptr noundef %68, i32 noundef %74, i32 noundef 1, i32 noundef 0) #9
  %sg_len71.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 4
  %77 = ptrtoint ptr %sg_len71.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call69.i, ptr %sg_len71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool74.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool74.not.i, label %if.else63.i.exit_crit_edge, label %if.end76.i

if.else63.i.exit_crit_edge:                       ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end76.i:                                       ; preds = %if.else63.i
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  %80 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sg3.i, align 4
  %nents81.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 2
  %82 = ptrtoint ptr %nents81.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nents81.i, align 4
  %call82.i = tail call i32 @dma_map_sg_attrs(ptr noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 2, i32 noundef 0) #9
  %sg_len84.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 4
  %84 = ptrtoint ptr %sg_len84.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call82.i, ptr %sg_len84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool87.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool87.not.i, label %if.then88.i, label %if.end76.i.if.end_crit_edge

if.end76.i.if.end_crit_edge:                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then88.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %87 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg.i, align 4
  %89 = ptrtoint ptr %nents51.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nents51.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %86, ptr noundef %88, i32 noundef %90, i32 noundef 1, i32 noundef 0) #9
  br label %exit

if.end:                                           ; preds = %if.end76.i.if.end_crit_edge, %if.then47.i.if.end_crit_edge
  %resume4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %91 = ptrtoint ptr %resume4 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %resume, ptr %resume4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #9
  %92 = call ptr @memset(ptr %config.i, i32 0, i32 48)
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 3
  %93 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %addr_width.0, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 4
  %94 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %addr_width.0, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 5
  %95 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %maxburst.0, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 6
  %96 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %maxburst.0, ptr %dst_maxburst.i, align 4
  %dst.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20
  %phys_base2.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 1
  %97 = ptrtoint ptr %phys_base2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %phys_base2.i, align 4
  %add3.i = add i32 %98, 80
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 1
  %99 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add3.i, ptr %src_addr.i, align 4
  %100 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dst.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i31 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i31, label %if.end.atmel_aes_dma_transfer_start.exit.thread_crit_edge, label %dmaengine_slave_config.exit.i

if.end.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

dmaengine_slave_config.exit.i:                    ; preds = %if.end
  %call.i.i32 = call i32 %105(ptr noundef %101, ptr noundef nonnull %config.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i, label %if.end.i35, label %dmaengine_slave_config.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge

dmaengine_slave_config.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

if.end.i35:                                       ; preds = %dmaengine_slave_config.exit.i
  %106 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dst.i, align 4
  %108 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sg3.i, align 4
  %sg_len.i34 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 4
  %110 = ptrtoint ptr %sg_len.i34 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sg_len.i34, align 4
  %tobool.not.i31.i = icmp eq ptr %107, null
  br i1 %tobool.not.i31.i, label %if.end.i35.atmel_aes_dma_transfer_start.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i35.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i35
  %112 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %107, align 4
  %tobool1.not.i.i = icmp eq ptr %113, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 39
  %114 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %115, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i32.i = call ptr %115(ptr noundef nonnull %107, ptr noundef %109, i32 noundef %111, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tobool6.not.i = icmp eq ptr %call.i32.i, null
  br i1 %tobool6.not.i, label %dmaengine_prep_slave_sg.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, label %if.end8

dmaengine_prep_slave_sg.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_dma_transfer_start.exit.thread

atmel_aes_dma_transfer_start.exit.thread:         ; preds = %dmaengine_prep_slave_sg.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, %lor.lhs.false2.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, %lor.lhs.false.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, %if.end.i35.atmel_aes_dma_transfer_start.exit.thread_crit_edge, %dmaengine_slave_config.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge, %if.end.atmel_aes_dma_transfer_start.exit.thread_crit_edge
  %retval.0.i36.ph = phi i32 [ -12, %if.end.i35.atmel_aes_dma_transfer_start.exit.thread_crit_edge ], [ -12, %lor.lhs.false.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge ], [ -12, %lor.lhs.false2.i.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge ], [ -38, %if.end.atmel_aes_dma_transfer_start.exit.thread_crit_edge ], [ -12, %dmaengine_prep_slave_sg.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge ], [ %call.i.i32, %dmaengine_slave_config.exit.i.atmel_aes_dma_transfer_start.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #9
  br label %unmap

if.end8:                                          ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback9.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i, i32 0, i32 6
  %116 = ptrtoint ptr %callback9.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @atmel_aes_dma_callback, ptr %callback9.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i, i32 0, i32 8
  %117 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %dd, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i, i32 0, i32 4
  %118 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i34.i = call i32 %119(ptr noundef nonnull %call.i32.i) #9
  %120 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dst.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 50
  %124 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %125(ptr noundef %121) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i37) #9
  %126 = call ptr @memset(ptr %config.i37, i32 0, i32 48)
  %src_addr_width.i38 = getelementptr inbounds %struct.dma_slave_config, ptr %config.i37, i32 0, i32 3
  %127 = ptrtoint ptr %src_addr_width.i38 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %addr_width.0, ptr %src_addr_width.i38, align 4
  %dst_addr_width.i39 = getelementptr inbounds %struct.dma_slave_config, ptr %config.i37, i32 0, i32 4
  %128 = ptrtoint ptr %dst_addr_width.i39 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %addr_width.0, ptr %dst_addr_width.i39, align 4
  %src_maxburst.i40 = getelementptr inbounds %struct.dma_slave_config, ptr %config.i37, i32 0, i32 5
  %129 = ptrtoint ptr %src_maxburst.i40 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %maxburst.0, ptr %src_maxburst.i40, align 4
  %dst_maxburst.i41 = getelementptr inbounds %struct.dma_slave_config, ptr %config.i37, i32 0, i32 6
  %130 = ptrtoint ptr %dst_maxburst.i41 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %maxburst.0, ptr %dst_maxburst.i41, align 4
  %src.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19
  %131 = ptrtoint ptr %phys_base2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %phys_base2.i, align 4
  %add.i42 = add i32 %132, 64
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i37, i32 0, i32 2
  %133 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add.i42, ptr %dst_addr.i, align 4
  %134 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %src.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %device_config.i.i43 = getelementptr inbounds %struct.dma_device, ptr %137, i32 0, i32 44
  %138 = ptrtoint ptr %device_config.i.i43 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %device_config.i.i43, align 4
  %tobool.not.i.i44 = icmp eq ptr %139, null
  br i1 %tobool.not.i.i44, label %if.end8.output_transfer_stop_crit_edge, label %dmaengine_slave_config.exit.i47

if.end8.output_transfer_stop_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

dmaengine_slave_config.exit.i47:                  ; preds = %if.end8
  %call.i.i45 = call i32 %139(ptr noundef %135, ptr noundef nonnull %config.i37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %tobool.not.i46 = icmp eq i32 %call.i.i45, 0
  br i1 %tobool.not.i46, label %if.end.i51, label %dmaengine_slave_config.exit.i47.output_transfer_stop_crit_edge

dmaengine_slave_config.exit.i47.output_transfer_stop_crit_edge: ; preds = %dmaengine_slave_config.exit.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

if.end.i51:                                       ; preds = %dmaengine_slave_config.exit.i47
  %140 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %src.i, align 4
  %142 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sg.i, align 4
  %sg_len.i49 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 4
  %144 = ptrtoint ptr %sg_len.i49 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sg_len.i49, align 4
  %tobool.not.i31.i50 = icmp eq ptr %141, null
  br i1 %tobool.not.i31.i50, label %if.end.i51.output_transfer_stop_crit_edge, label %lor.lhs.false.i.i53

if.end.i51.output_transfer_stop_crit_edge:        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

lor.lhs.false.i.i53:                              ; preds = %if.end.i51
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %141, align 4
  %tobool1.not.i.i52 = icmp eq ptr %147, null
  br i1 %tobool1.not.i.i52, label %lor.lhs.false.i.i53.output_transfer_stop_crit_edge, label %lor.lhs.false2.i.i56

lor.lhs.false.i.i53.output_transfer_stop_crit_edge: ; preds = %lor.lhs.false.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

lor.lhs.false2.i.i56:                             ; preds = %lor.lhs.false.i.i53
  %device_prep_slave_sg.i.i54 = getelementptr inbounds %struct.dma_device, ptr %147, i32 0, i32 39
  %148 = ptrtoint ptr %device_prep_slave_sg.i.i54 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device_prep_slave_sg.i.i54, align 4
  %tobool4.not.i.i55 = icmp eq ptr %149, null
  br i1 %tobool4.not.i.i55, label %lor.lhs.false2.i.i56.output_transfer_stop_crit_edge, label %dmaengine_prep_slave_sg.exit.i59

lor.lhs.false2.i.i56.output_transfer_stop_crit_edge: ; preds = %lor.lhs.false2.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

dmaengine_prep_slave_sg.exit.i59:                 ; preds = %lor.lhs.false2.i.i56
  %call.i32.i57 = call ptr %149(ptr noundef nonnull %141, ptr noundef %143, i32 noundef %145, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %tobool6.not.i58 = icmp eq ptr %call.i32.i57, null
  br i1 %tobool6.not.i58, label %dmaengine_prep_slave_sg.exit.i59.output_transfer_stop_crit_edge, label %atmel_aes_dma_transfer_start.exit67

dmaengine_prep_slave_sg.exit.i59.output_transfer_stop_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %output_transfer_stop

atmel_aes_dma_transfer_start.exit67:              ; preds = %dmaengine_prep_slave_sg.exit.i59
  call void @__sanitizer_cov_trace_pc() #11
  %callback9.i60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i57, i32 0, i32 6
  %150 = ptrtoint ptr %callback9.i60 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %callback9.i60, align 4
  %callback_param.i61 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i57, i32 0, i32 8
  %151 = ptrtoint ptr %callback_param.i61 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %dd, ptr %callback_param.i61, align 4
  %tx_submit.i.i62 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i32.i57, i32 0, i32 4
  %152 = ptrtoint ptr %tx_submit.i.i62 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tx_submit.i.i62, align 4
  %call.i34.i63 = call i32 %153(ptr noundef nonnull %call.i32.i57) #9
  %154 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %src.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %device_issue_pending.i.i64 = getelementptr inbounds %struct.dma_device, ptr %157, i32 0, i32 50
  %158 = ptrtoint ptr %device_issue_pending.i.i64 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %device_issue_pending.i.i64, align 4
  call void %159(ptr noundef %155) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i37) #9
  br label %cleanup

output_transfer_stop:                             ; preds = %dmaengine_prep_slave_sg.exit.i59.output_transfer_stop_crit_edge, %lor.lhs.false2.i.i56.output_transfer_stop_crit_edge, %lor.lhs.false.i.i53.output_transfer_stop_crit_edge, %if.end.i51.output_transfer_stop_crit_edge, %dmaengine_slave_config.exit.i47.output_transfer_stop_crit_edge, %if.end8.output_transfer_stop_crit_edge
  %retval.0.i66.ph = phi i32 [ -12, %if.end.i51.output_transfer_stop_crit_edge ], [ -12, %lor.lhs.false.i.i53.output_transfer_stop_crit_edge ], [ -12, %lor.lhs.false2.i.i56.output_transfer_stop_crit_edge ], [ -38, %if.end8.output_transfer_stop_crit_edge ], [ -12, %dmaengine_prep_slave_sg.exit.i59.output_transfer_stop_crit_edge ], [ %call.i.i45, %dmaengine_slave_config.exit.i47.output_transfer_stop_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i37) #9
  %160 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dst.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %163, i32 0, i32 47
  %164 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i68 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i68, label %output_transfer_stop.unmap_crit_edge, label %dmaengine_terminate_async.exit.i

output_transfer_stop.unmap_crit_edge:             ; preds = %output_transfer_stop
  call void @__sanitizer_cov_trace_pc() #11
  br label %unmap

dmaengine_terminate_async.exit.i:                 ; preds = %output_transfer_stop
  %call.i.i69 = call i32 %165(ptr noundef %161) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %tobool.not.i70 = icmp eq i32 %call.i.i69, 0
  br i1 %tobool.not.i70, label %if.end.i71, label %dmaengine_terminate_async.exit.i.unmap_crit_edge

dmaengine_terminate_async.exit.i.unmap_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unmap

if.end.i71:                                       ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 1169) #9
  %166 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %161, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %167, i32 0, i32 48
  %168 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %169, null
  br i1 %tobool.not.i1.i, label %if.end.i71.unmap_crit_edge, label %if.then.i2.i

if.end.i71.unmap_crit_edge:                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %unmap

if.then.i2.i:                                     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  call void %169(ptr noundef %161) #9
  br label %unmap

unmap:                                            ; preds = %if.then.i2.i, %if.end.i71.unmap_crit_edge, %dmaengine_terminate_async.exit.i.unmap_crit_edge, %output_transfer_stop.unmap_crit_edge, %atmel_aes_dma_transfer_start.exit.thread
  %err.0 = phi i32 [ %retval.0.i36.ph, %atmel_aes_dma_transfer_start.exit.thread ], [ %retval.0.i66.ph, %output_transfer_stop.unmap_crit_edge ], [ %retval.0.i66.ph, %dmaengine_terminate_async.exit.i.unmap_crit_edge ], [ %retval.0.i66.ph, %if.end.i71.unmap_crit_edge ], [ %retval.0.i66.ph, %if.then.i2.i ]
  call fastcc void @atmel_aes_unmap(ptr noundef %dd)
  br label %exit

exit:                                             ; preds = %unmap, %if.then88.i, %if.else63.i.exit_crit_edge, %if.then47.i.exit_crit_edge, %if.then11.i.exit_crit_edge, %entry.exit_crit_edge
  %err.1 = phi i32 [ %err.0, %unmap ], [ -22, %entry.exit_crit_edge ], [ -14, %if.else63.i.exit_crit_edge ], [ -14, %if.then47.i.exit_crit_edge ], [ -12, %if.then11.i.exit_crit_edge ], [ -14, %if.then88.i ]
  %call15 = call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %err.1)
  br label %cleanup

cleanup:                                          ; preds = %exit, %atmel_aes_dma_transfer_start.exit67
  %retval.0 = phi i32 [ %err.1, %exit ], [ -115, %atmel_aes_dma_transfer_start.exit67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_transfer_complete(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_cpu_start(ptr noundef %dd, ptr noundef %src, ptr noundef %dst, i32 noundef %len, ptr noundef %resume) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !109

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sub1.i = sub nuw nsw i32 16, %and.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub1.i
  %call2 = tail call i32 @sg_nents(ptr noundef %src) #9
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %call3 = tail call i32 @sg_copy_to_buffer(ptr noundef %src, i32 noundef %call2, ptr noundef %1, i32 noundef %len) #9
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %2 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %total, align 4
  %real_dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 24
  %3 = ptrtoint ptr %real_dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dst, ptr %real_dst, align 4
  %cpu_transfer_complete = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 7
  %4 = ptrtoint ptr %cpu_transfer_complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %resume, ptr %cpu_transfer_complete, align 4
  %add = add i32 %spec.select.i, %len
  %datalen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %datalen, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %data = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %data, align 4
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %12 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %7, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.i.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %16) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %7, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %21) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %7, i32 3
  %24 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %28, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %26) #9, !srcloc !105
  %29 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !106
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i21 = icmp eq i32 %32, 0
  br i1 %tobool.not.i21, label %if.end.i, label %if.then.i, !prof !108

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @atmel_aes_cpu_transfer(ptr noundef %dd) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %resume4.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %33 = ptrtoint ptr %resume4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @atmel_aes_cpu_transfer, ptr %resume4.i, align 4
  %34 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #9, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3.i, %if.then.i ], [ -115, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_sha_authenc_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_write_ctrl_key(ptr nocapture noundef readonly %dd, i1 noundef zeroext %use_dma, ptr noundef readonly %iv, ptr nocapture noundef readonly %key, i32 noundef %keylen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %switch.selectcmp = icmp eq i32 %keylen, 24
  %switch.select = select i1 %switch.selectcmp, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %switch.selectcmp37 = icmp eq i32 %keylen, 16
  %switch.select38 = select i1 %switch.selectcmp37, i32 0, i32 %switch.select
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 487427
  %or7 = or i32 %and, %switch.select38
  br i1 %use_dma, label %if.then8, label %if.else14

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %caps = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caps, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  %spec.select.v = select i1 %tobool10.not, i32 512, i32 520
  %spec.select = or i32 %spec.select.v, %or7
  br label %if.end16

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %or7, 256
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then8
  %valmr.1 = phi i32 [ %or15, %if.else14 ], [ %spec.select, %if.then8 ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %valmr.1) #9
  %io_base.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %tobool.not3.i = icmp ult i32 %keylen, 4
  br i1 %tobool.not3.i, label %if.end16.atmel_aes_write_n.exit_crit_edge, label %for.body.i.preheader

if.end16.atmel_aes_write_n.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit

for.body.i.preheader:                             ; preds = %if.end16
  %shr = ashr i32 %keylen, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %count.addr.06.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %shr, %for.body.i.preheader ]
  %value.addr.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %key, %for.body.i.preheader ]
  %offset.addr.04.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 32, %for.body.i.preheader ]
  %dec.i = add i32 %count.addr.06.i, -1
  %7 = ptrtoint ptr %value.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value.addr.05.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %offset.addr.04.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #9, !srcloc !105
  %incdec.ptr.i = getelementptr i32, ptr %value.addr.05.i, i32 1
  %add.i = add i32 %offset.addr.04.i, 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.atmel_aes_write_n.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.atmel_aes_write_n.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit

atmel_aes_write_n.exit:                           ; preds = %for.body.i.atmel_aes_write_n.exit_crit_edge, %if.end16.atmel_aes_write_n.exit_crit_edge
  %tobool17.not = icmp eq ptr %iv, null
  %and18 = and i32 %valmr.1, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  %or.cond = or i1 %tobool17.not, %cmp19.not
  br i1 %or.cond, label %atmel_aes_write_n.exit.if.end21_crit_edge, label %if.then20

atmel_aes_write_n.exit.if.end21_crit_edge:        ; preds = %atmel_aes_write_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %atmel_aes_write_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iv, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %14) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %iv, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %21, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %19) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %iv, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %26, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %24) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %iv, i32 3
  %27 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %31, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %29) #9, !srcloc !105
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %atmel_aes_write_n.exit.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_unmap(ptr noundef readonly %dd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %sg1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg1, align 4
  %cmp = icmp eq ptr %1, %3
  %dev = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %nents = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %1, i32 noundef %7, i32 noundef 0, i32 noundef 0) #9
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %aligned_sg = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  %cmp7.not = icmp eq ptr %9, %aligned_sg
  br i1 %cmp7.not, label %if.then.if.end34_crit_edge, label %if.then8

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then8:                                         ; preds = %if.then
  %remainder.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 3
  %10 = ptrtoint ptr %remainder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %remainder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then8.if.end34_crit_edge, label %while.cond.preheader.i

if.then8.if.end34_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

while.cond.preheader.i:                           ; preds = %if.then8
  %12 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents, align 4
  %14 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg, align 4
  %dec15.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec15.i)
  %cmp16.i = icmp slt i32 %dec15.i, 1
  %tobool3.not17.i = icmp eq ptr %15, null
  %or.cond18.i = select i1 %cmp16.i, i1 true, i1 %tobool3.not17.i
  br i1 %or.cond18.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec20.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec15.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %sg.019.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %15, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.019.i) #9
  %dec.i = add nsw i32 %dec20.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  %tobool3.not.i = icmp eq ptr %call.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %sg.0.lcssa.i = phi ptr [ %15, %while.cond.preheader.i.while.end.i_crit_edge ], [ %call.i, %while.body.i.while.end.i_crit_edge ]
  %tobool3.not.lcssa.i = phi i1 [ %tobool3.not17.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %tobool3.not.i, %while.body.i.while.end.i_crit_edge ]
  br i1 %tobool3.not.lcssa.i, label %while.end.i.if.end34_crit_edge, label %while.end.i.if.end34.sink.split_crit_edge

while.end.i.if.end34.sink.split_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

while.end.i.if.end34_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else:                                          ; preds = %entry
  %nents14 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %3, i32 noundef %17, i32 noundef 2, i32 noundef 0) #9
  %18 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg1, align 4
  %aligned_sg17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  %cmp18.not = icmp eq ptr %19, %aligned_sg17
  br i1 %cmp18.not, label %if.else.if.end21_crit_edge, label %if.then19

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.else
  %remainder.i69 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 20, i32 3
  %20 = ptrtoint ptr %remainder.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %remainder.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i70 = icmp eq i32 %21, 0
  br i1 %tobool.not.i70, label %if.then19.if.end21_crit_edge, label %while.cond.preheader.i77

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

while.cond.preheader.i77:                         ; preds = %if.then19
  %22 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents14, align 4
  %24 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg1, align 4
  %dec15.i73 = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec15.i73)
  %cmp16.i74 = icmp slt i32 %dec15.i73, 1
  %tobool3.not17.i75 = icmp eq ptr %25, null
  %or.cond18.i76 = select i1 %cmp16.i74, i1 true, i1 %tobool3.not17.i75
  br i1 %or.cond18.i76, label %while.cond.preheader.i77.while.end.i88_crit_edge, label %while.cond.preheader.i77.while.body.i85_crit_edge

while.cond.preheader.i77.while.body.i85_crit_edge: ; preds = %while.cond.preheader.i77
  br label %while.body.i85

while.cond.preheader.i77.while.end.i88_crit_edge: ; preds = %while.cond.preheader.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i88

while.body.i85:                                   ; preds = %while.body.i85.while.body.i85_crit_edge, %while.cond.preheader.i77.while.body.i85_crit_edge
  %dec20.i78 = phi i32 [ %dec.i81, %while.body.i85.while.body.i85_crit_edge ], [ %dec15.i73, %while.cond.preheader.i77.while.body.i85_crit_edge ]
  %sg.019.i79 = phi ptr [ %call.i80, %while.body.i85.while.body.i85_crit_edge ], [ %25, %while.cond.preheader.i77.while.body.i85_crit_edge ]
  %call.i80 = tail call ptr @sg_next(ptr noundef nonnull %sg.019.i79) #9
  %dec.i81 = add nsw i32 %dec20.i78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i81)
  %cmp.i82 = icmp eq i32 %dec.i81, 0
  %tobool3.not.i83 = icmp eq ptr %call.i80, null
  %or.cond.i84 = select i1 %cmp.i82, i1 true, i1 %tobool3.not.i83
  br i1 %or.cond.i84, label %while.body.i85.while.end.i88_crit_edge, label %while.body.i85.while.body.i85_crit_edge

while.body.i85.while.body.i85_crit_edge:          ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i85

while.body.i85.while.end.i88_crit_edge:           ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i88

while.end.i88:                                    ; preds = %while.body.i85.while.end.i88_crit_edge, %while.cond.preheader.i77.while.end.i88_crit_edge
  %sg.0.lcssa.i86 = phi ptr [ %25, %while.cond.preheader.i77.while.end.i88_crit_edge ], [ %call.i80, %while.body.i85.while.end.i88_crit_edge ]
  %tobool3.not.lcssa.i87 = phi i1 [ %tobool3.not17.i75, %while.cond.preheader.i77.while.end.i88_crit_edge ], [ %tobool3.not.i83, %while.body.i85.while.end.i88_crit_edge ]
  br i1 %tobool3.not.lcssa.i87, label %while.end.i88.if.end21_crit_edge, label %if.end6.i91

while.end.i88.if.end21_crit_edge:                 ; preds = %while.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end6.i91:                                      ; preds = %while.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %remainder.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %remainder.i69, align 4
  %length.i89 = getelementptr inbounds %struct.scatterlist, ptr %sg.0.lcssa.i86, i32 0, i32 2
  %28 = ptrtoint ptr %length.i89 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i89, align 4
  %add.i90 = add i32 %29, %27
  store i32 %add.i90, ptr %length.i89, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end6.i91, %while.end.i88.if.end21_crit_edge, %if.then19.if.end21_crit_edge, %if.else.if.end21_crit_edge
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg, align 4
  %nents26 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %nents26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents26, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 1, i32 noundef 0) #9
  %36 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg, align 4
  %cmp30.not = icmp eq ptr %37, %aligned_sg17
  br i1 %cmp30.not, label %if.end21.if.end34_crit_edge, label %if.then31

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end21
  %remainder.i93 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 19, i32 3
  %38 = ptrtoint ptr %remainder.i93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %remainder.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i94 = icmp eq i32 %39, 0
  br i1 %tobool.not.i94, label %if.then31.if.end34_crit_edge, label %while.cond.preheader.i101

if.then31.if.end34_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

while.cond.preheader.i101:                        ; preds = %if.then31
  %40 = ptrtoint ptr %nents26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nents26, align 4
  %42 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sg, align 4
  %dec15.i97 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec15.i97)
  %cmp16.i98 = icmp slt i32 %dec15.i97, 1
  %tobool3.not17.i99 = icmp eq ptr %43, null
  %or.cond18.i100 = select i1 %cmp16.i98, i1 true, i1 %tobool3.not17.i99
  br i1 %or.cond18.i100, label %while.cond.preheader.i101.while.end.i112_crit_edge, label %while.cond.preheader.i101.while.body.i109_crit_edge

while.cond.preheader.i101.while.body.i109_crit_edge: ; preds = %while.cond.preheader.i101
  br label %while.body.i109

while.cond.preheader.i101.while.end.i112_crit_edge: ; preds = %while.cond.preheader.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i112

while.body.i109:                                  ; preds = %while.body.i109.while.body.i109_crit_edge, %while.cond.preheader.i101.while.body.i109_crit_edge
  %dec20.i102 = phi i32 [ %dec.i105, %while.body.i109.while.body.i109_crit_edge ], [ %dec15.i97, %while.cond.preheader.i101.while.body.i109_crit_edge ]
  %sg.019.i103 = phi ptr [ %call.i104, %while.body.i109.while.body.i109_crit_edge ], [ %43, %while.cond.preheader.i101.while.body.i109_crit_edge ]
  %call.i104 = tail call ptr @sg_next(ptr noundef nonnull %sg.019.i103) #9
  %dec.i105 = add nsw i32 %dec20.i102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i105)
  %cmp.i106 = icmp eq i32 %dec.i105, 0
  %tobool3.not.i107 = icmp eq ptr %call.i104, null
  %or.cond.i108 = select i1 %cmp.i106, i1 true, i1 %tobool3.not.i107
  br i1 %or.cond.i108, label %while.body.i109.while.end.i112_crit_edge, label %while.body.i109.while.body.i109_crit_edge

while.body.i109.while.body.i109_crit_edge:        ; preds = %while.body.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i109

while.body.i109.while.end.i112_crit_edge:         ; preds = %while.body.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i112

while.end.i112:                                   ; preds = %while.body.i109.while.end.i112_crit_edge, %while.cond.preheader.i101.while.end.i112_crit_edge
  %sg.0.lcssa.i110 = phi ptr [ %43, %while.cond.preheader.i101.while.end.i112_crit_edge ], [ %call.i104, %while.body.i109.while.end.i112_crit_edge ]
  %tobool3.not.lcssa.i111 = phi i1 [ %tobool3.not17.i99, %while.cond.preheader.i101.while.end.i112_crit_edge ], [ %tobool3.not.i107, %while.body.i109.while.end.i112_crit_edge ]
  br i1 %tobool3.not.lcssa.i111, label %while.end.i112.if.end34_crit_edge, label %while.end.i112.if.end34.sink.split_crit_edge

while.end.i112.if.end34.sink.split_crit_edge:     ; preds = %while.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

while.end.i112.if.end34_crit_edge:                ; preds = %while.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34.sink.split:                              ; preds = %while.end.i112.if.end34.sink.split_crit_edge, %while.end.i.if.end34.sink.split_crit_edge
  %remainder.i.sink = phi ptr [ %remainder.i, %while.end.i.if.end34.sink.split_crit_edge ], [ %remainder.i93, %while.end.i112.if.end34.sink.split_crit_edge ]
  %sg.0.lcssa.i.sink = phi ptr [ %sg.0.lcssa.i, %while.end.i.if.end34.sink.split_crit_edge ], [ %sg.0.lcssa.i110, %while.end.i112.if.end34.sink.split_crit_edge ]
  %44 = ptrtoint ptr %remainder.i.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %remainder.i.sink, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.lcssa.i.sink, i32 0, i32 2
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 4
  %add.i114 = add i32 %47, %45
  store i32 %add.i114, ptr %length.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %while.end.i112.if.end34_crit_edge, %if.then31.if.end34_crit_edge, %if.end21.if.end34_crit_edge, %while.end.i.if.end34_crit_edge, %if.then8.if.end34_crit_edge, %if.then.if.end34_crit_edge
  %48 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg1, align 4
  %aligned_sg37 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 23
  %cmp38 = icmp eq ptr %49, %aligned_sg37
  br i1 %cmp38, label %if.then39, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %real_dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 24
  %50 = ptrtoint ptr %real_dst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %real_dst, align 4
  %call = tail call i32 @sg_nents(ptr noundef %51) #9
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf, align 4
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %54 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total, align 4
  %call41 = tail call i32 @sg_copy_from_buffer(ptr noundef %51, i32 noundef %call, ptr noundef %53, i32 noundef %55) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atmel_aes_unmap(ptr noundef %data)
  %is_async = getelementptr inbounds %struct.atmel_aes_dev, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %is_async to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_async, align 4
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %data, i32 0, i32 6
  %1 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resume, align 4
  %call = tail call i32 %2(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cpu_transfer(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %datalen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %1, i32 1
  %7 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %8, i32 84
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !106
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr i32, ptr %1, i32 2
  %12 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr i32, ptr %1, i32 3
  %17 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %18, i32 92
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !106
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr.2.i.i, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %23, i32 4
  store ptr %add.ptr, ptr %data, align 4
  %24 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %datalen, align 4
  %sub = add i32 %25, -16
  store i32 %sub, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp ult i32 %sub, 16
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i36, i32 %28) #9, !srcloc !105
  %incdec.ptr.i.i37 = getelementptr i32, ptr %23, i32 5
  %31 = ptrtoint ptr %incdec.ptr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr.i.i37, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %33) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %23, i32 6
  %36 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %40, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %38) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %23, i32 7
  %41 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %45, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %43) #9, !srcloc !105
  %46 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !106
  %49 = and i32 %48, 16777216
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %if.then4, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %50 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @atmel_aes_cpu_transfer, ptr %resume, align 4
  %51 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 16777216) #9, !srcloc !105
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %real_dst = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 24
  %53 = ptrtoint ptr %real_dst to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %real_dst, align 4
  %call7 = tail call i32 @sg_nents(ptr noundef %54) #9
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf, align 4
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %57 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %total, align 4
  %call8 = tail call i32 @sg_copy_from_buffer(ptr noundef %54, i32 noundef %call7, ptr noundef %56, i32 noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef -22)
  br label %cleanup

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_transfer_complete = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 7
  %59 = ptrtoint ptr %cpu_transfer_complete to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cpu_transfer_complete, align 4
  %call16 = tail call i32 %60(ptr noundef %dd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then4
  %retval.0 = phi i32 [ -22, %if.then13 ], [ %call16, %if.end15 ], [ -115, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_read_block(ptr nocapture noundef readonly %dd, i32 noundef %offset, ptr nocapture noundef writeonly %value) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  %incdec.ptr.i = getelementptr i32, ptr %value, i32 1
  %add.i = add i32 %offset, 4
  %5 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #9, !srcloc !106
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %incdec.ptr.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %value, i32 2
  %add.1.i = add i32 %offset, 8
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %11, i32 %add.1.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #9, !srcloc !106
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %value, i32 3
  %add.2.i = add i32 %offset, 12
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %16, i32 %add.2.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #9, !srcloc !106
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr.2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_start(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %__ctx.i = getelementptr i8, ptr %3, i32 112
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 128
  %or.i = or i32 %and.i, %7
  store i32 %or.i, ptr %flags.i, align 4
  %iclk.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %8 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %call.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 65536) #9, !srcloc !105
  %12 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 57344) #9, !srcloc !105
  %iv = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 1
  %iv6 = getelementptr i8, ptr %3, i32 -12
  %14 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv6, align 4
  %16 = call ptr @memcpy(ptr %iv, ptr %15, i32 16)
  %offset = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %offset, align 4
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %18 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %total, align 4
  %call7 = tail call i32 @atmel_aes_ctr_transfer(ptr noundef %dd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_transfer(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %4 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total, align 4
  %offset = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %offset, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.not = icmp ugt i32 %9, %add
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %9, %add
  %sub8 = add i32 %sub, 15
  %div100 = lshr i32 %sub8, 4
  %blocks = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div100, ptr %blocks, align 4
  %iv = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %conv9 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %sub8)
  %tobool.not = icmp ult i32 %sub8, 1048576
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end
  %add11 = add nuw nsw i32 %div100, 65535
  %conv13 = add i32 %add11, %12
  %conv15 = and i32 %conv13, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv9)
  %cmp17 = icmp ult i32 %conv15, %conv9
  br i1 %cmp17, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %or = or i32 %12, 65535
  %.neg = mul nsw i32 %conv9, -16
  %mul = add nsw i32 %.neg, 1048576
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %lor.lhs.false.if.end22_crit_edge
  %datalen.0 = phi i32 [ %mul, %if.then19 ], [ %sub, %lor.lhs.false.if.end22_crit_edge ]
  %ctr.0 = phi i32 [ %or, %if.then19 ], [ %12, %lor.lhs.false.if.end22_crit_edge ]
  %fragmented.0.off0 = phi i1 [ true, %if.then19 ], [ false, %lor.lhs.false.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %datalen.0)
  %cmp23 = icmp ugt i32 %datalen.0, 255
  %src25 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 3
  %src26 = getelementptr i8, ptr %3, i32 -8
  %13 = ptrtoint ptr %src26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src26, align 8
  %call28 = tail call ptr @scatterwalk_ffwd(ptr noundef %src25, ptr noundef %14, i32 noundef %add) #9
  %15 = ptrtoint ptr %src26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src26, align 8
  %dst30 = getelementptr i8, ptr %3, i32 -4
  %17 = ptrtoint ptr %dst30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst30, align 4
  %cmp31 = icmp eq ptr %16, %18
  br i1 %cmp31, label %if.end22.cond.end_crit_edge, label %cond.false

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dst33 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %call37 = tail call ptr @scatterwalk_ffwd(ptr noundef %dst33, ptr noundef %18, i32 noundef %20) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end22.cond.end_crit_edge
  %cond = phi ptr [ %call37, %cond.false ], [ %call28, %if.end22.cond.end_crit_edge ]
  %21 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx1, align 4
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 3
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %keylen.i, align 4
  tail call fastcc void @atmel_aes_write_ctrl_key(ptr noundef %dd, i1 noundef zeroext %cmp23, ptr noundef %iv, ptr noundef %key.i, i32 noundef %24) #9
  br i1 %fragmented.0.off0, label %if.then44, label %cond.end.if.end49_crit_edge, !prof !109

cond.end.if.end49_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then44:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %ctr.0, ptr %arrayidx, align 4
  tail call void @crypto_inc(ptr noundef %iv, i32 noundef 16) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %cond.end.if.end49_crit_edge
  br i1 %cmp23, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %call28, ptr noundef %cond, i32 noundef %datalen.0, ptr noundef nonnull @atmel_aes_ctr_transfer)
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %dd, ptr noundef %call28, ptr noundef %cond, i32 noundef %datalen.0, ptr noundef nonnull @atmel_aes_ctr_transfer)
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then51, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call52, %if.then51 ], [ %call54, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb64_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %3, i32 128
  %block_size33.i = getelementptr i8, ptr %3, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 8, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %3, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 77825, ptr %__ctx.i.i, align 128
  %7 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end16.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end16.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb64_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool13.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.not.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end16.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end16.i:                                       ; preds = %entry
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 8, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %5 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 77824, ptr %__ctx.i.i, align 128
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst.i, align 4
  %cmp41.i = icmp eq ptr %8, %10
  br i1 %cmp41.i, label %if.then42.i, label %if.end16.i.if.end51.i_crit_edge

if.end16.i.if.end51.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end16.i
  %__crt_alg.i.i89.i = getelementptr i8, ptr %1, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i89.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -100
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp45.not.i = icmp ult i32 %16, %14
  br i1 %cmp45.not.i, label %if.then42.i.if.end51.i_crit_edge, label %if.then46.i

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %lastc.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %sub49.i = sub i32 %16, %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %lastc.i, ptr noundef %8, i32 noundef %sub49.i, i32 noundef %14, i32 noundef 0) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then42.i.if.end51.i_crit_edge, %if.end16.i.if.end51.i_crit_edge
  %17 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %18, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end51.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end51.i ], [ 0, %entry.atmel_aes_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_gcm_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 32, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge11
    i32 16, label %entry.if.end_crit_edge12
  ]

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12
  %key4 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %1 = call ptr @memcpy(ptr %key4, ptr %key, i32 %keylen)
  %keylen5 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %keylen5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %keylen, ptr %keylen5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.crypto_gcm_check_authsize.exit_crit_edge

entry.crypto_gcm_check_authsize.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_gcm_check_authsize.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.atmel_aes_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %crypto_gcm_check_authsize.exit

crypto_gcm_check_authsize.exit:                   ; preds = %switch.lookup, %entry.crypto_gcm_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.crypto_gcm_check_authsize.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %block_size.i = getelementptr i8, ptr %1, i32 172
  %2 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %block_size.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %3 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20481, ptr %__ctx.i.i, align 128
  %5 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call4.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %6, ptr noundef %req) #9
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %block_size.i = getelementptr i8, ptr %1, i32 172
  %2 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %block_size.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %3 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20480, ptr %__ctx.i.i, align 128
  %5 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call4.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %6, ptr noundef %req) #9
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_init(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not10 = icmp eq ptr %0, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not10
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %1 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %reqsize1.i, align 4
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %__crt_ctx.i.i, align 4
  %start = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atmel_aes_gcm_start, ptr %start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_start(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 7
  %__crt_alg.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %7, i32 -104
  %8 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i.i, align 8
  %iv6 = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iv6, align 32
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 8
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__ctx.i, align 128
  %or.i = or i32 %and.i, %17
  store i32 %or.i, ptr %flags.i, align 4
  %iclk.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %18 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %call.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 65536) #9, !srcloc !105
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 57344) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp = icmp eq i32 %9, 12
  br i1 %cmp, label %if.then11, label %if.end14, !prof !108

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %j0 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %j0, ptr %11, i32 12)
  %arrayidx = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx, align 4
  %call13 = tail call i32 @atmel_aes_gcm_process(ptr noundef %dd)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %and.i64 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  %sub1.i = sub nuw nsw i32 16, %and.i64
  %spec.select.i = select i1 %tobool.not.i65, i32 0, i32 %sub1.i
  %add = add i32 %9, 16
  %add16 = add i32 %add, %spec.select.i
  %buflen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 21
  %26 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %27)
  %cmp17 = icmp ugt i32 %add16, %27
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef -22)
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memcpy(ptr %13, ptr %11, i32 %9)
  %add.ptr = getelementptr i8, ptr %13, i32 %9
  %add21 = add nuw nsw i32 %spec.select.i, 8
  %29 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add21)
  %mul = shl i32 %9, 3
  %conv = zext i32 %mul to i64
  %add.ptr22 = getelementptr i8, ptr %13, i32 %add16
  %arrayidx23 = getelementptr i64, ptr %add.ptr22, i32 -1
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %arrayidx23, align 8
  %j024 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3
  %call26 = tail call fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %dd, ptr noundef %13, i32 noundef %add16, ptr noundef null, ptr noundef %j024, ptr noundef nonnull @atmel_aes_gcm_process)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then11, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call13, %if.then11 ], [ -22, %if.then18 ], [ %call26, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_process(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cryptlen, align 4
  %spec.select = select i1 %tobool.i.not, i32 %9, i32 0
  %sub = sub i32 %11, %spec.select
  %textlen = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %textlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %textlen, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select)
  %cmp7 = icmp ne i32 %11, %spec.select
  %15 = select i1 %cmp.not, i1 true, i1 %cmp7
  br i1 %15, label %if.then, label %entry.if.end_crit_edge, !prof !108

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %or = or i32 %17, 2
  store i32 %or, ptr %flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 4
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %switch.selectcmp.i = icmp eq i32 %21, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %switch.selectcmp37.i = icmp eq i32 %21, 16
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 0, i32 %switch.select.i
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i21 = and i32 %23, 487427
  %or7.i = or i32 %and.i21, %switch.select38.i
  %or15.i = or i32 %or7.i, 256
  %24 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %io_base.i.i22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %25 = ptrtoint ptr %io_base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %24) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %tobool.not3.i.i = icmp ult i32 %21, 4
  br i1 %tobool.not3.i.i, label %if.end.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.preheader.i

if.end.atmel_aes_write_ctrl_key.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

for.body.i.preheader.i:                           ; preds = %if.end
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %19, i32 0, i32 3
  %shr.i = ashr i32 %21, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %27 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.addr.05.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = ptrtoint ptr %io_base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i22, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %29) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, %if.end.atmel_aes_write_ctrl_key.exit_crit_edge
  %32 = ptrtoint ptr %io_base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i22, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #9, !srcloc !106
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !108

if.then.i:                                        ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @atmel_aes_gcm_length(ptr noundef %dd) #9
  br label %atmel_aes_wait_for_data_ready.exit

if.end.i:                                         ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resume4.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %36 = ptrtoint ptr %resume4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @atmel_aes_gcm_length, ptr %resume4.i, align 4
  %37 = ptrtoint ptr %io_base.i.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i.i22, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #9, !srcloc !105
  br label %atmel_aes_wait_for_data_ready.exit

atmel_aes_wait_for_data_ready.exit:               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ -115, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %dd, ptr noundef %data, i32 noundef %datalen, ptr noundef %ghash_in, ptr noundef %ghash_out, ptr noundef %resume) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %data2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data2, align 4
  %datalen3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %3 = ptrtoint ptr %datalen3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %datalen, ptr %datalen3, align 4
  %ghash_in4 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ghash_in4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ghash_in, ptr %ghash_in4, align 4
  %ghash_out5 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %ghash_out5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ghash_out, ptr %ghash_out5, align 4
  %ghash_resume = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ghash_resume to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resume, ptr %ghash_resume, align 4
  %7 = load ptr, ptr %ctx1, align 4
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %switch.selectcmp37.i = icmp eq i32 %9, 16
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 0, i32 %switch.select.i
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 487427
  %or7.i = or i32 %and.i, %switch.select38.i
  %or15.i = or i32 %or7.i, 256
  %12 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %io_base.i.i13 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %13 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 %12) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %tobool.not3.i.i = icmp ult i32 %9, 4
  br i1 %tobool.not3.i.i, label %entry.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.preheader.i

entry.atmel_aes_write_ctrl_key.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

for.body.i.preheader.i:                           ; preds = %entry
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %7, i32 0, i32 3
  %shr.i = ashr i32 %9, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %15 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.addr.05.i.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %17) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, %entry.atmel_aes_write_ctrl_key.exit_crit_edge
  %20 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !106
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !108

if.then.i:                                        ; preds = %atmel_aes_write_ctrl_key.exit
  %24 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx1, align 4
  %total.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %26 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %30, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %28) #9, !srcloc !105
  %31 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %32, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #9, !srcloc !105
  %ghash_in.i = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %25, i32 0, i32 7
  %33 = ptrtoint ptr %ghash_in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ghash_in.i, align 4
  %tobool.not.i17 = icmp eq ptr %34, null
  br i1 %tobool.not.i17, label %if.then.i.atmel_aes_gcm_ghash_init.exit_crit_edge, label %if.then.i18

if.then.i.atmel_aes_gcm_ghash_init.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_gcm_ghash_init.exit

if.then.i18:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %37) #9, !srcloc !105
  %incdec.ptr.i.i.i = getelementptr i32, ptr %34, i32 1
  %40 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %43 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %44, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i, i32 %42) #9, !srcloc !105
  %incdec.ptr.i.1.i.i = getelementptr i32, ptr %34, i32 2
  %45 = ptrtoint ptr %incdec.ptr.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr.i.1.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %49, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i.i, i32 %47) #9, !srcloc !105
  %incdec.ptr.i.2.i.i = getelementptr i32, ptr %34, i32 3
  %50 = ptrtoint ptr %incdec.ptr.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i.2.i.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %53 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %54, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i.i, i32 %52) #9, !srcloc !105
  br label %atmel_aes_gcm_ghash_init.exit

atmel_aes_gcm_ghash_init.exit:                    ; preds = %if.then.i18, %if.then.i.atmel_aes_gcm_ghash_init.exit_crit_edge
  %call3.i19 = tail call i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %dd) #9
  br label %atmel_aes_wait_for_data_ready.exit

if.end.i:                                         ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resume4.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %55 = ptrtoint ptr %resume4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @atmel_aes_gcm_ghash_init, ptr %resume4.i, align 4
  %56 = ptrtoint ptr %io_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base.i.i13, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #9, !srcloc !105
  br label %atmel_aes_wait_for_data_ready.exit

atmel_aes_wait_for_data_ready.exit:               ; preds = %if.end.i, %atmel_aes_gcm_ghash_init.exit
  %retval.0.i = phi i32 [ %call3.i19, %atmel_aes_gcm_ghash_init.exit ], [ -115, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_length(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %j03 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %5, 1
  store i32 %add.i, ptr %arrayidx, align 4
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %6 = ptrtoint ptr %j03 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j03, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %8) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %15, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %13) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %20, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %18) #9, !srcloc !105
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %25, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %23) #9, !srcloc !105
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %arrayidx, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %assoclen, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #9, !srcloc !105
  %textlen = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %textlen, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %34) #9, !srcloc !105
  %37 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %datalen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %39 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %datalen, align 4
  %call8 = tail call i32 @atmel_aes_gcm_data(ptr noundef %dd)
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %38, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sub1.i = sub nuw nsw i32 16, %and.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub1.i
  %add = add i32 %spec.select.i, %38
  %buflen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 21
  %40 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %41)
  %cmp12 = icmp ugt i32 %add, %41
  br i1 %cmp12, label %if.then19, label %if.end21, !prof !109

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef -22)
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src, align 4
  %call23 = tail call i32 @sg_nents(ptr noundef %43) #9
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  %46 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen, align 8
  %call25 = tail call i32 @sg_copy_to_buffer(ptr noundef %43, i32 noundef %call23, ptr noundef %45, i32 noundef %47) #9
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf, align 4
  %data = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %data, align 4
  %51 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %assoclen, align 8
  %add28 = add i32 %52, %spec.select.i
  %datalen29 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %53 = ptrtoint ptr %datalen29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add28, ptr %datalen29, align 4
  %call30 = tail call i32 @atmel_aes_gcm_data(ptr noundef %dd)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ -22, %if.then19 ], [ %call30, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_data(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %textlen = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %textlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  %datalen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %data = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %9, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr.i.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %17) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %9, i32 2
  %20 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %24, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %22) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %9, i32 3
  %25 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %28 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %29, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %27) #9, !srcloc !105
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %31, i32 4
  store ptr %add.ptr, ptr %data, align 4
  %32 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %datalen, align 4
  %sub = add i32 %33, -16
  store i32 %sub, ptr %datalen, align 4
  %34 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !106
  %37 = and i32 %36, 16777216
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %38 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @atmel_aes_gcm_data, ptr %resume, align 4
  %39 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 16777216) #9, !srcloc !105
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %41 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %textlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp8 = icmp eq i32 %42, 0
  br i1 %cmp8, label %if.then11, label %if.end13, !prof !109

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @atmel_aes_gcm_tag_init(ptr noundef %dd)
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %src14 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 1
  %src15 = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %src15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src15, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %assoclen, align 8
  %call16 = tail call ptr @scatterwalk_ffwd(ptr noundef %src14, ptr noundef %44, i32 noundef %46) #9
  %47 = ptrtoint ptr %src15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src15, align 4
  %dst18 = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 5
  %49 = ptrtoint ptr %dst18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst18, align 8
  %cmp19 = icmp eq ptr %48, %50
  br i1 %cmp19, label %if.end13.cond.end_crit_edge, label %cond.false

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dst20 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %assoclen, align 8
  %call24 = tail call ptr @scatterwalk_ffwd(ptr noundef %dst20, ptr noundef %50, i32 noundef %52) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end13.cond.end_crit_edge
  %cond = phi ptr [ %call24, %cond.false ], [ %call16, %if.end13.cond.end_crit_edge ]
  br i1 %cmp, label %if.then26, label %if.end35

if.then26:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #9, !srcloc !106
  %56 = and i32 %55, -134414337
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %caps = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25
  %58 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %caps, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool29.not = icmp eq i8 %59, 0
  %spec.select.v = select i1 %tobool29.not, i32 512, i32 520
  %spec.select = or i32 %spec.select.v, %57
  %60 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %61 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %60) #9, !srcloc !105
  %63 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %textlen, align 4
  %call34 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %call16, ptr noundef %cond, i32 noundef %64, ptr noundef nonnull @atmel_aes_gcm_tag_init)
  br label %cleanup

if.end35:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %textlen, align 4
  %call37 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %dd, ptr noundef %call16, ptr noundef %cond, i32 noundef %66, ptr noundef nonnull @atmel_aes_gcm_tag_init)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then26, %if.then11, %if.then
  %retval.0 = phi i32 [ -115, %if.then ], [ %call12, %if.then11 ], [ %call34, %if.then26 ], [ %call37, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_tag_init(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then, !prof !109

if.then:                                          ; preds = %entry
  %io_base.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !106
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @atmel_aes_gcm_tag_init, ptr %resume, align 4
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 256) #9, !srcloc !105
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @atmel_aes_gcm_finalize(ptr noundef %dd)
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %9 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %areq, align 4
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %11 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx1, align 4
  %buf = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 22
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %ghash = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %12, i32 0, i32 5
  tail call fastcc void @atmel_aes_read_block(ptr noundef %dd, i32 noundef 120, ptr noundef %ghash)
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %assoclen, align 8
  %mul = shl i32 %16, 3
  %conv = zext i32 %mul to i64
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %14, align 8
  %textlen = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %12, i32 0, i32 6
  %18 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %textlen, align 4
  %mul11 = shl i32 %19, 3
  %conv12 = zext i32 %mul11 to i64
  %arrayidx13 = getelementptr i64, ptr %14, i32 1
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv12, ptr %arrayidx13, align 8
  %call18 = tail call fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %dd, ptr noundef %14, i32 noundef 16, ptr noundef %ghash, ptr noundef %ghash, ptr noundef nonnull @atmel_aes_gcm_tag)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %if.then8
  %retval.0 = phi i32 [ %call9, %if.end ], [ -115, %if.then8 ], [ %call18, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_finalize(ptr noundef %dd) #2 align 64 {
entry:
  %itag = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %itag) #9
  %tag = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %8 = call ptr @memset(ptr %itag, i32 255, i32 16)
  br i1 %tobool.not, label %if.else, label %if.then, !prof !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %9 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tag, align 4
  %incdec.ptr.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %15, i32 140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !106
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %20, i32 144
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !106
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %25, i32 148
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !106
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %28 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.2.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @atmel_aes_read_block(ptr noundef %dd, i32 noundef 80, ptr noundef %tag)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assoclen, align 8
  %textlen = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %textlen, align 4
  %add = add i32 %32, %30
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 128
  br i1 %tobool.i.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %tag, ptr noundef %36, i32 noundef %add, i32 noundef %34, i32 noundef 1) #9
  br label %if.end19

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %itag, ptr noundef %38, i32 noundef %add, i32 noundef %34, i32 noundef 0) #9
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %itag, ptr noundef %tag, i32 noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %cond = select i1 %cmp.not.i.not, i32 0, i32 -74
  br label %if.end19

if.end19:                                         ; preds = %if.else14, %if.then13
  %err.0 = phi i32 [ 0, %if.then13 ], [ %cond, %if.else14 ]
  %call20 = call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %err.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %itag) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_tag(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %flags2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  %and = and i32 %3, -487427
  %or = or i32 %and, 16384
  store i32 %or, ptr %flags2, align 4
  %j0 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %switch.selectcmp37.i = icmp eq i32 %5, 16
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 0, i32 %switch.select.i
  %and.i = and i32 %or, 16385
  %or7.i = or i32 %and.i, %switch.select38.i
  %or15.i = or i32 %or7.i, 256
  %6 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %io_base.i.i16 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %7 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %6) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %tobool.not3.i.i = icmp ult i32 %5, 4
  br i1 %tobool.not3.i.i, label %entry.atmel_aes_write_n.exit.i_crit_edge, label %for.body.i.preheader.i

entry.atmel_aes_write_n.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit.i

for.body.i.preheader.i:                           ; preds = %entry
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %1, i32 0, i32 3
  %shr.i = ashr i32 %5, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i19, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %9 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.addr.05.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %12 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %13, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i18, i32 %11) #9, !srcloc !105
  %incdec.ptr.i.i19 = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_n.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_n.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit.i

atmel_aes_write_n.exit.i:                         ; preds = %for.body.i.i.atmel_aes_write_n.exit.i_crit_edge, %entry.atmel_aes_write_n.exit.i_crit_edge
  %tobool17.not.i = icmp eq ptr %j0, null
  br i1 %tobool17.not.i, label %atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %if.then20.i

atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %atmel_aes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

if.then20.i:                                      ; preds = %atmel_aes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %j0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j0, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %16) #9, !srcloc !105
  %incdec.ptr.i.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %23, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i, i32 %21) #9, !srcloc !105
  %incdec.ptr.i.1.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.i.1.i.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %28, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i.i, i32 %26) #9, !srcloc !105
  %incdec.ptr.i.2.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %incdec.ptr.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.i.2.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %33, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i.i, i32 %31) #9, !srcloc !105
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %if.then20.i, %atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge
  %34 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %3, ptr %flags2, align 4
  %ghash = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %ghash to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ghash, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %37) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %incdec.ptr.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %43 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %44, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %42) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %49, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %47) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %53 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %54, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %52) #9, !srcloc !105
  %55 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 28
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !106
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !108

if.then.i:                                        ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @atmel_aes_gcm_finalize(ptr noundef %dd) #9
  br label %atmel_aes_wait_for_data_ready.exit

if.end.i:                                         ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resume4.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %59 = ptrtoint ptr %resume4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @atmel_aes_gcm_finalize, ptr %resume4.i, align 4
  %60 = ptrtoint ptr %io_base.i.i16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base.i.i16, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #9, !srcloc !105
  br label %atmel_aes_wait_for_data_ready.exit

atmel_aes_wait_for_data_ready.exit:               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ -115, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_ghash_init(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %total = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 16
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %io_base.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !105
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %8, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #9, !srcloc !105
  %ghash_in = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %ghash_in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ghash_in, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %10, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %20, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %18) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %10, i32 2
  %21 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %25, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %23) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %10, i32 3
  %26 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %30, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %28) #9, !srcloc !105
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %dd)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %datalen = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 17
  %data = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 18
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %8) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %5, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %13) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %5, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %18) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %5, i32 3
  %21 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %23) #9, !srcloc !105
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %27, i32 4
  store ptr %add.ptr, ptr %data, align 4
  %28 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %datalen, align 4
  %sub = add i32 %29, -16
  store i32 %sub, ptr %datalen, align 4
  %30 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !106
  %33 = and i32 %32, 16777216
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %resume = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %34 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @atmel_aes_gcm_ghash_finalize, ptr %resume, align 4
  %35 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 16777216) #9, !srcloc !105
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %ghash_out = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %ghash_out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ghash_out, align 4
  %39 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %40, i32 120
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i21) #9, !srcloc !106
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %38, align 4
  %incdec.ptr.i.i22 = getelementptr i32, ptr %38, i32 1
  %44 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %45, i32 124
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !106
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %incdec.ptr.i.i22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr.i.i22, align 4
  %incdec.ptr.1.i.i = getelementptr i32, ptr %38, i32 2
  %49 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %50, i32 128
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !106
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %53 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr i32, ptr %38, i32 3
  %54 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %55, i32 132
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !106
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %incdec.ptr.2.i.i, align 4
  %ghash_resume = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %ghash_resume to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ghash_resume, align 4
  %call5 = tail call i32 %60(ptr noundef %dd) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -115, %if.then ], [ %call5, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  %0 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %4 = load ptr, ptr %fallback_tfm, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 128
  %and = and i32 %6, 1048320
  %base.i.i37 = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i37, align 128
  %or.i.i = or i32 %8, %and
  store i32 %or.i.i, ptr %base.i.i37, align 128
  %9 = load ptr, ptr %fallback_tfm, align 4
  %call5 = tail call i32 @crypto_skcipher_setkey(ptr noundef %9, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %key10 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %div36 = lshr i32 %keylen, 1
  %10 = call ptr @memcpy(ptr %key10, ptr %key, i32 %div36)
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 44
  %add.ptr = getelementptr i8, ptr %key, i32 %div36
  %11 = call ptr @memcpy(ptr %key2, ptr %add.ptr, i32 %div36)
  %keylen16 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %keylen16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div36, ptr %keylen16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2.i = icmp ult i32 %3, 16
  br i1 %cmp2.i, label %entry.atmel_aes_crypt.exit_crit_edge, label %if.end.i

entry.atmel_aes_crypt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_crypt.exit

if.end.i:                                         ; preds = %entry
  %and5.i = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  br i1 %cmp6.i, label %if.end25.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %fallback_tfm.i.i = getelementptr i8, ptr %1, i32 208
  %4 = ptrtoint ptr %fallback_tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %6 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %complete.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %14 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %15 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %flags4.i.i.i, align 4
  %src.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.i.i, align 8
  %dst.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i.i, align 4
  %iv.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %iv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv.i.i, align 4
  %src1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %22 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %src1.i.i.i, align 8
  %dst2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %23 = ptrtoint ptr %dst2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %dst2.i.i.i, align 4
  %24 = ptrtoint ptr %fallback_req.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %3, ptr %fallback_req.i.i, align 128
  %iv4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %25 = ptrtoint ptr %iv4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %iv4.i.i.i, align 4
  %call8.i.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i.i) #9
  br label %atmel_aes_crypt.exit

if.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %block_size33.i = getelementptr i8, ptr %1, i32 172
  %26 = ptrtoint ptr %block_size33.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 16, ptr %block_size33.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %27 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_aead.i, align 2
  %__ctx.i.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %28 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 24577, ptr %__ctx.i.i, align 128
  %29 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %call52.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %30, ptr noundef %base.i) #9
  br label %atmel_aes_crypt.exit

atmel_aes_crypt.exit:                             ; preds = %if.end25.i, %if.then7.i, %entry.atmel_aes_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call52.i, %if.end25.i ], [ -22, %entry.atmel_aes_crypt.exit_crit_edge ], [ %call8.i.i, %if.then7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_aes_crypt(ptr noundef %req, i32 noundef 24576)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_init_tfm(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %2 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i = icmp eq ptr %2, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not27 = icmp eq ptr %2, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not27
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call4 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  %3 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call4, align 128
  %add = add i32 %6, 256
  %7 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %tfm, align 128
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %__crt_ctx.i.i, align 4
  %start = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @atmel_aes_xts_start, ptr %start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_xts_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  %0 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_start(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %2 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %areq, align 4
  %__ctx.i = getelementptr i8, ptr %3, i32 112
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 128
  %or.i = or i32 %and.i, %7
  store i32 %or.i, ptr %flags.i, align 4
  %iclk.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %8 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %call.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 65536) #9, !srcloc !105
  %12 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 57344) #9, !srcloc !105
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and = and i32 %15, -487428
  %or = or i32 %and, 1
  store i32 %or, ptr %flags.i, align 4
  %keylen = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %17)
  %switch.selectcmp.i = icmp eq i32 %17, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %switch.selectcmp37.i = icmp eq i32 %17, 16
  %switch.select.i.op.op = select i1 %switch.selectcmp.i, i32 1281, i32 2305
  %or15.i = select i1 %switch.selectcmp37.i, i32 257, i32 %switch.select.i.op.op
  %18 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %19 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %18) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %tobool.not3.i.i = icmp ult i32 %17, 4
  br i1 %tobool.not3.i.i, label %if.end.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.preheader.i

if.end.atmel_aes_write_ctrl_key.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

for.body.i.preheader.i:                           ; preds = %if.end
  %key2 = getelementptr inbounds %struct.atmel_aes_xts_ctx, ptr %1, i32 0, i32 1
  %shr.i = ashr i32 %17, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %key2, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %21 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.addr.05.i.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, %if.end.atmel_aes_write_ctrl_key.exit_crit_edge
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %15, ptr %flags.i, align 4
  %iv = getelementptr i8, ptr %3, i32 -12
  %27 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i33 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i33, i32 %31) #9, !srcloc !105
  %incdec.ptr.i.i34 = getelementptr i32, ptr %28, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr.i.i34, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %36) #9, !srcloc !105
  %incdec.ptr.i.1.i = getelementptr i32, ptr %28, i32 2
  %39 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i.1.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %41) #9, !srcloc !105
  %incdec.ptr.i.2.i = getelementptr i32, ptr %28, i32 3
  %44 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr.i.2.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %48, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %46) #9, !srcloc !105
  %49 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %50, i32 28
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #9, !srcloc !106
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i37 = icmp eq i32 %52, 0
  br i1 %tobool.not.i37, label %if.end.i38, label %if.then.i, !prof !108

if.then.i:                                        ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @atmel_aes_xts_process_data(ptr noundef %dd) #9
  br label %cleanup

if.end.i38:                                       ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resume4.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 6
  %53 = ptrtoint ptr %resume4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @atmel_aes_xts_process_data, ptr %resume4.i, align 4
  %54 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 16777216) #9, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end.i38, %if.then.i, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call3.i, %if.then.i ], [ -115, %if.end.i38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_process_data(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 128
  %io_base.i.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %tweak.sroa.0.sroa.0.0.extract.shift = lshr i32 %7, 24
  %8 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %9, i32 84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !106
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %tweak.sroa.13.sroa.0.0.extract.shift = lshr i32 %11, 24
  %12 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %tweak.sroa.24.sroa.0.0.extract.shift = lshr i32 %15, 24
  %16 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %17, i32 92
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !106
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = lshr i32 %7, 8
  %tweak.sroa.35.14.insert.shift = and i32 %20, 65280
  %tweak.sroa.35.14.insert.insert = or i32 %tweak.sroa.0.sroa.0.0.extract.shift, %tweak.sroa.35.14.insert.shift
  %21 = shl i32 %7, 8
  %tweak.sroa.35.13.insert.shift = and i32 %21, 16711680
  %tweak.sroa.35.13.insert.insert = or i32 %tweak.sroa.35.14.insert.insert, %tweak.sroa.35.13.insert.shift
  %tweak.sroa.35.12.extract.shift = lshr i32 %19, 24
  %tweak.sroa.35.12.insert.shift = shl i32 %7, 24
  %tweak.sroa.35.12.insert.insert = or i32 %tweak.sroa.35.13.insert.insert, %tweak.sroa.35.12.insert.shift
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp = icmp ugt i32 %3, 255
  %ctx.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 4
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %23, i32 0, i32 3
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %switch.selectcmp.i = icmp eq i32 %25, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %switch.selectcmp37.i = icmp eq i32 %25, 16
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 0, i32 %switch.select.i
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 487427
  %or7.i = or i32 %switch.select38.i, %and.i
  br i1 %cmp, label %if.then8.i, label %if.else14.i

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %caps.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25
  %28 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.not.i = icmp eq i8 %29, 0
  %spec.select.v.i = select i1 %tobool10.not.i, i32 512, i32 520
  %spec.select.i = or i32 %spec.select.v.i, %or7.i
  br label %if.end16.i

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or15.i = or i32 %or7.i, 256
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then8.i
  %valmr.1.i = phi i32 [ %or15.i, %if.else14.i ], [ %spec.select.i, %if.then8.i ]
  %30 = tail call i32 @llvm.bswap.i32(i32 %valmr.1.i) #9
  %31 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %tobool.not3.i.i = icmp ult i32 %25, 4
  br i1 %tobool.not3.i.i, label %if.end16.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.preheader.i

if.end16.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

for.body.i.preheader.i:                           ; preds = %if.end16.i
  %shr.i = ashr i32 %25, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i49, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %33 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.addr.05.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %37, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i48, i32 %35) #9, !srcloc !105
  %incdec.ptr.i.i49 = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %for.body.i.i.atmel_aes_write_ctrl_key.exit_crit_edge, %if.end16.i.atmel_aes_write_ctrl_key.exit_crit_edge
  %38 = lshr i32 %19, 8
  %tweak.sroa.0.sroa.9.0.insert.shift = and i32 %38, 65280
  %tweak.sroa.0.sroa.9.0.insert.insert = or i32 %tweak.sroa.35.12.extract.shift, %tweak.sroa.0.sroa.9.0.insert.shift
  %39 = shl i32 %19, 8
  %tweak.sroa.0.sroa.7.0.insert.shift = and i32 %39, 16711680
  %tweak.sroa.0.sroa.7.0.insert.insert = or i32 %tweak.sroa.0.sroa.9.0.insert.insert, %tweak.sroa.0.sroa.7.0.insert.shift
  %tweak.sroa.0.sroa.0.0.insert.shift = shl i32 %19, 24
  %tweak.sroa.0.sroa.0.0.insert.insert = or i32 %tweak.sroa.0.sroa.7.0.insert.insert, %tweak.sroa.0.sroa.0.0.insert.shift
  %40 = tail call i32 @llvm.bswap.i32(i32 %tweak.sroa.0.sroa.0.0.insert.insert) #9
  %41 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %42, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i41, i32 %40) #9, !srcloc !105
  %43 = lshr i32 %15, 8
  %tweak.sroa.13.sroa.9.0.insert.shift = and i32 %43, 65280
  %tweak.sroa.13.sroa.9.0.insert.insert = or i32 %tweak.sroa.24.sroa.0.0.extract.shift, %tweak.sroa.13.sroa.9.0.insert.shift
  %44 = shl i32 %15, 8
  %tweak.sroa.13.sroa.7.0.insert.shift = and i32 %44, 16711680
  %tweak.sroa.13.sroa.7.0.insert.insert = or i32 %tweak.sroa.13.sroa.9.0.insert.insert, %tweak.sroa.13.sroa.7.0.insert.shift
  %tweak.sroa.13.sroa.0.0.insert.shift = shl i32 %15, 24
  %tweak.sroa.13.sroa.0.0.insert.insert = or i32 %tweak.sroa.13.sroa.7.0.insert.insert, %tweak.sroa.13.sroa.0.0.insert.shift
  %45 = tail call i32 @llvm.bswap.i32(i32 %tweak.sroa.13.sroa.0.0.insert.insert) #9
  %46 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %47, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i, i32 %45) #9, !srcloc !105
  %48 = lshr i32 %11, 8
  %tweak.sroa.24.sroa.9.0.insert.shift = and i32 %48, 65280
  %tweak.sroa.24.sroa.9.0.insert.insert = or i32 %tweak.sroa.13.sroa.0.0.extract.shift, %tweak.sroa.24.sroa.9.0.insert.shift
  %49 = shl i32 %11, 8
  %tweak.sroa.24.sroa.7.0.insert.shift = and i32 %49, 16711680
  %tweak.sroa.24.sroa.7.0.insert.insert = or i32 %tweak.sroa.24.sroa.9.0.insert.insert, %tweak.sroa.24.sroa.7.0.insert.shift
  %tweak.sroa.24.sroa.0.0.insert.shift = shl i32 %11, 24
  %tweak.sroa.24.sroa.0.0.insert.insert = or i32 %tweak.sroa.24.sroa.7.0.insert.insert, %tweak.sroa.24.sroa.0.0.insert.shift
  %50 = tail call i32 @llvm.bswap.i32(i32 %tweak.sroa.24.sroa.0.0.insert.insert) #9
  %51 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %52, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i, i32 %50) #9, !srcloc !105
  %53 = tail call i32 @llvm.bswap.i32(i32 %tweak.sroa.35.12.insert.insert) #9
  %54 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %55, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i, i32 %53) #9, !srcloc !105
  %56 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i44 = getelementptr i8, ptr %57, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i44, i32 1) #9, !srcloc !105
  %58 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.1.i45 = getelementptr i8, ptr %59, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i45, i32 0) #9, !srcloc !105
  %60 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.2.i46 = getelementptr i8, ptr %61, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i46, i32 0) #9, !srcloc !105
  %62 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.3.i47 = getelementptr i8, ptr %63, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i47, i32 0) #9, !srcloc !105
  %src = getelementptr i8, ptr %1, i32 -8
  %64 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %1, i32 -4
  %66 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dst, align 4
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i, align 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %65, ptr noundef %67, i32 noundef %69, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %cleanup

if.end:                                           ; preds = %atmel_aes_write_ctrl_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %dd, ptr noundef %65, ptr noundef %67, i32 noundef %69, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call10, %if.then ], [ %call14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #9
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %3 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call1 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.badkey_crit_edge

entry.badkey_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp2 = icmp ugt i32 %5, 32
  br i1 %cmp2, label %if.end.badkey_crit_edge, label %if.end4

if.end.badkey_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end4:                                          ; preds = %if.end
  %auth = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %6 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth, align 4
  %8 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %keys, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i.i, align 128
  %call6 = call i32 @atmel_sha_authenc_setkey(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #9, !srcloc !113
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %keylen10 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %17 = ptrtoint ptr %keylen10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %keylen10, align 4
  %key12 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %20 = call ptr @memcpy(ptr %key12, ptr %19, i32 %16)
  %21 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #9, !srcloc !113
  br label %cleanup

badkey:                                           ; preds = %if.end.badkey_crit_edge, %entry.badkey_crit_edge
  %22 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #9, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %badkey, %if.end8, %if.then7
  %retval.0 = phi i32 [ -22, %badkey ], [ %call6, %if.then7 ], [ 0, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_cbc_aes_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %cryptlen5.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen5.i, align 4
  %textlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 6, i32 36
  %4 = ptrtoint ptr %textlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %textlen.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not.i = icmp eq i32 %3, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %entry.if.end12.i_crit_edge

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true9.i:                                 ; preds = %entry
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %assoclen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not.i = icmp eq i32 %6, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge, label %land.lhs.true9.i.if.end12.i_crit_edge

land.lhs.true9.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_crypt.exit

if.end12.i:                                       ; preds = %land.lhs.true9.i.if.end12.i_crit_edge, %entry.if.end12.i_crit_edge
  %7 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4097, ptr %__ctx.i.i, align 128
  %block_size.i = getelementptr i8, ptr %1, i32 172
  %8 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %block_size.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %9 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_aead.i, align 2
  %10 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call15.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %req) #9
  br label %atmel_aes_authenc_crypt.exit

atmel_aes_authenc_crypt.exit:                     ; preds = %if.end12.i, %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call15.i, %if.end12.i ], [ -22, %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_cbc_aes_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i.i, align 128
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cryptlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i = icmp ult i32 %5, %3
  br i1 %cmp.i, label %entry.atmel_aes_authenc_crypt.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_crypt.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_crypt.exit

if.end.i:                                         ; preds = %entry
  %sub.i = sub i32 %5, %3
  %textlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3, i32 6, i32 36
  %6 = ptrtoint ptr %textlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %textlen.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %tobool8.not.i = icmp eq i32 %5, %3
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not.i = icmp eq i32 %8, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge, label %land.lhs.true9.i.if.end12.i_crit_edge

land.lhs.true9.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_crypt.exit

if.end12.i:                                       ; preds = %land.lhs.true9.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %9 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %__ctx.i.i, align 128
  %block_size.i = getelementptr i8, ptr %1, i32 172
  %10 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %block_size.i, align 4
  %is_aead.i = getelementptr i8, ptr %1, i32 174
  %11 = ptrtoint ptr %is_aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_aead.i, align 2
  %12 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %call15.i = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %13, ptr noundef %req) #9
  br label %atmel_aes_authenc_crypt.exit

atmel_aes_authenc_crypt.exit:                     ; preds = %if.end12.i, %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge, %entry.atmel_aes_authenc_crypt.exit_crit_edge
  %retval.0.i = phi i32 [ %call15.i, %if.end12.i ], [ -22, %entry.atmel_aes_authenc_crypt.exit_crit_edge ], [ -22, %land.lhs.true9.i.atmel_aes_authenc_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_hmac_sha1_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call1.i = tail call i32 @atmel_sha_authenc_get_reqsize() #9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not22.i = icmp eq ptr %0, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not22.i
  br i1 %tobool.not.i, label %entry.atmel_aes_authenc_init_tfm.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_init_tfm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_init_tfm.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @atmel_sha_authenc_spawn(i32 noundef 2048) #9
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %1 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %auth.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3.i to i32
  br label %atmel_aes_authenc_init_tfm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %call1.i, 640
  %reqsize1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %reqsize1.i.i, align 4
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %__crt_ctx.i.i.i, align 4
  %start.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_aes_authenc_start, ptr %start.i, align 4
  br label %atmel_aes_authenc_init_tfm.exit

atmel_aes_authenc_init_tfm.exit:                  ; preds = %if.end9.i, %if.then6.i, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then6.i ], [ 0, %if.end9.i ], [ -19, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_aes_authenc_exit_tfm(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auth = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth, align 4
  tail call void @atmel_sha_authenc_free(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_hmac_sha224_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call1.i = tail call i32 @atmel_sha_authenc_get_reqsize() #9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not22.i = icmp eq ptr %0, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not22.i
  br i1 %tobool.not.i, label %entry.atmel_aes_authenc_init_tfm.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_init_tfm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_init_tfm.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @atmel_sha_authenc_spawn(i32 noundef 3072) #9
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %1 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %auth.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3.i to i32
  br label %atmel_aes_authenc_init_tfm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %call1.i, 640
  %reqsize1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %reqsize1.i.i, align 4
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %__crt_ctx.i.i.i, align 4
  %start.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_aes_authenc_start, ptr %start.i, align 4
  br label %atmel_aes_authenc_init_tfm.exit

atmel_aes_authenc_init_tfm.exit:                  ; preds = %if.end9.i, %if.then6.i, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then6.i ], [ 0, %if.end9.i ], [ -19, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_hmac_sha256_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call1.i = tail call i32 @atmel_sha_authenc_get_reqsize() #9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not22.i = icmp eq ptr %0, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not22.i
  br i1 %tobool.not.i, label %entry.atmel_aes_authenc_init_tfm.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_init_tfm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_init_tfm.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @atmel_sha_authenc_spawn(i32 noundef 2304) #9
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %1 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %auth.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3.i to i32
  br label %atmel_aes_authenc_init_tfm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %call1.i, 640
  %reqsize1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %reqsize1.i.i, align 4
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %__crt_ctx.i.i.i, align 4
  %start.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_aes_authenc_start, ptr %start.i, align 4
  br label %atmel_aes_authenc_init_tfm.exit

atmel_aes_authenc_init_tfm.exit:                  ; preds = %if.end9.i, %if.then6.i, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then6.i ], [ 0, %if.end9.i ], [ -19, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_hmac_sha384_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call1.i = tail call i32 @atmel_sha_authenc_get_reqsize() #9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not22.i = icmp eq ptr %0, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not22.i
  br i1 %tobool.not.i, label %entry.atmel_aes_authenc_init_tfm.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_init_tfm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_init_tfm.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @atmel_sha_authenc_spawn(i32 noundef 2560) #9
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %1 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %auth.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3.i to i32
  br label %atmel_aes_authenc_init_tfm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %call1.i, 640
  %reqsize1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %reqsize1.i.i, align 4
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %__crt_ctx.i.i.i, align 4
  %start.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_aes_authenc_start, ptr %start.i, align 4
  br label %atmel_aes_authenc_init_tfm.exit

atmel_aes_authenc_init_tfm.exit:                  ; preds = %if.end9.i, %if.then6.i, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then6.i ], [ 0, %if.end9.i ], [ -19, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_hmac_sha512_init_tfm(ptr nocapture noundef writeonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %call1.i = tail call i32 @atmel_sha_authenc_get_reqsize() #9
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %0 = load volatile ptr, ptr @atmel_aes, align 4
  %cmp.not.i.i = icmp eq ptr %0, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #9
  %tobool.not22.i = icmp eq ptr %0, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not22.i
  br i1 %tobool.not.i, label %entry.atmel_aes_authenc_init_tfm.exit_crit_edge, label %if.end.i

entry.atmel_aes_authenc_init_tfm.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_authenc_init_tfm.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @atmel_sha_authenc_spawn(i32 noundef 2816) #9
  %auth.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %1 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3.i, ptr %auth.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3.i to i32
  br label %atmel_aes_authenc_init_tfm.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %call1.i, 640
  %reqsize1.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add.i, ptr %reqsize1.i.i, align 4
  %4 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %__crt_ctx.i.i.i, align 4
  %start.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_aes_authenc_start, ptr %start.i, align 4
  br label %atmel_aes_authenc_init_tfm.exit

atmel_aes_authenc_init_tfm.exit:                  ; preds = %if.end9.i, %if.then6.i, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then6.i ], [ 0, %if.end9.i ], [ -19, %entry.atmel_aes_authenc_init_tfm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_sha_authenc_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_sha_authenc_get_reqsize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_sha_authenc_spawn(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_start(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__ctx.i, align 128
  %or.i = or i32 %and.i, %7
  store i32 %or.i, ptr %flags.i, align 4
  %iclk.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 9
  %8 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iclk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %call.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 65536) #9, !srcloc !105
  %12 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 57344) #9, !srcloc !105
  %auth_req = getelementptr inbounds %struct.aead_request, ptr %1, i32 5
  %auth = getelementptr i8, ptr %3, i32 176
  %14 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auth, align 4
  %call6 = tail call i32 @atmel_sha_authenc_schedule(ptr noundef %auth_req, ptr noundef %15, ptr noundef nonnull @atmel_aes_authenc_init, ptr noundef %dd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_sha_authenc_schedule(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_init(ptr noundef %dd, i32 noundef %err, i1 noundef zeroext %is_async) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  br i1 %is_async, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_async2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 5
  %2 = ptrtoint ptr %is_async2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_async2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool3.not = icmp eq i32 %err, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %err)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 32
  store i32 %or, ptr %flags, align 4
  %auth_req = getelementptr inbounds %struct.aead_request, ptr %1, i32 5
  %src = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen, align 8
  %textlen = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 6, i32 36
  %9 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %textlen, align 16
  %call7 = tail call i32 @atmel_sha_authenc_init(ptr noundef %auth_req, ptr noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @atmel_aes_authenc_transfer, ptr noundef %dd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %err, %if.then4 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_sha_authenc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_transfer(ptr noundef %dd, i32 noundef %err, i1 noundef zeroext %is_async) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %is_async, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_async4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 5
  %4 = ptrtoint ptr %is_async4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_async4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool5.not = icmp eq i32 %err, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %err)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %src9 = getelementptr inbounds %struct.aead_request, ptr %1, i32 3
  %src10 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src10, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoclen, align 8
  %call11 = tail call ptr @scatterwalk_ffwd(ptr noundef %src9, ptr noundef %6, i32 noundef %8) #9
  %9 = ptrtoint ptr %src10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src10, align 4
  %dst13 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %dst13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst13, align 8
  %cmp.not = icmp eq ptr %10, %12
  br i1 %cmp.not, label %if.end8.if.end20_crit_edge, label %if.then14

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dst15 = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 5
  %13 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %assoclen, align 8
  %call19 = tail call ptr @scatterwalk_ffwd(ptr noundef %dst15, ptr noundef %12, i32 noundef %14) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end8.if.end20_crit_edge
  %dst.0 = phi ptr [ %call19, %if.then14 ], [ %call11, %if.end8.if.end20_crit_edge ]
  %iv22 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %iv22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iv22, align 32
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %iv.sroa.0.0.copyload = load i32, ptr %16, align 1
  %iv.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %16, i32 4
  %18 = ptrtoint ptr %iv.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %iv.sroa.5.0.copyload = load i32, ptr %iv.sroa.5.0..sroa_idx, align 1
  %iv.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %16, i32 8
  %19 = ptrtoint ptr %iv.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %iv.sroa.7.0.copyload = load i32, ptr %iv.sroa.7.0..sroa_idx, align 1
  %iv.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %16, i32 12
  %20 = ptrtoint ptr %iv.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %iv.sroa.9.0.copyload = load i32, ptr %iv.sroa.9.0..sroa_idx, align 1
  %ctx.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 4
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 4
  %keylen.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %keylen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %24)
  %switch.selectcmp.i = icmp eq i32 %24, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %switch.selectcmp37.i = icmp eq i32 %24, 16
  %switch.select38.i = select i1 %switch.selectcmp37.i, i32 0, i32 %switch.select.i
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i53 = and i32 %26, 487427
  %or7.i = or i32 %switch.select38.i, %and.i53
  %caps.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 25
  %27 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %caps.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not.i = icmp eq i8 %28, 0
  %spec.select.v.i = select i1 %tobool10.not.i, i32 512, i32 520
  %spec.select.i = or i32 %or7.i, %spec.select.v.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #9
  %io_base.i.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 2
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %tobool.not3.i.i = icmp ult i32 %24, 4
  br i1 %tobool.not3.i.i, label %if.end20.atmel_aes_write_n.exit.i_crit_edge, label %for.body.i.preheader.i

if.end20.atmel_aes_write_n.exit.i_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit.i

for.body.i.preheader.i:                           ; preds = %if.end20
  %key.i = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 3
  %shr.i = ashr i32 %24, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %count.addr.06.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i, %for.body.i.preheader.i ]
  %value.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %key.i, %for.body.i.preheader.i ]
  %offset.addr.04.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 32, %for.body.i.preheader.i ]
  %dec.i.i = add i32 %count.addr.06.i.i, -1
  %32 = ptrtoint ptr %value.addr.05.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.addr.05.i.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %offset.addr.04.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %34) #9, !srcloc !105
  %incdec.ptr.i.i = getelementptr i32, ptr %value.addr.05.i.i, i32 1
  %add.i.i = add i32 %offset.addr.04.i.i, 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atmel_aes_write_n.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.atmel_aes_write_n.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_n.exit.i

atmel_aes_write_n.exit.i:                         ; preds = %for.body.i.i.atmel_aes_write_n.exit.i_crit_edge, %if.end20.atmel_aes_write_n.exit.i_crit_edge
  %and18.i = and i32 %26, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.not.i = icmp eq i32 %and18.i, 0
  br i1 %cmp19.not.i, label %atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge, label %if.then20.i

atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge: ; preds = %atmel_aes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atmel_aes_write_ctrl_key.exit

if.then20.i:                                      ; preds = %atmel_aes_write_n.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.0.0.copyload) #9
  %38 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %37) #9, !srcloc !105
  %40 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.5.0.copyload) #9
  %41 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %42, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1.i.i, i32 %40) #9, !srcloc !105
  %43 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.7.0.copyload) #9
  %44 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.2.i.i = getelementptr i8, ptr %45, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2.i.i, i32 %43) #9, !srcloc !105
  %46 = tail call i32 @llvm.bswap.i32(i32 %iv.sroa.9.0.copyload) #9
  %47 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i.3.i.i = getelementptr i8, ptr %48, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3.i.i, i32 %46) #9, !srcloc !105
  br label %atmel_aes_write_ctrl_key.exit

atmel_aes_write_ctrl_key.exit:                    ; preds = %if.then20.i, %atmel_aes_write_n.exit.i.atmel_aes_write_ctrl_key.exit_crit_edge
  %spec.select = select i1 %tobool.i.not, i32 805306368, i32 268435456
  %49 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select) #9, !srcloc !105
  %textlen = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 6, i32 36
  %51 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %textlen, align 16
  %call27 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %dd, ptr noundef %call11, ptr noundef %dst.0, i32 noundef %52, ptr noundef nonnull @atmel_aes_authenc_digest)
  br label %cleanup

cleanup:                                          ; preds = %atmel_aes_write_ctrl_key.exit, %if.then6
  %retval.0 = phi i32 [ %err, %if.then6 ], [ %call27, %atmel_aes_write_ctrl_key.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_digest(ptr noundef %dd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %flags = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -33
  store i32 %and, ptr %flags, align 4
  %auth_req = getelementptr inbounds %struct.aead_request, ptr %1, i32 5
  %digest = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 6, i32 40
  %call2 = tail call i32 @atmel_sha_authenc_final(ptr noundef %auth_req, ptr noundef %digest, i32 noundef 64, ptr noundef nonnull @atmel_aes_authenc_final, ptr noundef %dd) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_sha_authenc_final(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_aes_authenc_final(ptr noundef %dd, i32 noundef %err, i1 noundef zeroext %is_async) #2 align 64 {
entry:
  %idigest = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %areq = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %areq, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %flags.i = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %idigest) #9
  %6 = call ptr @memset(ptr %idigest, i32 255, i32 64)
  %digest = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 6, i32 40
  br i1 %is_async, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_async5 = getelementptr inbounds %struct.atmel_aes_dev, ptr %dd, i32 0, i32 5
  %7 = ptrtoint ptr %is_async5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_async5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool6.not = icmp eq i32 %err, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.complete_crit_edge

if.end.complete_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete

if.end8:                                          ; preds = %if.end
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %assoclen, align 8
  %textlen = getelementptr inbounds %struct.aead_request, ptr %1, i32 3, i32 6, i32 36
  %10 = ptrtoint ptr %textlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %textlen, align 16
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 128
  br i1 %tobool.i.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %digest, ptr noundef %15, i32 noundef %add, i32 noundef %13, i32 noundef 1) #9
  br label %complete

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %idigest, ptr noundef %17, i32 noundef %add, i32 noundef %13, i32 noundef 0) #9
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %idigest, ptr noundef %digest, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp.not.i.not, i32 0, i32 -74
  br label %complete

complete:                                         ; preds = %if.else, %if.then11, %if.end.complete_crit_edge
  %err.addr.0 = phi i32 [ %err, %if.end.complete_crit_edge ], [ 0, %if.then11 ], [ %spec.select, %if.else ]
  %call19 = call fastcc i32 @atmel_aes_complete(ptr noundef %dd, i32 noundef %err.addr.0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %idigest) #9
  ret i32 %err.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_sha_authenc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_atmel_aes__250_2699_atmel_aes_driver_init6, !1, !"__initcall__kmod_atmel_aes__250_2699_atmel_aes_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/atmel-aes.c", i32 2699, i32 1}
!2 = !{ptr @__exitcall_atmel_aes_driver_exit, !1, !"__exitcall_atmel_aes_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/crypto/atmel-aes.c", i32 2701, i32 1}
!5 = !{ptr @__UNIQUE_ID_file252, !6, !"__UNIQUE_ID_file252", i1 false, i1 false}
!6 = !{!"../drivers/crypto/atmel-aes.c", i32 2702, i32 1}
!7 = !{ptr @__UNIQUE_ID_license253, !6, !"__UNIQUE_ID_license253", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author254, !9, !"__UNIQUE_ID_author254", i1 false, i1 false}
!9 = !{!"../drivers/crypto/atmel-aes.c", i32 2703, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/atmel-aes.c", i32 2694, i32 11}
!12 = !{ptr @atmel_aes_driver, !13, !"atmel_aes_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/atmel-aes.c", i32 2690, i32 31}
!14 = !{ptr @atmel_aes_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/crypto/atmel-aes.c", i32 2564, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/atmel-aes.c", i32 2576, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @atmel_aes_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @atmel_aes_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/atmel-aes.c", i32 2590, i32 24}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/atmel-aes.c", i32 2592, i32 3}
!29 = !{ptr @atmel_aes_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atmel_aes_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/atmel-aes.c", i32 2597, i32 42}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/atmel-aes.c", i32 2599, i32 3}
!35 = !{ptr @atmel_aes_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @atmel_aes_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/atmel-aes.c", i32 2606, i32 3}
!39 = !{ptr @atmel_aes_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atmel_aes_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/crypto/atmel-aes.c", i32 2644, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @atmel_aes_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_aes_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/atmel-aes.c", i32 2393, i32 4}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @atmel_aes_irq._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @atmel_aes_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/atmel-aes.c", i32 464, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @atmel_aes_hw_version_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @atmel_aes_hw_version_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/atmel-aes.c", i32 2534, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @atmel_aes_get_cap._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @atmel_aes_get_cap._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/atmel-aes.c", i32 2323, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @atmel_aes_buff_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @atmel_aes_buff_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/crypto/atmel-aes.c", i32 2340, i32 43}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/atmel-aes.c", i32 2346, i32 43}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/atmel-aes.c", i32 2357, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @atmel_aes_dma_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @atmel_aes_dma_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/atmel-aes.c", i32 232, i32 10}
!78 = !{ptr @atmel_aes, !79, !"atmel_aes", i1 false, i1 false}
!79 = !{!"../drivers/crypto/atmel-aes.c", i32 230, i32 29}
!80 = !{ptr @aes_algs, !81, !"aes_algs", i1 false, i1 false}
!81 = !{!"../drivers/crypto/atmel-aes.c", i32 1299, i32 28}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!84 = !{ptr @aes_cfb64_alg, !85, !"aes_cfb64_alg", i1 false, i1 false}
!85 = !{!"../drivers/crypto/atmel-aes.c", i32 1413, i32 28}
!86 = !{ptr @aes_gcm_alg, !87, !"aes_gcm_alg", i1 false, i1 false}
!87 = !{!"../drivers/crypto/atmel-aes.c", i32 1790, i32 24}
!88 = !{ptr @aes_xts_alg, !89, !"aes_xts_alg", i1 false, i1 false}
!89 = !{!"../drivers/crypto/atmel-aes.c", i32 1940, i32 28}
!90 = distinct !{null, !91, !"one", i1 false, i1 false}
!91 = !{!"../drivers/crypto/atmel-aes.c", i32 1849, i32 22}
!92 = !{ptr @aes_authenc_algs, !93, !"aes_authenc_algs", i1 false, i1 false}
!93 = !{!"../drivers/crypto/atmel-aes.c", i32 2230, i32 24}
!94 = !{ptr @atmel_aes_dt_ids, !95, !"atmel_aes_dt_ids", i1 false, i1 false}
!95 = !{!"../drivers/crypto/atmel-aes.c", i32 2541, i32 34}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 5031116}
!106 = !{i64 5031534}
!107 = !{i8 0, i8 2}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{i64 2153993681, i64 2153994173, i64 2153993718, i64 2153993774, i64 2153993808, i64 2153993832, i64 2153993873, i64 2153993894, i64 2153993922, i64 2153993956}
!111 = !{i64 2153987362, i64 2153987854, i64 2153987399, i64 2153987455, i64 2153987489, i64 2153987513, i64 2153987554, i64 2153987575, i64 2153987603, i64 2153987637}
!112 = !{i64 2153988972, i64 2153989464, i64 2153989009, i64 2153989065, i64 2153989099, i64 2153989123, i64 2153989164, i64 2153989185, i64 2153989213, i64 2153989247}
!113 = !{i64 2149077234}
