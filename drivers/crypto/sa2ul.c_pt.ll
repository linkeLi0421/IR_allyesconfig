; ModuleID = '/llk/IR_all_yes/drivers/crypto/sa2ul.c_pt.bc'
source_filename = "../drivers/crypto/sa2ul.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.sa_alg_tmpl = type { i32, [124 x i8], %union.anon.79, i8, [127 x i8] }
%union.anon.79 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.sa_match_data = type { i8, i8, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.sa_crypto_data = type { ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i16, i16, i16, [16 x i32], ptr, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.algo_data = type { %struct.sa_eng_info, %struct.sa_eng_info, i8, i8, i8, i8, i8, i8, ptr, ptr, i8, ptr, i8, ptr }
%struct.sa_eng_info = type { i8, i16 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.sa_req = type { ptr, i16, i8, i16, ptr, i8, i16, ptr, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, i16 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.sa_cmdl_cfg = type { i32, i8, i8, i8, ptr, i16, i8 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.sa_ctx_info = type { ptr, i32, i16, i16, [12 x i32], %struct.sa_cmdl_upd_info, [4 x i32] }
%struct.sa_cmdl_upd_info = type { i16, i16, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, %struct.sa_cmdl_param_info, [8 x i32] }
%struct.sa_cmdl_param_info = type { i16, i16, i16 }
%struct.sa_rx_data = type { ptr, ptr, ptr, [2 x %struct.sa_mapped_sg], i8, i8, i8 }
%struct.sa_mapped_sg = type { i8, i32, %struct.scatterlist, ptr, %struct.sg_table }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sa_tfm_ctx = type { ptr, %struct.sa_ctx_info, %struct.sa_ctx_info, %struct.sa_ctx_info, i32, i32, [8 x i32], [128 x i8], ptr, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%union.anon.81 = type { %struct.sha256_state }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }

@__initcall__kmod_sa2ul__282_2492_sa_ul_driver_init6 = internal global ptr @sa_ul_driver_init, section ".initcall6.init", align 4
@sa_ul_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sa_ul_probe, ptr @sa_ul_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sa_ul_driver_exit = internal global ptr @sa_ul_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file283 = internal constant [32 x i8] c"sa2ul.file=drivers/crypto/sa2ul\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [21 x i8] c"sa2ul.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"saul-crypto\00", [20 x i8] zeroinitializer }, align 32
@of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_match_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_match_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am64_match_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sa_ul_probe.saul_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sa_k3_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sa_ul_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get sync: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sa_ul_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/crypto/sa2ul.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sa_ul_probe._entry_ptr = internal global ptr @sa_ul_probe._entry, section ".printk_index", align 4
@sa_ul_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev_data->scid_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"keystone-sc\00", [20 x i8] zeroinitializer }, align 32
@sa_init_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 2273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to create dma pool\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sa_init_mem\00", [20 x i8] zeroinitializer }, align 32
@sa_init_mem._entry_ptr = internal global ptr @sa_init_mem._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rx1\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to request rx1 DMA channel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rx2\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to request rx2 DMA channel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to request tx DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@sa_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 2322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't configure IN dmaengine slave: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sa_dma_init\00", [20 x i8] zeroinitializer }, align 32
@sa_dma_init._entry_ptr = internal global ptr @sa_dma_init._entry, section ".printk_index", align 4
@sa_dma_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 2329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sa_dma_init._entry_ptr.19 = internal global ptr @sa_dma_init._entry.18, section ".printk_index", align 4
@sa_dma_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.3, i32 2336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't configure OUT dmaengine slave: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sa_dma_init._entry_ptr.22 = internal global ptr @sa_dma_init._entry.20, section ".printk_index", align 4
@sa_register_algos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 2234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"un-supported crypto algorithm (%d)\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sa_register_algos\00", [46 x i8] zeroinitializer }, align 32
@sa_register_algos._entry_ptr = internal global ptr @sa_register_algos._entry, section ".printk_index", align 4
@sa_register_algos._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 2239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to register '%s'\0A\00", [39 x i8] zeroinitializer }, align 32
@sa_register_algos._entry_ptr.27 = internal global ptr @sa_register_algos._entry.25, section ".printk_index", align 4
@sa_algs = internal global <{ { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] }, %struct.sa_alg_tmpl, %struct.sa_alg_tmpl, %struct.sa_alg_tmpl, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, i8, [127 x i8] }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, i8, [127 x i8] } }> <{ { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sa_aes_cbc_setkey, ptr @sa_encrypt, ptr @sa_decrypt, ptr @sa_cipher_cra_init, ptr @sa_cipher_cra_exit, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4485, i32 16, i32 732, i32 0, i32 30000, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sa_aes_ecb_setkey, ptr @sa_encrypt, ptr @sa_decrypt, ptr @sa_cipher_cra_init, ptr @sa_cipher_cra_exit, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4485, i32 16, i32 732, i32 0, i32 30000, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sa_3des_cbc_setkey, ptr @sa_encrypt, ptr @sa_decrypt, ptr @sa_cipher_cra_init, ptr @sa_cipher_cra_exit, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4485, i32 8, i32 732, i32 0, i32 30000, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef }, { i32, [124 x i8], { %struct.skcipher_alg, [128 x i8] }, i8, [127 x i8] } { i32 5, [124 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @sa_3des_ecb_setkey, ptr @sa_encrypt, ptr @sa_decrypt, ptr @sa_cipher_cra_init, ptr @sa_cipher_cra_exit, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4485, i32 8, i32 732, i32 0, i32 30000, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef }, %struct.sa_alg_tmpl { i32 15, [124 x i8] undef, %union.anon.79 { %struct.ahash_alg { ptr @sa_sha_init, ptr @sa_sha_update, ptr @sa_sha_final, ptr @sa_sha_finup, ptr @sa_sha_digest, ptr @sa_sha_export, ptr @sa_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 352, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4495, i32 64, i32 732, i32 0, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @sa_sha1_cra_init, ptr @sa_sha_cra_exit, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } } }, i8 0, [127 x i8] undef }, %struct.sa_alg_tmpl { i32 15, [124 x i8] undef, %union.anon.79 { %struct.ahash_alg { ptr @sa_sha_init, ptr @sa_sha_update, ptr @sa_sha_final, ptr @sa_sha_finup, ptr @sa_sha_digest, ptr @sa_sha_export, ptr @sa_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 360, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4495, i32 64, i32 732, i32 0, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @sa_sha256_cra_init, ptr @sa_sha_cra_exit, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } } }, i8 0, [127 x i8] undef }, %struct.sa_alg_tmpl { i32 15, [124 x i8] undef, %union.anon.79 { %struct.ahash_alg { ptr @sa_sha_init, ptr @sa_sha_update, ptr @sa_sha_final, ptr @sa_sha_finup, ptr @sa_sha_digest, ptr @sa_sha_export, ptr @sa_sha_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 64, i32 464, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4495, i32 128, i32 732, i32 0, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @sa_sha512_cra_init, ptr @sa_sha_cra_exit, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } } }, i8 0, [127 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, i8, [127 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @sa_aead_cbc_sha1_setkey, ptr @sa_aead_setauthsize, ptr @sa_aead_encrypt, ptr @sa_aead_decrypt, ptr @sa_cra_init_aead_sha1, ptr @sa_exit_tfm_aead, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4483, i32 16, i32 732, i32 0, i32 3000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc(hmac(sha1),cbc(aes))-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef }, { i32, [124 x i8], { %struct.aead_alg, [128 x i8] }, i8, [127 x i8] } { i32 3, [124 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @sa_aead_cbc_sha256_setkey, ptr @sa_aead_setauthsize, ptr @sa_aead_encrypt, ptr @sa_aead_decrypt, ptr @sa_cra_init_aead_sha256, ptr @sa_exit_tfm_aead, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4483, i32 16, i32 732, i32 0, i32 3000, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc(hmac(sha256),cbc(aes))-sa2ul\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef }, i8 0, [127 x i8] undef } }>, align 128
@mci_cbc_enc_array = internal global { [3 x <{ [9 x i8], [18 x i8] }>], [47 x i8] } { [3 x <{ [9 x i8], [18 x i8] }>] [<{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"a\00\00\18\88\0A\AAK~", [18 x i8] zeroinitializer }>, <{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"a\00\00\18\88J\AAK~", [18 x i8] zeroinitializer }>, <{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"a\00\00\18\88\8A\AAK~", [18 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@mci_cbc_dec_array = internal global { [3 x <{ [10 x i8], [17 x i8] }>], [47 x i8] } { [3 x <{ [10 x i8], [17 x i8] }>] [<{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"q\00\00\80\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>, <{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"q\00\00\84\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>, <{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"q\00\00\88\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@sa_cipher_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: badkey\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sa_cipher_setkey\00", [47 x i8] zeroinitializer }, align 32
@sa_cipher_setkey._entry_ptr = internal global ptr @sa_cipher_setkey._entry, section ".printk_index", align 4
@sa_aes_inv_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: bad key len(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sa_aes_inv_key\00", [17 x i8] zeroinitializer }, align 32
@sa_aes_inv_key._entry_ptr = internal global ptr @sa_aes_inv_key._entry, section ".printk_index", align 4
@sa_aes_inv_key._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sa_aes_inv_key._entry_ptr.36 = internal global ptr @sa_aes_inv_key._entry.35, section ".printk_index", align 4
@sa_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IN prep_slave_sg() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sa_run\00", [25 x i8] zeroinitializer }, align 32
@sa_run._entry_ptr = internal global ptr @sa_run._entry, section ".printk_index", align 4
@sa_run._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OUT prep_slave_sg() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sa_run._entry_ptr.41 = internal global ptr @sa_run._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sa_cipher_cra_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error allocating fallback algo %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sa_cipher_cra_init\00", [45 x i8] zeroinitializer }, align 32
@sa_cipher_cra_init._entry_ptr = internal global ptr @sa_cipher_cra_init._entry, section ".printk_index", align 4
@sa_cipher_cra_init.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sa2ul\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(0x%p) sc-ids(0x%x(0x%pad), 0x%x(0x%pad))\0A\00", [51 x i8] zeroinitializer }, align 32
@sa_init_ctx_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate SC memory\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sa_init_ctx_info\00", [47 x i8] zeroinitializer }, align 32
@sa_init_ctx_info._entry_ptr = internal global ptr @sa_init_ctx_info._entry, section ".printk_index", align 4
@sa_cipher_cra_exit.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.48, ptr @.str.3, ptr @.str.45, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sa_cipher_cra_exit\00", [45 x i8] zeroinitializer }, align 32
@mci_ecb_enc_array = internal global { [3 x <{ [8 x i8], [19 x i8] }>], [47 x i8] } { [3 x <{ [8 x i8], [19 x i8] }>] [<{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"!\00\00\80\8A\04\B7\90", [19 x i8] zeroinitializer }>, <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"!\00\00\84\8A\04\B7\90", [19 x i8] zeroinitializer }>, <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"!\00\00\88\8A\04\B7\90", [19 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@mci_ecb_dec_array = internal global { [3 x <{ [8 x i8], [19 x i8] }>], [47 x i8] } { [3 x <{ [8 x i8], [19 x i8] }>] [<{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"1\00\00\80\8A\04\B7\90", [19 x i8] zeroinitializer }>, <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"1\00\00\84\8A\04\B7\90", [19 x i8] zeroinitializer }>, <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"1\00\00\88\8A\04\B7\90", [19 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@mci_cbc_3des_enc_array = internal global { <{ [9 x i8], [18 x i8] }>, [37 x i8] } { <{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"`\00\00\18\88R\AAK~", [18 x i8] zeroinitializer }>, [37 x i8] zeroinitializer }, align 32
@mci_cbc_3des_dec_array = internal global { <{ [10 x i8], [17 x i8] }>, [37 x i8] } { <{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"p\00\00\85\0A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>, [37 x i8] zeroinitializer }, align 32
@mci_ecb_3des_enc_array = internal global { <{ [8 x i8], [19 x i8] }>, [37 x i8] } { <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c" \00\00\85\0A\04\B7\90", [19 x i8] zeroinitializer }>, [37 x i8] zeroinitializer }, align 32
@mci_ecb_3des_dec_array = internal global { <{ [8 x i8], [19 x i8] }>, [37 x i8] } { <{ [8 x i8], [19 x i8] }> <{ [8 x i8] c"0\00\00\85\0A\04\B7\90", [19 x i8] zeroinitializer }>, [37 x i8] zeroinitializer }, align 32
@sa_sha_init.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sa_sha_init\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"init: digest size: %u, rctx=%p\0A\00", [32 x i8] zeroinitializer }, align 32
@sha1_zero_message_hash = external dso_local local_unnamed_addr constant [20 x i8], align 1
@sha256_zero_message_hash = external dso_local local_unnamed_addr constant [32 x i8], align 1
@sha512_zero_message_hash = external dso_local local_unnamed_addr constant [64 x i8], align 1
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@sa_sha_cra_init_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"base driver %s couldn't be loaded\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sa_sha_cra_init_alg\00", [44 x i8] zeroinitializer }, align 32
@sa_sha_cra_init_alg._entry_ptr = internal global ptr @sa_sha_cra_init_alg._entry, section ".printk_index", align 4
@sa_sha_cra_init_alg._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not load fallback driver\0A\00", [32 x i8] zeroinitializer }, align 32
@sa_sha_cra_init_alg._entry_ptr.62 = internal global ptr @sa_sha_cra_init_alg._entry.60, section ".printk_index", align 4
@sa_sha_cra_init_alg.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.59, ptr @.str.3, ptr @.str.45, i8 1, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sa_sha_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.63, ptr @.str.3, i32 1488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sa_sha_setup\00", [19 x i8] zeroinitializer }, align 32
@sa_sha_setup._entry_ptr = internal global ptr @sa_sha_setup._entry, section ".printk_index", align 4
@sa_sha_cra_exit.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.64, ptr @.str.3, ptr @.str.45, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sa_sha_cra_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@mci_cbc_enc_no_iv_array = internal global { [3 x <{ [9 x i8], [18 x i8] }>], [47 x i8] } { [3 x <{ [9 x i8], [18 x i8] }>] [<{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"!\00\00\18\88\0A\AAK~", [18 x i8] zeroinitializer }>, <{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"!\00\00\18\88J\AAK~", [18 x i8] zeroinitializer }>, <{ [9 x i8], [18 x i8] }> <{ [9 x i8] c"!\00\00\18\88\8A\AAK~", [18 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@mci_cbc_dec_no_iv_array = internal global { [3 x <{ [10 x i8], [17 x i8] }>], [47 x i8] } { [3 x <{ [10 x i8], [17 x i8] }>] [<{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"1\00\00\80\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>, <{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"1\00\00\84\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>, <{ [10 x i8], [17 x i8] }> <{ [10 x i8] c"1\00\00\88\8A\CA\98\F4@\C0", [17 x i8] zeroinitializer }>], [47 x i8] zeroinitializer }, align 32
@sa_export_shash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: bad digest_size=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sa_export_shash\00", [16 x i8] zeroinitializer }, align 32
@sa_export_shash._entry_ptr = internal global ptr @sa_export_shash._entry, section ".printk_index", align 4
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"authenc(hmac(sha1-ce),cbc(aes-ce))\00", [61 x i8] zeroinitializer }, align 32
@sa_cra_init_aead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.72, ptr @.str.3, i32 1742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sa_cra_init_aead\00", [47 x i8] zeroinitializer }, align 32
@sa_cra_init_aead._entry_ptr = internal global ptr @sa_cra_init_aead._entry, section ".printk_index", align 4
@sa_cra_init_aead._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 1751, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fallback driver %s couldn't be loaded\0A\00", [57 x i8] zeroinitializer }, align 32
@sa_cra_init_aead._entry_ptr.75 = internal global ptr @sa_cra_init_aead._entry.73, section ".printk_index", align 4
@sa_cra_init_aead.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.72, ptr @.str.3, ptr @.str.45, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"authenc(hmac(sha256-ce),cbc(aes-ce))\00", [59 x i8] zeroinitializer }, align 32
@am654_match_data = internal global { %struct.sa_match_data, [20 x i8] } { %struct.sa_match_data { i8 1, i8 1, i32 511, i8 0 }, [20 x i8] zeroinitializer }, align 32
@am64_match_data = internal global { %struct.sa_match_data, [20 x i8] } { %struct.sa_match_data { i8 0, i8 0, i32 355, i8 1 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 32, i64 64]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 32]
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"sa_ul_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2484, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2488, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2378, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"saul_base\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2390, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"sa_k3_dev\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 92, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2416, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2426, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2270, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2273, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2293, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2296, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2298, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2301, i32 9 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2305, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2308, i32 9 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2321, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2328, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2335, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2232, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2239, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"mci_cbc_enc_array\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 244, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"mci_cbc_dec_array\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 260, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 943, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 472, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 494, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1248, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1265, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 871, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 879, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 817, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 838, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"mci_ecb_enc_array\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 308, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"mci_ecb_dec_array\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 324, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"mci_cbc_3des_enc_array\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 341, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"mci_cbc_3des_dec_array\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 347, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant [23 x i8] c"mci_ecb_3des_enc_array\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 353, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"mci_ecb_3des_dec_array\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 359, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1545, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1632, i32 27 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1508, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1517, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1488, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1680, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1648, i32 27 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1664, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant [24 x i8] c"mci_cbc_enc_no_iv_array\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 276, i32 11 }
@___asan_gen_.315 = private unnamed_addr constant [24 x i8] c"mci_cbc_dec_no_iv_array\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 292, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 425, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1778, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1742, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1750, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1784, i32 5 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"am654_match_data\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2361, i32 29 }
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"am64_match_data\00", align 1
@___asan_gen_.349 = private constant [26 x i8] c"../drivers/crypto/sa2ul.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2367, i32 29 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_sa_ul_driver_exit, ptr @__initcall__kmod_sa2ul__282_2492_sa_ul_driver_init6, ptr @sa_aes_inv_key._entry, ptr @sa_aes_inv_key._entry.35, ptr @sa_aes_inv_key._entry_ptr, ptr @sa_aes_inv_key._entry_ptr.36, ptr @sa_cipher_cra_init._entry, ptr @sa_cipher_cra_init._entry_ptr, ptr @sa_cipher_setkey._entry, ptr @sa_cipher_setkey._entry_ptr, ptr @sa_cra_init_aead._entry, ptr @sa_cra_init_aead._entry.73, ptr @sa_cra_init_aead._entry_ptr, ptr @sa_cra_init_aead._entry_ptr.75, ptr @sa_dma_init._entry, ptr @sa_dma_init._entry.18, ptr @sa_dma_init._entry.20, ptr @sa_dma_init._entry_ptr, ptr @sa_dma_init._entry_ptr.19, ptr @sa_dma_init._entry_ptr.22, ptr @sa_export_shash._entry, ptr @sa_export_shash._entry_ptr, ptr @sa_init_ctx_info._entry, ptr @sa_init_ctx_info._entry_ptr, ptr @sa_init_mem._entry, ptr @sa_init_mem._entry_ptr, ptr @sa_register_algos._entry, ptr @sa_register_algos._entry.25, ptr @sa_register_algos._entry_ptr, ptr @sa_register_algos._entry_ptr.27, ptr @sa_run._entry, ptr @sa_run._entry.39, ptr @sa_run._entry_ptr, ptr @sa_run._entry_ptr.41, ptr @sa_sha_cra_init_alg._entry, ptr @sa_sha_cra_init_alg._entry.60, ptr @sa_sha_cra_init_alg._entry_ptr, ptr @sa_sha_cra_init_alg._entry_ptr.62, ptr @sa_sha_setup._entry, ptr @sa_sha_setup._entry_ptr, ptr @sa_ul_driver_exit, ptr @sa_ul_probe._entry, ptr @sa_ul_probe._entry_ptr, ptr @sa_ul_driver, ptr @.str, ptr @of_match, ptr @sa_ul_probe.saul_base, ptr @sa_k3_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sa_ul_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @mci_cbc_enc_array, ptr @mci_cbc_dec_array, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @mci_ecb_enc_array, ptr @mci_ecb_dec_array, ptr @mci_cbc_3des_enc_array, ptr @mci_cbc_3des_dec_array, ptr @mci_ecb_3des_enc_array, ptr @mci_ecb_3des_dec_array, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @mci_cbc_enc_no_iv_array, ptr @mci_cbc_dec_no_iv_array, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @am654_match_data, ptr @am64_match_data], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_ul_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_ul_probe.saul_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_k3_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_ul_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_ul_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_init_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_dma_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_dma_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_register_algos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_register_algos._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_enc_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_dec_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_cipher_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_aes_inv_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_aes_inv_key._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_run._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_cipher_cra_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_init_ctx_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_ecb_enc_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_ecb_dec_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_3des_enc_array to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_3des_dec_array to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_ecb_3des_enc_array to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_ecb_3des_dec_array to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_sha_cra_init_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_sha_cra_init_alg._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_sha_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_enc_no_iv_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_cbc_dec_no_iv_array to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_export_shash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_cra_init_aead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_cra_init_aead._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_match_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am64_match_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_ul_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sa_ul_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sa_ul_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sa_ul_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_ul_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 152, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %match_data = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %match_data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  store ptr %call7, ptr @sa_ul_probe.saul_base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  store ptr %dev1, ptr @sa_k3_dev, align 4
  %dev12 = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev12, align 4
  %pdev13 = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %pdev13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev13, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i77 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.i78 = icmp slt i32 %call.i77, 0
  br i1 %cmp.i78, label %if.then.i, label %if.end16

if.then.i:                                        ; preds = %if.end11
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !189
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !190
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call.i77) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev13, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i79 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.7, ptr noundef %dev1.i, i32 noundef 256, i32 noundef 64, i32 noundef 0) #9
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i79, ptr %sc_pool.i, align 4
  %tobool.not.i = icmp eq ptr %call.i79, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end16.sa_init_mem.exit_crit_edge

if.end16.sa_init_mem.exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_init_mem.exit

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.8) #12
  br label %sa_init_mem.exit

sa_init_mem.exit:                                 ; preds = %do.end.i, %if.end16.sa_init_mem.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #9
  %12 = call ptr @memset(ptr %cfg.i, i32 255, i32 48)
  %dma_rx1.i = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %dma_rx1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dma_rx1.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_tx.i, align 4
  %dma_rx2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 12
  %15 = ptrtoint ptr %dma_rx2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dma_rx2.i, align 4
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 19
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %coherent_dma_mask.i.i, ptr %dma_mask.i.i, align 8
  %call.i.i.i = tail call i32 @dma_set_mask(ptr noundef %17, i64 noundef 281474976710655) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %sa_dma_init.exit.thread102

sa_dma_init.exit.thread102:                       ; preds = %sa_init_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  br label %destroy_dma_pool

if.end.i:                                         ; preds = %sa_init_mem.exit
  %call1.i.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %17, i64 noundef 281474976710655) #9
  %19 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12, align 4
  %call2.i = tail call ptr @dma_request_chan(ptr noundef %20, ptr noundef nonnull @.str.10) #9
  %21 = ptrtoint ptr %dma_rx1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2.i, ptr %dma_rx1.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  br i1 %cmp.i.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call2.i to i32
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %23, i32 noundef %24, ptr noundef nonnull @.str.11) #9
  br label %sa_dma_init.exit

if.end11.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @dma_request_chan(ptr noundef %23, ptr noundef nonnull @.str.12) #9
  %25 = ptrtoint ptr %dma_rx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call13.i, ptr %dma_rx2.i, align 4
  %cmp.i97.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev12, align 4
  br i1 %cmp.i97.i, label %if.then17.i, label %if.end22.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %call13.i to i32
  %call21.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %27, i32 noundef %28, ptr noundef nonnull @.str.13) #9
  br label %err_dma_rx2.i

if.end22.i:                                       ; preds = %if.end11.i
  %call24.i = tail call ptr @dma_request_chan(ptr noundef %27, ptr noundef nonnull @.str.14) #9
  %29 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call24.i, ptr %dma_tx.i, align 4
  %cmp.i98.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %if.then28.i, label %if.end33.i

if.then28.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12, align 4
  %32 = ptrtoint ptr %call24.i to i32
  %call32.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %31, i32 noundef %32, ptr noundef nonnull @.str.15) #9
  br label %err_dma_tx.i

if.end33.i:                                       ; preds = %if.end22.i
  %33 = call ptr @memset(ptr %cfg.i, i32 0, i32 48)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %cfg.i) #9, !srcloc !191
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %34 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %35 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %36 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %37 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %dst_maxburst.i, align 4
  %38 = ptrtoint ptr %dma_rx1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_rx1.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end33.i.do.end.i80_crit_edge, label %dmaengine_slave_config.exit.i

if.end33.i.do.end.i80_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i80

dmaengine_slave_config.exit.i:                    ; preds = %if.end33.i
  %call.i.i = call i32 %43(ptr noundef %39, ptr noundef nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool36.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool36.not.i, label %if.end39.i, label %dmaengine_slave_config.exit.i.do.end.i80_crit_edge

dmaengine_slave_config.exit.i.do.end.i80_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i80

do.end.i80:                                       ; preds = %dmaengine_slave_config.exit.i.do.end.i80_crit_edge, %if.end33.i.do.end.i80_crit_edge
  %retval.0.i113.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i80_crit_edge ], [ -38, %if.end33.i.do.end.i80_crit_edge ]
  %44 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i113.i) #12
  br label %err_dma_config.i

if.end39.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %46 = ptrtoint ptr %dma_rx2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_rx2.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_config.i99.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %device_config.i99.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_config.i99.i, align 4
  %tobool.not.i100.i = icmp eq ptr %51, null
  br i1 %tobool.not.i100.i, label %if.end39.i.do.end46.i_crit_edge, label %dmaengine_slave_config.exit104.i

if.end39.i.do.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

dmaengine_slave_config.exit104.i:                 ; preds = %if.end39.i
  %call.i101.i = call i32 %51(ptr noundef %47, ptr noundef nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool42.not.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool42.not.i, label %if.end48.i, label %dmaengine_slave_config.exit104.i.do.end46.i_crit_edge

dmaengine_slave_config.exit104.i.do.end46.i_crit_edge: ; preds = %dmaengine_slave_config.exit104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %dmaengine_slave_config.exit104.i.do.end46.i_crit_edge, %if.end39.i.do.end46.i_crit_edge
  %retval.0.i103116.i = phi i32 [ %call.i101.i, %dmaengine_slave_config.exit104.i.do.end46.i_crit_edge ], [ -38, %if.end39.i.do.end46.i_crit_edge ]
  %52 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i103116.i) #12
  br label %err_dma_config.i

if.end48.i:                                       ; preds = %dmaengine_slave_config.exit104.i
  %54 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_tx.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_config.i105.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %device_config.i105.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_config.i105.i, align 4
  %tobool.not.i106.i = icmp eq ptr %59, null
  br i1 %tobool.not.i106.i, label %if.end48.i.do.end55.i_crit_edge, label %dmaengine_slave_config.exit110.i

if.end48.i.do.end55.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55.i

dmaengine_slave_config.exit110.i:                 ; preds = %if.end48.i
  %call.i107.i = call i32 %59(ptr noundef %55, ptr noundef nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool51.not.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool51.not.i, label %sa_dma_init.exit.thread, label %dmaengine_slave_config.exit110.i.do.end55.i_crit_edge

dmaengine_slave_config.exit110.i.do.end55.i_crit_edge: ; preds = %dmaengine_slave_config.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55.i

sa_dma_init.exit.thread:                          ; preds = %dmaengine_slave_config.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  br label %do.body22

do.end55.i:                                       ; preds = %dmaengine_slave_config.exit110.i.do.end55.i_crit_edge, %if.end48.i.do.end55.i_crit_edge
  %retval.0.i109119.i = phi i32 [ %call.i107.i, %dmaengine_slave_config.exit110.i.do.end55.i_crit_edge ], [ -38, %if.end48.i.do.end55.i_crit_edge ]
  %60 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i109119.i) #12
  br label %err_dma_config.i

err_dma_config.i:                                 ; preds = %do.end55.i, %do.end46.i, %do.end.i80
  %ret.0.i = phi i32 [ %retval.0.i113.i, %do.end.i80 ], [ %retval.0.i103116.i, %do.end46.i ], [ %retval.0.i109119.i, %do.end55.i ]
  %62 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_tx.i, align 4
  call void @dma_release_channel(ptr noundef %63) #9
  br label %err_dma_tx.i

err_dma_tx.i:                                     ; preds = %err_dma_config.i, %if.then28.i
  %ret.1.i = phi i32 [ %call32.i, %if.then28.i ], [ %ret.0.i, %err_dma_config.i ]
  %64 = ptrtoint ptr %dma_rx2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_rx2.i, align 4
  call void @dma_release_channel(ptr noundef %65) #9
  br label %err_dma_rx2.i

err_dma_rx2.i:                                    ; preds = %err_dma_tx.i, %if.then17.i
  %ret.2.i = phi i32 [ %call21.i, %if.then17.i ], [ %ret.1.i, %err_dma_tx.i ]
  %66 = ptrtoint ptr %dma_rx1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_rx1.i, align 4
  call void @dma_release_channel(ptr noundef %67) #9
  br label %sa_dma_init.exit

sa_dma_init.exit:                                 ; preds = %err_dma_rx2.i, %if.then6.i
  %retval.0.i81 = phi i32 [ %call10.i, %if.then6.i ], [ %ret.2.i, %err_dma_rx2.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81)
  %tobool19.not = icmp eq i32 %retval.0.i81, 0
  br i1 %tobool19.not, label %sa_dma_init.exit.do.body22_crit_edge, label %sa_dma_init.exit.destroy_dma_pool_crit_edge

sa_dma_init.exit.destroy_dma_pool_crit_edge:      ; preds = %sa_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_dma_pool

sa_dma_init.exit.do.body22_crit_edge:             ; preds = %sa_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body22:                                        ; preds = %sa_dma_init.exit.do.body22_crit_edge, %sa_dma_init.exit.thread
  %scid_lock = getelementptr inbounds %struct.sa_crypto_data, ptr %call.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %scid_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sa_ul_probe.__key, i16 noundef signext 3) #9
  %68 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %match_data, align 4
  %skip_engine_control = getelementptr inbounds %struct.sa_match_data, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %skip_engine_control to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %skip_engine_control, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool27.not = icmp eq i8 %71, 0
  br i1 %tobool27.not, label %if.then28, label %do.body22.if.end29_crit_edge

do.body22.if.end29_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %72 = load ptr, ptr @sa_ul_probe.saul_base, align 4
  %add.ptr = getelementptr i8, ptr %72, i32 4096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1962278912) #9, !srcloc !193
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.body22.if.end29_crit_edge
  %73 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %match_data, align 4
  %75 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev12, align 4
  %supported_algos.i = getelementptr inbounds %struct.sa_match_data, ptr %74, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29
  %i.059.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %77 = ptrtoint ptr %supported_algos.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %supported_algos.i, align 4
  %shl.i = shl nuw nsw i32 1, %i.059.i
  %and.i = and i32 %78, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i82 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i82, label %for.body.i.for.inc.i_crit_edge, label %if.end.i83

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i83:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.059.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 128
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i32 %80, label %do.end.i85 [
    i32 5, label %if.then5.i
    i32 15, label %if.then10.i
    i32 3, label %if.then21.i
  ]

if.then5.i:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  %alg.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.059.i, i32 2
  %cra_name.i = getelementptr inbounds %struct.skcipher_alg, ptr %alg.i, i32 0, i32 11, i32 8
  %call.i84 = call i32 @crypto_register_skcipher(ptr noundef %alg.i) #9
  br label %if.end35.i

if.then10.i:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  %alg12.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.059.i, i32 2
  %cra_name14.i = getelementptr inbounds %struct.ahash_alg, ptr %alg12.i, i32 0, i32 11, i32 3, i32 8
  %call18.i = call i32 @crypto_register_ahash(ptr noundef %alg12.i) #9
  br label %if.end35.i

if.then21.i:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  %alg23.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.059.i, i32 2
  %cra_name25.i = getelementptr inbounds %struct.aead_alg, ptr %alg23.i, i32 0, i32 10, i32 8
  %call29.i = call i32 @crypto_register_aead(ptr noundef %alg23.i) #9
  br label %if.end35.i

do.end.i85:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.23, i32 noundef %80) #12
  br label %for.inc.i

