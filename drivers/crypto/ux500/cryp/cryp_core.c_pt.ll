; ModuleID = '/llk/IR_all_yes/drivers/crypto/ux500/cryp/cryp_core.c_pt.bc'
source_filename = "../drivers/crypto/ux500/cryp/cryp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cryp_driver_data = type { %struct.klist, %struct.semaphore }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.cryp_algo_template = type { i32, [124 x i8], %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.85, ptr, ptr, ptr, ptr, %union.anon.86, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.85 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.86 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cryp_protection_config = type { i32, i32 }
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
%struct.cryp_device_data = type { ptr, i32, ptr, ptr, i32, ptr, i32, %struct.spinlock, ptr, %struct.klist_node, %struct.cryp_dma, i8, %struct.spinlock, i8 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.cryp_dma = type { %struct.dma_cap_mask_t, %struct.completion, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.cryp_platform_data = type { %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg }
%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }
%struct.cryp_ctx = type { %struct.cryp_config, [32 x i8], i32, ptr, ptr, ptr, i32, i32, i32, i8, %struct.cryp_device_context, ptr, i32 }
%struct.cryp_config = type { i32, i32, i32 }
%struct.cryp_device_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cryp_register = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, [981 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.des_ctx = type { [32 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_walk = type { %union.anon.89, %union.anon.89, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.klist_iter = type { ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@ux500_cryp_mod_fini.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ux500_cryp\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_cryp_mod_fini\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/crypto/ux500/cryp/cryp_core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%s] is called!\00", [16 x i8] zeroinitializer }, align 32
@cryp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ux500_cryp_probe, ptr @ux500_cryp_remove, ptr @ux500_cryp_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ux500_cryp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_cryp_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ux500_cryp__333_1591_ux500_cryp_mod_init6 = internal global ptr @ux500_cryp_mod_init, section ".initcall6.init", align 4
@__exitcall_ux500_cryp_mod_fini = internal global ptr @ux500_cryp_mod_fini, section ".exitcall.exit", align 4
@__param_str_cryp_mode = internal constant [21 x i8] c"ux500_cryp.cryp_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cryp_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cryp_mode = internal constant %struct.kernel_param { ptr @__param_str_cryp_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.78 { ptr @cryp_mode } }, section "__param", align 4
@__UNIQUE_ID_cryp_modetype334 = internal constant [34 x i8] c"ux500_cryp.parmtype=cryp_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [72 x i8] c"ux500_cryp.description=Driver for ST-Ericsson UX500 CRYP crypto engine.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace336 = internal constant [25 x i8] c"ux500_cryp.alias=aes-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto337 = internal constant [32 x i8] c"ux500_cryp.alias=crypto-aes-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace338 = internal constant [25 x i8] c"ux500_cryp.alias=des-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto339 = internal constant [32 x i8] c"ux500_cryp.alias=crypto-des-all\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [53 x i8] c"ux500_cryp.file=drivers/crypto/ux500/cryp/ux500_cryp\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [23 x i8] c"ux500_cryp.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cryp1\00", [26 x i8] zeroinitializer }, align 32
@ux500_cryp_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ux500-cryp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ux500_cryp_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ux500_cryp_suspend, ptr @ux500_cryp_resume, ptr @ux500_cryp_suspend, ptr @ux500_cryp_resume, ptr @ux500_cryp_suspend, ptr @ux500_cryp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ux500_cryp_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ux500_cryp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%s]\00", [27 x i8] zeroinitializer }, align 32
@mem_to_engine = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@engine_to_mem = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ux500_cryp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 1285, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s]: platform_get_resource() failed\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr = internal global ptr @ux500_cryp_probe._entry, section ".printk_index", align 4
@ux500_cryp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&device_data->ctx_lock\00", [41 x i8] zeroinitializer }, align 32
@ux500_cryp_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&device_data->power_state_spinlock\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v-ape\00", [26 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 1303, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s]: could not get cryp regulator\00", [61 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.16 = internal global ptr @ux500_cryp_probe._entry.14, section ".printk_index", align 4
@ux500_cryp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.2, i32 1312, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s]: clk_get() failed!\00", [40 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.19 = internal global ptr @ux500_cryp_probe._entry.17, section ".printk_index", align 4
@ux500_cryp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 1319, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%s]: clk_prepare() failed!\00", [36 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.22 = internal global ptr @ux500_cryp_probe._entry.20, section ".printk_index", align 4
@ux500_cryp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 1326, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: cryp_enable_power() failed!\00", [62 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.25 = internal global ptr @ux500_cryp_probe._entry.23, section ".printk_index", align 4
@ux500_cryp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 1331, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s]: cryp_check() failed!\00", [37 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.28 = internal global ptr @ux500_cryp_probe._entry.26, section ".printk_index", align 4
@ux500_cryp_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.2, i32 1338, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s]: cryp_configure_protection() failed!\00", [54 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.31 = internal global ptr @ux500_cryp_probe._entry.29, section ".printk_index", align 4
@ux500_cryp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.2, i32 1352, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%s]: Unable to request IRQ\00", [36 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.34 = internal global ptr @ux500_cryp_probe._entry.32, section ".printk_index", align 4
@driver_data = internal global { %struct.cryp_driver_data, [44 x i8] } zeroinitializer, align 32
@session_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ux500_cryp_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.5, ptr @.str.2, i32 1372, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s]: cryp_algs_register_all() failed!\00", [57 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.37 = internal global ptr @ux500_cryp_probe._entry.35, section ".printk_index", align 4
@ux500_cryp_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.2, i32 1376, ptr @.str.40, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"successfully registered\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ux500_cryp_probe._entry_ptr.41 = internal global ptr @ux500_cryp_probe._entry.38, section ".printk_index", align 4
@cryp_enable_power.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.6, i8 0, i8 -79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cryp_enable_power\00", [46 x i8] zeroinitializer }, align 32
@cryp_enable_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.42, ptr @.str.2, i32 717, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%s]: regulator_enable() failed!\00", [63 x i8] zeroinitializer }, align 32
@cryp_enable_power._entry_ptr = internal global ptr @cryp_enable_power._entry, section ".printk_index", align 4
@cryp_enable_power._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 724, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s]: clk_enable() failed!\00", [37 x i8] zeroinitializer }, align 32
@cryp_enable_power._entry_ptr.46 = internal global ptr @cryp_enable_power._entry.44, section ".printk_index", align 4
@cryp_interrupt_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cryp_interrupt_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%s] (len: %d) %s, \00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cryp_algs_register_all.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.6, i8 1, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cryp_algs_register_all\00", [41 x i8] zeroinitializer }, align 32
@cryp_algs = internal global [7 x %struct.cryp_algo_template] [%struct.cryp_algo_template { i32 4, [124 x i8] undef, %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 5, [124 x i8] undef, %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 6, [124 x i8] undef, %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 2, [124 x i8] undef, %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 0, [124 x i8] undef, %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3_ede-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 3, [124 x i8] undef, %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }, %struct.cryp_algo_template { i32 1, [124 x i8] undef, %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @cryp_blk_encrypt, ptr @cryp_blk_decrypt, ptr @cryp_init_tfm, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 152, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3_ede-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } }], align 128
@cryp_algs_register_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.52, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013[%s] alg registration failed\00", [33 x i8] zeroinitializer }, align 32
@cryp_algs_register_all._entry_ptr = internal global ptr @cryp_algs_register_all._entry, section ".printk_index", align 4
@aes_skcipher_setkey.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aes_skcipher_setkey\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"crypX crypX: [%s]\00", [46 x i8] zeroinitializer }, align 32
@aes_skcipher_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013crypX crypX:[%s]: Unknown keylen!\00", [60 x i8] zeroinitializer }, align 32
@aes_skcipher_setkey._entry_ptr = internal global ptr @aes_skcipher_setkey._entry, section ".printk_index", align 4
@cryp_blk_encrypt.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.55, i8 0, i8 -2, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cryp_blk_encrypt\00", [47 x i8] zeroinitializer }, align 32
@ablk_dma_crypt.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.55, i8 0, i8 -48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ablk_dma_crypt\00", [17 x i8] zeroinitializer }, align 32
@cryp_get_device_data.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.55, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cryp_get_device_data\00", [43 x i8] zeroinitializer }, align 32
@cryp_setup_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 385, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%s]: cfg_keys failed!\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cryp_setup_context\00", [45 x i8] zeroinitializer }, align 32
@cryp_setup_context._entry_ptr = internal global ptr @cryp_setup_context._entry, section ".printk_index", align 4
@cfg_keys.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.6, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfg_keys\00", [23 x i8] zeroinitializer }, align 32
@cfg_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.62, ptr @.str.2, i32 356, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s]: set_key() failed!\00", [40 x i8] zeroinitializer }, align 32
@cfg_keys._entry_ptr = internal global ptr @cfg_keys._entry, section ".printk_index", align 4
@set_key.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.6, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_key\00", [24 x i8] zeroinitializer }, align 32
@set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.64, ptr @.str.2, i32 324, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s]: cryp_configure_key_values() failed!\00", [54 x i8] zeroinitializer }, align 32
@set_key._entry_ptr = internal global ptr @set_key._entry, section ".printk_index", align 4
@cfg_ivs.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.6, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ivs\00", [24 x i8] zeroinitializer }, align 32
@cfg_ivs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.66, ptr @.str.2, i32 290, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%s] Incorrect blocksize %d\00", [36 x i8] zeroinitializer }, align 32
@cfg_ivs._entry_ptr = internal global ptr @cfg_ivs._entry, section ".printk_index", align 4
@cfg_iv.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.6, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cfg_iv\00", [25 x i8] zeroinitializer }, align 32
@cryp_dma_write.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cryp_dma_write\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[%s]: \00", [25 x i8] zeroinitializer }, align 32
@cryp_dma_write.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.71, i8 0, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s]: cryp_set_dma_transfer() failed\00", [59 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.70, i8 0, i8 -126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cryp_set_dma_transfer\00", [42 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.72, ptr @.str.2, i32 527, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s]: Data in sg list isn't aligned! Addr: 0x%08lx\00", [45 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer._entry_ptr = internal global ptr @cryp_set_dma_transfer._entry, section ".printk_index", align 4
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s]: Could not map the sg list (TO_DEVICE)\00", [52 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.75, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s]: Setting up DMA for buffer (TO_DEVICE)\00", [52 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.76, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s]: Could not map the sg list (FROM_DEVICE)\00", [50 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.77, i8 0, i8 -113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s]: Setting up DMA for buffer (FROM_DEVICE)\00", [50 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.78, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%s]: Invalid DMA direction\00", [36 x i8] zeroinitializer }, align 32
@cryp_set_dma_transfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.79, i8 0, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s]: DMA submission failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cryp_dma_out_callback.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.70, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cryp_dma_out_callback\00", [42 x i8] zeroinitializer }, align 32
@cryp_dma_read.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.71, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cryp_dma_read\00", [18 x i8] zeroinitializer }, align 32
@cryp_dma_done.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.70, i8 0, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cryp_dma_done\00", [18 x i8] zeroinitializer }, align 32
@ablk_crypt.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.55, i8 0, i8 -33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ablk_crypt\00", [21 x i8] zeroinitializer }, align 32
@ablk_crypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.83, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013crypX crypX:[%s]: skcipher_walk_async() failed!\00", [46 x i8] zeroinitializer }, align 32
@ablk_crypt._entry_ptr = internal global ptr @ablk_crypt._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@hw_crypt_noxts.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.55, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw_crypt_noxts\00", [17 x i8] zeroinitializer }, align 32
@hw_crypt_noxts.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"crypX crypX: [%s]: Data isn't aligned! Addr: 0x%08lx\00", [43 x i8] zeroinitializer }, align 32
@hw_crypt_noxts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 795, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s]: Invalid operation mode!\00", [34 x i8] zeroinitializer }, align 32
@hw_crypt_noxts._entry_ptr = internal global ptr @hw_crypt_noxts._entry, section ".printk_index", align 4
@cryp_blk_decrypt.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.55, i8 1, i8 3, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cryp_blk_decrypt\00", [47 x i8] zeroinitializer }, align 32
@des_skcipher_setkey.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.55, i8 0, i8 -11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"des_skcipher_setkey\00", [44 x i8] zeroinitializer }, align 32
@des3_skcipher_setkey.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.55, i8 0, i8 -6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"des3_skcipher_setkey\00", [43 x i8] zeroinitializer }, align 32
@cryp_disable_power.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.6, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cryp_disable_power\00", [45 x i8] zeroinitializer }, align 32
@cryp_disable_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.91, ptr @.str.2, i32 693, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: regulator_disable() failed!\00", [62 x i8] zeroinitializer }, align 32
@cryp_disable_power._entry_ptr = internal global ptr @cryp_disable_power._entry, section ".printk_index", align 4
@ux500_cryp_remove.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.6, i8 1, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ux500_cryp_remove\00", [46 x i8] zeroinitializer }, align 32
@ux500_cryp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.93, ptr @.str.2, i32 1401, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s]: platform_get_drvdata() failed!\00", [59 x i8] zeroinitializer }, align 32
@ux500_cryp_remove._entry_ptr = internal global ptr @ux500_cryp_remove._entry, section ".printk_index", align 4
@ux500_cryp_remove._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.93, ptr @.str.2, i32 1432, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: cryp_disable_power() failed\00", [62 x i8] zeroinitializer }, align 32
@ux500_cryp_remove._entry_ptr.97 = internal global ptr @ux500_cryp_remove._entry.95, section ".printk_index", align 4
@cryp_algs_unregister_all.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.55, i8 1, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cryp_algs_unregister_all\00", [39 x i8] zeroinitializer }, align 32
@ux500_cryp_shutdown.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.6, i8 1, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_cryp_shutdown\00", [44 x i8] zeroinitializer }, align 32
@ux500_cryp_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.99, ptr @.str.2, i32 1449, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ux500_cryp_shutdown._entry_ptr = internal global ptr @ux500_cryp_shutdown._entry, section ".printk_index", align 4
@ux500_cryp_shutdown.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 1, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s]: Cryp still in use!Shutting down anyway...\00", [48 x i8] zeroinitializer }, align 32
@ux500_cryp_shutdown._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.99, ptr @.str.2, i32 1479, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ux500_cryp_shutdown._entry_ptr.102 = internal global ptr @ux500_cryp_shutdown._entry.101, section ".printk_index", align 4
@ux500_cryp_suspend.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.6, i8 1, i8 116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ux500_cryp_suspend\00", [45 x i8] zeroinitializer }, align 32
@ux500_cryp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.103, ptr @.str.2, i32 1496, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ux500_cryp_suspend._entry_ptr = internal global ptr @ux500_cryp_suspend._entry, section ".printk_index", align 4
@ux500_cryp_suspend.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s]: down_interruptible() failed\00", [62 x i8] zeroinitializer }, align 32
@ux500_cryp_suspend._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str.2, i32 1517, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s]: cryp_disable_power()\00", [37 x i8] zeroinitializer }, align 32
@ux500_cryp_suspend._entry_ptr.107 = internal global ptr @ux500_cryp_suspend._entry.105, section ".printk_index", align 4
@ux500_cryp_resume.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.6, i8 1, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ux500_cryp_resume\00", [46 x i8] zeroinitializer }, align 32
@ux500_cryp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.108, ptr @.str.2, i32 1533, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ux500_cryp_resume._entry_ptr = internal global ptr @ux500_cryp_resume._entry, section ".printk_index", align 4
@ux500_cryp_resume._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.108, ptr @.str.2, i32 1549, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ux500_cryp_resume._entry_ptr.110 = internal global ptr @ux500_cryp_resume._entry.109, section ".printk_index", align 4
@ux500_cryp_mod_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.3, i8 1, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_cryp_mod_init\00", [44 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1587, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"cryp_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1565, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"cryp_mode\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 45, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1570, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"ux500_cryp_match\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1559, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"ux500_cryp_pm\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1557, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1266, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"mem_to_engine\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 48, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"engine_to_mem\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 49, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1284, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1297, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1298, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1301, i32 57 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1303, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1312, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1319, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1326, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1331, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1337, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1352, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"driver_data\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 94, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 46, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1371, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1376, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 710, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 716, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 723, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 204, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 87, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1225, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1231, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 948, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 964, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1019, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 835, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 424, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 384, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 337, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 355, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 314, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 323, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 281, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 289, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 263, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 624, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 627, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 523, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 526, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 541, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 547, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 565, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 571, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 586, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 593, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 509, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 639, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 607, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 893, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 902, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 756, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 761, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 794, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1037, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 982, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1001, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 673, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 691, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1397, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1400, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1431, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1250, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1444, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1448, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1458, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1478, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1491, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1496, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1509, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1517, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1529, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1533, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1549, i32 3 }
@___asan_gen_.489 = private constant [41 x i8] c"../drivers/crypto/ux500/cryp/cryp_core.c\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1578, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 33, i32 31 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 34, i32 28 }
@___asan_gen_.497 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 35, i32 39 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_alias_crypto337, ptr @__UNIQUE_ID_alias_crypto339, ptr @__UNIQUE_ID_alias_userspace336, ptr @__UNIQUE_ID_alias_userspace338, ptr @__UNIQUE_ID_cryp_modetype334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_ux500_cryp_mod_fini, ptr @__initcall__kmod_ux500_cryp__333_1591_ux500_cryp_mod_init6, ptr @__param_cryp_mode, ptr @ablk_crypt._entry, ptr @ablk_crypt._entry_ptr, ptr @aes_skcipher_setkey._entry, ptr @aes_skcipher_setkey._entry_ptr, ptr @cfg_ivs._entry, ptr @cfg_ivs._entry_ptr, ptr @cfg_keys._entry, ptr @cfg_keys._entry_ptr, ptr @cryp_algs_register_all._entry, ptr @cryp_algs_register_all._entry_ptr, ptr @cryp_disable_power._entry, ptr @cryp_disable_power._entry_ptr, ptr @cryp_enable_power._entry, ptr @cryp_enable_power._entry.44, ptr @cryp_enable_power._entry_ptr, ptr @cryp_enable_power._entry_ptr.46, ptr @cryp_set_dma_transfer._entry, ptr @cryp_set_dma_transfer._entry_ptr, ptr @cryp_setup_context._entry, ptr @cryp_setup_context._entry_ptr, ptr @hw_crypt_noxts._entry, ptr @hw_crypt_noxts._entry_ptr, ptr @set_key._entry, ptr @set_key._entry_ptr, ptr @ux500_cryp_mod_fini, ptr @ux500_cryp_probe._entry, ptr @ux500_cryp_probe._entry.14, ptr @ux500_cryp_probe._entry.17, ptr @ux500_cryp_probe._entry.20, ptr @ux500_cryp_probe._entry.23, ptr @ux500_cryp_probe._entry.26, ptr @ux500_cryp_probe._entry.29, ptr @ux500_cryp_probe._entry.32, ptr @ux500_cryp_probe._entry.35, ptr @ux500_cryp_probe._entry.38, ptr @ux500_cryp_probe._entry_ptr, ptr @ux500_cryp_probe._entry_ptr.16, ptr @ux500_cryp_probe._entry_ptr.19, ptr @ux500_cryp_probe._entry_ptr.22, ptr @ux500_cryp_probe._entry_ptr.25, ptr @ux500_cryp_probe._entry_ptr.28, ptr @ux500_cryp_probe._entry_ptr.31, ptr @ux500_cryp_probe._entry_ptr.34, ptr @ux500_cryp_probe._entry_ptr.37, ptr @ux500_cryp_probe._entry_ptr.41, ptr @ux500_cryp_remove._entry, ptr @ux500_cryp_remove._entry.95, ptr @ux500_cryp_remove._entry_ptr, ptr @ux500_cryp_remove._entry_ptr.97, ptr @ux500_cryp_resume._entry, ptr @ux500_cryp_resume._entry.109, ptr @ux500_cryp_resume._entry_ptr, ptr @ux500_cryp_resume._entry_ptr.110, ptr @ux500_cryp_shutdown._entry, ptr @ux500_cryp_shutdown._entry.101, ptr @ux500_cryp_shutdown._entry_ptr, ptr @ux500_cryp_shutdown._entry_ptr.102, ptr @ux500_cryp_suspend._entry, ptr @ux500_cryp_suspend._entry.105, ptr @ux500_cryp_suspend._entry_ptr, ptr @ux500_cryp_suspend._entry_ptr.107, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cryp_driver, ptr @cryp_mode, ptr @.str.4, ptr @ux500_cryp_match, ptr @ux500_cryp_pm, ptr @.str.5, ptr @.str.6, ptr @mem_to_engine, ptr @engine_to_mem, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ux500_cryp_probe.__key, ptr @.str.10, ptr @ux500_cryp_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @driver_data, ptr @session_id, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @init_completion.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @sema_init.__key, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_to_engine to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @engine_to_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_enable_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_enable_power._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_algs_register_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_skcipher_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_setup_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ivs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_set_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ablk_crypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_crypt_noxts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cryp_disable_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_remove._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_shutdown._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_suspend._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_cryp_resume._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ux500_cryp_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_mod_fini.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_mod_fini, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ux500_cryp_mod_fini.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @platform_driver_unregister(ptr noundef nonnull @cryp_driver) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_cryp_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_mod_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_mod_init, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ux500_cryp_mod_init.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.111) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @klist_init(ptr noundef nonnull @driver_data, ptr noundef null, ptr noundef null) #8
  %0 = call ptr @memset(ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 0), i32 0, i32 12)
  %1 = call ptr @memset(ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 5), i32 0, i32 10)
  store i32 0, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1), align 4
  store i32 -559067475, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 2), align 4
  store ptr inttoptr (i32 -1 to ptr), ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 3), align 4
  store ptr @.str.112, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 2), align 4
  store i8 0, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 3), align 4
  store i8 2, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 4), align 1
  store i32 0, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 2), ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 2, i32 0), align 4
  store ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 2), ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 2, i32 1), align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4), ptr noundef nonnull @.str.113, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cryp_driver, ptr noundef null) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_cryp_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %prot = alloca %struct.cryp_protection_config, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prot) #8
  %0 = ptrtoint ptr %prot to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967296, ptr %prot, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_probe, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_probe.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 244, i32 noundef 2848) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %dev9 = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev9, align 4
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %current_ctx, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  store ptr %4, ptr @mem_to_engine, align 4
  %engine_to_mem = getelementptr inbounds %struct.cryp_platform_data, ptr %4, i32 0, i32 1
  store ptr %engine_to_mem, ptr @engine_to_mem, align 4
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call11, align 4
  %phybase = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phybase, align 4
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call11) #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %do.body25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call18 to i32
  br label %cleanup