if.end35.i:                                       ; preds = %if.then21.i, %if.then10.i, %if.then5.i
  %alg_name.0.i = phi ptr [ %cra_name.i, %if.then5.i ], [ %cra_name14.i, %if.then10.i ], [ %cra_name25.i, %if.then21.i ]
  %err.0.i = phi i32 [ %call.i84, %if.then5.i ], [ %call18.i, %if.then10.i ], [ %call29.i, %if.then21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool36.not.i86 = icmp eq i32 %err.0.i, 0
  br i1 %tobool36.not.i86, label %if.else41.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.26, ptr noundef %alg_name.0.i) #12
  br label %for.inc.i

if.else41.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %registered.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.059.i, i32 3
  %82 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %registered.i, align 128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else41.i, %do.end40.i, %do.end.i85, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %sa_register_algos.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sa_register_algos.exit:                           ; preds = %for.inc.i
  %call30 = call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sa_register_algos.exit.for.body.i89_crit_edge

sa_register_algos.exit.for.body.i89_crit_edge:    ; preds = %sa_register_algos.exit
  br label %for.body.i89

if.end33:                                         ; preds = %sa_register_algos.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef %dev1, ptr noundef nonnull @sa_link_child) #9
  br label %cleanup

for.body.i89:                                     ; preds = %for.inc.i95.for.body.i89_crit_edge, %sa_register_algos.exit.for.body.i89_crit_edge
  %i.01.i = phi i32 [ %inc.i93, %for.inc.i95.for.body.i89_crit_edge ], [ 0, %sa_register_algos.exit.for.body.i89_crit_edge ]
  %registered.i87 = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 3
  %83 = ptrtoint ptr %registered.i87 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %registered.i87, align 128, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i88 = icmp eq i8 %84, 0
  br i1 %tobool.not.i88, label %for.body.i89.for.inc.i95_crit_edge, label %if.end.i91

for.body.i89.for.inc.i95_crit_edge:               ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i95

if.end.i91:                                       ; preds = %for.body.i89
  %arrayidx.i90 = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i
  %85 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i90, align 128
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %86, label %if.end.i91.if.end17.i_crit_edge [
    i32 5, label %if.then4.i
    i32 15, label %if.then7.i
    i32 3, label %if.then12.i
  ]

if.end.i91.if.end17.i_crit_edge:                  ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  %alg.i92 = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  call void @crypto_unregister_skcipher(ptr noundef %alg.i92) #9
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  %alg9.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  call void @crypto_unregister_ahash(ptr noundef %alg9.i) #9
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  %alg14.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  call void @crypto_unregister_aead(ptr noundef %alg14.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.then7.i, %if.then4.i, %if.end.i91.if.end17.i_crit_edge
  %88 = ptrtoint ptr %registered.i87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %registered.i87, align 128
  br label %for.inc.i95

for.inc.i95:                                      ; preds = %if.end17.i, %for.body.i89.for.inc.i95_crit_edge
  %inc.i93 = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i94 = icmp eq i32 %inc.i93, 9
  br i1 %exitcond.not.i94, label %sa_unregister_algos.exit, label %for.inc.i95.for.body.i89_crit_edge

for.inc.i95.for.body.i89_crit_edge:               ; preds = %for.inc.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i89

sa_unregister_algos.exit:                         ; preds = %for.inc.i95
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %dma_rx2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_rx2.i, align 4
  call void @dma_release_channel(ptr noundef %90) #9
  %91 = ptrtoint ptr %dma_rx1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_rx1.i, align 4
  call void @dma_release_channel(ptr noundef %92) #9
  %93 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_tx.i, align 4
  call void @dma_release_channel(ptr noundef %94) #9
  br label %destroy_dma_pool

destroy_dma_pool:                                 ; preds = %sa_unregister_algos.exit, %sa_dma_init.exit.destroy_dma_pool_crit_edge, %sa_dma_init.exit.thread102
  %ret.0 = phi i32 [ %retval.0.i81, %sa_dma_init.exit.destroy_dma_pool_crit_edge ], [ %call30, %sa_unregister_algos.exit ], [ %call.i.i.i, %sa_dma_init.exit.thread102 ]
  %95 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sc_pool.i, align 4
  call void @dma_pool_destroy(ptr noundef %96) #9
  %call.i96 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %destroy_dma_pool, %if.end33, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call.i77, %do.end ], [ %ret.0, %destroy_dma_pool ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_ul_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %registered.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 3
  %2 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered.i, align 128, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 128
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %5, label %if.end.i.if.end17.i_crit_edge [
    i32 5, label %if.then4.i
    i32 15, label %if.then7.i
    i32 3, label %if.then12.i
  ]

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %alg.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %alg.i) #9
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %alg9.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  tail call void @crypto_unregister_ahash(ptr noundef %alg9.i) #9
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %alg14.i = getelementptr [9 x %struct.sa_alg_tmpl], ptr @sa_algs, i32 0, i32 %i.01.i, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %alg14.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.then7.i, %if.then4.i, %if.end.i.if.end17.i_crit_edge
  %7 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %registered.i, align 128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %sa_unregister_algos.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sa_unregister_algos.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma_rx2 = getelementptr inbounds %struct.sa_crypto_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %dma_rx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_rx2, align 4
  tail call void @dma_release_channel(ptr noundef %9) #9
  %dma_rx1 = getelementptr inbounds %struct.sa_crypto_data, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %dma_rx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx1, align 4
  tail call void @dma_release_channel(ptr noundef %11) #9
  %dma_tx = getelementptr inbounds %struct.sa_crypto_data, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx, align 4
  tail call void @dma_release_channel(ptr noundef %13) #9
  %sc_pool = getelementptr inbounds %struct.sa_crypto_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %sc_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %15) #9
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_link_child(ptr noundef %dev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %data, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aes_cbc_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %keylen)
  %cmp = icmp ugt i32 %keylen, 39
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %keylen, 3
  %sub = add nsw i32 %shr, -2
  %arrayidx = getelementptr [3 x [27 x i8]], ptr @mci_cbc_enc_array, i32 0, i32 %sub
  %mci_enc = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %1 = ptrtoint ptr %mci_enc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %mci_enc, align 4
  %arrayidx1 = getelementptr [3 x [27 x i8]], ptr @mci_cbc_dec_array, i32 0, i32 %sub
  %mci_dec = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %2 = ptrtoint ptr %mci_dec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx1, ptr %mci_dec, align 4
  %inv_key = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 10
  %3 = ptrtoint ptr %inv_key to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %inv_key, align 4
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %4 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %ealg_id, align 4
  %iv_idx = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 4
  %5 = ptrtoint ptr %iv_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %iv_idx, align 2
  %iv_out_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 5
  %6 = ptrtoint ptr %iv_out_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %iv_out_size, align 1
  %call = call fastcc i32 @sa_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 4
  %call = tail call fastcc i32 @sa_cipher_run(ptr noundef %req, ptr noundef %1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 4
  %call = tail call fastcc i32 @sa_cipher_run(ptr noundef %req, ptr noundef %1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_cipher_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  %5 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 732)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i.i) #9, !srcloc !191
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %__crt_ctx.i.i, align 4
  %enc = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %call3 = tail call fastcc i32 @sa_init_ctx_info(ptr noundef %enc, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 44
  %call4 = tail call fastcc i32 @sa_init_ctx_info(ptr noundef %dec, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %sc_id.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %7 = ptrtoint ptr %sc_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sc_id.i, align 4
  %conv.i = zext i16 %8 to i32
  %sc_id_start.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i = zext i16 %10 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %scid_lock.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %ctx_bm.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 9
  %rem.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %12, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %sc_id2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 8
  %13 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sc_id2.i, align 4
  %dec.i = add i16 %14, -1
  store i16 %dec.i, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %15 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enc, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.then.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_pool.i, align 4
  %sc_phys.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %sc_phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sc_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %18, ptr noundef nonnull %16, i32 noundef %20) #9
  %21 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %enc, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #9
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %22 = load ptr, ptr @sa_k3_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.42, ptr noundef %cra_name.i) #12
  %23 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 72
  %24 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9, ptr %fallback, align 4
  %25 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call9, align 128
  %add = add i32 %26, 128
  %27 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %tfm, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_cipher_cra_init.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_cipher_cra_init, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !194

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %28 = load ptr, ptr @sa_k3_dev, align 4
  %sc_id = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %29 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sc_id, align 4
  %conv = zext i16 %30 to i32
  %sc_phys = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %sc_id24 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 52
  %31 = ptrtoint ptr %sc_id24 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sc_id24, align 4
  %conv25 = zext i16 %32 to i32
  %sc_phys27 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_cipher_cra_init.__UNIQUE_ID_ddebug277, ptr noundef %28, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef %tfm, i32 noundef %conv, ptr noundef %sc_phys, i32 noundef %conv25, ptr noundef %sc_phys27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end13, %do.end, %if.then.i, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %do.end ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ %call4, %if.then6.cleanup_crit_edge ], [ %call4, %if.then.i ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_cipher_cra_exit(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_cipher_cra_exit.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_cipher_cra_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr @sa_k3_dev, align 4
  %sc_id = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %4 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sc_id, align 4
  %conv = zext i16 %5 to i32
  %sc_phys = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %sc_id6 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 52
  %6 = ptrtoint ptr %sc_id6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sc_id6, align 4
  %conv7 = zext i16 %7 to i32
  %sc_phys9 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_cipher_cra_exit.__UNIQUE_ID_ddebug276, ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.48, ptr noundef %tfm, i32 noundef %conv, ptr noundef %sc_phys, i32 noundef %conv7, ptr noundef %sc_phys9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enc10 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %sc_id.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %8 = ptrtoint ptr %sc_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sc_id.i, align 4
  %conv.i = zext i16 %9 to i32
  %sc_id_start.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 6
  %10 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i = zext i16 %11 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %scid_lock.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %ctx_bm.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 9
  %rem.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %13, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %sc_id2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 8
  %14 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sc_id2.i, align 4
  %dec.i = add i16 %15, -1
  store i16 %dec.i, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %16 = ptrtoint ptr %enc10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enc10, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end.sa_free_ctx_info.exit_crit_edge, label %if.then.i

do.end.sa_free_ctx_info.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_free_ctx_info.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_pool.i, align 4
  %sc_phys.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %20 = ptrtoint ptr %sc_phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sc_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef nonnull %17, i32 noundef %21) #9
  %22 = ptrtoint ptr %enc10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %enc10, align 4
  br label %sa_free_ctx_info.exit

sa_free_ctx_info.exit:                            ; preds = %if.then.i, %do.end.sa_free_ctx_info.exit_crit_edge
  %dec11 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 44
  %sc_id.i20 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 52
  %23 = ptrtoint ptr %sc_id.i20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sc_id.i20, align 4
  %conv.i21 = zext i16 %24 to i32
  %25 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i23 = zext i16 %26 to i32
  %sub.i24 = sub nsw i32 %conv.i21, %conv1.i23
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %rem.i.i27 = and i32 %sub.i24, 31
  %shl.i.i28 = shl nuw i32 1, %rem.i.i27
  %div2.i.i29 = lshr i32 %sub.i24, 5
  %add.ptr.i.i30 = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i29
  %neg.i.i31 = xor i32 %shl.i.i28, -1
  %27 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i30, align 4
  %and.i.i32 = and i32 %28, %neg.i.i31
  store i32 %and.i.i32, ptr %add.ptr.i.i30, align 4
  %29 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sc_id2.i, align 4
  %dec.i34 = add i16 %30, -1
  store i16 %dec.i34, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %31 = ptrtoint ptr %dec11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dec11, align 4
  %tobool.not.i35 = icmp eq ptr %32, null
  br i1 %tobool.not.i35, label %sa_free_ctx_info.exit.sa_free_ctx_info.exit39_crit_edge, label %if.then.i38

sa_free_ctx_info.exit.sa_free_ctx_info.exit39_crit_edge: ; preds = %sa_free_ctx_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_free_ctx_info.exit39

if.then.i38:                                      ; preds = %sa_free_ctx_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i36 = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %33 = ptrtoint ptr %sc_pool.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sc_pool.i36, align 4
  %sc_phys.i37 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 48
  %35 = ptrtoint ptr %sc_phys.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sc_phys.i37, align 4
  tail call void @dma_pool_free(ptr noundef %34, ptr noundef nonnull %32, i32 noundef %36) #9
  %37 = ptrtoint ptr %dec11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dec11, align 4
  br label %sa_free_ctx_info.exit39

sa_free_ctx_info.exit39:                          ; preds = %if.then.i38, %sa_free_ctx_info.exit.sa_free_ctx_info.exit39_crit_edge
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 72
  %38 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %39, ptr noundef %base.i.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aes_ecb_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %keylen)
  %cmp = icmp ugt i32 %keylen, 39
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %keylen, 3
  %sub = add nsw i32 %shr, -2
  %arrayidx = getelementptr [3 x [27 x i8]], ptr @mci_ecb_enc_array, i32 0, i32 %sub
  %mci_enc = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %1 = ptrtoint ptr %mci_enc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %mci_enc, align 4
  %arrayidx1 = getelementptr [3 x [27 x i8]], ptr @mci_ecb_dec_array, i32 0, i32 %sub
  %mci_dec = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %2 = ptrtoint ptr %mci_dec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx1, ptr %mci_dec, align 4
  %inv_key = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 10
  %3 = ptrtoint ptr %inv_key to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %inv_key, align 4
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %4 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %ealg_id, align 4
  %call = call fastcc i32 @sa_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_3des_cbc_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %mci_enc = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %1 = ptrtoint ptr %mci_enc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mci_cbc_3des_enc_array, ptr %mci_enc, align 4
  %mci_dec = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %2 = ptrtoint ptr %mci_dec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mci_cbc_3des_dec_array, ptr %mci_dec, align 4
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %3 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %ealg_id, align 4
  %iv_idx = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 4
  %4 = ptrtoint ptr %iv_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %iv_idx, align 2
  %iv_out_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 5
  %5 = ptrtoint ptr %iv_out_size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %iv_out_size, align 1
  %call = call fastcc i32 @sa_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_3des_ecb_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %mci_enc = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %1 = ptrtoint ptr %mci_enc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mci_ecb_3des_enc_array, ptr %mci_enc, align 4
  %mci_dec = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %2 = ptrtoint ptr %mci_dec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mci_ecb_3des_dec_array, ptr %mci_dec, align 4
  %call = call fastcc i32 @sa_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_init(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_sha_init.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_sha_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = load ptr, ptr @sa_k3_dev, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_sha_init.__UNIQUE_ID_ddebug279, ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef %6, ptr noundef %__ctx.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fallback = getelementptr i8, ptr %1, i32 856
  %7 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %9 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  %flags9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %flags9, align 4
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.crypto_ahash_init.exit_crit_edge

do.end.crypto_ahash_init.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_ahash_init.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 128
  %call2.i = tail call i32 %16(ptr noundef %fallback_req) #9
  br label %crypto_ahash_init.exit

crypto_ahash_init.exit:                           ; preds = %if.end.i, %do.end.crypto_ahash_init.exit_crit_edge
  %retval.0.i19 = phi i32 [ %call2.i, %if.end.i ], [ -126, %do.end.crypto_ahash_init.exit_crit_edge ]
  ret i32 %retval.0.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 856
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %15) #9
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %17, i32 -124
  %18 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %19(ptr noundef %fallback_req) #9
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i, ptr noundef %15) #9
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 856
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %result, align 32
  %result7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %10 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %result7, align 32
  %call9 = tail call i32 @crypto_ahash_final(ptr noundef %fallback_req) #9
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 856
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %result, align 32
  %result11 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %16 = ptrtoint ptr %result11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %result11, align 32
  %call13 = tail call i32 @crypto_ahash_finup(ptr noundef %fallback_req) #9
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_digest(ptr noundef %req) #2 align 64 {
entry:
  %sa_req.i = alloca %struct.sa_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sa_req.i) #9
  %2 = call ptr @memset(ptr %sa_req.i, i32 0, i32 60)
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %__crt_alg.i.i.i.i = getelementptr i8, ptr %1, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i.i.i, align 128
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %8, label %if.then.i.sa_sha_run.exit_crit_edge [
    i32 20, label %sw.bb.i.i
    i32 32, label %sw.bb2.i.i
    i32 64, label %sw.bb4.i.i
  ]

if.then.i.sa_sha_run.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_sha_run.exit

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %result.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result.i.i, align 32
  %12 = call ptr @memcpy(ptr %11, ptr @sha1_zero_message_hash, i32 20)
  br label %sa_sha_run.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %result3.i.i, align 32
  %15 = call ptr @memcpy(ptr %14, ptr @sha256_zero_message_hash, i32 32)
  br label %sa_sha_run.exit

sw.bb4.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %result5.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %result5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %result5.i.i, align 32
  %18 = call ptr @memcpy(ptr %17, ptr @sha512_zero_message_hash, i32 64)
  br label %sa_sha_run.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp.i = icmp ugt i32 %4, 65535
  %19 = add i32 %4, -240
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %19)
  %20 = icmp ult i32 %19, 17
  %or.cond.i = or i1 %cmp.i, %20
  br i1 %or.cond.i, label %if.then6.i, label %if.end17.i

if.then6.i:                                       ; preds = %if.end.i
  %fallback_req.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback.i = getelementptr i8, ptr %1, i32 856
  %21 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fallback.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %22, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 512
  %flags8.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %flags8.i, align 4
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.i.i.i, align 128
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.i.crypto_ahash_init.exit.i_crit_edge

if.then6.i.crypto_ahash_init.exit.i_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_ahash_init.exit.i

if.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 128
  %call2.i.i = tail call i32 %30(ptr noundef %fallback_req.i) #9
  br label %crypto_ahash_init.exit.i

crypto_ahash_init.exit.i:                         ; preds = %if.end.i.i, %if.then6.i.crypto_ahash_init.exit.i_crit_edge
  %nbytes10.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 1
  %31 = ptrtoint ptr %nbytes10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %4, ptr %nbytes10.i, align 8
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %32 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src.i, align 4
  %src11.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 2
  %34 = ptrtoint ptr %src11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %src11.i, align 4
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %35 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %result.i, align 32
  %result12.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 3
  %37 = ptrtoint ptr %result12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %result12.i, align 32
  %38 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %39, i32 12
  %40 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %41) #9
  %42 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm1.i.i, align 16
  %update.i.i = getelementptr i8, ptr %43, i32 -124
  %44 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = tail call i32 %45(ptr noundef %fallback_req.i) #9
  tail call void @crypto_stats_ahash_update(i32 noundef %4, i32 noundef %call3.i.i, ptr noundef %41) #9
  %46 = ptrtoint ptr %nbytes10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %nbytes10.i, align 8
  %call15.i = tail call i32 @crypto_ahash_final(ptr noundef %fallback_req.i) #9
  %or16.i = or i32 %call15.i, %call3.i.i
  br label %sa_sha_run.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %4 to i16
  %size.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 1
  %47 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %size.i, align 4
  %auth_size.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 6
  %48 = ptrtoint ptr %auth_size.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i, ptr %auth_size.i, align 2
  %src19.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %49 = ptrtoint ptr %src19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src19.i, align 4
  %src20.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 13
  %51 = ptrtoint ptr %src20.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %src20.i, align 4
  %dst.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 14
  %52 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %dst.i, align 4
  %enc.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 12
  %53 = ptrtoint ptr %enc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %enc.i, align 4
  %type.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 8
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 15, ptr %type.i, align 4
  %callback.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 15
  %55 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @sa_sha_dma_in_callback, ptr %callback.i, align 4
  %mdata_size.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 16
  %56 = ptrtoint ptr %mdata_size.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 28, ptr %mdata_size.i, align 4
  %ctx22.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 11
  %57 = ptrtoint ptr %ctx22.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %__crt_ctx.i.i.i, ptr %ctx22.i, align 4
  %base24.i = getelementptr inbounds %struct.sa_req, ptr %sa_req.i, i32 0, i32 10
  %58 = ptrtoint ptr %base24.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %req, ptr %base24.i, align 4
  %call25.i = call fastcc i32 @sa_run(ptr noundef nonnull %sa_req.i) #9
  br label %sa_sha_run.exit

sa_sha_run.exit:                                  ; preds = %if.end17.i, %crypto_ahash_init.exit.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.then.i.sa_sha_run.exit_crit_edge
  %retval.0.i = phi i32 [ %or16.i, %crypto_ahash_init.exit.i ], [ %call25.i, %if.end17.i ], [ -22, %if.then.i.sa_sha_run.exit_crit_edge ], [ 0, %sw.bb4.i.i ], [ 0, %sw.bb2.i.i ], [ 0, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sa_req.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_export(ptr noundef %req, ptr noundef %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %fallback = getelementptr i8, ptr %1, i32 856
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags4 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags4, align 4
  %export.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %fallback_req, ptr noundef %out) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha_import(ptr noundef %req, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback = getelementptr i8, ptr %1, i32 856
  %2 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_import.exit_crit_edge

entry.crypto_ahash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_ahash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2
  %import.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %11(ptr noundef %fallback_req, ptr noundef %in) #9
  br label %crypto_ahash_import.exit

crypto_ahash_import.exit:                         ; preds = %if.end.i, %entry.crypto_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha1_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call fastcc void @sa_sha_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.57)
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %1 = ptrtoint ptr %aalg_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %aalg_id, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %2 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 20, ptr %hash_size, align 1
  %auth_ctrl = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %3 = ptrtoint ptr %auth_ctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %auth_ctrl, align 4
  call fastcc void @sa_sha_setup(ptr noundef %__crt_ctx.i, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_sha_cra_exit(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_sha_cra_exit.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_sha_cra_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr @sa_k3_dev, align 4
  %sc_id = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sc_id, align 4
  %conv = zext i16 %5 to i32
  %sc_phys = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %sc_id6 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %6 = ptrtoint ptr %sc_id6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sc_id6, align 4
  %conv7 = zext i16 %7 to i32
  %sc_phys9 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_sha_cra_exit.__UNIQUE_ID_ddebug280, ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.64, ptr noundef %tfm, i32 noundef %conv, ptr noundef %sc_phys, i32 noundef %conv7, ptr noundef %sc_phys9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %8 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 15
  br i1 %cmp, label %if.then12, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %do.end
  %enc13 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %sc_id.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %12 = ptrtoint ptr %sc_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sc_id.i, align 4
  %conv.i = zext i16 %13 to i32
  %sc_id_start.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 6
  %14 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i = zext i16 %15 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %scid_lock.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %ctx_bm.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 9
  %rem.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %17, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %sc_id2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 8
  %18 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sc_id2.i, align 4
  %dec.i = add i16 %19, -1
  store i16 %dec.i, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %20 = ptrtoint ptr %enc13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enc13, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then12.if.end14_crit_edge, label %if.then.i

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_pool.i, align 4
  %sc_phys.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %24 = ptrtoint ptr %sc_phys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sc_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25) #9
  %26 = ptrtoint ptr %enc13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %enc13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then12.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %shash = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 6, i32 4, i32 68
  %27 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %28, ptr noundef %base.i.i) #9
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 6, i32 4, i32 72
  %29 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fallback, align 4
  %base.i.i23 = getelementptr inbounds %struct.crypto_ahash, ptr %30, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %30, ptr noundef %base.i.i23) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha256_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call fastcc void @sa_sha_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.65)
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %1 = ptrtoint ptr %aalg_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 14, ptr %aalg_id, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %2 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %hash_size, align 1
  %auth_ctrl = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %3 = ptrtoint ptr %auth_ctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %auth_ctrl, align 4
  call fastcc void @sa_sha_setup(ptr noundef %__crt_ctx.i, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sha512_cra_init(ptr noundef %tfm) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call fastcc void @sa_sha_cra_init_alg(ptr noundef %tfm, ptr noundef nonnull @.str.66)
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %1 = ptrtoint ptr %aalg_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 15, ptr %aalg_id, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %2 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %hash_size, align 1
  %auth_ctrl = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %3 = ptrtoint ptr %auth_ctrl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %auth_ctrl, align 4
  call fastcc void @sa_sha_setup(ptr noundef %__crt_ctx.i, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aead_cbc_sha1_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %1 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %ealg_id, align 4
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %2 = ptrtoint ptr %aalg_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %aalg_id, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %3 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 20, ptr %hash_size, align 1
  %auth_ctrl = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %4 = ptrtoint ptr %auth_ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %auth_ctrl, align 4
  %call = call fastcc i32 @sa_aead_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aead_setauthsize(ptr nocapture noundef readonly %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3, i32 4, i32 72
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %call2 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aead_encrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %call = tail call fastcc i32 @sa_aead_run(ptr noundef %req, ptr noundef %1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aead_decrypt(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %call = tail call fastcc i32 @sa_aead_run(ptr noundef %req, ptr noundef %1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_cra_init_aead_sha1(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sa_cra_init_aead(ptr noundef %tfm, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.71)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_exit_tfm_aead(ptr nocapture noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %shash = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3, i32 4, i32 68
  %3 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %base.i.i) #9
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3, i32 4, i32 72
  %5 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fallback, align 4
  %base.i.i6 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %base.i.i6) #9
  %enc = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %sc_id.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %7 = ptrtoint ptr %sc_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sc_id.i, align 4
  %conv.i = zext i16 %8 to i32
  %sc_id_start.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i = zext i16 %10 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %scid_lock.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %ctx_bm.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 9
  %rem.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %12, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %sc_id2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 8
  %13 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sc_id2.i, align 4
  %dec.i = add i16 %14, -1
  store i16 %dec.i, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %15 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enc, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %entry.sa_free_ctx_info.exit_crit_edge, label %if.then.i

entry.sa_free_ctx_info.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_free_ctx_info.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_pool.i, align 4
  %sc_phys.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %19 = ptrtoint ptr %sc_phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sc_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %18, ptr noundef nonnull %16, i32 noundef %20) #9
  %21 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %enc, align 4
  br label %sa_free_ctx_info.exit

sa_free_ctx_info.exit:                            ; preds = %if.then.i, %entry.sa_free_ctx_info.exit_crit_edge
  %dec = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 44
  %sc_id.i7 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 52
  %22 = ptrtoint ptr %sc_id.i7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sc_id.i7, align 4
  %conv.i8 = zext i16 %23 to i32
  %24 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i10 = zext i16 %25 to i32
  %sub.i11 = sub nsw i32 %conv.i8, %conv1.i10
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %rem.i.i14 = and i32 %sub.i11, 31
  %shl.i.i15 = shl nuw i32 1, %rem.i.i14
  %div2.i.i16 = lshr i32 %sub.i11, 5
  %add.ptr.i.i17 = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i16
  %neg.i.i18 = xor i32 %shl.i.i15, -1
  %26 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i17, align 4
  %and.i.i19 = and i32 %27, %neg.i.i18
  store i32 %and.i.i19, ptr %add.ptr.i.i17, align 4
  %28 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sc_id2.i, align 4
  %dec.i21 = add i16 %29, -1
  store i16 %dec.i21, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %30 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dec, align 4
  %tobool.not.i22 = icmp eq ptr %31, null
  br i1 %tobool.not.i22, label %sa_free_ctx_info.exit.sa_free_ctx_info.exit26_crit_edge, label %if.then.i25

sa_free_ctx_info.exit.sa_free_ctx_info.exit26_crit_edge: ; preds = %sa_free_ctx_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_free_ctx_info.exit26

if.then.i25:                                      ; preds = %sa_free_ctx_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i23 = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %32 = ptrtoint ptr %sc_pool.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_pool.i23, align 4
  %sc_phys.i24 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 48
  %34 = ptrtoint ptr %sc_phys.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sc_phys.i24, align 4
  tail call void @dma_pool_free(ptr noundef %33, ptr noundef nonnull %31, i32 noundef %35) #9
  %36 = ptrtoint ptr %dec to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dec, align 4
  br label %sa_free_ctx_info.exit26

sa_free_ctx_info.exit26:                          ; preds = %if.then.i25, %sa_free_ctx_info.exit.sa_free_ctx_info.exit26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_aead_cbc_sha256_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  %ad = alloca %struct.algo_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ad) #9
  %0 = call ptr @memset(ptr %ad, i32 0, i32 40)
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %1 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %ealg_id, align 4
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %2 = ptrtoint ptr %aalg_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 19, ptr %aalg_id, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %3 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %hash_size, align 1
  %auth_ctrl = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %4 = ptrtoint ptr %auth_ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %auth_ctrl, align 4
  %call = call fastcc i32 @sa_aead_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen, ptr noundef nonnull %ad)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ad) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_cra_init_aead_sha256(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sa_cra_init_aead(ptr noundef %tfm, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.76)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_cipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, ptr noundef %ad) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.sa_cmdl_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 72
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge101
    i32 32, label %entry.if.end_crit_edge102
  ]

entry.if.end_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge101, %entry.if.end_crit_edge102
  %3 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %ad, align 4
  %sc_size = getelementptr inbounds %struct.sa_eng_info, ptr %ad, i32 0, i32 1
  %4 = ptrtoint ptr %sc_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 64, ptr %sc_size, align 2
  %5 = call ptr @memset(ptr %cfg, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %cfg) #9, !srcloc !191
  %6 = ptrtoint ptr %ad to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ad, align 4
  %enc_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 1
  %8 = ptrtoint ptr %enc_eng_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %enc_eng_id, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %10, i32 -100
  %11 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ivsize.i, align 4
  %conv = trunc i32 %12 to i8
  %iv_size = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 3
  %13 = ptrtoint ptr %iv_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %iv_size, align 2
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %15, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 128
  %and = and i32 %17, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %base.i.i, align 128
  %call8 = call i32 @crypto_skcipher_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %enc = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %18 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_ctx.i.i, align 4
  %match_data = getelementptr inbounds %struct.sa_crypto_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %match_data, align 4
  %conv11 = trunc i32 %keylen to i16
  %arrayidx = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 32
  %call13 = call fastcc i32 @sa_init_sc(ptr noundef %enc, ptr noundef %21, ptr noundef %key, i16 noundef zeroext %conv11, ptr noundef null, i16 noundef zeroext 0, ptr noundef %ad, i8 noundef zeroext 1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.do.end_crit_edge

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end16:                                         ; preds = %if.end10
  %cmdl = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %cmdl_upd_info = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 60
  %call19 = call fastcc i32 @sa_format_cmdl_gen(ptr noundef nonnull %cfg, ptr noundef %cmdl, ptr noundef %cmdl_upd_info)
  %22 = add i32 %call19, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %22)
  %23 = icmp ult i32 %22, -48
  br i1 %23, label %if.end16.do.end_crit_edge, label %if.end25

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end25:                                         ; preds = %if.end16
  %conv26 = trunc i32 %call19 to i16
  %cmdl_size = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 10
  %24 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv26, ptr %cmdl_size, align 2
  %dec = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 44
  %25 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_ctx.i.i, align 4
  %match_data29 = getelementptr inbounds %struct.sa_crypto_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %match_data29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %match_data29, align 4
  %arrayidx33 = getelementptr %struct.crypto_skcipher, ptr %tfm, i32 2, i32 1, i32 100
  %call34 = call fastcc i32 @sa_init_sc(ptr noundef %dec, ptr noundef %28, ptr noundef %key, i16 noundef zeroext %conv11, ptr noundef null, i16 noundef zeroext 0, ptr noundef %ad, i8 noundef zeroext 0, ptr noundef %arrayidx33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end37:                                         ; preds = %if.end25
  %29 = ptrtoint ptr %ad to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ad, align 4
  %31 = ptrtoint ptr %enc_eng_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %enc_eng_id, align 4
  %cmdl42 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 56
  %cmdl_upd_info45 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 104
  %call46 = call fastcc i32 @sa_format_cmdl_gen(ptr noundef nonnull %cfg, ptr noundef %cmdl42, ptr noundef %cmdl_upd_info45)
  %32 = add i32 %call46, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %32)
  %33 = icmp ult i32 %32, -48
  br i1 %33, label %if.end37.do.end_crit_edge, label %if.end53

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end53:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = trunc i32 %call46 to i16
  %cmdl_size56 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 54
  %34 = ptrtoint ptr %cmdl_size56 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv54, ptr %cmdl_size56, align 2
  %iv_idx = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 4
  %35 = ptrtoint ptr %iv_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %iv_idx, align 2
  %conv57 = zext i8 %36 to i32
  %iv_idx58 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 1, i32 44
  %37 = ptrtoint ptr %iv_idx58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv57, ptr %iv_idx58, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end37.do.end_crit_edge, %if.end25.do.end_crit_edge, %if.end16.do.end_crit_edge, %if.end10.do.end_crit_edge
  %38 = load ptr, ptr @sa_k3_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end53, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end53 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_init_sc(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %match_data, ptr noundef %enc_key, i16 noundef zeroext %enc_key_sz, ptr noundef %auth_key, i16 noundef zeroext %auth_key_sz, ptr noundef %ad, i8 noundef zeroext %enc, ptr nocapture noundef writeonly %swinfo) unnamed_addr #2 align 64 {
entry:
  %ctx.i.i = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %sc_id1 = getelementptr inbounds %struct.sa_ctx_info, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %sc_id1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sc_id1, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 256)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %1) #9, !srcloc !191
  %auth_eng = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1
  %5 = ptrtoint ptr %auth_eng to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %auth_eng, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enc)
  %tobool2.not = icmp eq i8 %enc, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %first_engine.0 = phi i8 [ %8, %if.then3 ], [ %6, %if.then.if.end_crit_edge ]
  %sc_size = getelementptr inbounds %struct.sa_eng_info, ptr %ad, i32 0, i32 1
  %9 = ptrtoint ptr %sc_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sc_size, align 2
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 101, ptr %arrayidx, align 1
  %hash_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %12 = ptrtoint ptr %hash_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hash_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv, 64
  %add13 = add i8 %13, 7
  %div99 = and i8 %add13, -8
  %14 = ptrtoint ptr %hash_size to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %div99, ptr %hash_size, align 1
  br label %if.end30