do.body25:                                        ; preds = %if.end17
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ux500_cryp_probe.__key, i16 noundef signext 3) #8
  %power_state_spinlock = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %power_state_spinlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @ux500_cryp_probe.__key.11, i16 noundef signext 3) #8
  %call34 = tail call ptr @regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %pwr_regulator = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %pwr_regulator, align 4
  %cmp.i184 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end40, label %if.end44

do.end40:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #11
  %11 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwr_regulator, align 4
  %13 = ptrtoint ptr %12 to i32
  store ptr null, ptr %pwr_regulator, align 4
  br label %cleanup

if.end44:                                         ; preds = %do.body25
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call46, ptr %clk, align 4
  %cmp.i185 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5) #11
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %out_regulator

if.end55:                                         ; preds = %if.end44
  %call57 = tail call i32 @clk_prepare(ptr noundef %call46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5) #11
  br label %out_regulator

if.end63:                                         ; preds = %if.end55
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  %call65 = tail call fastcc i32 @cryp_enable_power(ptr noundef %19, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5) #11
  br label %out_clk_unprepare

if.end71:                                         ; preds = %if.end63
  %call72 = tail call i32 @cryp_check(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5) #11
  br label %out_power

if.end78:                                         ; preds = %if.end71
  %call79 = call i32 @cryp_configure_protection(ptr noundef nonnull %call.i, ptr noundef nonnull %prot) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5) #11
  br label %out_power

if.end85:                                         ; preds = %if.end78
  %call86 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call86, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call86)
  %cmp = icmp slt i32 %call86, 1
  br i1 %cmp, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool90.not = icmp eq i32 %call86, 0
  %spec.select = select i1 %tobool90.not, i32 -6, i32 %call86
  br label %out_power

if.end92:                                         ; preds = %if.end85
  %call.i186 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call86, ptr noundef nonnull @cryp_interrupt_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool96.not = icmp eq i32 %call.i186, 0
  br i1 %tobool96.not, label %if.end101, label %do.end100

do.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5) #11
  br label %out_power

if.end101:                                        ; preds = %if.end92
  %21 = load i32, ptr @cryp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp102 = icmp eq i32 %21, 2
  br i1 %cmp102, label %if.then103, label %if.end101.if.end104_crit_edge

if.end101.if.end104_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cryp_dma_setup_channel(ptr noundef nonnull %call.i)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end101.if.end104_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %list_node = getelementptr inbounds %struct.cryp_device_data, ptr %call.i, i32 0, i32 9
  call void @klist_add_tail(ptr noundef %list_node, ptr noundef nonnull @driver_data) #8
  call void @up(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #8
  store volatile i32 1, ptr @session_id, align 4
  %call105 = call fastcc i32 @cryp_algs_register_all()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.end114, label %do.end110

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5) #11
  br label %out_power

do.end114:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  br label %cleanup

out_power:                                        ; preds = %do.end110, %do.end100, %if.then88, %do.end84, %do.end77
  %ret.0 = phi i32 [ -22, %do.end77 ], [ -22, %do.end84 ], [ %spec.select, %if.then88 ], [ %call.i186, %do.end100 ], [ %call105, %do.end110 ]
  %23 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9, align 4
  %call116 = call fastcc i32 @cryp_disable_power(ptr noundef %24, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %out_clk_unprepare

out_clk_unprepare:                                ; preds = %out_power, %do.end70
  %ret.1 = phi i32 [ %call65, %do.end70 ], [ %ret.0, %out_power ]
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  call void @clk_unprepare(ptr noundef %26) #8
  br label %out_regulator

out_regulator:                                    ; preds = %out_clk_unprepare, %do.end62, %do.end52
  %ret.2 = phi i32 [ %17, %do.end52 ], [ %call57, %do.end62 ], [ %ret.1, %out_clk_unprepare ]
  %27 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwr_regulator, align 4
  call void @regulator_put(ptr noundef %28) #8
  br label %cleanup

cleanup:                                          ; preds = %out_regulator, %do.end114, %do.end40, %if.then21, %do.end16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end114 ], [ %9, %if.then21 ], [ %13, %do.end40 ], [ %ret.2, %out_regulator ], [ -19, %do.end16 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prot) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_cryp_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_remove.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_remove, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_remove.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.93) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @down_trylock(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool16.not = icmp eq ptr %3, null
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %list_node = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 9
  %call21 = tail call i32 @klist_node_attached(ptr noundef %list_node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %if.then23

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @klist_remove(ptr noundef %list_node) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %4, getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 0, i32 1)
  br i1 %cmp.i.not, label %if.then28, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cryp_algs_unregister_all()
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call31 = tail call fastcc i32 @cryp_disable_power(ptr noundef %dev30, ptr noundef nonnull %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %do.end36

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end29.if.end38_crit_edge
  %clk = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %6) #8
  %pwr_regulator = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwr_regulator, align 4
  tail call void @regulator_put(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then17, %if.end11.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -16, %if.then17 ], [ 0, %if.end38 ], [ -12, %do.end9 ], [ -16, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ux500_cryp_shutdown(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_shutdown.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_shutdown, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_shutdown.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.99) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.99) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end38_crit_edge

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @down_trylock(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end36_crit_edge, label %do.body17

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_shutdown.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_shutdown, %if.end36)) #8
          to label %if.then31 [label %if.end36], !srcloc !313

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_shutdown.__UNIQUE_ID_ddebug327, ptr noundef %dev32, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body17, %if.then13.if.end36_crit_edge
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ctx, align 4
  %incdec.ptr = getelementptr %struct.cryp_ctx, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %current_ctx, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end11.if.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %list_node = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 9
  %call40 = tail call i32 @klist_node_attached(ptr noundef %list_node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @klist_remove(ptr noundef %list_node) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end38.if.end44_crit_edge
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %6, getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 0, i32 1)
  br i1 %cmp.i.not, label %if.then47, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cryp_algs_unregister_all()
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call50 = tail call fastcc i32 @cryp_disable_power(ptr noundef %dev49, ptr noundef nonnull %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %do.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.99) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end48.cleanup_crit_edge, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_enable_power(ptr noundef %dev, ptr noundef %device_data, i1 noundef zeroext %restore_device_context) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_enable_power.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_enable_power, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_enable_power.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_state_spinlock = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %power_state_spinlock) #8
  %power_state = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 11
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_state, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then6:                                         ; preds = %do.end
  %pwr_regulator = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 5
  %2 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwr_regulator, align 4
  %call7 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42) #11
  br label %out