if.else16:                                        ; preds = %entry
  %15 = ptrtoint ptr %ad to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ad, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.else16.if.end30_crit_edge, label %if.then24

if.else16.if.end30_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then24:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx27 = getelementptr i8, ptr %1, i32 1
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -115, ptr %arrayidx27, align 1
  %iv_out_size = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 5
  %18 = ptrtoint ptr %iv_out_size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iv_out_size, align 1
  %hash_size28 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %20 = ptrtoint ptr %hash_size28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %hash_size28, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.else16.if.end30_crit_edge, %if.end10
  %auth_sc_offset.0 = phi i32 [ %add, %if.end10 ], [ 0, %if.then24 ], [ 0, %if.else16.if.end30_crit_edge ]
  %first_engine.1 = phi i8 [ %first_engine.0, %if.end10 ], [ %16, %if.then24 ], [ 0, %if.else16.if.end30_crit_edge ]
  %enc_sc_offset.0 = phi i32 [ 64, %if.end10 ], [ 64, %if.then24 ], [ 0, %if.else16.if.end30_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %1, align 1
  %arrayidx32 = getelementptr i8, ptr %1, i32 2
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %3, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %1, i32 4
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx33, align 1
  %priv_id = getelementptr inbounds %struct.sa_match_data, ptr %match_data, i32 0, i32 1
  %24 = ptrtoint ptr %priv_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv_id, align 1
  %arrayidx34 = getelementptr i8, ptr %1, i32 5
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx34, align 1
  %27 = ptrtoint ptr %match_data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %match_data, align 4
  %arrayidx35 = getelementptr i8, ptr %1, i32 6
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %1, i32 7
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx36, align 1
  %sc_size38 = getelementptr inbounds %struct.sa_eng_info, ptr %ad, i32 0, i32 1
  %31 = ptrtoint ptr %sc_size38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sc_size38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool39.not = icmp eq i16 %32, 0
  br i1 %tobool39.not, label %if.end30.if.end45_crit_edge, label %if.then40

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %if.end30
  %arrayidx41 = getelementptr i8, ptr %1, i32 %enc_sc_offset.0
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enc)
  %tobool.not.i = icmp eq i8 %enc, 0
  %mci_enc.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %mci_dec.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %mci.0.in.i = select i1 %tobool.not.i, ptr %mci_dec.i, ptr %mci_enc.i
  %34 = ptrtoint ptr %mci.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %mci.0.i = load ptr, ptr %mci.0.in.i, align 4
  %tobool1.not.i = icmp eq ptr %mci.0.i, null
  br i1 %tobool1.not.i, label %if.then40.if.end4.i_crit_edge, label %if.then2.i

if.then40.if.end4.i_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr i8, ptr %arrayidx41, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx3.i, ptr %mci.0.i, i32 27)
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.then40.if.end4.i_crit_edge
  %inv_key.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 10
  %36 = ptrtoint ptr %inv_key.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %inv_key.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not.i = icmp ne i8 %37, 0
  %38 = and i1 %tobool.not.i, %tobool5.not.i
  %arrayidx8.i = getelementptr i8, ptr %arrayidx41, i32 32
  br i1 %38, label %if.then7.i, label %if.else12.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i.i) #9
  %39 = call ptr @memset(ptr %ctx.i.i, i32 255, i32 484)
  %conv.i.i = zext i16 %enc_key_sz to i32
  %call.i.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i.i, ptr noundef %enc_key, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then7.i.sa_set_sc_enc.exit_crit_edge

if.then7.i.sa_set_sc_enc.exit_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_set_sc_enc.exit

if.end.i.i:                                       ; preds = %if.then7.i
  %40 = zext i16 %enc_key_sz to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %enc_key_sz, label %if.end.i.i.sa_set_sc_enc.exit_crit_edge [
    i16 24, label %if.then4.i.i
    i16 16, label %if.end.i.i.sw.bb.i.i_crit_edge
    i16 32, label %if.end.i.i.sa_aes_inv_key.exit.i_crit_edge
  ]

if.end.i.i.sa_aes_inv_key.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_aes_inv_key.exit.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end.i.i.sa_set_sc_enc.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_set_sc_enc.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr inbounds [60 x i32], ptr %ctx.i.i, i32 0, i32 51
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx6.i.i = getelementptr inbounds [60 x i32], ptr %ctx.i.i, i32 0, i32 46
  %43 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx6.i.i, align 4
  %xor.i.i = xor i32 %44, %42
  %arrayidx8.i.i = getelementptr inbounds [60 x i32], ptr %ctx.i.i, i32 0, i32 52
  %45 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %xor.i.i, ptr %arrayidx8.i.i, align 4
  %arrayidx12.i.i = getelementptr inbounds [60 x i32], ptr %ctx.i.i, i32 0, i32 47
  %46 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12.i.i, align 4
  %xor13.i.i = xor i32 %47, %xor.i.i
  %arrayidx15.i.i = getelementptr inbounds [60 x i32], ptr %ctx.i.i, i32 0, i32 53
  %48 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %xor13.i.i, ptr %arrayidx15.i.i, align 4
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then4.i.i, %if.end.i.i.sw.bb.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %conv.i.i, 24
  br label %sa_aes_inv_key.exit.i

sa_aes_inv_key.exit.i:                            ; preds = %sw.bb.i.i, %if.end.i.i.sa_aes_inv_key.exit.i_crit_edge
  %key_pos.0.i.i = phi i32 [ %add.i.i, %sw.bb.i.i ], [ 52, %if.end.i.i.sa_aes_inv_key.exit.i_crit_edge ]
  %arrayidx27.i.i = getelementptr [60 x i32], ptr %ctx.i.i, i32 0, i32 %key_pos.0.i.i
  %49 = call ptr @memcpy(ptr %arrayidx8.i, ptr %arrayidx27.i.i, i32 %conv.i.i)
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i.i) #9
  br label %if.end45

if.else12.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %enc_key_sz to i32
  %50 = call ptr @memcpy(ptr %arrayidx8.i, ptr %enc_key, i32 %conv.i)
  br label %if.end45

sa_set_sc_enc.exit:                               ; preds = %if.end.i.i.sa_set_sc_enc.exit_crit_edge, %if.then7.i.sa_set_sc_enc.exit_crit_edge
  %51 = load ptr, ptr @sa_k3_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i.i) #12
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i.i) #9
  br label %cleanup

if.end45:                                         ; preds = %if.else12.i, %sa_aes_inv_key.exit.i, %if.end30.if.end45_crit_edge
  %sc_size47 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %sc_size47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sc_size47, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool48.not = icmp eq i16 %53, 0
  br i1 %tobool48.not, label %if.end45.if.end51_crit_edge, label %if.then49

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  %arrayidx50 = getelementptr i8, ptr %1, i32 %auth_sc_offset.0
  %54 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx50, align 1
  %arrayidx2.i = getelementptr i8, ptr %arrayidx50, i32 1
  %55 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 64, ptr %arrayidx2.i, align 1
  %auth_ctrl.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 2
  %56 = ptrtoint ptr %auth_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %auth_ctrl.i, align 4
  %58 = or i8 %57, 64
  store i8 %58, ptr %arrayidx2.i, align 1
  %keyed_mac.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 12
  %59 = ptrtoint ptr %keyed_mac.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %keyed_mac.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i100 = icmp eq i8 %60, 0
  br i1 %tobool.not.i100, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1.i = getelementptr i8, ptr %arrayidx50, i32 64
  %add.ptr.i = getelementptr i8, ptr %arrayidx50, i32 32
  %prep_iopad.i = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 13
  %61 = ptrtoint ptr %prep_iopad.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prep_iopad.i, align 4
  call void %62(ptr noundef %ad, ptr noundef %auth_key, i16 noundef zeroext %auth_key_sz, ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i) #9
  br label %if.end51

if.else.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %63 = or i8 %57, 80
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx2.i, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.else.i, %if.then.i, %if.end45.if.end51_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -128, ptr %1, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end51
  %i.02.i = phi i32 [ 0, %if.end51 ], [ %add9.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %1, i32 %i.02.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %data.sroa.0.0.copyload.i = load i8, ptr %arrayidx.i, align 1
  %data.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 1
  %67 = ptrtoint ptr %data.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %data.sroa.5.0.copyload.i = load i8, ptr %data.sroa.5.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 2
  %68 = ptrtoint ptr %data.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %data.sroa.7.0.copyload.i = load i8, ptr %data.sroa.7.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.9.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 3
  %69 = ptrtoint ptr %data.sroa.9.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %data.sroa.9.0.copyload.i = load i8, ptr %data.sroa.9.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.11.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %70 = ptrtoint ptr %data.sroa.11.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %data.sroa.11.0.copyload.i = load i8, ptr %data.sroa.11.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.13.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 5
  %71 = ptrtoint ptr %data.sroa.13.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %data.sroa.13.0.copyload.i = load i8, ptr %data.sroa.13.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.15.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 6
  %72 = ptrtoint ptr %data.sroa.15.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %data.sroa.15.0.copyload.i = load i8, ptr %data.sroa.15.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.17.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 7
  %73 = ptrtoint ptr %data.sroa.17.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %data.sroa.17.0.copyload.i = load i8, ptr %data.sroa.17.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.19.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %74 = ptrtoint ptr %data.sroa.19.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %data.sroa.19.0.copyload.i = load i8, ptr %data.sroa.19.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.21.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 9
  %75 = ptrtoint ptr %data.sroa.21.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %data.sroa.21.0.copyload.i = load i8, ptr %data.sroa.21.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.23.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %76 = ptrtoint ptr %data.sroa.23.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %data.sroa.23.0.copyload.i = load i8, ptr %data.sroa.23.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.25.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 11
  %77 = ptrtoint ptr %data.sroa.25.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %data.sroa.25.0.copyload.i = load i8, ptr %data.sroa.25.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.27.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %78 = ptrtoint ptr %data.sroa.27.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %data.sroa.27.0.copyload.i = load i8, ptr %data.sroa.27.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.29.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 13
  %79 = ptrtoint ptr %data.sroa.29.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %data.sroa.29.0.copyload.i = load i8, ptr %data.sroa.29.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.31.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 14
  %80 = ptrtoint ptr %data.sroa.31.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %data.sroa.31.0.copyload.i = load i8, ptr %data.sroa.31.0.arrayidx.sroa_idx.i, align 1
  %data.sroa.33.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 15
  %81 = ptrtoint ptr %data.sroa.33.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %data.sroa.33.0.copyload.i = load i8, ptr %data.sroa.33.0.arrayidx.sroa_idx.i, align 1
  store i8 %data.sroa.33.0.copyload.i, ptr %arrayidx.i, align 1
  %add.1.i = or i32 %i.02.i, 1
  %arrayidx7.1.i = getelementptr i8, ptr %1, i32 %add.1.i
  %82 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %data.sroa.31.0.copyload.i, ptr %arrayidx7.1.i, align 1
  %add.2.i = or i32 %i.02.i, 2
  %arrayidx7.2.i = getelementptr i8, ptr %1, i32 %add.2.i
  %83 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %data.sroa.29.0.copyload.i, ptr %arrayidx7.2.i, align 1
  %add.3.i = or i32 %i.02.i, 3
  %arrayidx7.3.i = getelementptr i8, ptr %1, i32 %add.3.i
  %84 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %data.sroa.27.0.copyload.i, ptr %arrayidx7.3.i, align 1
  %add.4.i = or i32 %i.02.i, 4
  %arrayidx7.4.i = getelementptr i8, ptr %1, i32 %add.4.i
  %85 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %data.sroa.25.0.copyload.i, ptr %arrayidx7.4.i, align 1
  %add.5.i = or i32 %i.02.i, 5
  %arrayidx7.5.i = getelementptr i8, ptr %1, i32 %add.5.i
  %86 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %data.sroa.23.0.copyload.i, ptr %arrayidx7.5.i, align 1
  %add.6.i = or i32 %i.02.i, 6
  %arrayidx7.6.i = getelementptr i8, ptr %1, i32 %add.6.i
  %87 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %data.sroa.21.0.copyload.i, ptr %arrayidx7.6.i, align 1
  %add.7.i = or i32 %i.02.i, 7
  %arrayidx7.7.i = getelementptr i8, ptr %1, i32 %add.7.i
  %88 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %data.sroa.19.0.copyload.i, ptr %arrayidx7.7.i, align 1
  %add.8.i = or i32 %i.02.i, 8
  %arrayidx7.8.i = getelementptr i8, ptr %1, i32 %add.8.i
  %89 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %data.sroa.17.0.copyload.i, ptr %arrayidx7.8.i, align 1
  %add.9.i = or i32 %i.02.i, 9
  %arrayidx7.9.i = getelementptr i8, ptr %1, i32 %add.9.i
  %90 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %data.sroa.15.0.copyload.i, ptr %arrayidx7.9.i, align 1
  %add.10.i = or i32 %i.02.i, 10
  %arrayidx7.10.i = getelementptr i8, ptr %1, i32 %add.10.i
  %91 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %data.sroa.13.0.copyload.i, ptr %arrayidx7.10.i, align 1
  %add.11.i = or i32 %i.02.i, 11
  %arrayidx7.11.i = getelementptr i8, ptr %1, i32 %add.11.i
  %92 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %data.sroa.11.0.copyload.i, ptr %arrayidx7.11.i, align 1
  %add.12.i = or i32 %i.02.i, 12
  %arrayidx7.12.i = getelementptr i8, ptr %1, i32 %add.12.i
  %93 = ptrtoint ptr %arrayidx7.12.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %data.sroa.9.0.copyload.i, ptr %arrayidx7.12.i, align 1
  %add.13.i = or i32 %i.02.i, 13
  %arrayidx7.13.i = getelementptr i8, ptr %1, i32 %add.13.i
  %94 = ptrtoint ptr %arrayidx7.13.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %data.sroa.7.0.copyload.i, ptr %arrayidx7.13.i, align 1
  %add.14.i = or i32 %i.02.i, 14
  %arrayidx7.14.i = getelementptr i8, ptr %1, i32 %add.14.i
  %95 = ptrtoint ptr %arrayidx7.14.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %data.sroa.5.0.copyload.i, ptr %arrayidx7.14.i, align 1
  %add.15.i = or i32 %i.02.i, 15
  %arrayidx7.15.i = getelementptr i8, ptr %1, i32 %add.15.i
  %96 = ptrtoint ptr %arrayidx7.15.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %data.sroa.0.0.copyload.i, ptr %arrayidx7.15.i, align 1
  %add9.i = add nuw nsw i32 %i.02.i, 16
  %cmp.i = icmp ult i32 %i.02.i, 240
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %sa_swiz_128.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sa_swiz_128.exit:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %sc_id1 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %sc_id1, align 4
  %sc_phys = getelementptr inbounds %struct.sa_ctx_info, ptr %ctx, i32 0, i32 1
  %99 = ptrtoint ptr %sc_phys to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sc_phys, align 4
  %hash_size54 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 3
  %101 = ptrtoint ptr %hash_size54 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hash_size54, align 1
  %conv.i101 = zext i16 %98 to i32
  %or43.i = or i32 %conv.i101, 16842752
  %conv63.i = zext i8 %first_engine.1 to i32
  %shl64.i = shl i32 %conv63.i, 25
  %and65.i = and i32 %shl64.i, 1040187392
  %or67.i = or i32 %and65.i, %or43.i
  %or69.i = or i32 %or67.i, 1073741824
  %103 = ptrtoint ptr %swinfo to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or69.i, ptr %swinfo, align 4
  %arrayidx73.i = getelementptr i32, ptr %swinfo, i32 1
  %104 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %100, ptr %arrayidx73.i, align 4
  %arrayidx77.i = getelementptr i32, ptr %swinfo, i32 2
  %conv96.i = zext i8 %102 to i32
  %shl97.i = shl nuw i32 %conv96.i, 24
  %105 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %shl97.i, ptr %arrayidx77.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sa_swiz_128.exit, %sa_set_sc_enc.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sa_swiz_128.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sa_set_sc_enc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_format_cmdl_gen(ptr nocapture noundef readonly %cfg, ptr noundef %cmdl, ptr noundef %upd_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cmdl, i32 0, i32 48)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %cmdl) #9, !srcloc !191
  %1 = call ptr @memset(ptr %upd_info, i32 0, i32 108)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %upd_info) #9, !srcloc !191
  %enc_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %enc_eng_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enc_eng_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end75_crit_edge, label %land.lhs.true

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true:                                    ; preds = %entry
  %auth_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %auth_eng_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %auth_eng_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then17_crit_edge, label %if.then

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then:                                          ; preds = %land.lhs.true
  %enc = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 6
  %6 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enc, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then.if.then17_crit_edge, label %if.then4

if.then.if.then17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then4:                                         ; preds = %if.then
  %iv_size = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 3
  %8 = ptrtoint ptr %iv_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iv_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then4.if.then17_crit_edge, label %if.then7

if.then4.if.then17_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = add i8 %9, 8
  %phi.cast = zext i8 %10 to i32
  br label %if.then17

if.then17:                                        ; preds = %if.then7, %if.then4.if.then17_crit_edge, %if.then.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %enc_next_eng.0.ph = phi i8 [ 20, %if.then.if.then17_crit_edge ], [ 20, %land.lhs.true.if.then17_crit_edge ], [ %5, %if.then4.if.then17_crit_edge ], [ %5, %if.then7 ]
  %auth_next_eng.0.ph = phi i8 [ %3, %if.then.if.then17_crit_edge ], [ 20, %land.lhs.true.if.then17_crit_edge ], [ 20, %if.then4.if.then17_crit_edge ], [ 20, %if.then7 ]
  %auth_offset.0.ph = phi i32 [ 0, %if.then.if.then17_crit_edge ], [ 0, %land.lhs.true.if.then17_crit_edge ], [ 8, %if.then4.if.then17_crit_edge ], [ %phi.cast, %if.then7 ]
  %enc_offset.0.ph = phi i32 [ 8, %if.then.if.then17_crit_edge ], [ 0, %land.lhs.true.if.then17_crit_edge ], [ 0, %if.then4.if.then17_crit_edge ], [ 0, %if.then7 ]
  %11 = ptrtoint ptr %upd_info to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %upd_info, align 4
  %13 = or i16 %12, 1
  store i16 %13, ptr %upd_info, align 4
  %14 = lshr exact i32 %enc_offset.0.ph, 2
  %conv21 = trunc i32 %14 to i16
  %enc_size = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 2
  %15 = ptrtoint ptr %enc_size to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv21, ptr %enc_size, align 4
  %conv26 = or i16 %conv21, 1
  %enc_offset27 = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 4
  %16 = ptrtoint ptr %enc_offset27 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv26, ptr %enc_offset27, align 4
  %arrayidx = getelementptr i8, ptr %cmdl, i32 %enc_offset.0.ph
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %enc_next_eng.0.ph, ptr %arrayidx, align 1
  %iv_size31 = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %iv_size31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iv_size31, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %if.else67, label %if.then33

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %upd_info to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %upd_info, align 4
  %22 = or i16 %21, 4
  store i16 %22, ptr %upd_info, align 4
  %add39 = add nuw nsw i32 %enc_offset.0.ph, 8
  %23 = lshr exact i32 %add39, 2
  %conv41 = trunc i32 %23 to i16
  %enc_iv = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 5
  %24 = ptrtoint ptr %enc_iv to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv41, ptr %enc_iv, align 2
  %25 = ptrtoint ptr %iv_size31 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iv_size31, align 2
  %conv44 = zext i8 %26 to i16
  %size = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv44, ptr %size, align 2
  %28 = load i8, ptr %iv_size31, align 2
  %add48 = add i8 %28, 8
  %add51 = or i32 %enc_offset.0.ph, 1
  %arrayidx52 = getelementptr i8, ptr %cmdl, i32 %add51
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add48, ptr %arrayidx52, align 1
  %30 = load i8, ptr %iv_size31, align 2
  %31 = lshr i8 %30, 3
  %32 = or i8 %31, 96
  %add59 = or i32 %enc_offset.0.ph, 5
  %arrayidx60 = getelementptr i8, ptr %cmdl, i32 %add59
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx60, align 1
  %34 = load i8, ptr %iv_size31, align 2
  %add63 = add i8 %34, 8
  br label %if.end75

if.else67:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %add69 = or i32 %enc_offset.0.ph, 1
  %arrayidx70 = getelementptr i8, ptr %cmdl, i32 %add69
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 8, ptr %arrayidx70, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else67, %if.then33, %entry.if.end75_crit_edge
  %auth_offset.0173 = phi i32 [ %auth_offset.0.ph, %if.then33 ], [ %auth_offset.0.ph, %if.else67 ], [ 0, %entry.if.end75_crit_edge ]
  %auth_next_eng.0171 = phi i8 [ %auth_next_eng.0.ph, %if.then33 ], [ %auth_next_eng.0.ph, %if.else67 ], [ 20, %entry.if.end75_crit_edge ]
  %total.0 = phi i8 [ %add63, %if.then33 ], [ 8, %if.else67 ], [ 0, %entry.if.end75_crit_edge ]
  %auth_eng_id76 = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 2
  %36 = ptrtoint ptr %auth_eng_id76 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %auth_eng_id76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool77.not = icmp eq i8 %37, 0
  br i1 %tobool77.not, label %if.end75.if.end103_crit_edge, label %if.then78

if.end75.if.end103_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %upd_info to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %upd_info, align 4
  %40 = or i16 %39, 2
  store i16 %40, ptr %upd_info, align 4
  %41 = lshr i32 %auth_offset.0173, 2
  %conv85 = trunc i32 %41 to i16
  %auth_size = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 9
  %42 = ptrtoint ptr %auth_size to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv85, ptr %auth_size, align 2
  %conv91 = add nuw nsw i16 %conv85, 1
  %auth_offset92 = getelementptr inbounds %struct.sa_cmdl_upd_info, ptr %upd_info, i32 0, i32 11
  %43 = ptrtoint ptr %auth_offset92 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv91, ptr %auth_offset92, align 2
  %arrayidx96 = getelementptr i8, ptr %cmdl, i32 %auth_offset.0173
  %44 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %auth_next_eng.0171, ptr %arrayidx96, align 1
  %add98 = add nuw nsw i32 %auth_offset.0173, 1
  %arrayidx99 = getelementptr i8, ptr %cmdl, i32 %add98
  %45 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %arrayidx99, align 1
  %add101 = add i8 %total.0, 8
  br label %if.end103

if.end103:                                        ; preds = %if.then78, %if.end75.if.end103_crit_edge
  %total.1 = phi i8 [ %add101, %if.then78 ], [ %total.0, %if.end75.if.end103_crit_edge ]
  %add105 = add i8 %total.1, 7
  %div163 = and i8 %add105, -8
  %conv107 = zext i8 %div163 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %div163)
  %cmp175.not = icmp eq i8 %div163, 0
  br i1 %cmp175.not, label %if.end103.for.end_crit_edge, label %for.body.preheader

if.end103.for.end_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end103
  %div108164 = lshr exact i32 %conv107, 2
  %umax = call i32 @llvm.umax.i32(i32 %div108164, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0176 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx110 = getelementptr i32, ptr %cmdl, i32 %i.0176
  %46 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx110, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx110, align 4
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end103.for.end_crit_edge
  ret i32 %conv107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_cipher_run(ptr noundef %req, ptr noundef %iv, i32 noundef %enc) unnamed_addr #2 align 64 {
entry:
  %sa_req = alloca %struct.sa_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sa_req) #9
  %4 = call ptr @memset(ptr %sa_req, i32 0, i32 60)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end:                                           ; preds = %entry
  %cra_blocksize = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize, align 4
  %rem = urem i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup36_crit_edge

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp = icmp ugt i32 %6, 65535
  %9 = add i32 %6, -240
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %10 = icmp ult i32 %9, 17
  %or.cond = or i1 %cmp, %10
  br i1 %or.cond, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end5
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %fallback = getelementptr i8, ptr %1, i32 856
  %11 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %13 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %21 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %22 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst, align 4
  %iv17 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %iv17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv17, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %29 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %30 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %dst2.i, align 4
  %31 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %6, ptr %__ctx.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 1
  %32 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool18.not = icmp eq i32 %enc, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %__ctx.i) #9
  br label %cleanup36

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %__ctx.i) #9
  br label %cleanup36

if.end22:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %6 to i16
  %size = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %size, align 4
  %enc_size = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 3
  %34 = ptrtoint ptr %enc_size to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv, ptr %enc_size, align 4
  %src26 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %35 = ptrtoint ptr %src26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src26, align 8
  %src27 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 13
  %37 = ptrtoint ptr %src27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %src27, align 4
  %dst28 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %38 = ptrtoint ptr %dst28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst28, align 4
  %dst29 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 14
  %40 = ptrtoint ptr %dst29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %dst29, align 4
  %enc_iv = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 4
  %41 = ptrtoint ptr %enc_iv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %iv, ptr %enc_iv, align 4
  %type = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 8
  %42 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool30 = icmp ne i32 %enc, 0
  %enc31 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 12
  %frombool = zext i1 %tobool30 to i8
  %43 = ptrtoint ptr %enc31 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %enc31, align 4
  %callback = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 15
  %44 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sa_aes_dma_in_callback, ptr %callback, align 4
  %mdata_size = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 16
  %45 = ptrtoint ptr %mdata_size to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 44, ptr %mdata_size, align 4
  %base33 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 10
  %46 = ptrtoint ptr %base33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %base, ptr %base33, align 4
  %ctx34 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 11
  %47 = ptrtoint ptr %ctx34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %__crt_ctx.i.i, ptr %ctx34, align 4
  %call35 = call fastcc i32 @sa_run(ptr noundef nonnull %sa_req)
  br label %cleanup36

cleanup36:                                        ; preds = %if.end22, %if.else, %if.then19, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.1 = phi i32 [ %call35, %if.end22 ], [ 0, %entry.cleanup36_crit_edge ], [ -22, %if.end.cleanup36_crit_edge ], [ %call20, %if.then19 ], [ %call21, %if.else ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sa_req) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_aes_dma_in_callback(ptr noundef %data) #2 align 64 {
entry:
  %ml = alloca i32, align 4
  %pl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ml) #9
  %0 = ptrtoint ptr %ml to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ml, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pl) #9
  %1 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pl, align 4, !annotation !195
  %dir.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %sgt3.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 4
  %sgt6.i = getelementptr %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 1, i32 4
  %sgt.0.i = select i1 %cmp.i, ptr %sgt3.i, ptr %sgt6.i
  %ddev.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev.i, align 4
  %6 = ptrtoint ptr %sgt.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.0.i, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %sgt.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 2) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %iv = getelementptr i8, ptr %11, i32 -12
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_in = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %tx_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_in, align 4
  %call = call ptr @dmaengine_desc_get_metadata_ptr(ptr noundef %15, ptr noundef nonnull %pl, ptr noundef nonnull %ml) #9
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  %enc_iv_size = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %enc_iv_size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enc_iv_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp17.not = icmp ult i8 %19, 4
  br i1 %cmp17.not, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %iv_idx = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %iv_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iv_idx, align 2
  %conv4 = zext i8 %21 to i32
  %add = add nuw nsw i32 %i.018, %conv4
  %arrayidx = getelementptr i32, ptr %call, i32 %add
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %17, i32 %i.018
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %25 = ptrtoint ptr %enc_iv_size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enc_iv_size, align 1
  %27 = lshr i8 %26, 2
  %div = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call fastcc void @sa_free_sa_rx_data(ptr noundef %data)
  %complete.i = getelementptr i8, ptr %11, i32 8
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %complete.i, align 8
  call void %29(ptr noundef %11, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ml) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_run(ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %cmdl = alloca [12 x i32], align 4
  %src_nents = alloca i32, align 4
  %dst_nents = alloca i32, align 4
  %src = alloca ptr, align 4
  %dst = alloca ptr, align 4
  %pl = alloca i32, align 4
  %ml = alloca i32, align 4
  %split_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmdl) #9
  %0 = call ptr @memset(ptr %cmdl, i32 255, i32 48)
  %1 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_nents) #9
  %4 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %src_nents, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_nents) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #9
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pl) #9
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pl, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ml) #9
  %7 = ptrtoint ptr %ml to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ml, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %split_size) #9
  %8 = ptrtoint ptr %split_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %split_size, align 4, !annotation !195
  %enc = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enc, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %ctx2 = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 11
  %11 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx2, align 4
  %enc1 = getelementptr inbounds %struct.sa_tfm_ctx, ptr %12, i32 0, i32 1
  %dec = getelementptr inbounds %struct.sa_tfm_ctx, ptr %12, i32 0, i32 2
  %cond = select i1 %tobool.not, ptr %dec, ptr %enc1
  %base = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 10
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond4 = select i1 %tobool3.not, i32 2592, i32 3264
  %or.i = or i32 %cond4, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %or.i, i32 noundef 104) #13
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src7 = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 13
  %18 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src7, align 4
  %dst8 = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 14
  %20 = ptrtoint ptr %dst8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst8, align 4
  %cmp.not = icmp eq ptr %19, %21
  %not.cmp.not = xor i1 %cmp.not, true
  %. = zext i1 %not.cmp.not to i32
  %size = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %23)
  %cmp11 = icmp ugt i16 %23, 255
  %dma_rx2 = getelementptr inbounds %struct.sa_crypto_data, ptr %3, i32 0, i32 12
  %dma_rx1 = getelementptr inbounds %struct.sa_crypto_data, ptr %3, i32 0, i32 11
  %dma_rx.0.in = select i1 %cmp11, ptr %dma_rx2, ptr %dma_rx1
  %24 = ptrtoint ptr %dma_rx.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %dma_rx.0 = load ptr, ptr %dma_rx.0.in, align 4
  %dma_tx = getelementptr inbounds %struct.sa_crypto_data, ptr %3, i32 0, i32 13
  %25 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_tx, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %chan_dma_dev.i = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %chan_dma_dev.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chan_dma_dev.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  br label %dmaengine_get_dma_device.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %dev3.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev3.i, align 4
  br label %dmaengine_get_dma_device.exit

dmaengine_get_dma_device.exit:                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %device.i, %if.then.i ], [ %34, %if.end.i ]
  %ddev17 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %ddev17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i, ptr %ddev17, align 4
  %cmdl18 = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 4
  %cmdl_size = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 3
  %36 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cmdl_size, align 2
  %conv20 = zext i16 %37 to i32
  %38 = call ptr @memcpy(ptr %cmdl, ptr %cmdl18, i32 %conv20)
  %cmdl_upd_info = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5
  %39 = ptrtoint ptr %cmdl_upd_info to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cmdl_upd_info, align 4
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i326 = icmp eq i16 %41, 0
  br i1 %tobool.not.i326, label %dmaengine_get_dma_device.exit.if.end61.i_crit_edge, label %if.then.i328, !prof !196

dmaengine_get_dma_device.exit.if.end61.i_crit_edge: ; preds = %dmaengine_get_dma_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then.i328:                                     ; preds = %dmaengine_get_dma_device.exit
  %enc_size.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %enc_size.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %enc_size.i, align 4
  %idxprom.i = zext i16 %43 to i32
  %arrayidx.i = getelementptr i32, ptr %cmdl, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %and3.i = and i32 %45, -65536
  %enc_size4.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 3
  %46 = ptrtoint ptr %enc_size4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %enc_size4.i, align 4
  %conv5.i = zext i16 %47 to i32
  %or.i327 = or i32 %and3.i, %conv5.i
  store i32 %or.i327, ptr %arrayidx.i, align 4
  %enc_offset.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %enc_offset.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %enc_offset.i, align 4
  %idxprom11.i = zext i16 %49 to i32
  %arrayidx12.i = getelementptr i32, ptr %cmdl, i32 %idxprom11.i
  %50 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %51, 16777215
  %enc_offset18.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 2
  %52 = ptrtoint ptr %enc_offset18.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enc_offset18.i, align 2
  %conv33.i = zext i8 %53 to i32
  %shl.i = shl nuw i32 %conv33.i, 24
  %or39.i = or i32 %shl.i, %and13.i
  store i32 %or39.i, ptr %arrayidx12.i, align 4
  %54 = and i16 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool43.not.i = icmp eq i16 %54, 0
  br i1 %tobool43.not.i, label %if.then.i328.if.end61.i_crit_edge, label %if.then50.i, !prof !196

if.then.i328.if.end61.i_crit_edge:                ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then50.i:                                      ; preds = %if.then.i328
  %size.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 5, i32 2
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp194.not.i = icmp eq i16 %56, 0
  br i1 %cmp194.not.i, label %if.then50.i.if.end61.i_crit_edge, label %for.body.preheader.i

if.then50.i.if.end61.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

for.body.preheader.i:                             ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  %enc_iv.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 5
  %57 = ptrtoint ptr %enc_iv.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %enc_iv.i, align 2
  %idxprom52.i = zext i16 %58 to i32
  %arrayidx53.i = getelementptr i32, ptr %cmdl, i32 %idxprom52.i
  %enc_iv55.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 4
  %59 = ptrtoint ptr %enc_iv55.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %enc_iv55.i, align 4
  %conv57.i = zext i16 %56 to i32
  %61 = add nuw nsw i32 %conv57.i, 3
  %62 = and i32 %61, 131068
  %63 = call ptr @memcpy(ptr %arrayidx53.i, ptr %60, i32 %62)
  br label %if.end61.i

if.end61.i:                                       ; preds = %for.body.preheader.i, %if.then50.i.if.end61.i_crit_edge, %if.then.i328.if.end61.i_crit_edge, %dmaengine_get_dma_device.exit.if.end61.i_crit_edge
  %64 = and i16 %40, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool65.not.i = icmp eq i16 %64, 0
  br i1 %tobool65.not.i, label %if.end61.i.sa_update_cmdl.exit_crit_edge, label %if.then72.i, !prof !196

if.end61.i.sa_update_cmdl.exit_crit_edge:         ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_update_cmdl.exit

if.then72.i:                                      ; preds = %if.end61.i
  %auth_size.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 9
  %65 = ptrtoint ptr %auth_size.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %auth_size.i, align 2
  %idxprom74.i = zext i16 %66 to i32
  %arrayidx75.i = getelementptr i32, ptr %cmdl, i32 %idxprom74.i
  %67 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx75.i, align 4
  %and76.i = and i32 %68, -65536
  %auth_size77.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 6
  %69 = ptrtoint ptr %auth_size77.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %auth_size77.i, align 2
  %conv78.i = zext i16 %70 to i32
  %or83.i = or i32 %and76.i, %conv78.i
  store i32 %or83.i, ptr %arrayidx75.i, align 4
  %auth_offset.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 11
  %71 = ptrtoint ptr %auth_offset.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %auth_offset.i, align 2
  %idxprom85.i = zext i16 %72 to i32
  %arrayidx86.i = getelementptr i32, ptr %cmdl, i32 %idxprom85.i
  %73 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx86.i, align 4
  %and87.i = and i32 %74, 16777215
  %auth_offset95.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 5
  %75 = ptrtoint ptr %auth_offset95.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %auth_offset95.i, align 4
  %conv114.i = zext i8 %76 to i32
  %shl115.i = shl nuw i32 %conv114.i, 24
  %or121.i = or i32 %shl115.i, %and87.i
  store i32 %or121.i, ptr %arrayidx86.i, align 4
  %77 = and i16 %40, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool125.not.i = icmp eq i16 %77, 0
  br i1 %tobool125.not.i, label %if.then72.i.if.end136.i_crit_edge, label %if.then126.i

if.then72.i.if.end136.i_crit_edge:                ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136.i

if.then126.i:                                     ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #11
  %auth_iv.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 12
  %78 = ptrtoint ptr %auth_iv.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %auth_iv.i, align 4
  %idxprom128.i = zext i16 %79 to i32
  %arrayidx129.i = getelementptr i32, ptr %cmdl, i32 %idxprom128.i
  %auth_iv130.i = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 7
  %80 = ptrtoint ptr %auth_iv130.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %auth_iv130.i, align 4
  %size132.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 12, i32 2
  %82 = ptrtoint ptr %size132.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %size132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %83)
  %cmp134.i = icmp ugt i16 %83, 8
  %cond.i.i = select i1 %cmp134.i, i32 16, i32 8
  %84 = call ptr @memcpy(ptr %arrayidx129.i, ptr %81, i32 %cond.i.i)
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then126.i, %if.then72.i.if.end136.i_crit_edge
  %85 = and i16 %40, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool140.not.i = icmp eq i16 %85, 0
  br i1 %tobool140.not.i, label %if.end136.i.sa_update_cmdl.exit_crit_edge, label %if.then141.i

if.end136.i.sa_update_cmdl.exit_crit_edge:        ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sa_update_cmdl.exit

if.then141.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = and i16 %70, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool145.not.i = icmp eq i16 %86, 0
  %cond.i = select i1 %tobool145.not.i, i32 0, i32 4
  %aux_key_info.i = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 13
  %87 = ptrtoint ptr %aux_key_info.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %aux_key_info.i, align 2
  %idxprom147.i = zext i16 %88 to i32
  %arrayidx148.i = getelementptr i32, ptr %cmdl, i32 %idxprom147.i
  %arrayidx149.i = getelementptr %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 14, i32 %cond.i
  %89 = call ptr @memcpy(ptr %arrayidx148.i, ptr %arrayidx149.i, i32 16)
  br label %sa_update_cmdl.exit