if.end13:                                         ; preds = %if.then6
  %clk = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call14 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42) #11
  %6 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwr_regulator, align 4
  %call21 = tail call i32 @regulator_disable(ptr noundef %7) #8
  br label %out

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %power_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %power_state, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %do.end.if.end24_crit_edge
  %restore_dev_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 13
  %9 = ptrtoint ptr %restore_dev_ctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %restore_dev_ctx, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %if.end24.out_crit_edge, label %if.then26

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then26:                                        ; preds = %if.end24
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  br i1 %restore_device_context, label %land.lhs.true, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then26
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 8
  %11 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_ctx, align 4
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %restore_dev_ctx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %restore_dev_ctx, align 4
  %dev_ctx = getelementptr inbounds %struct.cryp_ctx, ptr %12, i32 0, i32 10
  tail call void @cryp_restore_device_context(ptr noundef %device_data, ptr noundef %dev_ctx) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true.if.end32_crit_edge, %if.then26.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  br label %out

out:                                              ; preds = %if.end32, %if.end24.out_crit_edge, %do.end19, %do.end12
  %ret.1 = phi i32 [ 0, %if.end32 ], [ 0, %if.end24.out_crit_edge ], [ %call7, %do.end12 ], [ %call14, %do.end19 ]
  tail call void @_raw_spin_unlock(ptr noundef %power_state_spinlock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cryp_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cryp_configure_protection(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryp_interrupt_handler(i32 noundef %irq, ptr noundef %param) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %param, null
  br i1 %cmp, label %do.body5, label %if.end11

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/ux500/cryp/cryp_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #8, !srcloc !315
  unreachable

if.end11:                                         ; preds = %entry
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %param, i32 0, i32 8
  %0 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ctx, align 4
  %cmp12 = icmp eq ptr %1, null
  br i1 %cmp12, label %do.body25, label %do.body35

do.body25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/ux500/cryp/cryp_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #8, !srcloc !316
  unreachable

do.body35:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_interrupt_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_interrupt_handler, %do.end49)) #8
          to label %if.then45 [label %do.end49], !srcloc !313

if.then45:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %outlen = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen, align 4
  %call46 = tail call zeroext i1 @cryp_pending_irq_src(ptr noundef nonnull %param, i32 noundef 2) #8
  %cond = select i1 %call46, ptr @.str.49, ptr @.str.50
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_interrupt_handler.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %7, ptr noundef nonnull %cond) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body35
  %call50 = tail call zeroext i1 @cryp_pending_irq_src(ptr noundef nonnull %param, i32 noundef 2) #8
  br i1 %call50, label %if.then51, label %if.else

if.then51:                                        ; preds = %do.end49
  %outlen52 = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %outlen52 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outlen52, align 4
  %blocksize = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp53.not = icmp ugt i32 %11, %9
  br i1 %cmp53.not, label %if.then51.cleanup_crit_edge, label %if.then54

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %if.then51
  %div56130 = lshr i32 %11, 2
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 4
  %dout = getelementptr inbounds %struct.cryp_register, ptr %13, i32 0, i32 4
  %outdata = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %outdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %outdata, align 4
  tail call void @__raw_readsl(ptr noundef %dout, ptr noundef %15, i32 noundef %div56130) #8
  %16 = ptrtoint ptr %outdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outdata, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %div56130
  store ptr %add.ptr, ptr %outdata, align 4
  %18 = ptrtoint ptr %outlen52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outlen52, align 4
  %sub = sub i32 %19, %div56130
  store i32 %sub, ptr %outlen52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div56130)
  %cmp60 = icmp eq i32 %19, %div56130
  br i1 %cmp60, label %if.then61, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cryp_disable_irq_src(ptr noundef nonnull %param, i32 noundef 2) #8
  br label %cleanup

if.else:                                          ; preds = %do.end49
  %call64 = tail call zeroext i1 @cryp_pending_irq_src(ptr noundef nonnull %param, i32 noundef 1) #8
  br i1 %call64, label %if.then65, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %if.else
  %datalen = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %datalen, align 4
  %blocksize66 = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %blocksize66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocksize66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp68.not = icmp ugt i32 %23, %21
  br i1 %cmp68.not, label %if.then65.cleanup_crit_edge, label %if.then69

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then69:                                        ; preds = %if.then65
  %div71129 = lshr i32 %23, 2
  %24 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %param, align 4
  %din = getelementptr inbounds %struct.cryp_register, ptr %25, i32 0, i32 2
  %indata = getelementptr inbounds %struct.cryp_ctx, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %indata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %indata, align 4
  tail call void @__raw_writesl(ptr noundef %din, ptr noundef %27, i32 noundef %div71129) #8
  %28 = ptrtoint ptr %indata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %indata, align 4
  %add.ptr74 = getelementptr i8, ptr %29, i32 %div71129
  store ptr %add.ptr74, ptr %indata, align 4
  %30 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %datalen, align 4
  %sub76 = sub i32 %31, %div71129
  store i32 %sub76, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div71129)
  %cmp78 = icmp eq i32 %31, %div71129
  br i1 %cmp78, label %if.then79, label %if.then69.if.end80_crit_edge

if.then69.if.end80_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then79:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cryp_disable_irq_src(ptr noundef nonnull %param, i32 noundef 1) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.then69.if.end80_crit_edge
  %algomode = getelementptr inbounds %struct.cryp_config, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %algomode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp81 = icmp eq i32 %33, 7
  br i1 %cmp81, label %if.then82, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !317
  %37 = or i32 %36, 1048576
  %38 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %param, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !318
  tail call void @cryp_wait_until_done(ptr noundef nonnull %param) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end80.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then61, %if.then54.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cryp_dma_setup_channel(ptr noundef %device_data) unnamed_addr #3 align 64 {
entry:
  %mem2cryp = alloca %struct.dma_slave_config, align 4
  %cryp2mem = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mem2cryp) #8
  %0 = getelementptr inbounds i8, ptr %mem2cryp, i32 36
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !319
  %2 = ptrtoint ptr %mem2cryp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mem2cryp, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 1
  %3 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 2
  %phybase = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 1
  %4 = ptrtoint ptr %phybase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phybase, align 4
  %add = add i32 %5, 8
  %6 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 3
  %7 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 4
  %8 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 5
  %9 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %dst_maxburst, align 4
  %src_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 7
  %11 = ptrtoint ptr %src_port_window_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src_port_window_size, align 4
  %dst_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 8
  %12 = ptrtoint ptr %dst_port_window_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dst_port_window_size, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 9
  %13 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %device_fc, align 4
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 10
  %14 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %mem2cryp, i32 0, i32 11
  %15 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %peripheral_size, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cryp2mem) #8
  %16 = getelementptr inbounds i8, ptr %cryp2mem, i32 36
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !319
  %18 = ptrtoint ptr %cryp2mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %cryp2mem, align 4
  %src_addr2 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 1
  %add4 = add i32 %5, 16
  %19 = ptrtoint ptr %src_addr2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add4, ptr %src_addr2, align 4
  %dst_addr5 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dst_addr5, align 4
  %src_addr_width6 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 3
  %21 = ptrtoint ptr %src_addr_width6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %src_addr_width6, align 4
  %dst_addr_width7 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 4
  %22 = ptrtoint ptr %dst_addr_width7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dst_addr_width7, align 4
  %src_maxburst8 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 5
  %23 = ptrtoint ptr %src_maxburst8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %src_maxburst8, align 4
  %dst_maxburst9 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 6
  %peripheral_config13 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 10
  %24 = ptrtoint ptr %peripheral_config13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %peripheral_config13, align 4
  %peripheral_size14 = getelementptr inbounds %struct.dma_slave_config, ptr %cryp2mem, i32 0, i32 11
  %25 = ptrtoint ptr %peripheral_size14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %peripheral_size14, align 4
  %dma = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10
  %26 = call ptr @memset(ptr %dst_maxburst9, i32 0, i32 13)
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %dma) #8
  %28 = load ptr, ptr @mem_to_engine, align 4
  %cfg_mem2cryp = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 5
  %29 = ptrtoint ptr %cfg_mem2cryp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %cfg_mem2cryp, align 4
  %call = tail call ptr @__dma_request_channel(ptr noundef %dma, ptr noundef nonnull @stedma40_filter, ptr noundef %28, ptr noundef null) #8
  %chan_mem2cryp = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %chan_mem2cryp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %chan_mem2cryp, align 4
  %31 = load ptr, ptr @engine_to_mem, align 4
  %cfg_cryp2mem = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 4
  %32 = ptrtoint ptr %cfg_cryp2mem to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cfg_cryp2mem, align 4
  %call28 = tail call ptr @__dma_request_channel(ptr noundef %dma, ptr noundef nonnull @stedma40_filter, ptr noundef %31, ptr noundef null) #8
  %chan_cryp2mem = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 2
  %33 = ptrtoint ptr %chan_cryp2mem to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call28, ptr %chan_cryp2mem, align 4
  %34 = ptrtoint ptr %chan_mem2cryp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan_mem2cryp, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %entry.dmaengine_slave_config.exit_crit_edge, label %if.then.i

entry.dmaengine_slave_config.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %39(ptr noundef %35, ptr noundef nonnull %mem2cryp) #8
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %entry.dmaengine_slave_config.exit_crit_edge
  %40 = ptrtoint ptr %chan_cryp2mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan_cryp2mem, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %device_config.i1 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %device_config.i1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_config.i1, align 4
  %tobool.not.i2 = icmp eq ptr %45, null
  br i1 %tobool.not.i2, label %dmaengine_slave_config.exit.dmaengine_slave_config.exit5_crit_edge, label %if.then.i4

dmaengine_slave_config.exit.dmaengine_slave_config.exit5_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit5

if.then.i4:                                       ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i3 = call i32 %45(ptr noundef %41, ptr noundef nonnull %cryp2mem) #8
  br label %dmaengine_slave_config.exit5

dmaengine_slave_config.exit5:                     ; preds = %if.then.i4, %dmaengine_slave_config.exit.dmaengine_slave_config.exit5_crit_edge
  %cryp_dma_complete = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %cryp_dma_complete to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cryp_dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 10, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cryp2mem) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mem2cryp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_algs_register_all() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_algs_register_all.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_algs_register_all, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cryp_algs_register_all.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.52) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 0, i32 2, i32 11, i32 9)) #11
  br label %cleanup

for.body17.preheader:                             ; preds = %for.inc.5.for.body17.preheader_crit_edge, %for.inc.4.for.body17.preheader_crit_edge, %for.inc.3.for.body17.preheader_crit_edge, %for.inc.2.for.body17.preheader_crit_edge, %for.inc.1.for.body17.preheader_crit_edge, %for.inc.for.body17.preheader_crit_edge
  %exitcond.not.1 = phi i1 [ false, %for.inc.5.for.body17.preheader_crit_edge ], [ false, %for.inc.4.for.body17.preheader_crit_edge ], [ false, %for.inc.3.for.body17.preheader_crit_edge ], [ false, %for.inc.2.for.body17.preheader_crit_edge ], [ true, %for.inc.1.for.body17.preheader_crit_edge ], [ false, %for.inc.for.body17.preheader_crit_edge ]
  %exitcond.not.2 = phi i1 [ false, %for.inc.5.for.body17.preheader_crit_edge ], [ false, %for.inc.4.for.body17.preheader_crit_edge ], [ false, %for.inc.3.for.body17.preheader_crit_edge ], [ true, %for.inc.2.for.body17.preheader_crit_edge ], [ false, %for.inc.1.for.body17.preheader_crit_edge ], [ false, %for.inc.for.body17.preheader_crit_edge ]
  %exitcond.not.3 = phi i1 [ false, %for.inc.5.for.body17.preheader_crit_edge ], [ false, %for.inc.4.for.body17.preheader_crit_edge ], [ true, %for.inc.3.for.body17.preheader_crit_edge ], [ false, %for.inc.2.for.body17.preheader_crit_edge ], [ false, %for.inc.1.for.body17.preheader_crit_edge ], [ false, %for.inc.for.body17.preheader_crit_edge ]
  %exitcond.not.4 = phi i1 [ false, %for.inc.5.for.body17.preheader_crit_edge ], [ true, %for.inc.4.for.body17.preheader_crit_edge ], [ false, %for.inc.3.for.body17.preheader_crit_edge ], [ false, %for.inc.2.for.body17.preheader_crit_edge ], [ false, %for.inc.1.for.body17.preheader_crit_edge ], [ false, %for.inc.for.body17.preheader_crit_edge ]
  %i.036.lcssa.ph = phi i32 [ 6, %for.inc.5.for.body17.preheader_crit_edge ], [ 5, %for.inc.4.for.body17.preheader_crit_edge ], [ 4, %for.inc.3.for.body17.preheader_crit_edge ], [ 3, %for.inc.2.for.body17.preheader_crit_edge ], [ 2, %for.inc.1.for.body17.preheader_crit_edge ], [ 1, %for.inc.for.body17.preheader_crit_edge ]
  %call4.lcssa.ph = phi i32 [ %call4.6, %for.inc.5.for.body17.preheader_crit_edge ], [ %call4.5, %for.inc.4.for.body17.preheader_crit_edge ], [ %call4.4, %for.inc.3.for.body17.preheader_crit_edge ], [ %call4.3, %for.inc.2.for.body17.preheader_crit_edge ], [ %call4.2, %for.inc.1.for.body17.preheader_crit_edge ], [ %call4.1, %for.inc.for.body17.preheader_crit_edge ]
  %cra_driver_name44 = getelementptr [7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 %i.036.lcssa.ph, i32 2, i32 11, i32 9
  %call1345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %cra_driver_name44) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 0, i32 2)) #8
  br i1 %tobool5.not.1, label %for.body17.1, label %for.body17.preheader.cleanup_crit_edge