sa_update_cmdl.exit:                              ; preds = %if.then141.i, %if.end136.i.sa_update_cmdl.exit_crit_edge, %if.end61.i.sa_update_cmdl.exit_crit_edge
  %type = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 8
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %91)
  %cmp22.not = icmp eq i32 %91, 15
  br i1 %cmp22.not, label %sa_update_cmdl.exit.if.end33_crit_edge, label %if.then24

sa_update_cmdl.exit.if.end33_crit_edge:           ; preds = %sa_update_cmdl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then24:                                        ; preds = %sa_update_cmdl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %enc, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool26.not = icmp eq i8 %93, 0
  %.368 = select i1 %tobool26.not, i32 131072, i32 65536
  %or = or i32 %91, %.368
  %94 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or, ptr %type, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %sa_update_cmdl.exit.if.end33_crit_edge
  %95 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type, align 4
  %97 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %cmdl_size, align 2
  %99 = lshr i16 %98, 2
  %div = zext i16 %99 to i32
  %arrayidx = getelementptr [12 x i32], ptr %cmdl, i32 0, i32 %div
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %96, ptr %arrayidx, align 4
  %101 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %19, ptr %src, align 4
  %conv39 = zext i16 %23 to i64
  %call40 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %conv39) #9
  %102 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %size, align 4
  %conv42 = zext i16 %103 to i32
  %104 = ptrtoint ptr %split_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv42, ptr %split_size, align 4
  %mapped_sg43 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp45 = icmp eq i32 %call40, 1
  br i1 %cmp45, label %land.lhs.true, label %if.end33.if.else60_crit_edge

if.end33.if.else60_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

land.lhs.true:                                    ; preds = %if.end33
  %105 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %src7, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %conv42)
  %cmp48.not = icmp ult i32 %108, %conv42
  br i1 %cmp48.not, label %land.lhs.true.if.else60_crit_edge, label %if.then50

land.lhs.true.if.else60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

if.then50:                                        ; preds = %land.lhs.true
  %static_sg = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %109 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %static_sg, ptr %src, align 4
  %110 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %src_nents, align 4
  tail call void @sg_init_table(ptr noundef %static_sg, i32 noundef 1) #9
  %111 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %src7, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %and.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !197

do.body2.i:                                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !198
  unreachable

sg_page.exit:                                     ; preds = %if.then50
  %115 = ptrtoint ptr %static_sg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %static_sg, align 4
  %and.i.i.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !197

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !199
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 1
  %117 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %offset, align 4
  %119 = ptrtoint ptr %split_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %split_size, align 4
  %and.i = and i32 %114, -4
  %and.i.i329 = and i32 %116, 3
  %or.i.i = or i32 %and.i.i329, %and.i
  %121 = ptrtoint ptr %static_sg to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i.i, ptr %static_sg, align 4
  %offset1.i = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %118, ptr %offset1.i, align 8
  %length.i = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2, i32 2
  %123 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %120, ptr %length.i, align 4
  %124 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %src, align 4
  %sgt = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4
  %126 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %sgt, align 4
  %127 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %src_nents, align 4
  %orig_nents = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4, i32 2
  %129 = ptrtoint ptr %orig_nents to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %orig_nents, align 4
  %call56 = tail call i32 @dma_map_sgtable(ptr noundef %retval.0.i, ptr noundef %sgt, i32 noundef %., i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end59:                                         ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dir = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %130 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %., ptr %dir, align 8
  %131 = ptrtoint ptr %mapped_sg43 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %mapped_sg43, align 4
  br label %if.end85

if.else60:                                        ; preds = %land.lhs.true.if.else60_crit_edge, %if.end33.if.else60_crit_edge
  %132 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %src7, align 4
  %sgt62 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4
  %134 = ptrtoint ptr %sgt62 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %sgt62, align 4
  %orig_nents65 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4, i32 2
  %135 = ptrtoint ptr %orig_nents65 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call40, ptr %orig_nents65, align 4
  %call67 = tail call i32 @dma_map_sgtable(ptr noundef %retval.0.i, ptr noundef %sgt62, i32 noundef %., i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end70:                                         ; preds = %if.else60
  %dir71 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %136 = ptrtoint ptr %dir71 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %., ptr %dir71, align 8
  %137 = ptrtoint ptr %mapped_sg43 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %mapped_sg43, align 4
  %138 = ptrtoint ptr %sgt62 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sgt62, align 4
  %nents = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nents, align 8
  %call76 = call i32 @sg_split(ptr noundef %139, i32 noundef %141, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %split_size, ptr noundef nonnull %src, ptr noundef nonnull %src_nents, i32 noundef %cond4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else83, label %if.then78

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nents, align 8
  %144 = ptrtoint ptr %src_nents to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %src_nents, align 4
  %145 = ptrtoint ptr %sgt62 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sgt62, align 4
  %147 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %src, align 4
  br label %if.end85

if.else83:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %src, align 4
  %split_sg = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  %150 = ptrtoint ptr %split_sg to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %split_sg, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then78, %if.end59
  %sgt86 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4
  %151 = ptrtoint ptr %sgt86 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sgt86, align 4
  %orig_nents.i = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 4, i32 2
  %153 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %orig_nents.i, align 4
  call void @dma_sync_sg_for_device(ptr noundef %retval.0.i, ptr noundef %152, i32 noundef %154, i32 noundef 1) #9
  br i1 %cmp.not, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %src_nents, align 4
  %157 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %dst_nents, align 4
  %158 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %src, align 4
  %160 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %dst, align 4
  br label %if.end148

if.else89:                                        ; preds = %if.end85
  %161 = ptrtoint ptr %dst8 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dst8, align 4
  %163 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %size, align 4
  %conv92 = zext i16 %164 to i64
  %call93 = call i32 @sg_nents_for_len(ptr noundef %162, i64 noundef %conv92) #9
  %165 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call93, ptr %dst_nents, align 4
  %arrayidx95 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp96 = icmp eq i32 %call93, 1
  br i1 %cmp96, label %land.lhs.true98, label %if.else89.if.else120_crit_edge

if.else89.if.else120_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else120

land.lhs.true98:                                  ; preds = %if.else89
  %166 = ptrtoint ptr %split_size to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %split_size, align 4
  %168 = ptrtoint ptr %dst8 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dst8, align 4
  %length100 = getelementptr inbounds %struct.scatterlist, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %length100 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %length100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %171)
  %cmp101.not = icmp ugt i32 %167, %171
  br i1 %cmp101.not, label %land.lhs.true98.if.else120_crit_edge, label %if.then103

land.lhs.true98.if.else120_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else120

if.then103:                                       ; preds = %land.lhs.true98
  %static_sg104 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2
  %172 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %static_sg104, ptr %dst, align 4
  %173 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %dst_nents, align 4
  call void @sg_init_table(ptr noundef %static_sg104, i32 noundef 1) #9
  %174 = ptrtoint ptr %dst8 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dst8, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %and.i.i330 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i330)
  %tobool.i.not.i331 = icmp eq i32 %and.i.i330, 0
  br i1 %tobool.i.not.i331, label %sg_page.exit334, label %do.body2.i332, !prof !197

do.body2.i332:                                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !198
  unreachable

sg_page.exit334:                                  ; preds = %if.then103
  %178 = ptrtoint ptr %static_sg104 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %static_sg104, align 8
  %and.i.i.i335 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i335)
  %tobool.i.not.i.i336 = icmp eq i32 %and.i.i.i335, 0
  br i1 %tobool.i.not.i.i336, label %sg_set_page.exit342, label %do.body19.i.i337, !prof !197

do.body19.i.i337:                                 ; preds = %sg_page.exit334
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !199
  unreachable

sg_set_page.exit342:                              ; preds = %sg_page.exit334
  %offset108 = getelementptr inbounds %struct.scatterlist, ptr %175, i32 0, i32 1
  %180 = ptrtoint ptr %offset108 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %offset108, align 4
  %182 = ptrtoint ptr %split_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %split_size, align 4
  %and.i333 = and i32 %177, -4
  %and.i.i338 = and i32 %179, 3
  %or.i.i339 = or i32 %and.i.i338, %and.i333
  %184 = ptrtoint ptr %static_sg104 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i.i339, ptr %static_sg104, align 8
  %offset1.i340 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2, i32 1
  %185 = ptrtoint ptr %offset1.i340 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %181, ptr %offset1.i340, align 4
  %length.i341 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2, i32 2
  %186 = ptrtoint ptr %length.i341 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %183, ptr %length.i341, align 8
  %187 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dst, align 4
  %sgt109 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 4
  %189 = ptrtoint ptr %sgt109 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %188, ptr %sgt109, align 8
  %190 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %dst_nents, align 4
  %orig_nents112 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 4, i32 2
  %192 = ptrtoint ptr %orig_nents112 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %orig_nents112, align 8
  %call114 = call i32 @dma_map_sgtable(ptr noundef %retval.0.i, ptr noundef %sgt109, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %sg_set_page.exit342.err_cleanup_crit_edge

sg_set_page.exit342.err_cleanup_crit_edge:        ; preds = %sg_set_page.exit342
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup

if.end117:                                        ; preds = %sg_set_page.exit342
  call void @__sanitizer_cov_trace_pc() #11
  %dir118 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %193 = ptrtoint ptr %dir118 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %dir118, align 4
  %194 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %arrayidx95, align 8
  br label %if.end148

if.else120:                                       ; preds = %land.lhs.true98.if.else120_crit_edge, %if.else89.if.else120_crit_edge
  %195 = ptrtoint ptr %dst8 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dst8, align 4
  %sgt122 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 4
  %197 = ptrtoint ptr %sgt122 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %sgt122, align 8
  %orig_nents125 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 4, i32 2
  %198 = ptrtoint ptr %orig_nents125 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call93, ptr %orig_nents125, align 8
  %call127 = call i32 @dma_map_sgtable(ptr noundef %retval.0.i, ptr noundef %sgt122, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.else120.err_cleanup_crit_edge

if.else120.err_cleanup_crit_edge:                 ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup

if.end130:                                        ; preds = %if.else120
  %dir131 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %199 = ptrtoint ptr %dir131 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 2, ptr %dir131, align 4
  %200 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %arrayidx95, align 8
  %201 = ptrtoint ptr %sgt122 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sgt122, align 8
  %nents136 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 4, i32 1
  %203 = ptrtoint ptr %nents136 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %nents136, align 4
  %call137 = call i32 @sg_split(ptr noundef %202, i32 noundef %204, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %split_size, ptr noundef nonnull %dst, ptr noundef nonnull %dst_nents, i32 noundef %cond4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.else144, label %if.then139

if.then139:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %nents136 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nents136, align 4
  %207 = ptrtoint ptr %dst_nents to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %dst_nents, align 4
  %208 = ptrtoint ptr %sgt122 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sgt122, align 8
  %210 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %dst, align 4
  br label %if.end148

if.else144:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dst, align 4
  %split_sg145 = getelementptr %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 3
  %213 = ptrtoint ptr %split_sg145 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %212, ptr %split_sg145, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else144, %if.then139, %if.end117, %if.then88
  %214 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dst, align 4
  %216 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %dst_nents, align 4
  %tobool.not.i343 = icmp eq ptr %dma_rx.0, null
  br i1 %tobool.not.i343, label %if.end148.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end148.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end148
  %218 = ptrtoint ptr %dma_rx.0 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dma_rx.0, align 4
  %tobool1.not.i = icmp eq ptr %219, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 39
  %220 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %221, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_sg.exit.thread

dmaengine_prep_slave_sg.exit.thread:              ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %if.end148.dmaengine_prep_slave_sg.exit.thread_crit_edge
  %tx_in363 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 2
  %222 = ptrtoint ptr %tx_in363 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %tx_in363, align 8
  br label %err_cleanup.sink.split

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %221(ptr noundef nonnull %dma_rx.0, ptr noundef %215, i32 noundef %217, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %tx_in = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 2
  %223 = ptrtoint ptr %tx_in to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call.i, ptr %tx_in, align 8
  %tobool151.not = icmp eq ptr %call.i, null
  br i1 %tobool151.not, label %dmaengine_prep_slave_sg.exit.err_cleanup.sink.split_crit_edge, label %if.end153

dmaengine_prep_slave_sg.exit.err_cleanup.sink.split_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup.sink.split

if.end153:                                        ; preds = %dmaengine_prep_slave_sg.exit
  %224 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base, align 4
  %226 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %225, ptr %call7.i.i, align 8
  %227 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %enc, align 4, !range !192
  %enc159 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 4
  %229 = ptrtoint ptr %enc159 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %enc159, align 4
  %ctx160 = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 11
  %230 = ptrtoint ptr %ctx160 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ctx160, align 4
  %iv_idx = getelementptr inbounds %struct.sa_tfm_ctx, ptr %231, i32 0, i32 5
  %232 = ptrtoint ptr %iv_idx to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %iv_idx, align 4
  %conv161 = trunc i32 %233 to i8
  %iv_idx162 = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 6
  %234 = ptrtoint ptr %iv_idx162 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv161, ptr %iv_idx162, align 2
  %size164 = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 5, i32 5, i32 2
  %235 = ptrtoint ptr %size164 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %size164, align 2
  %conv165 = trunc i16 %236 to i8
  %enc_iv_size = getelementptr inbounds %struct.sa_rx_data, ptr %call7.i.i, i32 0, i32 5
  %237 = ptrtoint ptr %enc_iv_size to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv165, ptr %enc_iv_size, align 1
  %callback = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 15
  %238 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %callback, align 4
  %callback167 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %240 = ptrtoint ptr %callback167 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %callback167, align 4
  %241 = ptrtoint ptr %tx_in to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %tx_in, align 8
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %242, i32 0, i32 8
  %243 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call7.i.i, ptr %callback_param, align 4
  %244 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dma_tx, align 4
  %246 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %src, align 4
  %248 = ptrtoint ptr %src_nents to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %src_nents, align 4
  %tobool.not.i346 = icmp eq ptr %245, null
  br i1 %tobool.not.i346, label %if.end153.err_cleanup.sink.split_crit_edge, label %lor.lhs.false.i348

if.end153.err_cleanup.sink.split_crit_edge:       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup.sink.split

lor.lhs.false.i348:                               ; preds = %if.end153
  %250 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %245, align 4
  %tobool1.not.i347 = icmp eq ptr %251, null
  br i1 %tobool1.not.i347, label %lor.lhs.false.i348.err_cleanup.sink.split_crit_edge, label %lor.lhs.false2.i351

lor.lhs.false.i348.err_cleanup.sink.split_crit_edge: ; preds = %lor.lhs.false.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup.sink.split

lor.lhs.false2.i351:                              ; preds = %lor.lhs.false.i348
  %device_prep_slave_sg.i349 = getelementptr inbounds %struct.dma_device, ptr %251, i32 0, i32 39
  %252 = ptrtoint ptr %device_prep_slave_sg.i349 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %device_prep_slave_sg.i349, align 4
  %tobool4.not.i350 = icmp eq ptr %253, null
  br i1 %tobool4.not.i350, label %lor.lhs.false2.i351.err_cleanup.sink.split_crit_edge, label %dmaengine_prep_slave_sg.exit355

lor.lhs.false2.i351.err_cleanup.sink.split_crit_edge: ; preds = %lor.lhs.false2.i351
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup.sink.split

dmaengine_prep_slave_sg.exit355:                  ; preds = %lor.lhs.false2.i351
  %call.i352 = call ptr %253(ptr noundef nonnull %245, ptr noundef %247, i32 noundef %249, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %tobool171.not = icmp eq ptr %call.i352, null
  br i1 %tobool171.not, label %dmaengine_prep_slave_sg.exit355.err_cleanup.sink.split_crit_edge, label %if.end177

dmaengine_prep_slave_sg.exit355.err_cleanup.sink.split_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit355
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup.sink.split

if.end177:                                        ; preds = %dmaengine_prep_slave_sg.exit355
  call void @__sanitizer_cov_trace_pc() #11
  %call178 = call ptr @dmaengine_desc_get_metadata_ptr(ptr noundef nonnull %call.i352, ptr noundef nonnull %pl, ptr noundef nonnull %ml) #9
  %254 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %cmdl_size, align 2
  %conv180 = zext i16 %255 to i32
  %add = add nuw nsw i32 %conv180, 16
  %epib = getelementptr inbounds %struct.sa_ctx_info, ptr %cond, i32 0, i32 6
  %incdec.ptr.i356 = getelementptr %struct.sa_ctx_info, ptr %cond, i32 0, i32 6, i32 1
  %256 = ptrtoint ptr %epib to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %epib, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %call178, i32 1
  %258 = ptrtoint ptr %call178 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %call178, align 4
  %incdec.ptr.1.i = getelementptr %struct.sa_ctx_info, ptr %cond, i32 0, i32 6, i32 2
  %259 = ptrtoint ptr %incdec.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %incdec.ptr.i356, align 4
  %incdec.ptr1.1.i = getelementptr i32, ptr %call178, i32 2
  %261 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %incdec.ptr1.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.sa_ctx_info, ptr %cond, i32 0, i32 6, i32 3
  %262 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr1.2.i = getelementptr i32, ptr %call178, i32 3
  %264 = ptrtoint ptr %incdec.ptr1.1.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %incdec.ptr1.1.i, align 4
  %265 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %incdec.ptr.2.i, align 4
  %267 = ptrtoint ptr %incdec.ptr1.2.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %incdec.ptr1.2.i, align 4
  %arrayidx.i357 = getelementptr i32, ptr %call178, i32 4
  %268 = ptrtoint ptr %arrayidx.i357 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -65536, ptr %arrayidx.i357, align 4
  %div41.i = and i32 %add, 131068
  %arrayidx2.i = getelementptr i32, ptr %call178, i32 5
  %269 = call ptr @memcpy(ptr %arrayidx2.i, ptr %cmdl, i32 %div41.i)
  %270 = load i16, ptr %cmdl_size, align 2
  %conv184 = zext i16 %270 to i32
  %add185 = add nuw nsw i32 %conv184, 16
  %271 = ptrtoint ptr %ml to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %add185, ptr %ml, align 4
  %mdata_size = getelementptr inbounds %struct.sa_req, ptr %req, i32 0, i32 16
  %272 = ptrtoint ptr %mdata_size to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %mdata_size, align 4
  %conv186 = zext i16 %273 to i32
  %call187 = call i32 @dmaengine_desc_set_metadata_len(ptr noundef nonnull %call.i352, i32 noundef %conv186) #9
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i352, i32 0, i32 4
  %274 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %tx_submit.i, align 4
  %call.i358 = call i32 %275(ptr noundef nonnull %call.i352) #9
  %276 = ptrtoint ptr %tx_in to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %tx_in, align 8
  %tx_submit.i359 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %tx_submit.i359 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %tx_submit.i359, align 4
  %call.i360 = call i32 %279(ptr noundef %277) #9
  %280 = ptrtoint ptr %dma_rx.0 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dma_rx.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %281, i32 0, i32 50
  %282 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %device_issue_pending.i, align 4
  call void %283(ptr noundef nonnull %dma_rx.0) #9
  %284 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dma_tx, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %device_issue_pending.i361 = getelementptr inbounds %struct.dma_device, ptr %287, i32 0, i32 50
  %288 = ptrtoint ptr %device_issue_pending.i361 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %device_issue_pending.i361, align 4
  call void %289(ptr noundef %285) #9
  br label %cleanup

err_cleanup.sink.split:                           ; preds = %dmaengine_prep_slave_sg.exit355.err_cleanup.sink.split_crit_edge, %lor.lhs.false2.i351.err_cleanup.sink.split_crit_edge, %lor.lhs.false.i348.err_cleanup.sink.split_crit_edge, %if.end153.err_cleanup.sink.split_crit_edge, %dmaengine_prep_slave_sg.exit.err_cleanup.sink.split_crit_edge, %dmaengine_prep_slave_sg.exit.thread
  %.str.40.sink = phi ptr [ @.str.37, %dmaengine_prep_slave_sg.exit.thread ], [ @.str.37, %dmaengine_prep_slave_sg.exit.err_cleanup.sink.split_crit_edge ], [ @.str.40, %if.end153.err_cleanup.sink.split_crit_edge ], [ @.str.40, %lor.lhs.false.i348.err_cleanup.sink.split_crit_edge ], [ @.str.40, %lor.lhs.false2.i351.err_cleanup.sink.split_crit_edge ], [ @.str.40, %dmaengine_prep_slave_sg.exit355.err_cleanup.sink.split_crit_edge ]
  %dev176 = getelementptr inbounds %struct.sa_crypto_data, ptr %3, i32 0, i32 4
  %290 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev176, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %291, ptr noundef nonnull %.str.40.sink) #12
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_cleanup.sink.split, %if.else120.err_cleanup_crit_edge, %sg_set_page.exit342.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call114, %sg_set_page.exit342.err_cleanup_crit_edge ], [ %call127, %if.else120.err_cleanup_crit_edge ], [ -22, %err_cleanup.sink.split ]
  call fastcc void @sa_free_sa_rx_data(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end177, %if.then69, %if.then58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %if.then58 ], [ %ret.0, %err_cleanup ], [ -115, %if.end177 ], [ %call67, %if.then69 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %split_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ml) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_nents) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_nents) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmdl) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_desc_get_metadata_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa_free_sa_rx_data(ptr noundef %rxd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.sa_rx_data, ptr %rxd, i32 0, i32 1
  %arrayidx = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %sgt = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 0, i32 4
  %dir = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %6 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %7, i32 noundef %9, i32 noundef %5, i32 noundef 0) #9
  %split_sg = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %split_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %split_sg, align 4
  tail call void @kfree(ptr noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1 = icmp eq i8 %13, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  %sgt.1 = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 1, i32 4
  %dir.1 = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %dir.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir.1, align 4
  %18 = ptrtoint ptr %sgt.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgt.1, align 4
  %orig_nents.i.1 = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 1, i32 4, i32 2
  %20 = ptrtoint ptr %orig_nents.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %orig_nents.i.1, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %19, i32 noundef %21, i32 noundef %17, i32 noundef 0) #9
  %split_sg.1 = getelementptr %struct.sa_rx_data, ptr %rxd, i32 0, i32 3, i32 1, i32 3
  %22 = ptrtoint ptr %split_sg.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %split_sg.1, align 4
  tail call void @kfree(ptr noundef %23) #9
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  tail call void @kfree(ptr noundef %rxd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_split(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaengine_desc_set_metadata_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_init_ctx_info(ptr noundef %ctx, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scid_lock = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock) #9
  %ctx_bm = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 9
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %ctx_bm, i32 noundef 512) #9
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %ctx_bm, i32 %div2.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %1
  store i32 %or.i, ptr %add.ptr.i, align 4
  %sc_id = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sc_id, align 4
  %inc = add i16 %3, 1
  store i16 %inc, ptr %sc_id, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock) #9
  %sc_id_start = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %sc_id_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sc_id_start, align 4
  %6 = trunc i32 %call to i16
  %conv4 = add i16 %5, %6
  %sc_id5 = getelementptr inbounds %struct.sa_ctx_info, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %sc_id5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv4, ptr %sc_id5, align 4
  %sc_pool = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %sc_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_pool, align 4
  %sc_phys = getelementptr inbounds %struct.sa_ctx_info, ptr %ctx, i32 0, i32 1
  %call6 = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef 3264, ptr noundef %sc_phys) #9
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %ctx, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.sa_crypto_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #12
  tail call void @_raw_spin_lock(ptr noundef %scid_lock) #9
  %neg.i = xor i32 %shl.i, -1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %14, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sc_id, align 4
  %dec = add i16 %16, -1
  store i16 %dec, ptr %sc_id, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_sha_dma_in_callback(ptr noundef %data) #2 align 64 {
entry:
  %ml = alloca i32, align 4
  %pl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ml) #9
  %0 = ptrtoint ptr %ml to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ml, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pl) #9
  %1 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pl, align 4, !annotation !195
  %dir.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %sgt3.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 4
  %sgt6.i = getelementptr %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 1, i32 4
  %sgt.0.i = select i1 %cmp.i, ptr %sgt3.i, ptr %sgt6.i
  %ddev.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev.i, align 4
  %6 = ptrtoint ptr %sgt.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.0.i, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %sgt.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 2) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -128
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 128
  %tx_in = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %tx_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_in, align 4
  %call3 = call ptr @dmaengine_desc_get_metadata_ptr(ptr noundef %19, ptr noundef nonnull %pl, ptr noundef nonnull %ml) #9
  %result4 = getelementptr inbounds %struct.ahash_request, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %result4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %result4, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp15.not = icmp ult i32 %17, 4
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div14 = lshr i32 %17, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add nuw nsw i32 %i.016, 4
  %arrayidx = getelementptr i32, ptr %call3, i32 %add
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %21, i32 %i.016
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %div14
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call fastcc void @sa_free_sa_rx_data(ptr noundef %data)
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %11, i32 0, i32 1
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %complete.i, align 8
  call void %26(ptr noundef %11, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ml) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa_sha_cra_init_alg(ptr noundef %tfm, ptr noundef %alg_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 728)
  %5 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %__crt_ctx.i, align 4
  %enc = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %call2 = tail call fastcc i32 @sa_init_ctx_info(ptr noundef %enc, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %alg_base, null
  br i1 %tobool3.not, label %if.end.do.body24_crit_edge, label %if.then4

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %alg_base, i32 noundef 0, i32 noundef 256) #9
  %shash = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 6, i32 4, i32 68
  %6 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %shash, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = load ptr, ptr @sa_k3_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, ptr noundef nonnull %alg_base) #12
  br label %cleanup

if.end11:                                         ; preds = %if.then4
  %call12 = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull %alg_base, i32 noundef 0, i32 noundef 256) #9
  %fallback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 6, i32 4, i32 72
  %8 = ptrtoint ptr %fallback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %fallback, align 4
  %cmp.i1 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %do.end18, label %if.end11.do.body24_crit_edge

if.end11.do.body24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_ctx.i, align 4
  %dev = getelementptr inbounds %struct.sa_crypto_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.61) #12
  br label %cleanup

do.body24:                                        ; preds = %if.end11.do.body24_crit_edge, %if.end.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_sha_cra_init_alg.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_sha_cra_init_alg, %if.then29)) #9
          to label %do.end38 [label %if.then29], !srcloc !194

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load ptr, ptr @sa_k3_dev, align 4
  %sc_id = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %14 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sc_id, align 4
  %conv = zext i16 %15 to i32
  %sc_phys = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %sc_id32 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %16 = ptrtoint ptr %sc_id32 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sc_id32, align 4
  %conv33 = zext i16 %17 to i32
  %sc_phys35 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_sha_cra_init_alg.__UNIQUE_ID_ddebug278, ptr noundef %13, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.59, ptr noundef %tfm, i32 noundef %conv, ptr noundef %sc_phys, i32 noundef %conv33, ptr noundef %sc_phys35) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body24
  %fallback40 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 6, i32 4, i32 72
  %18 = ptrtoint ptr %fallback40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fallback40, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %21, 256
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %22 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %reqsize1.i, align 32
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end18, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sa_sha_setup(ptr noundef %ctx, ptr noundef %ad) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.sa_cmdl_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shash = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shash, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  %sc_size = getelementptr inbounds %struct.sa_eng_info, ptr %ad, i32 0, i32 1
  %6 = ptrtoint ptr %sc_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %sc_size, align 2
  %auth_eng = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1
  %7 = ptrtoint ptr %auth_eng to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %auth_eng, align 4
  %sc_size2 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %sc_size2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 96, ptr %sc_size2, align 2
  %authkey = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 7
  %9 = call ptr @memset(ptr %authkey, i32 0, i32 %5)
  %10 = getelementptr inbounds i8, ptr %cfg, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 12)
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %12 = ptrtoint ptr %aalg_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aalg_id, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %cfg, align 4
  %15 = ptrtoint ptr %ad to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ad, align 4
  %enc_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %enc_eng_id to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %enc_eng_id, align 4
  %18 = load i8, ptr %auth_eng, align 4
  %auth_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 2
  %19 = ptrtoint ptr %auth_eng_id to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %auth_eng_id, align 1
  %akey = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 4
  %20 = ptrtoint ptr %akey to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %akey, align 4
  %21 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %ctx, align 4
  %enc = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 1
  %match_data = getelementptr inbounds %struct.sa_crypto_data, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %match_data, align 4
  %arrayidx = getelementptr %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 1
  %call10 = tail call fastcc i32 @sa_init_sc(ptr noundef %enc, ptr noundef %26, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef %ad, i8 noundef zeroext 0, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %cmdl = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %cmdl_upd_info = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %call14 = call fastcc i32 @sa_format_cmdl_gen(ptr noundef nonnull %cfg, ptr noundef %cmdl, ptr noundef %cmdl_upd_info)
  %27 = add i32 %call14, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %27)
  %28 = icmp ult i32 %27, -48
  br i1 %28, label %if.end.do.end_crit_edge, label %if.end19

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = trunc i32 %call14 to i16
  %cmdl_size = getelementptr inbounds %struct.sa_tfm_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv20, ptr %cmdl_size, align 2
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %30 = load ptr, ptr @sa_k3_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.63) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_aead_setkey(ptr noundef %authenc, ptr noundef %key, i32 noundef %keylen, ptr noundef %ad) unnamed_addr #2 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  %cfg = alloca %struct.sa_cmdl_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #9
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %3 = call ptr @memset(ptr %keys, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  %call1 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %5)
  %cmp2 = icmp ugt i32 %5, 39
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %shr = lshr i32 %5, 3
  %sub = add nsw i32 %shr, -2
  %ctx5 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 11
  %6 = ptrtoint ptr %ctx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %__crt_ctx.i.i, ptr %ctx5, align 4
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %ad, align 4
  %sc_size = getelementptr inbounds %struct.sa_eng_info, ptr %ad, i32 0, i32 1
  %8 = ptrtoint ptr %sc_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 64, ptr %sc_size, align 2
  %auth_eng = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1
  %9 = ptrtoint ptr %auth_eng to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %auth_eng, align 4
  %sc_size9 = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %sc_size9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 96, ptr %sc_size9, align 2
  %arrayidx = getelementptr [3 x [27 x i8]], ptr @mci_cbc_enc_no_iv_array, i32 0, i32 %sub
  %mci_enc = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 8
  %11 = ptrtoint ptr %mci_enc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %mci_enc, align 4
  %arrayidx10 = getelementptr [3 x [27 x i8]], ptr @mci_cbc_dec_no_iv_array, i32 0, i32 %sub
  %mci_dec = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 9
  %12 = ptrtoint ptr %mci_dec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx10, ptr %mci_dec, align 4
  %inv_key = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 10
  %13 = ptrtoint ptr %inv_key to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %inv_key, align 4
  %keyed_mac = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 12
  %14 = ptrtoint ptr %keyed_mac to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %keyed_mac, align 4
  %ealg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 6
  %15 = ptrtoint ptr %ealg_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %ealg_id, align 4
  %prep_iopad = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 13
  %16 = ptrtoint ptr %prep_iopad to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sa_prepare_iopads, ptr %prep_iopad, align 4
  %17 = getelementptr inbounds i8, ptr %cfg, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %enc = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 6
  %19 = ptrtoint ptr %enc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enc, align 2
  %aalg_id = getelementptr inbounds %struct.algo_data, ptr %ad, i32 0, i32 7
  %20 = ptrtoint ptr %aalg_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aalg_id, align 1
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %cfg, align 4
  %enc_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %enc_eng_id to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %enc_eng_id, align 4
  %auth_eng_id = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 2
  %24 = ptrtoint ptr %auth_eng_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %auth_eng_id, align 1
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %26, i32 -104
  %27 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ivsize.i.i, align 8
  %conv17 = trunc i32 %28 to i8
  %iv_size = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 3
  %29 = ptrtoint ptr %iv_size to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv17, ptr %iv_size, align 2
  %30 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %keys, align 4
  %akey = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 4
  %32 = ptrtoint ptr %akey to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %akey, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %conv18 = trunc i32 %34 to i16
  %akey_len = getelementptr inbounds %struct.sa_cmdl_cfg, ptr %cfg, i32 0, i32 5
  %35 = ptrtoint ptr %akey_len to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv18, ptr %akey_len, align 4
  %enc19 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 1
  %36 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__crt_ctx.i.i, align 4
  %match_data = getelementptr inbounds %struct.sa_crypto_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match_data, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %conv21 = trunc i32 %5 to i16
  %arrayidx26 = getelementptr %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 32
  %call27 = call fastcc i32 @sa_init_sc(ptr noundef %enc19, ptr noundef %39, ptr noundef %41, i16 noundef zeroext %conv21, ptr noundef %31, i16 noundef zeroext %conv18, ptr noundef %ad, i8 noundef zeroext 1, ptr noundef %arrayidx26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end29, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end4
  %cmdl = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 8
  %cmdl_upd_info = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 56
  %call33 = call fastcc i32 @sa_format_cmdl_gen(ptr noundef nonnull %cfg, ptr noundef %cmdl, ptr noundef %cmdl_upd_info)
  %42 = add i32 %call33, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %42)
  %43 = icmp ult i32 %42, -48
  br i1 %43, label %if.end29.cleanup_crit_edge, label %if.end39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %conv40 = trunc i32 %call33 to i16
  %cmdl_size = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 6
  %44 = ptrtoint ptr %cmdl_size to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv40, ptr %cmdl_size, align 2
  %dec = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 44
  %45 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__crt_ctx.i.i, align 4
  %match_data43 = getelementptr inbounds %struct.sa_crypto_data, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %match_data43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %match_data43, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %conv46 = trunc i32 %52 to i16
  %53 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %keys, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %conv49 = trunc i32 %56 to i16
  %arrayidx52 = getelementptr %struct.crypto_aead, ptr %authenc, i32 2, i32 2, i32 96
  %call53 = call fastcc i32 @sa_init_sc(ptr noundef %dec, ptr noundef %48, ptr noundef %50, i16 noundef zeroext %conv46, ptr noundef %54, i16 noundef zeroext %conv49, ptr noundef %ad, i8 noundef zeroext 0, ptr noundef %arrayidx52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %if.end39
  %57 = ptrtoint ptr %enc to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %enc, align 2
  %cmdl59 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 56
  %cmdl_upd_info62 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 104
  %call63 = call fastcc i32 @sa_format_cmdl_gen(ptr noundef nonnull %cfg, ptr noundef %cmdl59, ptr noundef %cmdl_upd_info62)
  %58 = add i32 %call63, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %58)
  %59 = icmp ult i32 %58, -48
  br i1 %59, label %if.end56.cleanup_crit_edge, label %if.end70

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %conv71 = trunc i32 %call63 to i16
  %cmdl_size73 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 3, i32 4, i32 54
  %60 = ptrtoint ptr %cmdl_size73 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv71, ptr %cmdl_size73, align 2
  %fallback = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 3, i32 3, i32 4, i32 72
  %61 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %64, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %65 = load ptr, ptr %fallback, align 4
  %base.i.i124 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3
  %66 = ptrtoint ptr %base.i.i124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base.i.i124, align 128
  %and = and i32 %67, 1048320
  %base.i.i125 = getelementptr inbounds %struct.crypto_aead, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %base.i.i125 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base.i.i125, align 128
  %or.i.i = or i32 %69, %and
  store i32 %or.i.i, ptr %base.i.i125, align 128
  %70 = load ptr, ptr %fallback, align 4
  %call77 = call i32 @crypto_aead_setkey(ptr noundef %70, ptr noundef %key, i32 noundef %keylen) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end56.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_prepare_iopads(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %key, i16 noundef zeroext %key_sz, ptr nocapture noundef writeonly %ipad, ptr nocapture noundef writeonly %opad) #2 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  %sha = alloca %union.anon.81, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #9
  %0 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %ctx = getelementptr inbounds %struct.algo_data, ptr %data, i32 0, i32 11
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %shash1 = getelementptr inbounds %struct.sa_tfm_ctx, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %shash1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shash1, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cra_blocksize.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %6, i32 -128
  %9 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %digestsize.i, align 128
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %sha) #9
  %11 = call ptr @memset(ptr %sha, i32 255, i32 104)
  %12 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %__shash_desc, align 8
  %conv.i = zext i16 %key_sz to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %key_sz)
  %cmp20.not.i = icmp eq i16 %key_sz, 0
  br i1 %cmp20.not.i, label %entry.for.body8.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.body8.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.preheader.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %key_sz)
  %cmp622.i = icmp ult i16 %key_sz, 64
  br i1 %cmp622.i, label %for.cond5.preheader.i.for.body8.preheader.i_crit_edge, label %for.cond5.preheader.i.prepare_kipad.exit_crit_edge

for.cond5.preheader.i.prepare_kipad.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepare_kipad.exit

for.cond5.preheader.i.for.body8.preheader.i_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.preheader.i

for.body8.preheader.i:                            ; preds = %for.cond5.preheader.i.for.body8.preheader.i_crit_edge, %entry.for.body8.preheader.i_crit_edge
  %uglygep.i = getelementptr i8, ptr %sha, i32 %conv.i
  %13 = sub nuw nsw i32 64, %conv.i
  %14 = call ptr @memset(ptr %uglygep.i, i32 54, i32 %13)
  br label %prepare_kipad.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %key, i32 %i.021.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = xor i8 %16, 54
  %arrayidx4.i = getelementptr i8, ptr %sha, i32 %i.021.i
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx4.i, align 1
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond5.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

prepare_kipad.exit:                               ; preds = %for.body8.preheader.i, %for.cond5.preheader.i.prepare_kipad.exit_crit_edge
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %prepare_kipad.exit.crypto_shash_init.exit_crit_edge

prepare_kipad.exit.crypto_shash_init.exit_crit_edge: ; preds = %prepare_kipad.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %prepare_kipad.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 -256
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %24(ptr noundef nonnull %__shash_desc) #9
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %prepare_kipad.exit.crypto_shash_init.exit_crit_edge
  %call10 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %sha, i32 noundef %8) #9
  %25 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %10, label %do.end.i [
    i32 20, label %crypto_shash_init.exit.sw.epilog.i_crit_edge
    i32 32, label %crypto_shash_init.exit.sw.epilog.i_crit_edge63
  ]

crypto_shash_init.exit.sw.epilog.i_crit_edge63:   ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

crypto_shash_init.exit.sw.epilog.i_crit_edge:     ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i:                                         ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = load ptr, ptr @sa_k3_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %10) #12
  br label %sa_export_shash.exit

sw.epilog.i:                                      ; preds = %crypto_shash_init.exit.sw.epilog.i_crit_edge, %crypto_shash_init.exit.sw.epilog.i_crit_edge63
  %27 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__shash_desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %export.i.i = getelementptr i8, ptr %30, i32 -236
  %31 = ptrtoint ptr %export.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %export.i.i, align 4
  %call1.i.i = call i32 %32(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %sha) #9
  %div111213.i = and i32 %10, -4
  %33 = call ptr @memcpy(ptr %ipad, ptr %sha, i32 %div111213.i)
  br label %sa_export_shash.exit

sa_export_shash.exit:                             ; preds = %sw.epilog.i, %do.end.i
  br i1 %cmp20.not.i, label %sa_export_shash.exit.for.body8.preheader.i35_crit_edge, label %sa_export_shash.exit.for.body.i41_crit_edge

sa_export_shash.exit.for.body.i41_crit_edge:      ; preds = %sa_export_shash.exit
  br label %for.body.i41

sa_export_shash.exit.for.body8.preheader.i35_crit_edge: ; preds = %sa_export_shash.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.preheader.i35

for.cond5.preheader.i32:                          ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %key_sz)
  %cmp622.i31 = icmp ult i16 %key_sz, 64
  br i1 %cmp622.i31, label %for.cond5.preheader.i32.for.body8.preheader.i35_crit_edge, label %for.cond5.preheader.i32.prepare_kopad.exit_crit_edge

for.cond5.preheader.i32.prepare_kopad.exit_crit_edge: ; preds = %for.cond5.preheader.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepare_kopad.exit

for.cond5.preheader.i32.for.body8.preheader.i35_crit_edge: ; preds = %for.cond5.preheader.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.preheader.i35

for.body8.preheader.i35:                          ; preds = %for.cond5.preheader.i32.for.body8.preheader.i35_crit_edge, %sa_export_shash.exit.for.body8.preheader.i35_crit_edge
  %uglygep.i34 = getelementptr i8, ptr %sha, i32 %conv.i
  %34 = sub nuw nsw i32 64, %conv.i
  %35 = call ptr @memset(ptr %uglygep.i34, i32 92, i32 %34)
  br label %prepare_kopad.exit

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %sa_export_shash.exit.for.body.i41_crit_edge
  %i.021.i36 = phi i32 [ %inc.i39, %for.body.i41.for.body.i41_crit_edge ], [ 0, %sa_export_shash.exit.for.body.i41_crit_edge ]
  %arrayidx.i37 = getelementptr i8, ptr %key, i32 %i.021.i36
  %36 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i37, align 1
  %38 = xor i8 %37, 92
  %arrayidx4.i38 = getelementptr i8, ptr %sha, i32 %i.021.i36
  %39 = ptrtoint ptr %arrayidx4.i38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx4.i38, align 1
  %inc.i39 = add nuw nsw i32 %i.021.i36, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, %conv.i
  br i1 %exitcond.not.i40, label %for.cond5.preheader.i32, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i41

prepare_kopad.exit:                               ; preds = %for.body8.preheader.i35, %for.cond5.preheader.i32.prepare_kopad.exit_crit_edge
  %40 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__shash_desc, align 8
  %base.i.i.i42 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %base.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base.i.i.i42, align 128
  %and.i43 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.end.i48, label %prepare_kopad.exit.crypto_shash_init.exit49_crit_edge