for.body17.preheader.cleanup_crit_edge:           ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %do.end
  %call4.1 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 1, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.inc.1, label %for.inc.for.body17.preheader_crit_edge

for.inc.for.body17.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 2, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.inc.2, label %for.inc.1.for.body17.preheader_crit_edge

for.inc.1.for.body17.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 3, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.inc.3, label %for.inc.2.for.body17.preheader_crit_edge

for.inc.2.for.body17.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %call4.4 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 4, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %tobool5.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool5.not.4, label %for.inc.4, label %for.inc.3.for.body17.preheader_crit_edge

for.inc.3.for.body17.preheader_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.4:                                        ; preds = %for.inc.3
  %call4.5 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 5, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %tobool5.not.5 = icmp eq i32 %call4.5, 0
  br i1 %tobool5.not.5, label %for.inc.5, label %for.inc.4.for.body17.preheader_crit_edge

for.inc.4.for.body17.preheader_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %call4.6 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 6, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %tobool5.not.6 = icmp eq i32 %call4.6, 0
  br i1 %tobool5.not.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.for.body17.preheader_crit_edge

for.inc.5.for.body17.preheader_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.preheader

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.1:                                     ; preds = %for.body17.preheader
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 1, i32 2)) #8
  br i1 %exitcond.not.1, label %for.body17.1.cleanup_crit_edge, label %for.body17.2

for.body17.1.cleanup_crit_edge:                   ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.2:                                     ; preds = %for.body17.1
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 2, i32 2)) #8
  br i1 %exitcond.not.2, label %for.body17.2.cleanup_crit_edge, label %for.body17.3

for.body17.2.cleanup_crit_edge:                   ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.3:                                     ; preds = %for.body17.2
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 3, i32 2)) #8
  br i1 %exitcond.not.3, label %for.body17.3.cleanup_crit_edge, label %for.body17.4

for.body17.3.cleanup_crit_edge:                   ; preds = %for.body17.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.4:                                     ; preds = %for.body17.3
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 4, i32 2)) #8
  br i1 %exitcond.not.4, label %for.body17.4.cleanup_crit_edge, label %for.body17.5

for.body17.4.cleanup_crit_edge:                   ; preds = %for.body17.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body17.5:                                     ; preds = %for.body17.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 5, i32 2)) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body17.5, %for.body17.4.cleanup_crit_edge, %for.body17.3.cleanup_crit_edge, %for.body17.2.cleanup_crit_edge, %for.body17.1.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.body17.preheader.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %for.inc.5.cleanup_crit_edge ], [ %call4.lcssa.ph, %for.body17.5 ], [ %call4.lcssa.ph, %for.body17.4.cleanup_crit_edge ], [ %call4.lcssa.ph, %for.body17.3.cleanup_crit_edge ], [ %call4.lcssa.ph, %for.body17.2.cleanup_crit_edge ], [ %call4.lcssa.ph, %for.body17.1.cleanup_crit_edge ], [ %call4.lcssa.ph, %for.body17.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_disable_power(ptr noundef %dev, ptr noundef %device_data, i1 noundef zeroext %save_device_context) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_disable_power.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_disable_power, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_disable_power.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.91) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_state_spinlock = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %power_state_spinlock) #8
  %power_state = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 11
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_state, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %do.end.out_crit_edge, label %if.end7

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %do.end
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  br i1 %save_device_context, label %land.lhs.true, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev_ctx = getelementptr inbounds %struct.cryp_ctx, ptr %3, i32 0, i32 10
  %4 = load i32, ptr @cryp_mode, align 4
  tail call void @cryp_save_device_context(ptr noundef %device_data, ptr noundef %dev_ctx, i32 noundef %4) #8
  %restore_dev_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 13
  %5 = ptrtoint ptr %restore_dev_ctx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %restore_dev_ctx, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %clk = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  %pwr_regulator = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 5
  %8 = ptrtoint ptr %pwr_regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwr_regulator, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %do.end19

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end12.if.end20_crit_edge
  %10 = ptrtoint ptr %power_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %power_state, align 4
  br label %out

out:                                              ; preds = %if.end20, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end20 ], [ 0, %do.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %power_state_spinlock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_restore_device_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cryp_pending_irq_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_disable_irq_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_wait_until_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stedma40_filter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_skcipher_setkey(ptr nocapture noundef writeonly %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aes_skcipher_setkey.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aes_skcipher_setkey, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aes_skcipher_setkey.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %do.end13 [
    i32 16, label %do.end.sw.epilog_crit_edge
    i32 24, label %sw.bb5
    i32 32, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %do.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb8 ], [ 1, %sw.bb5 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %__crt_ctx.i.i, align 4
  %key16 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 8
  %2 = call ptr @memcpy(ptr %key16, ptr %key, i32 %keylen)
  %keylen17 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 40
  %3 = ptrtoint ptr %keylen17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %keylen, ptr %keylen17, align 4
  %updated = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %4 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryp_blk_encrypt(ptr noundef %areq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_blk_encrypt.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_blk_encrypt, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cryp_blk_encrypt.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %algodir = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %algodir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %algodir, align 4
  %3 = load i32, ptr @cryp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %algomode = getelementptr i8, ptr %1, i32 132
  %4 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algomode, align 4
  %6 = and i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %.not = icmp eq i32 %6, 4
  br i1 %.not, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call fastcc i32 @ablk_dma_crypt(ptr noundef %areq)
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %call12 = tail call fastcc i32 @ablk_crypt(ptr noundef %areq)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cryp_blk_decrypt(ptr noundef %areq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_blk_decrypt.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_blk_decrypt, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cryp_blk_decrypt.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.88) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %algodir = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %algodir to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %algodir, align 4
  %3 = load i32, ptr @cryp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %algomode = getelementptr i8, ptr %1, i32 132
  %4 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algomode, align 4
  %6 = and i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %.not = icmp eq i32 %6, 4
  br i1 %.not, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call fastcc i32 @ablk_dma_crypt(ptr noundef %areq)
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %call12 = tail call fastcc i32 @ablk_crypt(ptr noundef %areq)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cryp_init_tfm(ptr nocapture noundef %tfm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -256
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 128
  %algomode2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %algomode2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %algomode2, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cra_blocksize.i.i, align 4
  %blocksize = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 64
  %7 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %blocksize, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des_skcipher_setkey(ptr nocapture noundef %cipher, ptr noundef %key, i32 noundef %keylen) #3 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @des_skcipher_setkey.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@des_skcipher_setkey, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @des_skcipher_setkey.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.89) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #8
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.verify_skcipher_des_key.exit_crit_edge

do.end.verify_skcipher_des_key.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #8, !srcloc !320
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool6.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  %key9 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 8
  %4 = call ptr @memcpy(ptr %key9, ptr %key, i32 %keylen)
  %keylen10 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 40
  %5 = ptrtoint ptr %keylen10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keylen, ptr %keylen10, align 4
  %updated = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %6 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des3_skcipher_setkey(ptr nocapture noundef %cipher, ptr nocapture noundef readonly %key, i32 noundef %keylen) #3 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @des3_skcipher_setkey.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@des3_skcipher_setkey, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @des3_skcipher_setkey.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.90) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #8
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
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end8_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end8_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true.i.i.i:                              ; preds = %do.end
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end8_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end8_crit_edge:            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !320
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.i.i.i.if.end8_crit_edge, %lor.lhs.false.i.i.i.if.end8_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !320
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  %key9 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 8
  %26 = call ptr @memcpy(ptr %key9, ptr %key, i32 %keylen)
  %keylen10 = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 40
  %27 = ptrtoint ptr %keylen10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %keylen, ptr %keylen10, align 4
  %updated = getelementptr inbounds %struct.crypto_skcipher, ptr %cipher, i32 1, i32 1, i32 68
  %28 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i21 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end8 ]
  ret i32 %ret.0.i.i.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ablk_dma_crypt(ptr nocapture noundef readonly %areq) unnamed_addr #3 align 64 {
entry:
  %device_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data) #8
  %2 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_data, align 4, !annotation !319
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ablk_dma_crypt.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ablk_dma_crypt, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ablk_dma_crypt.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.58) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %areq, align 128
  %datalen = getelementptr i8, ptr %1, i32 188
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %datalen, align 4
  %6 = load i32, ptr %areq, align 128
  %outlen = getelementptr i8, ptr %1, i32 192
  %7 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %outlen, align 4
  %call7 = call fastcc i32 @cryp_get_device_data(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  %call11 = tail call fastcc i32 @cryp_setup_context(ptr noundef %__crt_ctx.i.i, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.end10
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i = icmp sgt i32 %11, 0
  br i1 %cmp4.i, label %while.body.i.preheader, label %if.end14.get_nents.exit_crit_edge

if.end14.get_nents.exit_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_nents.exit

while.body.i.preheader:                           ; preds = %if.end14
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %nents.07.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %nbytes.addr.06.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %11, %while.body.i.preheader ]
  %sg.addr.05.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %13, %while.body.i.preheader ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.05.i, i32 0, i32 2
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %nbytes.addr.06.i, %15
  %call.i = tail call ptr @sg_next(ptr noundef %sg.addr.05.i) #8
  %inc.i = add i32 %nents.07.i, 1
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.get_nents.exit_crit_edge

while.body.i.get_nents.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_nents.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

get_nents.exit:                                   ; preds = %while.body.i.get_nents.exit_crit_edge, %if.end14.get_nents.exit_crit_edge
  %nents.0.lcssa.i = phi i32 [ 0, %if.end14.get_nents.exit_crit_edge ], [ %inc.i, %while.body.i.get_nents.exit_crit_edge ]
  %device = getelementptr i8, ptr %1, i32 272
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %nents_src = getelementptr inbounds %struct.cryp_device_data, ptr %17, i32 0, i32 10, i32 10
  %18 = ptrtoint ptr %nents_src to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nents.0.lcssa.i, ptr %nents_src, align 4
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %19 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i67 = icmp sgt i32 %20, 0
  br i1 %cmp4.i67, label %while.body.i76.preheader, label %get_nents.exit.get_nents.exit78_crit_edge

get_nents.exit.get_nents.exit78_crit_edge:        ; preds = %get_nents.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_nents.exit78

while.body.i76.preheader:                         ; preds = %get_nents.exit
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  br label %while.body.i76

while.body.i76:                                   ; preds = %while.body.i76.while.body.i76_crit_edge, %while.body.i76.preheader
  %nents.07.i68 = phi i32 [ %inc.i74, %while.body.i76.while.body.i76_crit_edge ], [ 0, %while.body.i76.preheader ]
  %nbytes.addr.06.i69 = phi i32 [ %sub.i72, %while.body.i76.while.body.i76_crit_edge ], [ %20, %while.body.i76.preheader ]
  %sg.addr.05.i70 = phi ptr [ %call.i73, %while.body.i76.while.body.i76_crit_edge ], [ %22, %while.body.i76.preheader ]
  %length.i71 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.05.i70, i32 0, i32 2
  %23 = ptrtoint ptr %length.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i71, align 4
  %sub.i72 = sub i32 %nbytes.addr.06.i69, %24
  %call.i73 = tail call ptr @sg_next(ptr noundef %sg.addr.05.i70) #8
  %inc.i74 = add i32 %nents.07.i68, 1
  %cmp.i75 = icmp sgt i32 %sub.i72, 0
  br i1 %cmp.i75, label %while.body.i76.while.body.i76_crit_edge, label %while.body.i76.get_nents.exit78_crit_edge

while.body.i76.get_nents.exit78_crit_edge:        ; preds = %while.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_nents.exit78

while.body.i76.while.body.i76_crit_edge:          ; preds = %while.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i76

get_nents.exit78:                                 ; preds = %while.body.i76.get_nents.exit78_crit_edge, %get_nents.exit.get_nents.exit78_crit_edge
  %nents.0.lcssa.i77 = phi i32 [ 0, %get_nents.exit.get_nents.exit78_crit_edge ], [ %inc.i74, %while.body.i76.get_nents.exit78_crit_edge ]
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %nents_dst = getelementptr inbounds %struct.cryp_device_data, ptr %26, i32 0, i32 10, i32 11
  %27 = ptrtoint ptr %nents_dst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nents.0.lcssa.i77, ptr %nents_dst, align 4
  tail call void @cryp_configure_for_dma(ptr noundef %9, i32 noundef 3) #8
  %28 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src, align 8
  %30 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %datalen, align 4
  %call.i79 = tail call fastcc i32 @cryp_set_dma_transfer(ptr noundef %__crt_ctx.i.i, ptr noundef %29, i32 noundef 1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_dma_write.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ablk_dma_crypt, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !313

if.then.i:                                        ; preds = %get_nents.exit78
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %dev.i = getelementptr inbounds %struct.cryp_device_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_dma_write.__UNIQUE_ID_ddebug308, ptr noundef %35, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %get_nents.exit78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool5.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool5.not.i, label %do.end.i.cryp_dma_write.exit_crit_edge, label %do.body7.i

do.end.i.cryp_dma_write.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cryp_dma_write.exit

do.body7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_dma_write.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ablk_dma_crypt, %cryp_dma_write.exit)) #8
          to label %if.then21.i [label %cryp_dma_write.exit], !srcloc !313

if.then21.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %dev23.i = getelementptr inbounds %struct.cryp_device_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_dma_write.__UNIQUE_ID_ddebug309, ptr noundef %39, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69) #8
  br label %cryp_dma_write.exit

cryp_dma_write.exit:                              ; preds = %if.then21.i, %do.body7.i, %do.end.i.cryp_dma_write.exit_crit_edge
  %retval.0.i80 = phi i32 [ %call.i79, %if.then21.i ], [ %31, %do.end.i.cryp_dma_write.exit_crit_edge ], [ %call.i79, %do.body7.i ]
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %call.i81 = tail call fastcc i32 @cryp_set_dma_transfer(ptr noundef %__crt_ctx.i.i, ptr noundef %41, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %cryp_dma_write.exit.cryp_dma_read.exit_crit_edge, label %do.body.i

cryp_dma_write.exit.cryp_dma_read.exit_crit_edge: ; preds = %cryp_dma_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cryp_dma_read.exit

do.body.i:                                        ; preds = %cryp_dma_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_dma_read.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ablk_dma_crypt, %cryp_dma_read.exit)) #8
          to label %if.then6.i [label %cryp_dma_read.exit], !srcloc !313

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev.i83 = getelementptr inbounds %struct.cryp_device_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_dma_read.__UNIQUE_ID_ddebug310, ptr noundef %45, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.81) #8
  br label %cryp_dma_read.exit

cryp_dma_read.exit:                               ; preds = %if.then6.i, %do.body.i, %cryp_dma_write.exit.cryp_dma_read.exit_crit_edge
  %retval.0.i84 = phi i32 [ %call.i81, %if.then6.i ], [ %retval.0.i80, %cryp_dma_write.exit.cryp_dma_read.exit_crit_edge ], [ %call.i81, %do.body.i ]
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %cryp_dma_complete = getelementptr inbounds %struct.cryp_device_data, ptr %47, i32 0, i32 10, i32 1
  tail call void @wait_for_completion(ptr noundef %cryp_dma_complete) #8
  tail call fastcc void @cryp_dma_done(ptr noundef %__crt_ctx.i.i)
  %dev_ctx = getelementptr i8, ptr %1, i32 204
  %48 = load i32, ptr @cryp_mode, align 4
  tail call void @cryp_save_device_context(ptr noundef %9, ptr noundef %dev_ctx, i32 noundef %48) #8
  %updated = getelementptr i8, ptr %1, i32 200
  %49 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %updated, align 4
  br label %out

out:                                              ; preds = %cryp_dma_read.exit, %if.end10.out_crit_edge
  %bytes_written.0 = phi i32 [ 0, %if.end10.out_crit_edge ], [ %retval.0.i80, %cryp_dma_read.exit ]
  %bytes_read.0 = phi i32 [ 0, %if.end10.out_crit_edge ], [ %retval.0.i84, %cryp_dma_read.exit ]
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %9, i32 0, i32 8
  %50 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %current_ctx, align 4
  %device28 = getelementptr i8, ptr %1, i32 272
  %51 = ptrtoint ptr %device28 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %device28, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  tail call void @up(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_written.0, i32 %bytes_read.0)
  %cmp.not = icmp ne i32 %bytes_written.0, %bytes_read.0
  %. = sext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end.cleanup_crit_edge ], [ %., %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ablk_crypt(ptr noundef %areq) unnamed_addr #3 align 64 {
entry:
  %walk = alloca %struct.skcipher_walk, align 4
  %device_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #8
  %0 = call ptr @memset(ptr %walk, i32 255, i32 84)
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data) #8
  %3 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_data, align 4, !annotation !319
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ablk_crypt.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ablk_crypt, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ablk_crypt.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.83) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call fastcc i32 @cryp_get_device_data(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %do.end
  %call10 = call i32 @skcipher_walk_async(ptr noundef nonnull %walk, ptr noundef %areq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %while.cond.preheader, label %do.end15

while.cond.preheader:                             ; preds = %if.end9
  %iv = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 10
  %nbytes19 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %iv20 = getelementptr i8, ptr %2, i32 176
  %offset = getelementptr inbounds %struct.anon.90, ptr %walk, i32 0, i32 1
  %indata = getelementptr i8, ptr %2, i32 180
  %dst = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1
  %offset32 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %outdata = getelementptr i8, ptr %2, i32 184
  %blocksize = getelementptr i8, ptr %2, i32 196
  %datalen = getelementptr i8, ptr %2, i32 188
  br label %while.cond

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83) #11
  br label %out

while.cond:                                       ; preds = %if.end38.while.cond_crit_edge, %while.cond.preheader
  %4 = ptrtoint ptr %nbytes19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.cond.out_crit_edge

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 4
  %8 = ptrtoint ptr %iv20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %iv20, align 4
  %9 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %walk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %12
  %shl = shl i32 %add, 12
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add22 = add i32 %shl, %14
  %15 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %add22, i32 -2130706432, i32 8454144) #12, !srcloc !321
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %indata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %indata, align 4
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast25 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast26 = ptrtoint ptr %20 to i32
  %sub.ptr.sub27 = sub i32 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %sub.ptr.div28 = sdiv exact i32 %sub.ptr.sub27, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add29 = add i32 %sub.ptr.div28, %21
  %shl30 = shl i32 %add29, 12
  %22 = ptrtoint ptr %offset32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset32, align 4
  %add33 = add i32 %shl30, %23
  %24 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %add33, i32 -2130706432, i32 8454144) #12, !srcloc !321
  %25 = inttoptr i32 %24 to ptr
  %26 = ptrtoint ptr %outdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %outdata, align 4
  %27 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocksize, align 4
  %rem = urem i32 %5, %28
  %sub = sub nsw i32 %5, %rem
  %29 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %datalen, align 4
  %30 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_data, align 4
  %call35 = call fastcc i32 @hw_crypt_noxts(ptr noundef %__crt_ctx.i.i, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %while.body
  %32 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %datalen, align 4
  %sub40 = sub i32 %5, %33
  %call41 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub40) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end38.while.cond_crit_edge, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38.while.cond_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

out:                                              ; preds = %if.end38.out_crit_edge, %while.body.out_crit_edge, %while.cond.out_crit_edge, %do.end15, %do.end.out_crit_edge
  %ret.1 = phi i32 [ %call6, %do.end.out_crit_edge ], [ %call10, %do.end15 ], [ 0, %while.cond.out_crit_edge ], [ %call41, %if.end38.out_crit_edge ], [ %call35, %while.body.out_crit_edge ]
  %34 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_data, align 4
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %35, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %current_ctx, align 4
  %device = getelementptr i8, ptr %2, i32 272
  %37 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %device, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  call void @up(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_get_device_data(ptr noundef %ctx, ptr nocapture noundef writeonly %device_data) unnamed_addr #3 align 64 {
entry:
  %device_iterator = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_iterator) #8
  %0 = ptrtoint ptr %device_iterator to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_iterator, align 4, !annotation !319
  %1 = getelementptr inbounds %struct.klist_iter, ptr %device_iterator, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !319
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_get_device_data.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_get_device_data, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cryp_get_device_data.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.59) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @down_interruptible(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @klist_iter_init(ptr noundef nonnull @driver_data, ptr noundef nonnull %device_iterator) #8
  %call8 = call ptr @klist_next(ptr noundef nonnull %device_iterator) #8
  %tobool9.not37 = icmp eq ptr %call8, null
  br i1 %tobool9.not37, label %if.end7.while.end.thread_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end.thread_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.then12.while.end.thread_crit_edge, %if.end7.while.end.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %device_iterator) #8
  br label %cleanup

while.body:                                       ; preds = %if.then12.while.body_crit_edge, %if.end7.while.body_crit_edge
  %device_node.038 = phi ptr [ %call13, %if.then12.while.body_crit_edge ], [ %call8, %if.end7.while.body_crit_edge ]
  %ctx_lock = getelementptr i8, ptr %device_node.038, i32 -48
  call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr i8, ptr %device_node.038, i32 -4
  %3 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_ctx, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %while.body
  %call13 = call ptr @klist_next(ptr noundef nonnull %device_iterator) #8
  call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %tobool9.not = icmp eq ptr %call13, null
  br i1 %tobool9.not, label %if.then12.while.end.thread_crit_edge, label %if.then12.while.body_crit_edge

if.then12.while.body_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then12.while.end.thread_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

if.end20:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %current_ctx.le = getelementptr i8, ptr %device_node.038, i32 -4
  %add.ptr = getelementptr i8, ptr %device_node.038, i32 -76
  %5 = ptrtoint ptr %current_ctx.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %current_ctx.le, align 4
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %device, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  call void @klist_iter_exit(ptr noundef nonnull %device_iterator) #8
  %7 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %device_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %while.end.thread, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call4, %do.end.cleanup_crit_edge ], [ -16, %while.end.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_iterator) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_setup_context(ptr noundef %ctx, ptr noundef %device_data) unnamed_addr #3 align 64 {
entry:
  %control_register = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_register) #8
  %0 = ptrtoint ptr %control_register to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1154, ptr %control_register, align 4
  %1 = load i32, ptr @cryp_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_data, align 4
  %imsc = getelementptr inbounds %struct.cryp_register, ptr %4, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imsc, i32 0) #8, !srcloc !318
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_data, align 4
  %dmacr = getelementptr inbounds %struct.cryp_register, ptr %6, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr, i32 0) #8, !srcloc !318
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %updated = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 9
  %7 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %updated, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %8, label %sw.epilog.if.else38_crit_edge [
    i8 0, label %if.then
    i8 1, label %land.lhs.true32
  ]

sw.epilog.if.else38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else38

if.then:                                          ; preds = %sw.epilog
  tail call void @cryp_flush_inoutfifo(ptr noundef %device_data) #8
  %call = tail call fastcc i32 @cfg_keys(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %iv = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 3
  %14 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %algomode = getelementptr inbounds %struct.cryp_config, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %algomode, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %17, label %if.then19 [
    i32 4, label %land.lhs.true.if.end25_crit_edge
    i32 2, label %land.lhs.true.if.end25_crit_edge78
    i32 0, label %land.lhs.true.if.end25_crit_edge79
  ]

land.lhs.true.if.end25_crit_edge79:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true.if.end25_crit_edge78:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %land.lhs.true
  %call20 = tail call fastcc i32 @cfg_ivs(ptr noundef %device_data, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.then19.if.end25_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge78, %land.lhs.true.if.end25_crit_edge79, %if.end.if.end25_crit_edge
  %call27 = call i32 @cryp_set_configuration(ptr noundef %device_data, ptr noundef %ctx, ptr noundef nonnull %control_register) #8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !322
  call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #8, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end25.add_session_id.exit_crit_edge, !prof !325

if.end25.add_session_id.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_session_id.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #8, !srcloc !326
  br label %add_session_id.exit

add_session_id.exit:                              ; preds = %if.then.i, %if.end25.add_session_id.exit_crit_edge
  %call.i.i4.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @session_id, i32 noundef 4) #8
  %21 = load volatile i32, ptr @session_id, align 4
  %session_id.i = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 12
  %22 = ptrtoint ptr %session_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %session_id.i, align 4
  br label %do.body43

land.lhs.true32:                                  ; preds = %sw.epilog
  %session_id = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 12
  %23 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %session_id, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @session_id, i32 noundef 4) #8
  %25 = load volatile i32, ptr @session_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp34.not = icmp eq i32 %24, %25
  br i1 %cmp34.not, label %land.lhs.true32.if.else38_crit_edge, label %if.then36

land.lhs.true32.if.else38_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else38

if.then36:                                        ; preds = %land.lhs.true32
  tail call void @cryp_flush_inoutfifo(ptr noundef %device_data) #8
  %dev_ctx = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 10
  tail call void @cryp_restore_device_context(ptr noundef %device_data, ptr noundef %dev_ctx) #8
  %call.i.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #8, !srcloc !323
  %asmresult.i.i.i.i.i.i71 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i71)
  %cmp.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i71, 0
  br i1 %cmp.i.i.i72, label %if.then.i74, label %if.then36.add_session_id.exit77_crit_edge, !prof !325

if.then36.add_session_id.exit77_crit_edge:        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_session_id.exit77

if.then.i74:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i3.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @session_id, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @session_id, ptr nonnull @session_id, i32 1, ptr nonnull elementtype(i32) @session_id) #8, !srcloc !326
  br label %add_session_id.exit77

add_session_id.exit77:                            ; preds = %if.then.i74, %if.then36.add_session_id.exit77_crit_edge
  %call.i.i4.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @session_id, i32 noundef 4) #8
  %28 = load volatile i32, ptr @session_id, align 4
  %29 = ptrtoint ptr %session_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %session_id, align 4
  %30 = ptrtoint ptr %dev_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_ctx, align 4
  %32 = ptrtoint ptr %control_register to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %control_register, align 4
  br label %do.body43

if.else38:                                        ; preds = %land.lhs.true32.if.else38_crit_edge, %sw.epilog.if.else38_crit_edge
  %dev_ctx39 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 10
  %33 = ptrtoint ptr %dev_ctx39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_ctx39, align 4
  %35 = ptrtoint ptr %control_register to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %control_register, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.else38, %add_session_id.exit77, %add_session_id.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %control_register, align 4
  %or = or i32 %37, 32768
  %38 = call i32 @llvm.bswap.i32(i32 %or)
  %39 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_data, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #8, !srcloc !318
  br label %cleanup

cleanup:                                          ; preds = %do.body43, %if.then19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body43 ], [ -1, %if.then19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_register) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_configure_for_dma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cryp_dma_done(ptr nocapture noundef readonly %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_dma_done.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_dma_done, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_dma_done.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.82) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device4 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device4, align 4
  %chan_mem2cryp = getelementptr inbounds %struct.cryp_device_data, ptr %5, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %chan_mem2cryp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_mem2cryp, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

do.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef %7) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %do.end.dmaengine_terminate_all.exit_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %dev7 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %16 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device4, align 4
  %sg_src = getelementptr inbounds %struct.cryp_device_data, ptr %17, i32 0, i32 10, i32 8
  %18 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_src, align 4
  %nents_src = getelementptr inbounds %struct.cryp_device_data, ptr %17, i32 0, i32 10, i32 10
  %20 = ptrtoint ptr %nents_src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nents_src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #8
  %22 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device4, align 4
  %chan_cryp2mem = getelementptr inbounds %struct.cryp_device_data, ptr %23, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %chan_cryp2mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan_cryp2mem, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %device_terminate_all.i30 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %device_terminate_all.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_terminate_all.i30, align 4
  %tobool.not.i31 = icmp eq ptr %29, null
  br i1 %tobool.not.i31, label %dmaengine_terminate_all.exit.dmaengine_terminate_all.exit34_crit_edge, label %if.then.i33