prepare_kopad.exit.crypto_shash_init.exit49_crit_edge: ; preds = %prepare_kopad.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_shash_init.exit49

if.end.i48:                                       ; preds = %prepare_kopad.exit
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_alg.i.i45 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %__crt_alg.i.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_alg.i.i45, align 4
  %add.ptr.i.i.i46 = getelementptr i8, ptr %45, i32 -256
  %46 = ptrtoint ptr %add.ptr.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i.i46, align 128
  %call3.i47 = call i32 %47(ptr noundef nonnull %__shash_desc) #9
  br label %crypto_shash_init.exit49

crypto_shash_init.exit49:                         ; preds = %if.end.i48, %prepare_kopad.exit.crypto_shash_init.exit49_crit_edge
  %call14 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %sha, i32 noundef %8) #9
  %48 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %10, label %do.end.i50 [
    i32 20, label %crypto_shash_init.exit49.sw.epilog.i55_crit_edge
    i32 32, label %crypto_shash_init.exit49.sw.epilog.i55_crit_edge64
  ]

crypto_shash_init.exit49.sw.epilog.i55_crit_edge64: ; preds = %crypto_shash_init.exit49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i55

crypto_shash_init.exit49.sw.epilog.i55_crit_edge: ; preds = %crypto_shash_init.exit49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i55

do.end.i50:                                       ; preds = %crypto_shash_init.exit49
  call void @__sanitizer_cov_trace_pc() #11
  %49 = load ptr, ptr @sa_k3_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %10) #12
  br label %sa_export_shash.exit62

sw.epilog.i55:                                    ; preds = %crypto_shash_init.exit49.sw.epilog.i55_crit_edge, %crypto_shash_init.exit49.sw.epilog.i55_crit_edge64
  %50 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__shash_desc, align 8
  %__crt_alg.i.i.i51 = getelementptr inbounds %struct.crypto_shash, ptr %51, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %__crt_alg.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i.i.i51, align 4
  %export.i.i52 = getelementptr i8, ptr %53, i32 -236
  %54 = ptrtoint ptr %export.i.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %export.i.i52, align 4
  %call1.i.i53 = call i32 %55(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %sha) #9
  %div111213.i54 = and i32 %10, -4
  %56 = call ptr @memcpy(ptr %opad, ptr %sha, i32 %div111213.i54)
  br label %sa_export_shash.exit62

sa_export_shash.exit62:                           ; preds = %sw.epilog.i55, %do.end.i50
  %57 = call ptr @memset(ptr %sha, i32 0, i32 104)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %sha) #9, !srcloc !191
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sha) #9
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_aead_run(ptr noundef %req, ptr noundef %iv, i32 noundef %enc) unnamed_addr #2 align 64 {
entry:
  %sa_req = alloca %struct.sa_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sa_req) #9
  %2 = call ptr @memset(ptr %sa_req, i32 0, i32 60)
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cryptlen, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %assoclen, align 8
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool = icmp ne i32 %enc, 0
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 128
  %sub = sub i32 %4, %8
  %sub5 = sub i32 %add, %8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %auth_size.0 = phi i32 [ %add, %entry.if.end_crit_edge ], [ %sub5, %if.then ]
  %enc_size.0 = phi i32 [ %4, %entry.if.end_crit_edge ], [ %sub, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %auth_size.0)
  %cmp = icmp ugt i32 %auth_size.0, 65535
  %9 = add i32 %auth_size.0, -240
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %10 = icmp ult i32 %9, 17
  %or.cond = or i1 %cmp, %10
  br i1 %or.cond, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.end
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %fallback = getelementptr i8, ptr %1, i32 856
  %11 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fallback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst, align 8
  %iv13 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %27 = ptrtoint ptr %iv13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv13, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %29 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %30 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %31 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %4, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %32 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %33 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %6, ptr %assoclen1.i, align 8
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

cond.false:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %6 to i8
  %enc_offset = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 2
  %34 = ptrtoint ptr %enc_offset to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %enc_offset, align 2
  %conv20 = trunc i32 %enc_size.0 to i16
  %enc_size21 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 3
  %35 = ptrtoint ptr %enc_size21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv20, ptr %enc_size21, align 4
  %conv22 = trunc i32 %auth_size.0 to i16
  %auth_size23 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 6
  %36 = ptrtoint ptr %auth_size23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv22, ptr %auth_size23, align 2
  %size = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 1
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv22, ptr %size, align 4
  %enc_iv = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 4
  %38 = ptrtoint ptr %enc_iv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %iv, ptr %enc_iv, align 4
  %type = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 8
  %39 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %type, align 4
  %enc26 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 12
  %frombool = zext i1 %tobool to i8
  %40 = ptrtoint ptr %enc26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %enc26, align 4
  %callback = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 15
  %41 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sa_aead_dma_in_callback, ptr %callback, align 4
  %mdata_size = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 16
  %42 = ptrtoint ptr %mdata_size to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 52, ptr %mdata_size, align 4
  %base28 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 10
  %43 = ptrtoint ptr %base28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %req, ptr %base28, align 4
  %ctx29 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 11
  %44 = ptrtoint ptr %ctx29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %__crt_ctx.i.i, ptr %ctx29, align 4
  %src30 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %45 = ptrtoint ptr %src30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %src30, align 4
  %src31 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 13
  %47 = ptrtoint ptr %src31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %src31, align 4
  %dst32 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %48 = ptrtoint ptr %dst32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst32, align 8
  %dst33 = getelementptr inbounds %struct.sa_req, ptr %sa_req, i32 0, i32 14
  %50 = ptrtoint ptr %dst33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %dst33, align 4
  %call34 = call fastcc i32 @sa_run(ptr noundef nonnull %sa_req)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %cond.false, %cond.true
  %retval.0 = phi i32 [ %call34, %if.end18 ], [ %call16, %cond.true ], [ %call17, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sa_req) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sa_aead_dma_in_callback(ptr noundef %data) #2 align 64 {
entry:
  %auth_tag = alloca [64 x i8], align 1
  %pl = alloca i32, align 4
  %ml = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %auth_tag) #9
  %0 = call ptr @memset(ptr %auth_tag, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pl) #9
  %1 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pl, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ml) #9
  %2 = ptrtoint ptr %ml to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ml, align 4, !annotation !195
  %dir.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %sgt3.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 0, i32 4
  %sgt6.i = getelementptr %struct.sa_rx_data, ptr %data, i32 0, i32 3, i32 1, i32 4
  %sgt.0.i = select i1 %cmp.i, ptr %sgt3.i, ptr %sgt6.i
  %ddev.i = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddev.i, align 4
  %7 = ptrtoint ptr %sgt.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt.0.i, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %sgt.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 2) #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -128
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cryptlen, align 4
  %add = add i32 %18, %16
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 128
  %tx_in = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %tx_in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_in, align 4
  %call3 = call ptr @dmaengine_desc_get_metadata_ptr(ptr noundef %22, ptr noundef nonnull %pl, ptr noundef nonnull %ml) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp34.not = icmp ult i32 %20, 4
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div33 = lshr i32 %20, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add4 = add nuw nsw i32 %i.035, 4
  %arrayidx = getelementptr i32, ptr %call3, i32 %add4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %div33
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %enc = getelementptr inbounds %struct.sa_rx_data, ptr %data, i32 0, i32 4
  %27 = ptrtoint ptr %enc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7 = getelementptr i32, ptr %call3, i32 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %12, i32 0, i32 5
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %arrayidx7, ptr noundef %30, i32 noundef %add, i32 noundef %20, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %add, %20
  %src = getelementptr inbounds %struct.aead_request, ptr %12, i32 0, i32 4
  %31 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %src, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %auth_tag, ptr noundef %32, i32 noundef %sub, i32 noundef %20, i32 noundef 0) #9
  %arrayidx8 = getelementptr i32, ptr %call3, i32 4
  %bcmp = call i32 @bcmp(ptr %arrayidx8, ptr nonnull %auth_tag, i32 %20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  %cond = select i1 %tobool11.not, i32 0, i32 -74
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ 0, %if.then ], [ %cond, %if.else ]
  call fastcc void @sa_free_sa_rx_data(ptr noundef %data)
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %12, i32 0, i32 1
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %complete.i, align 8
  call void %34(ptr noundef %12, i32 noundef %err.0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ml) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pl) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %auth_tag) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sa_cra_init_aead(ptr noundef %tfm, ptr noundef %hash, ptr noundef %fallback) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = load ptr, ptr @sa_k3_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = call ptr @memset(ptr %__crt_ctx.i.i, i32 0, i32 732)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__crt_ctx.i.i) #9, !srcloc !191
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %__crt_ctx.i.i, align 4
  %call2 = tail call ptr @crypto_alloc_shash(ptr noundef %hash, i32 noundef 0, i32 noundef 256) #9
  %shash = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3, i32 4, i32 68
  %5 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %shash, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @sa_k3_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.58, ptr noundef %hash) #12
  %7 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shash, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @crypto_alloc_aead(ptr noundef %fallback, i32 noundef 0, i32 noundef 256) #9
  %fallback8 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3, i32 4, i32 72
  %10 = ptrtoint ptr %fallback8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %fallback8, align 4
  %cmp.i72 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = load ptr, ptr @sa_k3_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.74, ptr noundef %fallback) #12
  %12 = ptrtoint ptr %fallback8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback8, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %call7, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %16, 128
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %17 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %reqsize1.i, align 4
  %enc = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %call20 = tail call fastcc i32 @sa_init_ctx_info(ptr noundef %enc, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %dec = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 44
  %call23 = tail call fastcc i32 @sa_init_ctx_info(ptr noundef %dec, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body28, label %if.then25

if.then25:                                        ; preds = %if.end22
  %sc_id.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %18 = ptrtoint ptr %sc_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sc_id.i, align 4
  %conv.i = zext i16 %19 to i32
  %sc_id_start.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 6
  %20 = ptrtoint ptr %sc_id_start.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sc_id_start.i, align 4
  %conv1.i = zext i16 %21 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %scid_lock.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %scid_lock.i) #9
  %ctx_bm.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 9
  %rem.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_bm.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %23, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %sc_id2.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 8
  %24 = ptrtoint ptr %sc_id2.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sc_id2.i, align 4
  %dec.i = add i16 %25, -1
  store i16 %dec.i, ptr %sc_id2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %scid_lock.i) #9
  %26 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enc, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then25.cleanup_crit_edge, label %if.then.i

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %sc_pool.i = getelementptr inbounds %struct.sa_crypto_data, ptr %2, i32 0, i32 3
  %28 = ptrtoint ptr %sc_pool.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc_pool.i, align 4
  %sc_phys.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %30 = ptrtoint ptr %sc_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sc_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef nonnull %27, i32 noundef %31) #9
  %32 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %enc, align 4
  br label %cleanup

do.body28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sa_cra_init_aead.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sa_cra_init_aead, %if.then33)) #9
          to label %cleanup [label %if.then33], !srcloc !194

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %33 = load ptr, ptr @sa_k3_dev, align 4
  %sc_id = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %34 = ptrtoint ptr %sc_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sc_id, align 4
  %conv = zext i16 %35 to i32
  %sc_phys = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %sc_id37 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 52
  %36 = ptrtoint ptr %sc_id37 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sc_id37, align 4
  %conv38 = zext i16 %37 to i32
  %sc_phys40 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 3, i32 4, i32 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sa_cra_init_aead.__UNIQUE_ID_ddebug281, ptr noundef %33, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.72, ptr noundef %tfm, i32 noundef %conv, ptr noundef %sc_phys, i32 noundef %conv38, ptr noundef %sc_phys40) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body28, %if.then.i, %if.then25.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %14, %do.end14 ], [ %call20, %if.end17.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call23, %if.then25.cleanup_crit_edge ], [ %call23, %if.then.i ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !145, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !163, !164, !165, !167, !168, !169, !171, !173, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__initcall__kmod_sa2ul__282_2492_sa_ul_driver_init6, !1, !"__initcall__kmod_sa2ul__282_2492_sa_ul_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/sa2ul.c", i32 2492, i32 1}
!2 = !{ptr @__exitcall_sa_ul_driver_exit, !1, !"__exitcall_sa_ul_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file283, !4, !"__UNIQUE_ID_file283", i1 false, i1 false}
!4 = !{!"../drivers/crypto/sa2ul.c", i32 2493, i32 1}
!5 = !{ptr @__UNIQUE_ID_license284, !4, !"__UNIQUE_ID_license284", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/sa2ul.c", i32 2488, i32 14}
!8 = !{ptr @sa_ul_driver, !9, !"sa_ul_driver", i1 false, i1 false}
!9 = !{!"../drivers/crypto/sa2ul.c", i32 2484, i32 31}
!10 = !{ptr @sa_ul_probe.saul_base, !11, !"saul_base", i1 false, i1 false}
!11 = !{!"../drivers/crypto/sa2ul.c", i32 2390, i32 23}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/sa2ul.c", i32 2416, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sa_ul_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @sa_ul_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sa_ul_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/crypto/sa2ul.c", i32 2426, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sa_k3_dev, !24, !"sa_k3_dev", i1 false, i1 false}
!24 = !{!"../drivers/crypto/sa2ul.c", i32 92, i32 23}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/sa2ul.c", i32 2270, i32 38}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/crypto/sa2ul.c", i32 2273, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sa_init_mem._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @sa_init_mem._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/sa2ul.c", i32 2293, i32 42}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/sa2ul.c", i32 2296, i32 10}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/sa2ul.c", i32 2298, i32 42}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/sa2ul.c", i32 2301, i32 9}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/sa2ul.c", i32 2305, i32 41}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/sa2ul.c", i32 2308, i32 9}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/sa2ul.c", i32 2321, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sa_dma_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sa_dma_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @sa_dma_init._entry.18, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/crypto/sa2ul.c", i32 2328, i32 3}
!51 = !{ptr @sa_dma_init._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/sa2ul.c", i32 2335, i32 3}
!54 = !{ptr @sa_dma_init._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sa_dma_init._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/sa2ul.c", i32 2232, i32 4}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sa_register_algos._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @sa_register_algos._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/crypto/sa2ul.c", i32 2239, i32 4}
!63 = !{ptr @sa_register_algos._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sa_register_algos._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @sa_algs, !66, !"sa_algs", i1 false, i1 false}
!66 = !{!"../drivers/crypto/sa2ul.c", i32 1972, i32 27}
!67 = !{ptr @mci_cbc_enc_array, !68, !"mci_cbc_enc_array", i1 false, i1 false}
!68 = !{!"../drivers/crypto/sa2ul.c", i32 244, i32 11}
!69 = !{ptr @mci_cbc_dec_array, !70, !"mci_cbc_dec_array", i1 false, i1 false}
!70 = !{!"../drivers/crypto/sa2ul.c", i32 260, i32 11}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/sa2ul.c", i32 943, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sa_cipher_setkey._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sa_cipher_setkey._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/sa2ul.c", i32 472, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sa_aes_inv_key._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @sa_aes_inv_key._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @sa_aes_inv_key._entry.35, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/crypto/sa2ul.c", i32 494, i32 3}
!83 = !{ptr @sa_aes_inv_key._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/sa2ul.c", i32 1248, i32 3}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @sa_run._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @sa_run._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/sa2ul.c", i32 1265, i32 3}
!91 = !{ptr @sa_run._entry.39, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sa_run._entry_ptr.41, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/crypto/sa2ul.c", i32 871, i32 3}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sa_cipher_cra_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @sa_cipher_cra_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/sa2ul.c", i32 879, i32 2}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sa_cipher_cra_init.__UNIQUE_ID_ddebug277, !99, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/sa2ul.c", i32 817, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sa_init_ctx_info._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sa_init_ctx_info._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/crypto/sa2ul.c", i32 838, i32 2}
!109 = !{ptr @sa_cipher_cra_exit.__UNIQUE_ID_ddebug276, !108, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!110 = !{ptr @mci_ecb_enc_array, !111, !"mci_ecb_enc_array", i1 false, i1 false}
!111 = !{!"../drivers/crypto/sa2ul.c", i32 308, i32 11}
!112 = !{ptr @mci_ecb_dec_array, !113, !"mci_ecb_dec_array", i1 false, i1 false}
!113 = !{!"../drivers/crypto/sa2ul.c", i32 324, i32 11}
!114 = !{ptr @mci_cbc_3des_enc_array, !115, !"mci_cbc_3des_enc_array", i1 false, i1 false}
!115 = !{!"../drivers/crypto/sa2ul.c", i32 341, i32 11}
!116 = !{ptr @mci_cbc_3des_dec_array, !117, !"mci_cbc_3des_dec_array", i1 false, i1 false}
!117 = !{!"../drivers/crypto/sa2ul.c", i32 347, i32 11}
!118 = !{ptr @mci_ecb_3des_enc_array, !119, !"mci_ecb_3des_enc_array", i1 false, i1 false}
!119 = !{!"../drivers/crypto/sa2ul.c", i32 353, i32 11}
!120 = !{ptr @mci_ecb_3des_dec_array, !121, !"mci_ecb_3des_dec_array", i1 false, i1 false}
!121 = !{!"../drivers/crypto/sa2ul.c", i32 359, i32 11}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/sa2ul.c", i32 1545, i32 2}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sa_sha_init.__UNIQUE_ID_ddebug279, !123, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/sa2ul.c", i32 1632, i32 27}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/sa2ul.c", i32 1508, i32 4}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sa_sha_cra_init_alg._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @sa_sha_cra_init_alg._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/sa2ul.c", i32 1517, i32 4}
!135 = !{ptr @sa_sha_cra_init_alg._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sa_sha_cra_init_alg._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @sa_sha_cra_init_alg.__UNIQUE_ID_ddebug278, !138, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!138 = !{!"../drivers/crypto/sa2ul.c", i32 1523, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/crypto/sa2ul.c", i32 1488, i32 2}
!141 = !{ptr @sa_sha_setup._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sa_sha_setup._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/crypto/sa2ul.c", i32 1680, i32 2}
!145 = !{ptr @sa_sha_cra_exit.__UNIQUE_ID_ddebug280, !144, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/sa2ul.c", i32 1648, i32 27}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/sa2ul.c", i32 1664, i32 27}
!150 = !{ptr @mci_cbc_enc_no_iv_array, !151, !"mci_cbc_enc_no_iv_array", i1 false, i1 false}
!151 = !{!"../drivers/crypto/sa2ul.c", i32 276, i32 11}
!152 = !{ptr @mci_cbc_dec_no_iv_array, !153, !"mci_cbc_dec_no_iv_array", i1 false, i1 false}
!153 = !{!"../drivers/crypto/sa2ul.c", i32 292, i32 11}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/sa2ul.c", i32 425, i32 3}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @sa_export_shash._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @sa_export_shash._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/crypto/sa2ul.c", i32 1778, i32 5}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/crypto/sa2ul.c", i32 1742, i32 3}
!163 = !{ptr @sa_cra_init_aead._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sa_cra_init_aead._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/sa2ul.c", i32 1750, i32 3}
!167 = !{ptr @sa_cra_init_aead._entry.73, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sa_cra_init_aead._entry_ptr.75, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @sa_cra_init_aead.__UNIQUE_ID_ddebug281, !170, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!170 = !{!"../drivers/crypto/sa2ul.c", i32 1768, i32 2}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/crypto/sa2ul.c", i32 1784, i32 5}
!173 = !{ptr @of_match, !174, !"of_match", i1 false, i1 false}
!174 = !{!"../drivers/crypto/sa2ul.c", i32 2378, i32 34}
!175 = !{ptr @am654_match_data, !176, !"am654_match_data", i1 false, i1 false}
!176 = !{!"../drivers/crypto/sa2ul.c", i32 2361, i32 29}
!177 = !{ptr @am64_match_data, !178, !"am64_match_data", i1 false, i1 false}
!178 = !{!"../drivers/crypto/sa2ul.c", i32 2367, i32 29}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{i64 2148364133}
!189 = !{i64 848956, i64 848981, i64 849003, i64 849019, i64 849031, i64 849051, i64 849075, i64 849091, i64 849103}
!190 = !{i64 2148364321}
!191 = !{i64 2149164927}
!192 = !{i8 0, i8 2}
!193 = !{i64 6341538}
!194 = !{i64 2148819199, i64 2148819204, i64 2148819217, i64 2148819261, i64 2148819295, i64 2148819316}
!195 = !{!"auto-init"}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2153903222, i64 2153903714, i64 2153903259, i64 2153903315, i64 2153903349, i64 2153903373, i64 2153903414, i64 2153903435, i64 2153903463, i64 2153903497}
!199 = !{i64 2153901274, i64 2153901766, i64 2153901311, i64 2153901367, i64 2153901401, i64 2153901425, i64 2153901466, i64 2153901487, i64 2153901515, i64 2153901549}