dmaengine_terminate_all.exit.dmaengine_terminate_all.exit34_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit34

if.then.i33:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i32 = tail call i32 %29(ptr noundef %25) #8
  br label %dmaengine_terminate_all.exit34

dmaengine_terminate_all.exit34:                   ; preds = %if.then.i33, %dmaengine_terminate_all.exit.dmaengine_terminate_all.exit34_crit_edge
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %dev16 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev16, align 4
  %34 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device4, align 4
  %sg_dst = getelementptr inbounds %struct.cryp_device_data, ptr %35, i32 0, i32 10, i32 9
  %36 = ptrtoint ptr %sg_dst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_dst, align 4
  %nents_dst = getelementptr inbounds %struct.cryp_device_data, ptr %35, i32 0, i32 10, i32 11
  %38 = ptrtoint ptr %nents_dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents_dst, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %33, ptr noundef %37, i32 noundef %39, i32 noundef 2, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_save_device_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_flush_inoutfifo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg_keys(ptr nocapture noundef readonly %ctx) unnamed_addr #3 align 64 {
entry:
  %swapped_key = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keylen = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %keylen, align 4
  %div54 = lshr i32 %1, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %swapped_key) #8
  %key = getelementptr %struct.cryp_ctx, ptr %ctx, i32 0, i32 1
  %2 = call ptr @memset(ptr %swapped_key, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfg_keys.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfg_keys, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cfg_keys.__UNIQUE_ID_ddebug297, ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %algomode = getelementptr inbounds %struct.cryp_config, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %algomode, align 4
  %9 = and i32 %8, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %.not = icmp eq i32 %9, 4
  %10 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %keylen, align 4
  br i1 %.not, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp58.not = icmp ult i32 %11, 4
  br i1 %cmp58.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.preheader

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %div1055 = and i32 %11, -4
  %12 = call ptr @memcpy(ptr %swapped_key, ptr %key, i32 %div1055)
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %j.015.i = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.015.i)
  %cmp16.i = icmp sgt i32 %j.015.i, -1
  br i1 %cmp16.i, label %if.then6.for.cond.preheader.i_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6.for.cond.preheader.i_crit_edge:          ; preds = %if.then6
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.cond.preheader.i.for.cond.preheader.i_crit_edge, %if.then6.for.cond.preheader.i_crit_edge
  %j.017.i = phi i32 [ %j.0.i, %for.cond.preheader.i.for.cond.preheader.i_crit_edge ], [ %j.015.i, %if.then6.for.cond.preheader.i_crit_edge ]
  %sub3.i = sub nuw i32 %j.015.i, %j.017.i
  %arrayidx.i = getelementptr i8, ptr %key, i32 %sub3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %rev45.i.i = tail call i8 @llvm.bitreverse.i8(i8 %14) #8
  %arrayidx5.i = getelementptr i8, ptr %swapped_key, i32 %j.017.i
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %rev45.i.i, ptr %arrayidx5.i, align 1
  %add.1.i = add nuw nsw i32 %sub3.i, 1
  %arrayidx.1.i = getelementptr i8, ptr %key, i32 %add.1.i
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1.i, align 1
  %rev45.i.1.i = tail call i8 @llvm.bitreverse.i8(i8 %17) #8
  %add4.1.i = add nuw i32 %j.017.i, 1
  %arrayidx5.1.i = getelementptr i8, ptr %swapped_key, i32 %add4.1.i
  %18 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %rev45.i.1.i, ptr %arrayidx5.1.i, align 1
  %add.2.i = add nuw nsw i32 %sub3.i, 2
  %arrayidx.2.i = getelementptr i8, ptr %key, i32 %add.2.i
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2.i, align 1
  %rev45.i.2.i = tail call i8 @llvm.bitreverse.i8(i8 %20) #8
  %add4.2.i = add nuw i32 %j.017.i, 2
  %arrayidx5.2.i = getelementptr i8, ptr %swapped_key, i32 %add4.2.i
  %21 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %rev45.i.2.i, ptr %arrayidx5.2.i, align 1
  %add.3.i = add nuw nsw i32 %sub3.i, 3
  %arrayidx.3.i = getelementptr i8, ptr %key, i32 %add.3.i
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i, align 1
  %rev45.i.3.i = tail call i8 @llvm.bitreverse.i8(i8 %23) #8
  %add4.3.i = add nuw i32 %j.017.i, 3
  %arrayidx5.3.i = getelementptr i8, ptr %swapped_key, i32 %add4.3.i
  %24 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %rev45.i.3.i, ptr %arrayidx5.3.i, align 1
  %j.0.i = add nsw i32 %j.017.i, -4
  %cmp.i = icmp ugt i32 %j.017.i, 3
  br i1 %cmp.i, label %for.cond.preheader.i.for.cond.preheader.i_crit_edge, label %for.cond.preheader.i.if.end12_crit_edge

for.cond.preheader.i.if.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

if.end12:                                         ; preds = %for.cond.preheader.i.if.end12_crit_edge, %if.then6.if.end12_crit_edge, %for.body.preheader, %for.cond.preheader.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp1460.not = icmp ult i32 %1, 8
  br i1 %cmp1460.not, label %if.end12.cleanup_crit_edge, label %for.body15.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15.lr.ph:                                 ; preds = %if.end12
  %device16 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %umax65 = call i32 @llvm.umax.i32(i32 %div54, i32 1)
  br label %for.body15

for.cond13:                                       ; preds = %do.end.i
  %inc30 = add nuw nsw i32 %i.161, 1
  %exitcond.not = icmp eq i32 %inc30, %umax65
  br i1 %exitcond.not, label %for.cond13.cleanup_crit_edge, label %for.cond13.for.body15_crit_edge

for.cond13.for.body15_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.cond13.cleanup_crit_edge:                     ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15:                                       ; preds = %for.cond13.for.body15_crit_edge, %for.body15.lr.ph
  %i.161 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc30, %for.cond13.for.body15_crit_edge ]
  %25 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device16, align 4
  %mul = shl nuw i32 %i.161, 1
  %arrayidx17 = getelementptr [8 x i32], ptr %swapped_key, i32 0, i32 %mul
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17, align 4
  %add = or i32 %mul, 1
  %arrayidx19 = getelementptr [8 x i32], ptr %swapped_key, i32 0, i32 %add
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_key.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfg_keys, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !313

if.then.i:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.cryp_device_data, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_key.__UNIQUE_ID_ddebug296, ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.64) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body15
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %28, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %30, 1
  %call4.i = tail call i32 @cryp_configure_key_values(ptr noundef %26, i32 noundef %i.161, [2 x i32] %.fca.1.insert.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %for.cond13, label %do.end25

do.end25:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i = getelementptr inbounds %struct.cryp_device_data, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64) #11
  %35 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device16, align 4
  %dev27 = getelementptr inbounds %struct.cryp_device_data, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %for.cond13.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %do.end25 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %for.cond13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %swapped_key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg_ivs(ptr noundef %device_data, ptr nocapture noundef readonly %ctx) unnamed_addr #3 align 64 {
entry:
  %iv1 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blocksize = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blocksize, align 4
  %div49 = lshr i32 %1, 3
  %iv = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv1) #8
  %4 = call ptr @memset(ptr %iv1, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfg_ivs.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfg_ivs, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cfg_ivs.__UNIQUE_ID_ddebug295, ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.66) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %1)
  %cmp = icmp ugt i32 %1, 23
  br i1 %cmp, label %do.end8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %7 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp1452.not = icmp ult i32 %8, 4
  br i1 %cmp1452.not, label %for.cond.preheader.for.cond16.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond16.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %div1350 = and i32 %8, -4
  %9 = call ptr @memcpy(ptr %iv1, ptr %3, i32 %div1350)
  br label %for.cond16.preheader

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 2
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %12 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocksize, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %13) #11
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.body.preheader, %for.cond.preheader.for.cond16.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp1754.not = icmp ult i32 %1, 8
  br i1 %cmp1754.not, label %for.cond16.preheader.cleanup_crit_edge, label %for.body18.lr.ph

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %dev.i = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 2
  %umax57 = call i32 @llvm.umax.i32(i32 %div49, i32 1)
  br label %for.body18

for.cond16:                                       ; preds = %cfg_iv.exit
  %inc27 = add nuw nsw i32 %i.155, 1
  %exitcond.not = icmp eq i32 %inc27, %umax57
  br i1 %exitcond.not, label %for.cond16.cleanup_crit_edge, label %for.cond16.for.body18_crit_edge

for.cond16.for.body18_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.cond16.cleanup_crit_edge:                     ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body18:                                       ; preds = %for.cond16.for.body18_crit_edge, %for.body18.lr.ph
  %i.155 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc27, %for.cond16.for.body18_crit_edge ]
  %mul = shl nuw i32 %i.155, 1
  %arrayidx19 = getelementptr [4 x i32], ptr %iv1, i32 0, i32 %mul
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %add = or i32 %mul, 1
  %arrayidx21 = getelementptr [4 x i32], ptr %iv1, i32 0, i32 %add
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfg_iv.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfg_ivs, %cfg_iv.exit)) #8
          to label %if.then.i [label %cfg_iv.exit], !srcloc !313

if.then.i:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cfg_iv.__UNIQUE_ID_ddebug294, ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.68) #8
  br label %cfg_iv.exit

cfg_iv.exit:                                      ; preds = %if.then.i, %for.body18
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %15, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %17, 1
  %call4.i = tail call i32 @cryp_configure_init_vector(ptr noundef %device_data, i32 noundef %i.155, [2 x i32] %.fca.1.insert.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp23.not = icmp eq i32 %call4.i, 0
  br i1 %cmp23.not, label %for.cond16, label %cfg_iv.exit.cleanup_crit_edge

cfg_iv.exit.cleanup_crit_edge:                    ; preds = %cfg_iv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cfg_iv.exit.cleanup_crit_edge, %for.cond16.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %for.cond16.preheader.cleanup_crit_edge ], [ %call4.i, %cfg_iv.exit.cleanup_crit_edge ], [ 0, %for.cond16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv1) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cryp_set_configuration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cryp_configure_key_values(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cryp_configure_init_vector(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cryp_set_dma_transfer(ptr noundef %ctx, ptr noundef %sg, i32 noundef %direction) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.72) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %sg to i32
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end18, label %do.end15, !prof !328

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %device16 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %5 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device16, align 4
  %dev17 = getelementptr inbounds %struct.cryp_device_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %4) #11
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %9 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %direction, label %do.body153 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb85
  ]

sw.bb:                                            ; preds = %if.end18
  %device19 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %10 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device19, align 4
  %chan_mem2cryp = getelementptr inbounds %struct.cryp_device_data, ptr %11, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %chan_mem2cryp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan_mem2cryp, align 4
  %sg_src = getelementptr inbounds %struct.cryp_device_data, ptr %11, i32 0, i32 10, i32 8
  %14 = ptrtoint ptr %sg_src to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sg, ptr %sg_src, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  %dev23 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev23, align 4
  %19 = load ptr, ptr %device19, align 4
  %sg_src26 = getelementptr inbounds %struct.cryp_device_data, ptr %19, i32 0, i32 10, i32 8
  %20 = ptrtoint ptr %sg_src26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg_src26, align 4
  %nents_src = getelementptr inbounds %struct.cryp_device_data, ptr %19, i32 0, i32 10, i32 10
  %22 = ptrtoint ptr %nents_src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents_src, align 4
  %call29 = tail call i32 @dma_map_sg_attrs(ptr noundef %18, ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #8
  %24 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device19, align 4
  %sg_src_len = getelementptr inbounds %struct.cryp_device_data, ptr %25, i32 0, i32 10, i32 6
  %26 = ptrtoint ptr %sg_src_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call29, ptr %sg_src_len, align 4
  %27 = load ptr, ptr %device19, align 4
  %sg_src_len34 = getelementptr inbounds %struct.cryp_device_data, ptr %27, i32 0, i32 10, i32 6
  %28 = ptrtoint ptr %sg_src_len34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_src_len34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool35.not = icmp eq i32 %29, 0
  br i1 %tobool35.not, label %do.body37, label %do.body58

do.body37:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %cleanup)) #8
          to label %if.then51 [label %cleanup], !srcloc !313

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device19, align 4
  %dev53 = getelementptr inbounds %struct.cryp_device_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug301, ptr noundef %33, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #8
  br label %cleanup

do.body58:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %do.end77)) #8
          to label %if.then72 [label %do.end77], !srcloc !313

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device19, align 4
  %dev74 = getelementptr inbounds %struct.cryp_device_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug302, ptr noundef %37, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then72, %do.body58
  %38 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device19, align 4
  %sg_src80 = getelementptr inbounds %struct.cryp_device_data, ptr %39, i32 0, i32 10, i32 8
  %40 = ptrtoint ptr %sg_src80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg_src80, align 4
  %sg_src_len83 = getelementptr inbounds %struct.cryp_device_data, ptr %39, i32 0, i32 10, i32 6
  %42 = ptrtoint ptr %sg_src_len83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_src_len83, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end77.sw.epilog_crit_edge, label %lor.lhs.false.i

do.end77.sw.epilog_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %do.end77
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %13, align 4
  %tobool1.not.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %46 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false2.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr %47(ptr noundef nonnull %13, ptr noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 2, ptr noundef null) #8
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end18
  %device86 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %48 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device86, align 4
  %chan_cryp2mem = getelementptr inbounds %struct.cryp_device_data, ptr %49, i32 0, i32 10, i32 2
  %50 = ptrtoint ptr %chan_cryp2mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chan_cryp2mem, align 4
  %sg_dst = getelementptr inbounds %struct.cryp_device_data, ptr %49, i32 0, i32 10, i32 9
  %52 = ptrtoint ptr %sg_dst to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %sg, ptr %sg_dst, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 4
  %dev91 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev91, align 4
  %57 = load ptr, ptr %device86, align 4
  %sg_dst94 = getelementptr inbounds %struct.cryp_device_data, ptr %57, i32 0, i32 10, i32 9
  %58 = ptrtoint ptr %sg_dst94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sg_dst94, align 4
  %nents_dst = getelementptr inbounds %struct.cryp_device_data, ptr %57, i32 0, i32 10, i32 11
  %60 = ptrtoint ptr %nents_dst to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nents_dst, align 4
  %call97 = tail call i32 @dma_map_sg_attrs(ptr noundef %56, ptr noundef %59, i32 noundef %61, i32 noundef 2, i32 noundef 0) #8
  %62 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device86, align 4
  %sg_dst_len = getelementptr inbounds %struct.cryp_device_data, ptr %63, i32 0, i32 10, i32 7
  %64 = ptrtoint ptr %sg_dst_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call97, ptr %sg_dst_len, align 4
  %65 = load ptr, ptr %device86, align 4
  %sg_dst_len102 = getelementptr inbounds %struct.cryp_device_data, ptr %65, i32 0, i32 10, i32 7
  %66 = ptrtoint ptr %sg_dst_len102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sg_dst_len102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool103.not = icmp eq i32 %67, 0
  br i1 %tobool103.not, label %do.body105, label %do.body126

do.body105:                                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %cleanup)) #8
          to label %if.then119 [label %cleanup], !srcloc !313

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device86, align 4
  %dev121 = getelementptr inbounds %struct.cryp_device_data, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug303, ptr noundef %71, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.72) #8
  br label %cleanup

do.body126:                                       ; preds = %sw.bb85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %do.end145)) #8
          to label %if.then140 [label %do.end145], !srcloc !313

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device86, align 4
  %dev142 = getelementptr inbounds %struct.cryp_device_data, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev142, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug304, ptr noundef %75, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72) #8
  br label %do.end145

do.end145:                                        ; preds = %if.then140, %do.body126
  %76 = ptrtoint ptr %device86 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device86, align 4
  %sg_dst148 = getelementptr inbounds %struct.cryp_device_data, ptr %77, i32 0, i32 10, i32 9
  %78 = ptrtoint ptr %sg_dst148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sg_dst148, align 4
  %sg_dst_len151 = getelementptr inbounds %struct.cryp_device_data, ptr %77, i32 0, i32 10, i32 7
  %80 = ptrtoint ptr %sg_dst_len151 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sg_dst_len151, align 4
  %tobool.not.i20 = icmp eq ptr %51, null
  br i1 %tobool.not.i20, label %do.end145.dmaengine_prep_slave_sg.exit29_crit_edge, label %lor.lhs.false.i22

do.end145.dmaengine_prep_slave_sg.exit29_crit_edge: ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit29

lor.lhs.false.i22:                                ; preds = %do.end145
  %82 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %51, align 4
  %tobool1.not.i21 = icmp eq ptr %83, null
  br i1 %tobool1.not.i21, label %lor.lhs.false.i22.dmaengine_prep_slave_sg.exit29_crit_edge, label %lor.lhs.false2.i25

lor.lhs.false.i22.dmaengine_prep_slave_sg.exit29_crit_edge: ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit29

lor.lhs.false2.i25:                               ; preds = %lor.lhs.false.i22
  %device_prep_slave_sg.i23 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 39
  %84 = ptrtoint ptr %device_prep_slave_sg.i23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device_prep_slave_sg.i23, align 4
  %tobool4.not.i24 = icmp eq ptr %85, null
  br i1 %tobool4.not.i24, label %lor.lhs.false2.i25.dmaengine_prep_slave_sg.exit29_crit_edge, label %if.end.i27

lor.lhs.false2.i25.dmaengine_prep_slave_sg.exit29_crit_edge: ; preds = %lor.lhs.false2.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit29

if.end.i27:                                       ; preds = %lor.lhs.false2.i25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26 = tail call ptr %85(ptr noundef nonnull %51, ptr noundef %79, i32 noundef %81, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  br label %dmaengine_prep_slave_sg.exit29

dmaengine_prep_slave_sg.exit29:                   ; preds = %if.end.i27, %lor.lhs.false2.i25.dmaengine_prep_slave_sg.exit29_crit_edge, %lor.lhs.false.i22.dmaengine_prep_slave_sg.exit29_crit_edge, %do.end145.dmaengine_prep_slave_sg.exit29_crit_edge
  %retval.0.i28 = phi ptr [ %call.i26, %if.end.i27 ], [ null, %lor.lhs.false2.i25.dmaengine_prep_slave_sg.exit29_crit_edge ], [ null, %lor.lhs.false.i22.dmaengine_prep_slave_sg.exit29_crit_edge ], [ null, %do.end145.dmaengine_prep_slave_sg.exit29_crit_edge ]
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %retval.0.i28, i32 0, i32 6
  %86 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @cryp_dma_out_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %retval.0.i28, i32 0, i32 8
  %87 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %ctx, ptr %callback_param, align 4
  br label %sw.epilog

do.body153:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %cleanup)) #8
          to label %if.then167 [label %cleanup], !srcloc !313

if.then167:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #10
  %device168 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %88 = ptrtoint ptr %device168 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device168, align 4
  %dev169 = getelementptr inbounds %struct.cryp_device_data, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev169, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug305, ptr noundef %91, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.72) #8
  br label %cleanup

sw.epilog:                                        ; preds = %dmaengine_prep_slave_sg.exit29, %if.end.i, %lor.lhs.false2.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %do.end77.sw.epilog_crit_edge
  %channel.0 = phi ptr [ %51, %dmaengine_prep_slave_sg.exit29 ], [ null, %do.end77.sw.epilog_crit_edge ], [ %13, %lor.lhs.false.i.sw.epilog_crit_edge ], [ %13, %lor.lhs.false2.i.sw.epilog_crit_edge ], [ %13, %if.end.i ]
  %desc.0 = phi ptr [ %retval.0.i28, %dmaengine_prep_slave_sg.exit29 ], [ null, %do.end77.sw.epilog_crit_edge ], [ null, %lor.lhs.false.i.sw.epilog_crit_edge ], [ null, %lor.lhs.false2.i.sw.epilog_crit_edge ], [ %call.i, %if.end.i ]
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0, i32 0, i32 4
  %92 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_submit.i, align 4
  %call.i30 = tail call i32 %93(ptr noundef %desc.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i30)
  %tobool175.not = icmp sgt i32 %call.i30, -1
  br i1 %tobool175.not, label %if.end197, label %do.body177

do.body177:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_set_dma_transfer, %cleanup)) #8
          to label %if.then191 [label %cleanup], !srcloc !313

if.then191:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %device192 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %94 = ptrtoint ptr %device192 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device192, align 4
  %dev193 = getelementptr inbounds %struct.cryp_device_data, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev193 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev193, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_set_dma_transfer.__UNIQUE_ID_ddebug306, ptr noundef %97, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.72) #8
  br label %cleanup

if.end197:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %channel.0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %channel.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %99, i32 0, i32 50
  %100 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %101(ptr noundef %channel.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end197, %if.then191, %do.body177, %if.then167, %do.body153, %if.then119, %do.body105, %if.then51, %do.body37, %do.end15
  %retval.0 = phi i32 [ -14, %do.end15 ], [ 0, %if.end197 ], [ -14, %if.then51 ], [ -14, %if.then119 ], [ -14, %if.then167 ], [ %call.i30, %if.then191 ], [ -14, %do.body37 ], [ -14, %do.body105 ], [ -14, %do.body153 ], [ %call.i30, %do.body177 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cryp_dma_out_callback(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_dma_out_callback.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_dma_out_callback, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cryp_dma_out_callback.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.80) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device4 = getelementptr inbounds %struct.cryp_ctx, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device4, align 4
  %cryp_dma_complete = getelementptr inbounds %struct.cryp_device_data, ptr %5, i32 0, i32 10, i32 1
  tail call void @complete(ptr noundef %cryp_dma_complete) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_crypt_noxts(ptr noundef %ctx, ptr noundef %device_data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %indata1 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %indata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indata1, align 4
  %outdata2 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %outdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outdata2, align 4
  %datalen3 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %datalen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datalen3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_crypt_noxts.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_crypt_noxts, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_crypt_noxts.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.85) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %datalen3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datalen3, align 4
  %outlen8 = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %outlen8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %outlen8, align 4
  %9 = ptrtoint ptr %1 to i32
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end36, label %do.body18, !prof !328

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_crypt_noxts.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hw_crypt_noxts, %cleanup)) #8
          to label %if.then32 [label %cleanup], !srcloc !313

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_crypt_noxts.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %9) #8
  br label %cleanup

if.end36:                                         ; preds = %do.end
  %call37 = tail call fastcc i32 @cryp_setup_context(ptr noundef %ctx, ptr noundef %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end40:                                         ; preds = %if.end36
  %10 = load i32, ptr @cryp_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %10, label %do.end60 [
    i32 1, label %if.then42
    i32 0, label %if.end40.if.then56_crit_edge
    i32 2, label %if.end40.if.then56_crit_edge103
  ]

if.end40.if.then56_crit_edge103:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.end40.if.then56_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then42:                                        ; preds = %if.end40
  tail call void @cryp_enable_irq_src(ptr noundef %device_data, i32 noundef 3) #8
  %12 = ptrtoint ptr %outlen8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outlen8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44.not98 = icmp eq i32 %13, 0
  br i1 %cmp44.not98, label %if.then42.if.end62_crit_edge, label %if.then42.do.end49_crit_edge

if.then42.do.end49_crit_edge:                     ; preds = %if.then42
  br label %do.end49

if.then42.if.end62_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end49:                                         ; preds = %do.end49.do.end49_crit_edge, %if.then42.do.end49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !330
  %14 = ptrtoint ptr %outlen8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outlen8, align 4
  %cmp44.not = icmp eq i32 %15, 0
  br i1 %cmp44.not, label %do.end49.if.end62_crit_edge, label %do.end49.do.end49_crit_edge

do.end49.do.end49_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end49.if.end62_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then56:                                        ; preds = %if.end40.if.then56_crit_edge, %if.end40.if.then56_crit_edge103
  %blocksize.i = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 8
  %16 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blocksize.i, align 4
  %div18.i = lshr i32 %17, 2
  %18 = ptrtoint ptr %datalen3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datalen3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19.i = icmp sgt i32 %19, 0
  br i1 %cmp19.i, label %while.body.lr.ph.i, label %if.then56.if.end62_crit_edge

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

while.body.lr.ph.i:                               ; preds = %if.then56
  %20 = ptrtoint ptr %outdata2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %outdata2, align 4
  %22 = ptrtoint ptr %indata1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %indata1, align 4
  %mul.i = and i32 %17, -4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %outdata.022.i = phi ptr [ %21, %while.body.lr.ph.i ], [ %add.ptr4.i, %while.body.i.while.body.i_crit_edge ]
  %indata.021.i = phi ptr [ %23, %while.body.lr.ph.i ], [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %remaining_length.020.i = phi i32 [ %19, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_data, align 4
  %din.i = getelementptr inbounds %struct.cryp_register, ptr %25, i32 0, i32 2
  tail call void @__raw_writesl(ptr noundef %din.i, ptr noundef %indata.021.i, i32 noundef %div18.i) #8
  %add.ptr.i = getelementptr i32, ptr %indata.021.i, i32 %div18.i
  %sub.i = sub i32 %remaining_length.020.i, %mul.i
  tail call void @cryp_wait_until_done(ptr noundef %device_data) #8
  %26 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_data, align 4
  %dout.i = getelementptr inbounds %struct.cryp_register, ptr %27, i32 0, i32 4
  tail call void @__raw_readsl(ptr noundef %dout.i, ptr noundef %outdata.022.i, i32 noundef %div18.i) #8
  %add.ptr4.i = getelementptr i32, ptr %outdata.022.i, i32 %div18.i
  tail call void @cryp_wait_until_done(ptr noundef %device_data) #8
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end62_crit_edge

while.body.i.if.end62_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end60:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 11
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.cryp_device_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85) #11
  br label %out

if.end62:                                         ; preds = %while.body.i.if.end62_crit_edge, %if.then56.if.end62_crit_edge, %do.end49.if.end62_crit_edge, %if.then42.if.end62_crit_edge
  %dev_ctx = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 10
  %32 = load i32, ptr @cryp_mode, align 4
  tail call void @cryp_save_device_context(ptr noundef %device_data, ptr noundef %dev_ctx, i32 noundef %32) #8
  %updated = getelementptr inbounds %struct.cryp_ctx, ptr %ctx, i32 0, i32 9
  %33 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %updated, align 4
  br label %out

out:                                              ; preds = %if.end62, %do.end60, %if.end36.out_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end36.out_crit_edge ], [ 0, %if.end62 ], [ -1, %do.end60 ]
  %34 = ptrtoint ptr %indata1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %indata1, align 4
  %35 = ptrtoint ptr %outdata2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %outdata2, align 4
  %36 = ptrtoint ptr %datalen3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %5, ptr %datalen3, align 4
  %37 = ptrtoint ptr %outlen8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %5, ptr %outlen8, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then32, %do.body18
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.then32 ], [ -22, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryp_enable_irq_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cryp_algs_unregister_all() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cryp_algs_unregister_all.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cryp_algs_unregister_all, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cryp_algs_unregister_all.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.98) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 0, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 1, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 2, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 3, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 4, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 5, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([7 x %struct.cryp_algo_template], ptr @cryp_algs, i32 0, i32 6, i32 2)) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_cryp_suspend(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_suspend.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_suspend, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_suspend.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.103) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cleanup.sink.split_crit_edge, label %if.end11

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %do.end
  %irq = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ctx, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 152 to ptr), ptr %current_ctx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %7 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_ctx, align 4
  %cmp = icmp eq ptr %8, inttoptr (i32 152 to ptr)
  br i1 %cmp, label %if.then19, label %if.end15.if.end44_crit_edge

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then19:                                        ; preds = %if.end15
  %call20 = tail call i32 @down_interruptible(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end44_crit_edge, label %do.body23

if.then19.if.end44_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.body23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_suspend.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_suspend, %if.end44)) #8
          to label %if.then37 [label %if.end44], !srcloc !313

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_suspend.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %do.body23, %if.then19.if.end44_crit_edge, %if.end15.if.end44_crit_edge
  %9 = xor i1 %cmp, true
  %call43 = tail call fastcc i32 @cryp_disable_power(ptr noundef %dev, ptr noundef nonnull %1, i1 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end44.cleanup.sink.split_crit_edge

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end44.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.106.sink = phi ptr [ @.str.94, %do.end.cleanup.sink.split_crit_edge ], [ @.str.106, %if.end44.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %do.end.cleanup.sink.split_crit_edge ], [ %call43, %if.end44.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.106.sink, ptr noundef nonnull @.str.103) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_cryp_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_cryp_resume.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_cryp_resume, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !313

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_cryp_resume.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.108) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end10, label %if.end11

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.108) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %ctx_lock = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %cmp = icmp eq ptr %3, inttoptr (i32 152 to ptr)
  br i1 %cmp, label %if.then12, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %current_ctx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %5 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_ctx, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %if.end20.thread, label %if.end20

if.end20.thread:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up(ptr noundef getelementptr inbounds (%struct.cryp_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %if.else26

if.end20:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @cryp_enable_power(ptr noundef %dev, ptr noundef nonnull %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.if.else26_crit_edge, label %do.end25

if.end20.if.else26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.108) #11
  br label %cleanup

if.else26:                                        ; preds = %if.end20.if.else26_crit_edge, %if.end20.thread
  %irq = getelementptr inbounds %struct.cryp_device_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %do.end25, %do.end10
  %retval.0 = phi i32 [ -12, %do.end10 ], [ 0, %if.else26 ], [ %call19, %do.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !106, !108, !109, !111, !113, !115, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !242, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !272, !274, !275, !277, !278, !280, !281, !283, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !301, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1587, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ux500_cryp_mod_fini.__UNIQUE_ID_ddebug332, !1, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ux500_cryp__333_1591_ux500_cryp_mod_init6, !7, !"__initcall__kmod_ux500_cryp__333_1591_ux500_cryp_mod_init6", i1 false, i1 false}
!7 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1591, i32 1}
!8 = !{ptr @__exitcall_ux500_cryp_mod_fini, !9, !"__exitcall_ux500_cryp_mod_fini", i1 false, i1 false}
!9 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1592, i32 1}
!10 = !{ptr @__param_cryp_mode, !11, !"__param_cryp_mode", i1 false, i1 false}
!11 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1594, i32 1}
!12 = !{ptr @__UNIQUE_ID_cryp_modetype334, !11, !"__UNIQUE_ID_cryp_modetype334", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description335, !14, !"__UNIQUE_ID_description335", i1 false, i1 false}
!14 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1596, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_userspace336, !16, !"__UNIQUE_ID_alias_userspace336", i1 false, i1 false}
!16 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1597, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_crypto337, !16, !"__UNIQUE_ID_alias_crypto337", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias_userspace338, !19, !"__UNIQUE_ID_alias_userspace338", i1 false, i1 false}
!19 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1598, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias_crypto339, !19, !"__UNIQUE_ID_alias_crypto339", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_file340, !22, !"__UNIQUE_ID_file340", i1 false, i1 false}
!22 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1600, i32 1}
!23 = !{ptr @__UNIQUE_ID_license341, !22, !"__UNIQUE_ID_license341", i1 false, i1 false}
!24 = !{ptr @cryp_mode, !25, !"cryp_mode", i1 false, i1 false}
!25 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 45, i32 12}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1570, i32 12}
!28 = !{ptr @cryp_driver, !29, !"cryp_driver", i1 false, i1 false}
!29 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1565, i32 31}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1266, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ux500_cryp_probe.__UNIQUE_ID_ddebug324, !31, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1284, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ux500_cryp_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @ux500_cryp_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ux500_cryp_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1297, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ux500_cryp_probe.__key.11, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1298, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1301, i32 57}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1303, i32 3}
!50 = !{ptr @ux500_cryp_probe._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ux500_cryp_probe._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1312, i32 3}
!54 = !{ptr @ux500_cryp_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ux500_cryp_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1319, i32 3}
!58 = !{ptr @ux500_cryp_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ux500_cryp_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1326, i32 3}
!62 = !{ptr @ux500_cryp_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ux500_cryp_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1331, i32 3}
!66 = !{ptr @ux500_cryp_probe._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ux500_cryp_probe._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1337, i32 3}
!70 = !{ptr @ux500_cryp_probe._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ux500_cryp_probe._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1352, i32 3}
!74 = !{ptr @ux500_cryp_probe._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ux500_cryp_probe._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1371, i32 3}
!78 = !{ptr @ux500_cryp_probe._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ux500_cryp_probe._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1376, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ux500_cryp_probe._entry.38, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ux500_cryp_probe._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mem_to_engine, !86, !"mem_to_engine", i1 false, i1 false}
!86 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 48, i32 34}
!87 = !{ptr @engine_to_mem, !88, !"engine_to_mem", i1 false, i1 false}
!88 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 49, i32 34}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 710, i32 2}
!91 = !{ptr @cryp_enable_power.__UNIQUE_ID_ddebug312, !90, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 716, i32 4}
!94 = !{ptr @cryp_enable_power._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cryp_enable_power._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 723, i32 4}
!98 = !{ptr @cryp_enable_power._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cryp_enable_power._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 204, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cryp_interrupt_handler.__UNIQUE_ID_ddebug293, !101, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!104 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @init_completion.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../include/linux/completion.h", i32 87, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @driver_data, !110, !"driver_data", i1 false, i1 false}
!110 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 94, i32 32}
!111 = !{ptr @session_id, !112, !"session_id", i1 false, i1 false}
!112 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 46, i32 17}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1225, i32 2}
!115 = !{ptr @cryp_algs_register_all.__UNIQUE_ID_ddebug322, !114, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1231, i32 4}
!118 = !{ptr @cryp_algs_register_all._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cryp_algs_register_all._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @cryp_algs, !121, !"cryp_algs", i1 false, i1 false}
!121 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1068, i32 34}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 948, i32 2}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @aes_skcipher_setkey.__UNIQUE_ID_ddebug317, !123, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 964, i32 3}
!128 = !{ptr @aes_skcipher_setkey._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @aes_skcipher_setkey._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1019, i32 2}
!132 = !{ptr @cryp_blk_encrypt.__UNIQUE_ID_ddebug320, !131, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 835, i32 2}
!135 = !{ptr @ablk_dma_crypt.__UNIQUE_ID_ddebug315, !134, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 424, i32 2}
!138 = !{ptr @cryp_get_device_data.__UNIQUE_ID_ddebug298, !137, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 384, i32 4}
!141 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cryp_setup_context._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @cryp_setup_context._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 337, i32 2}
!146 = !{ptr @cfg_keys.__UNIQUE_ID_ddebug297, !145, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 355, i32 4}
!149 = !{ptr @cfg_keys._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cfg_keys._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 314, i32 2}
!153 = !{ptr @set_key.__UNIQUE_ID_ddebug296, !152, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 323, i32 3}
!156 = !{ptr @set_key._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @set_key._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 281, i32 2}
!160 = !{ptr @cfg_ivs.__UNIQUE_ID_ddebug295, !159, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 289, i32 3}
!163 = !{ptr @cfg_ivs._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cfg_ivs._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 263, i32 2}
!167 = !{ptr @cfg_iv.__UNIQUE_ID_ddebug294, !166, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 624, i32 2}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @cryp_dma_write.__UNIQUE_ID_ddebug308, !169, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 627, i32 3}
!174 = !{ptr @cryp_dma_write.__UNIQUE_ID_ddebug309, !173, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 523, i32 2}
!177 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug300, !176, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 526, i32 3}
!180 = !{ptr @cryp_set_dma_transfer._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @cryp_set_dma_transfer._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 541, i32 4}
!184 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug301, !183, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 547, i32 3}
!187 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug302, !186, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 565, i32 4}
!190 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug303, !189, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!191 = !{ptr @.str.77, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 571, i32 3}
!193 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug304, !192, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 586, i32 3}
!196 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug305, !195, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 593, i32 3}
!199 = !{ptr @cryp_set_dma_transfer.__UNIQUE_ID_ddebug306, !198, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 509, i32 2}
!202 = !{ptr @cryp_dma_out_callback.__UNIQUE_ID_ddebug299, !201, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 639, i32 3}
!205 = !{ptr @cryp_dma_read.__UNIQUE_ID_ddebug310, !204, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!206 = !{ptr @.str.82, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 607, i32 2}
!208 = !{ptr @cryp_dma_done.__UNIQUE_ID_ddebug307, !207, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!209 = !{ptr @.str.83, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 893, i32 2}
!211 = !{ptr @ablk_crypt.__UNIQUE_ID_ddebug316, !210, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 902, i32 3}
!214 = !{ptr @ablk_crypt._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ablk_crypt._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.85, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 756, i32 2}
!218 = !{ptr @hw_crypt_noxts.__UNIQUE_ID_ddebug313, !217, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 761, i32 3}
!221 = !{ptr @hw_crypt_noxts.__UNIQUE_ID_ddebug314, !220, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!222 = !{ptr @.str.87, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 794, i32 3}
!224 = !{ptr @hw_crypt_noxts._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @hw_crypt_noxts._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1037, i32 2}
!228 = !{ptr @cryp_blk_decrypt.__UNIQUE_ID_ddebug321, !227, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!229 = !{ptr @.str.89, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 982, i32 2}
!231 = !{ptr @des_skcipher_setkey.__UNIQUE_ID_ddebug318, !230, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!232 = !{ptr @.str.90, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1001, i32 2}
!234 = !{ptr @des3_skcipher_setkey.__UNIQUE_ID_ddebug319, !233, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!235 = !{ptr @.str.91, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 673, i32 2}
!237 = !{ptr @cryp_disable_power.__UNIQUE_ID_ddebug311, !236, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!238 = !{ptr @.str.92, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 691, i32 3}
!240 = !{ptr @cryp_disable_power._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cryp_disable_power._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.93, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1397, i32 2}
!244 = !{ptr @ux500_cryp_remove.__UNIQUE_ID_ddebug325, !243, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!245 = !{ptr @.str.94, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1400, i32 3}
!247 = !{ptr @ux500_cryp_remove._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @ux500_cryp_remove._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.96, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1431, i32 3}
!251 = !{ptr @ux500_cryp_remove._entry.95, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @ux500_cryp_remove._entry_ptr.97, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1250, i32 2}
!255 = !{ptr @cryp_algs_unregister_all.__UNIQUE_ID_ddebug323, !254, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!256 = !{ptr @.str.99, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1444, i32 2}
!258 = !{ptr @ux500_cryp_shutdown.__UNIQUE_ID_ddebug326, !257, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!259 = !{ptr @ux500_cryp_shutdown._entry, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1448, i32 3}
!261 = !{ptr @ux500_cryp_shutdown._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.100, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1458, i32 4}
!264 = !{ptr @ux500_cryp_shutdown.__UNIQUE_ID_ddebug327, !263, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!265 = !{ptr @ux500_cryp_shutdown._entry.101, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1478, i32 3}
!267 = !{ptr @ux500_cryp_shutdown._entry_ptr.102, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @ux500_cryp_match, !269, !"ux500_cryp_match", i1 false, i1 false}
!269 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1559, i32 34}
!270 = !{ptr @ux500_cryp_pm, !271, !"ux500_cryp_pm", i1 false, i1 false}
!271 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1557, i32 8}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1491, i32 2}
!274 = !{ptr @ux500_cryp_suspend.__UNIQUE_ID_ddebug328, !273, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!275 = !{ptr @ux500_cryp_suspend._entry, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1496, i32 3}
!277 = !{ptr @ux500_cryp_suspend._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.104, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1509, i32 4}
!280 = !{ptr @ux500_cryp_suspend.__UNIQUE_ID_ddebug329, !279, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!281 = !{ptr @.str.106, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1517, i32 3}
!283 = !{ptr @ux500_cryp_suspend._entry.105, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ux500_cryp_suspend._entry_ptr.107, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.108, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1529, i32 2}
!287 = !{ptr @ux500_cryp_resume.__UNIQUE_ID_ddebug330, !286, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!288 = !{ptr @ux500_cryp_resume._entry, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1533, i32 3}
!290 = !{ptr @ux500_cryp_resume._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @ux500_cryp_resume._entry.109, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1549, i32 3}
!293 = !{ptr @ux500_cryp_resume._entry_ptr.110, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.111, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/crypto/ux500/cryp/cryp_core.c", i32 1578, i32 2}
!296 = !{ptr @ux500_cryp_mod_init.__UNIQUE_ID_ddebug331, !295, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!297 = !{ptr @sema_init.__key, !298, !"__key", i1 false, i1 false}
!298 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!299 = !{ptr @.str.112, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!301 = !{ptr @.str.113, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!303 = !{ptr @__param_str_cryp_mode, !11, !"__param_str_cryp_mode", i1 false, i1 false}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{i64 2148760589, i64 2148760594, i64 2148760607, i64 2148760651, i64 2148760685, i64 2148760706}
!314 = !{i8 0, i8 2}
!315 = !{i64 2155253185, i64 2155253687, i64 2155253222, i64 2155253278, i64 2155253312, i64 2155253336, i64 2155253377, i64 2155253398, i64 2155253426, i64 2155253460}
!316 = !{i64 2155254815, i64 2155255317, i64 2155254852, i64 2155254908, i64 2155254942, i64 2155254966, i64 2155255007, i64 2155255028, i64 2155255056, i64 2155255090}
!317 = !{i64 6287407}
!318 = !{i64 6286989}
!319 = !{!"auto-init"}
!320 = !{i64 2149110378}
!321 = !{i64 2148885613, i64 2148885636, i64 2148885668, i64 2148885700, i64 2148885738, i64 2148885768}
!322 = !{i64 2148364185}
!323 = !{i64 2148279494, i64 2148279526, i64 2148279555, i64 2148279589, i64 2148279620, i64 2148279643}
!324 = !{i64 2148364414}
!325 = !{!"branch_weights", i32 1, i32 2000}
!326 = !{i64 2148278774, i64 2148278800, i64 2148278829, i64 2148278863, i64 2148278894, i64 2148278917}
!327 = !{i64 2155276594}
!328 = !{!"branch_weights", i32 2000, i32 1}
!329 = !{i64 2155331153}
!330 = !{i64 2155330995}
