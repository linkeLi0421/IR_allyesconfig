; ModuleID = '/llk/IR_all_yes/drivers/crypto/ux500/hash/hash_core.c_pt.bc'
source_filename = "../drivers/crypto/ux500/hash/hash_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hash_driver_data = type { %struct.klist, %struct.semaphore }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hash_algo_template = type { %struct.hash_config, [116 x i8], %struct.ahash_alg }
%struct.hash_config = type { i32, i32, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.85, ptr, ptr, ptr, ptr, %union.anon.86, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.85 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.86 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.hash_device_data = type { ptr, i32, %struct.klist_node, ptr, %struct.spinlock, ptr, i8, %struct.spinlock, ptr, ptr, i8, %struct.hash_state, %struct.hash_dma }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.hash_state = type { i32, i32, i32, [52 x i32], i32, i32, [16 x i32], %struct.uint64, i8, i8 }
%struct.uint64 = type { i32, i32 }
%struct.hash_dma = type { %struct.dma_cap_mask_t, %struct.completion, ptr, ptr, i32, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hash_ctx = type { ptr, i32, %struct.hash_config, i32, ptr }
%struct.hash_register = type { i32, i32, i32, [8 x i32], [21 x i32], i32, i32, i32, [27 x i32], i32, i32, [52 x i32], [900 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_hash_walk = type { ptr, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.klist_iter = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.hash_platform_data = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__param_str_hash_mode = internal constant [21 x i8] c"ux500_hash.hash_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hash_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hash_mode = internal constant %struct.kernel_param { ptr @__param_str_hash_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @hash_mode } }, section "__param", align 4
@__UNIQUE_ID_hash_modetype291 = internal constant [34 x i8] c"ux500_hash.parmtype=hash_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hash_mode292 = internal constant [70 x i8] c"ux500_hash.parm=hash_mode:CPU or DMA mode. CPU = 0 (default), DMA = 1\00", section ".modinfo", align 1
@hash_setconfiguration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 706, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Incorrect algorithm\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hash_setconfiguration\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/crypto/ux500/hash/hash_core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hash_setconfiguration._entry_ptr = internal global ptr @hash_setconfiguration._entry, section ".printk_index", align 4
@hash_setconfiguration.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ux500_hash\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: LKEY set\0A\00", [18 x i8] zeroinitializer }, align 32
@hash_setconfiguration.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: LKEY cleared\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_setconfiguration._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: HASH_INVALID_PARAMETER!\0A\00", [35 x i8] zeroinitializer }, align 32
@hash_setconfiguration._entry_ptr.10 = internal global ptr @hash_setconfiguration._entry.8, section ".printk_index", align 4
@hash_hw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hashX hashX: %s: HASH_MSG_LENGTH_OVERFLOW!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hash_hw_update\00", [17 x i8] zeroinitializer }, align 32
@hash_hw_update._entry_ptr = internal global ptr @hash_hw_update._entry, section ".printk_index", align 4
@hash_hw_update._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: hash_internal_hw_update() failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_hw_update._entry_ptr.15 = internal global ptr @hash_hw_update._entry.13, section ".printk_index", align 4
@hash_hw_update.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 1, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: indata length=%d, bin=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@hash_resume_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str.2, i32 1144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_resume_state\00", [46 x i8] zeroinitializer }, align 32
@hash_resume_state._entry_ptr = internal global ptr @hash_resume_state._entry, section ".printk_index", align 4
@hash_resume_state._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str.2, i32 1152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_resume_state._entry_ptr.19 = internal global ptr @hash_resume_state._entry.18, section ".printk_index", align 4
@hash_save_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.2, i32 1202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_save_state\00", [16 x i8] zeroinitializer }, align 32
@hash_save_state._entry_ptr = internal global ptr @hash_save_state._entry, section ".printk_index", align 4
@hash_check_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: HASH_UNSUPPORTED_HW!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hash_check_hw\00", [18 x i8] zeroinitializer }, align 32
@hash_check_hw._entry_ptr = internal global ptr @hash_check_hw._entry, section ".printk_index", align 4
@hash_get_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Incorrect algorithm %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_get_digest\00", [16 x i8] zeroinitializer }, align 32
@hash_get_digest._entry_ptr = internal global ptr @hash_get_digest._entry, section ".printk_index", align 4
@hash_get_digest.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: digest array:(0x%lx)\0A\00", [38 x i8] zeroinitializer }, align 32
@hash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ux500_hash_probe, ptr @ux500_hash_remove, ptr @ux500_hash_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.36, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ux500_hash_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ux500_hash_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ux500_hash__313_1959_ux500_hash_mod_init6 = internal global ptr @ux500_hash_mod_init, section ".initcall6.init", align 4
@__exitcall_ux500_hash_mod_fini = internal global ptr @ux500_hash_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description314 = internal constant [65 x i8] c"ux500_hash.description=Driver for ST-Ericsson UX500 HASH engine.\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [53 x i8] c"ux500_hash.file=drivers/crypto/ux500/hash/ux500_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [23 x i8] c"ux500_hash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace317 = internal constant [26 x i8] c"ux500_hash.alias=sha1-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto318 = internal constant [33 x i8] c"ux500_hash.alias=crypto-sha1-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace319 = internal constant [28 x i8] c"ux500_hash.alias=sha256-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto320 = internal constant [35 x i8] c"ux500_hash.alias=crypto-sha256-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace321 = internal constant [31 x i8] c"ux500_hash.alias=hmac-sha1-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto322 = internal constant [38 x i8] c"ux500_hash.alias=crypto-hmac-sha1-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace323 = internal constant [33 x i8] c"ux500_hash.alias=hmac-sha256-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto324 = internal constant [40 x i8] c"ux500_hash.alias=crypto-hmac-sha256-all\00", section ".modinfo", align 1
@driver_data = internal global { %struct.hash_driver_data, [44 x i8] } zeroinitializer, align 32
@hash_process_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 791, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: hash_resume_state() failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_process_data\00", [46 x i8] zeroinitializer }, align 32
@hash_process_data._entry_ptr = internal global ptr @hash_process_data._entry, section ".printk_index", align 4
@hash_process_data._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: init_hash_hw() failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@hash_process_data._entry_ptr.30 = internal global ptr @hash_process_data._entry.28, section ".printk_index", align 4
@hash_process_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 841, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: hash_save_state() failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@hash_process_data._entry_ptr.33 = internal global ptr @hash_process_data._entry.31, section ".printk_index", align 4
@init_hash_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: hash_setconfiguration() failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_hash_hw\00", [19 x i8] zeroinitializer }, align 32
@init_hash_hw._entry_ptr = internal global ptr @init_hash_hw._entry, section ".printk_index", align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hash1\00", [26 x i8] zeroinitializer }, align 32
@ux500_hash_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ux500-hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ux500_hash_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ux500_hash_suspend, ptr @ux500_hash_resume, ptr @ux500_hash_suspend, ptr @ux500_hash_resume, ptr @ux500_hash_suspend, ptr @ux500_hash_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ux500_hash_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ux500_hash_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: platform_get_resource() failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@ux500_hash_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&device_data->ctx_lock\00", [41 x i8] zeroinitializer }, align 32
@ux500_hash_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&device_data->power_state_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v-ape\00", [26 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.2, i32 1689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: regulator_get() failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr = internal global ptr @ux500_hash_probe._entry, section ".printk_index", align 4
@ux500_hash_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 1698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: clk_get() failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.46 = internal global ptr @ux500_hash_probe._entry.44, section ".printk_index", align 4
@ux500_hash_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 1705, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: clk_prepare() failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.49 = internal global ptr @ux500_hash_probe._entry.47, section ".printk_index", align 4
@ux500_hash_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 1712, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: hash_enable_power() failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.52 = internal global ptr @ux500_hash_probe._entry.50, section ".printk_index", align 4
@ux500_hash_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.2, i32 1718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: hash_check_hw() failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.55 = internal global ptr @ux500_hash_probe._entry.53, section ".printk_index", align 4
@ux500_hash_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.2, i32 1735, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ahash_algs_register_all() failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.58 = internal global ptr @ux500_hash_probe._entry.56, section ".printk_index", align 4
@ux500_hash_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.37, ptr @.str.2, i32 1739, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"successfully registered\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ux500_hash_probe._entry_ptr.62 = internal global ptr @ux500_hash_probe._entry.59, section ".printk_index", align 4
@hash_enable_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: regulator_enable() failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_enable_power\00", [46 x i8] zeroinitializer }, align 32
@hash_enable_power._entry_ptr = internal global ptr @hash_enable_power._entry, section ".printk_index", align 4
@hash_enable_power._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: clk_enable() failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@hash_enable_power._entry_ptr.67 = internal global ptr @hash_enable_power._entry.65, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hash_algs = internal global [4 x %struct.hash_algo_template] [%struct.hash_algo_template { %struct.hash_config zeroinitializer, [116 x i8] undef, %struct.ahash_alg { ptr @ux500_hash_init, ptr @ahash_update, ptr @ahash_final, ptr null, ptr @ahash_sha1_digest, ptr @ahash_noexport, ptr @ahash_noimport, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 28, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 28, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr @hash_cra_init, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } } }, %struct.hash_algo_template { %struct.hash_config { i32 0, i32 1, i32 0 }, [116 x i8] undef, %struct.ahash_alg { ptr @ux500_hash_init, ptr @ahash_update, ptr @ahash_final, ptr null, ptr @ahash_sha256_digest, ptr @ahash_noexport, ptr @ahash_noimport, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 28, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 28, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr @hash_cra_init, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } } }, %struct.hash_algo_template { %struct.hash_config { i32 0, i32 0, i32 1 }, [116 x i8] undef, %struct.ahash_alg { ptr @ux500_hash_init, ptr @ahash_update, ptr @ahash_final, ptr null, ptr @hmac_sha1_digest, ptr @ahash_noexport, ptr @ahash_noimport, ptr @hmac_sha1_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 28, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 28, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr @hash_cra_init, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } } }, %struct.hash_algo_template { %struct.hash_config { i32 0, i32 1, i32 1 }, [116 x i8] undef, %struct.ahash_alg { ptr @ux500_hash_init, ptr @ahash_update, ptr @ahash_final, ptr null, ptr @hmac_sha256_digest, ptr @ahash_noexport, ptr @ahash_noimport, ptr @hmac_sha256_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 28, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 64, i32 28, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-ux500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.85 zeroinitializer, ptr @hash_cra_init, ptr null, ptr null, ptr null, %union.anon.86 zeroinitializer, [120 x i8] undef } } } }], align 128
@ahash_algs_register_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: alg registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahash_algs_register_all\00", [40 x i8] zeroinitializer }, align 32
@ahash_algs_register_all._entry_ptr = internal global ptr @ahash_algs_register_all._entry, section ".printk_index", align 4
@ux500_hash_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ux500_hash_init\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: DMA mode, but direct to CPU mode for data size < %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"hashX hashX: %s: DMA mode, but direct to CPU mode for data size < %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ux500_hash_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.74, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: DMA mode, but use CPU mode for datalength < %d or non-aligned data, except in last nent\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"hashX hashX: %s: DMA mode, but use CPU mode for datalength < %d or non-aligned data, except in last nent\0A\00", [54 x i8] zeroinitializer }, align 32
@ahash_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013hashX hashX: %s: hash_hw_update() failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahash_update\00", [19 x i8] zeroinitializer }, align 32
@ahash_update._entry_ptr = internal global ptr @ahash_update._entry, section ".printk_index", align 4
@ahash_final.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 1, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ahash_final\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: data size: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hashX hashX: %s: data size: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ahash_final._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.2, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013hashX hashX: %s: hash_hw/dma_final() failed\0A\00", [49 x i8] zeroinitializer }, align 32
@ahash_final._entry_ptr = internal global ptr @ahash_final._entry, section ".printk_index", align 4
@hash_dma_final.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hash_dma_final\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: (ctx=0x%lx)!\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_dma_final._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.82, ptr @.str.2, i32 877, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_dma_final._entry_ptr = internal global ptr @hash_dma_final._entry, section ".printk_index", align 4
@hash_dma_final._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.82, ptr @.str.2, i32 887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_dma_final._entry_ptr.85 = internal global ptr @hash_dma_final._entry.84, section ".printk_index", align 4
@hash_dma_final._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 916, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ctx->device->dma.nents = 0\0A\00", [32 x i8] zeroinitializer }, align 32
@hash_dma_final._entry_ptr.88 = internal global ptr @hash_dma_final._entry.86, section ".printk_index", align 4
@hash_dma_final._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: hash_dma_write() failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@hash_dma_final._entry_ptr.91 = internal global ptr @hash_dma_final._entry.89, section ".printk_index", align 4
@hash_dma_final.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.2, ptr @.str.92, i8 0, i8 -21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: keylen: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@hash_dma_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hash_dma_write\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: hash_set_dma_transfer() failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hash_set_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid DMA direction\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hash_set_dma_transfer\00", [42 x i8] zeroinitializer }, align 32
@hash_set_dma_transfer._entry_ptr = internal global ptr @hash_set_dma_transfer._entry, section ".printk_index", align 4
@hash_set_dma_transfer._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Could not map the sg list (TO_DEVICE)\0A\00", [53 x i8] zeroinitializer }, align 32
@hash_set_dma_transfer._entry_ptr.99 = internal global ptr @hash_set_dma_transfer._entry.97, section ".printk_index", align 4
@hash_set_dma_transfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.96, ptr @.str.2, ptr @.str.100, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Setting up DMA for buffer (TO_DEVICE)\0A\00", [53 x i8] zeroinitializer }, align 32
@hash_set_dma_transfer._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: dmaengine_prep_slave_sg() failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_set_dma_transfer._entry_ptr.103 = internal global ptr @hash_set_dma_transfer._entry.101, section ".printk_index", align 4
@hash_hw_final.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.104, ptr @.str.2, ptr @.str.83, i8 0, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hash_hw_final\00", [18 x i8] zeroinitializer }, align 32
@hash_hw_final._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.104, ptr @.str.2, i32 983, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_hw_final._entry_ptr = internal global ptr @hash_hw_final._entry, section ".printk_index", align 4
@hash_hw_final.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: HMAC zero msg with key, continue...\0A\00", [55 x i8] zeroinitializer }, align 32
@hash_hw_final._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.104, ptr @.str.2, i32 1009, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ret=%d, or wrong digest size? %s\0A\00", [58 x i8] zeroinitializer }, align 32
@hash_hw_final._entry_ptr.108 = internal global ptr @hash_hw_final._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@hash_hw_final._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.2, i32 1016, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Empty message with keylength > 0, NOT supported\0A\00", [43 x i8] zeroinitializer }, align 32
@hash_hw_final._entry_ptr.113 = internal global ptr @hash_hw_final._entry.111, section ".printk_index", align 4
@hash_hw_final._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.104, ptr @.str.2, i32 1024, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_hw_final._entry_ptr.115 = internal global ptr @hash_hw_final._entry.114, section ".printk_index", align 4
@hash_hw_final.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.104, ptr @.str.2, ptr @.str.92, i8 1, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sha1_zero_message_hash = external dso_local local_unnamed_addr constant [20 x i8], align 1
@sha256_zero_message_hash = external dso_local local_unnamed_addr constant [32 x i8], align 1
@get_empty_message_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Incorrect algorithm!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_empty_message_digest\00", [39 x i8] zeroinitializer }, align 32
@get_empty_message_digest._entry_ptr = internal global ptr @get_empty_message_digest._entry, section ".printk_index", align 4
@zero_message_hmac_sha1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\FB\DB\1D\1B\18\AAl\082K}d\B7\1F\B7cpi\0E\1D", [44 x i8] zeroinitializer }, align 32
@zero_message_hmac_sha256 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\B6\13g\9A\08\14\D9\ECw/\95\D7x\C3_\C5\FF\16\97\C4\93qVS\C6\C7\12\14B\92\C5\AD", [32 x i8] zeroinitializer }, align 32
@get_empty_message_digest._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@get_empty_message_digest._entry_ptr.119 = internal global ptr @get_empty_message_digest._entry.118, section ".printk_index", align 4
@get_empty_message_digest.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.117, ptr @.str.2, ptr @.str.120, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Continue hash calculation, since hmac key available\0A\00", [39 x i8] zeroinitializer }, align 32
@hash_messagepad.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_messagepad\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: DIN=0x%08x NBLW=%lu\0A\00", [39 x i8] zeroinitializer }, align 32
@hash_messagepad.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.121, ptr @.str.2, ptr @.str.123, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: after dcal -> DIN=0x%08x NBLW=%lu\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013hashX hashX: %s: Failed to allocate ctx->key for %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hash_setkey\00", [20 x i8] zeroinitializer }, align 32
@hash_setkey._entry_ptr = internal global ptr @hash_setkey._entry, section ".printk_index", align 4
@hash_disable_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: regulator_disable() failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_disable_power\00", [45 x i8] zeroinitializer }, align 32
@hash_disable_power._entry_ptr = internal global ptr @hash_disable_power._entry, section ".printk_index", align 4
@ux500_hash_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: platform_get_drvdata() failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ux500_hash_remove\00", [46 x i8] zeroinitializer }, align 32
@ux500_hash_remove._entry_ptr = internal global ptr @ux500_hash_remove._entry, section ".printk_index", align 4
@ux500_hash_remove._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: hash_disable_power() failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ux500_hash_remove._entry_ptr.132 = internal global ptr @ux500_hash_remove._entry.130, section ".printk_index", align 4
@ux500_hash_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.133, ptr @.str.2, i32 1816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_hash_shutdown\00", [44 x i8] zeroinitializer }, align 32
@ux500_hash_shutdown._entry_ptr = internal global ptr @ux500_hash_shutdown._entry, section ".printk_index", align 4
@ux500_hash_shutdown.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 1, i8 -56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Cryp still in use! Shutting down anyway...\0A\00", [48 x i8] zeroinitializer }, align 32
@ux500_hash_shutdown._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.133, ptr @.str.2, i32 1846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ux500_hash_shutdown._entry_ptr.136 = internal global ptr @ux500_hash_shutdown._entry.135, section ".printk_index", align 4
@ux500_hash_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.137, ptr @.str.2, i32 1862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ux500_hash_suspend\00", [45 x i8] zeroinitializer }, align 32
@ux500_hash_suspend._entry_ptr = internal global ptr @ux500_hash_suspend._entry, section ".printk_index", align 4
@ux500_hash_suspend.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 1, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: down_interruptible() failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ux500_hash_suspend._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.137, ptr @.str.2, i32 1882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: hash_disable_power()\0A\00", [38 x i8] zeroinitializer }, align 32
@ux500_hash_suspend._entry_ptr.141 = internal global ptr @ux500_hash_suspend._entry.139, section ".printk_index", align 4
@ux500_hash_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.142, ptr @.str.2, i32 1899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ux500_hash_resume\00", [46 x i8] zeroinitializer }, align 32
@ux500_hash_resume._entry_ptr = internal global ptr @ux500_hash_resume._entry, section ".printk_index", align 4
@ux500_hash_resume._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.142, ptr @.str.2, i32 1914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ux500_hash_resume._entry_ptr.144 = internal global ptr @ux500_hash_resume._entry.143, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"hash_mode\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 43, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 705, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 721, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 725, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 732, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1099, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1111, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1121, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1143, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1151, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1201, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1259, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1276, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1286, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"hash_driver\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1928, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"driver_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 73, i32 32 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 789, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 797, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 840, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 478, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1933, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"ux500_hash_match\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1922, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant [14 x i8] c"ux500_hash_pm\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1920, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1672, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1683, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1684, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1687, i32 46 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1689, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1698, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1705, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1712, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1718, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1734, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1739, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 331, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 337, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 87, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1630, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 565, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 573, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1313, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1328, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1336, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 869, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 876, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 885, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 915, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 923, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 939, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 201, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 147, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 161, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 166, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 172, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 975, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 982, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1001, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1005, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1015, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1023, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 242, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant [23 x i8] c"zero_message_hmac_sha1\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 48, i32 17 }
@___asan_gen_.523 = private unnamed_addr constant [25 x i8] c"zero_message_hmac_sha256\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 55, i32 17 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 260, i32 5 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 266, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 642, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 646, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1353, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 303, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1766, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1796, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1815, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1825, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1845, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1862, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1873, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1882, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1899, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private constant [41 x i8] c"../drivers/crypto/ux500/hash/hash_core.c\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 1914, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.617, i32 33, i32 31 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.617, i32 34, i32 28 }
@___asan_gen_.616 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.617, i32 35, i32 39 }
@llvm.compiler.used = appending global [220 x ptr] [ptr @__UNIQUE_ID_alias_crypto318, ptr @__UNIQUE_ID_alias_crypto320, ptr @__UNIQUE_ID_alias_crypto322, ptr @__UNIQUE_ID_alias_crypto324, ptr @__UNIQUE_ID_alias_userspace317, ptr @__UNIQUE_ID_alias_userspace319, ptr @__UNIQUE_ID_alias_userspace321, ptr @__UNIQUE_ID_alias_userspace323, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_hash_mode292, ptr @__UNIQUE_ID_hash_modetype291, ptr @__UNIQUE_ID_license316, ptr @__exitcall_ux500_hash_mod_fini, ptr @__initcall__kmod_ux500_hash__313_1959_ux500_hash_mod_init6, ptr @__param_hash_mode, ptr @ahash_algs_register_all._entry, ptr @ahash_algs_register_all._entry_ptr, ptr @ahash_final._entry, ptr @ahash_final._entry_ptr, ptr @ahash_update._entry, ptr @ahash_update._entry_ptr, ptr @get_empty_message_digest._entry, ptr @get_empty_message_digest._entry.118, ptr @get_empty_message_digest._entry_ptr, ptr @get_empty_message_digest._entry_ptr.119, ptr @hash_check_hw._entry, ptr @hash_check_hw._entry_ptr, ptr @hash_disable_power._entry, ptr @hash_disable_power._entry_ptr, ptr @hash_dma_final._entry, ptr @hash_dma_final._entry.84, ptr @hash_dma_final._entry.86, ptr @hash_dma_final._entry.89, ptr @hash_dma_final._entry_ptr, ptr @hash_dma_final._entry_ptr.85, ptr @hash_dma_final._entry_ptr.88, ptr @hash_dma_final._entry_ptr.91, ptr @hash_enable_power._entry, ptr @hash_enable_power._entry.65, ptr @hash_enable_power._entry_ptr, ptr @hash_enable_power._entry_ptr.67, ptr @hash_get_digest._entry, ptr @hash_get_digest._entry_ptr, ptr @hash_hw_final._entry, ptr @hash_hw_final._entry.106, ptr @hash_hw_final._entry.111, ptr @hash_hw_final._entry.114, ptr @hash_hw_final._entry_ptr, ptr @hash_hw_final._entry_ptr.108, ptr @hash_hw_final._entry_ptr.113, ptr @hash_hw_final._entry_ptr.115, ptr @hash_hw_update._entry, ptr @hash_hw_update._entry.13, ptr @hash_hw_update._entry_ptr, ptr @hash_hw_update._entry_ptr.15, ptr @hash_process_data._entry, ptr @hash_process_data._entry.28, ptr @hash_process_data._entry.31, ptr @hash_process_data._entry_ptr, ptr @hash_process_data._entry_ptr.30, ptr @hash_process_data._entry_ptr.33, ptr @hash_resume_state._entry, ptr @hash_resume_state._entry.18, ptr @hash_resume_state._entry_ptr, ptr @hash_resume_state._entry_ptr.19, ptr @hash_save_state._entry, ptr @hash_save_state._entry_ptr, ptr @hash_set_dma_transfer._entry, ptr @hash_set_dma_transfer._entry.101, ptr @hash_set_dma_transfer._entry.97, ptr @hash_set_dma_transfer._entry_ptr, ptr @hash_set_dma_transfer._entry_ptr.103, ptr @hash_set_dma_transfer._entry_ptr.99, ptr @hash_setconfiguration._entry, ptr @hash_setconfiguration._entry.8, ptr @hash_setconfiguration._entry_ptr, ptr @hash_setconfiguration._entry_ptr.10, ptr @hash_setkey._entry, ptr @hash_setkey._entry_ptr, ptr @init_hash_hw._entry, ptr @init_hash_hw._entry_ptr, ptr @ux500_hash_mod_fini, ptr @ux500_hash_probe._entry, ptr @ux500_hash_probe._entry.44, ptr @ux500_hash_probe._entry.47, ptr @ux500_hash_probe._entry.50, ptr @ux500_hash_probe._entry.53, ptr @ux500_hash_probe._entry.56, ptr @ux500_hash_probe._entry.59, ptr @ux500_hash_probe._entry_ptr, ptr @ux500_hash_probe._entry_ptr.46, ptr @ux500_hash_probe._entry_ptr.49, ptr @ux500_hash_probe._entry_ptr.52, ptr @ux500_hash_probe._entry_ptr.55, ptr @ux500_hash_probe._entry_ptr.58, ptr @ux500_hash_probe._entry_ptr.62, ptr @ux500_hash_remove._entry, ptr @ux500_hash_remove._entry.130, ptr @ux500_hash_remove._entry_ptr, ptr @ux500_hash_remove._entry_ptr.132, ptr @ux500_hash_resume._entry, ptr @ux500_hash_resume._entry.143, ptr @ux500_hash_resume._entry_ptr, ptr @ux500_hash_resume._entry_ptr.144, ptr @ux500_hash_shutdown._entry, ptr @ux500_hash_shutdown._entry.135, ptr @ux500_hash_shutdown._entry_ptr, ptr @ux500_hash_shutdown._entry_ptr.136, ptr @ux500_hash_suspend._entry, ptr @ux500_hash_suspend._entry.139, ptr @ux500_hash_suspend._entry_ptr, ptr @ux500_hash_suspend._entry_ptr.141, ptr @hash_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @hash_driver, ptr @driver_data, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @ux500_hash_match, ptr @ux500_hash_pm, ptr @.str.37, ptr @.str.38, ptr @ux500_hash_probe.__key, ptr @.str.39, ptr @ux500_hash_probe.__key.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @init_completion.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.116, ptr @.str.117, ptr @zero_message_hmac_sha1, ptr @zero_message_hmac_sha256, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @sema_init.__key, ptr @.str.145, ptr @.str.146], section "llvm.metadata"
@0 = internal global [155 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setconfiguration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setconfiguration._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_update._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_resume_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_resume_state._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_save_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_check_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_get_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_process_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_process_data._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_process_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hash_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_enable_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_enable_power._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_algs_register_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahash_final._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_dma_final._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_dma_final._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_dma_final._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_dma_final._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_set_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_set_dma_transfer._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_set_dma_transfer._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_final._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_final._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_final._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_hw_final._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_empty_message_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_message_hmac_sha1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_message_hmac_sha256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_empty_message_digest._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_disable_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_remove._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_shutdown._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_suspend._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_hash_resume._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hash_setconfiguration(ptr nocapture noundef readonly %device_data, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algorithm = getelementptr inbounds %struct.hash_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_data, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  %5 = and i32 %4, -805306369
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %shl = shl i32 %8, 4
  %and4 = and i32 %shl, 48
  %or = or i32 %and4, %6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !346
  %12 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %algorithm, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_data, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !344
  %18 = or i32 %17, -2147483648
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !346
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_data, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !344
  %24 = and i32 %23, 2147483647
  %25 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !346
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb
  %oper_mode = getelementptr inbounds %struct.hash_config, ptr %config, i32 0, i32 2
  %29 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oper_mode, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %30, label %if.else96 [
    i32 0, label %if.then26
    i32 1, label %if.then37
  ]

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_data, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !344
  %35 = and i32 %34, -1073741825
  %36 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !346
  br label %cleanup

if.then37:                                        ; preds = %sw.epilog
  %38 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_data, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !344
  %41 = or i32 %40, 1073741824
  %42 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !346
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 5
  %44 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_ctx, align 4
  %keylen = getelementptr inbounds %struct.hash_ctx, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %47)
  %cmp46 = icmp ugt i32 %47, 64
  br i1 %cmp46, label %do.body48, label %do.body68

do.body48:                                        ; preds = %if.then37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_setconfiguration.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_setconfiguration, %do.end58)) #8
          to label %if.then54 [label %do.end58], !srcloc !347

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %48 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_setconfiguration.__UNIQUE_ID_ddebug300, ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #8
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body48
  %50 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_data, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !344
  %53 = or i32 %52, 256
  %54 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !346
  br label %cleanup

do.body68:                                        ; preds = %if.then37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_setconfiguration.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_setconfiguration, %do.end86)) #8
          to label %if.then82 [label %do.end86], !srcloc !347

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %dev83 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %56 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_setconfiguration.__UNIQUE_ID_ddebug301, ptr noundef %57, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #8
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body68
  %58 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_data, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !344
  %61 = and i32 %60, -257
  %62 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !346
  br label %cleanup

if.else96:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev100 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %64 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else96, %do.end86, %do.end58, %if.then26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %do.end58 ], [ 0, %do.end86 ], [ -1, %if.else96 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hash_begin(ptr nocapture noundef readonly %device_data, ptr nocapture readnone %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %str27 = getelementptr inbounds %struct.hash_register, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str27) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not28 = icmp eq i32 %3, 0
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !349
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !350
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  %7 = and i32 %6, 65536
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %11 = or i32 %10, 67108864
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !346
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  %str17 = getelementptr inbounds %struct.hash_register, ptr %15, i32 0, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str17) #8, !srcloc !344
  %17 = and i32 %16, -520093697
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %str22 = getelementptr inbounds %struct.hash_register, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str22, i32 %17) #8, !srcloc !346
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hash_hw_update(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %device_data = alloca ptr, align 4
  %walk = alloca %struct.crypto_hash_walk, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data) #8
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_data, align 4, !annotation !352
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %2, i32 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %walk) #8
  %index3 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 4
  %3 = call ptr @memset(ptr %walk, i32 255, i32 32)
  %4 = ptrtoint ptr %index3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index3, align 4
  %buffer5 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 60
  %call6 = call fastcc i32 @hash_get_device_data(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call i32 @crypto_hash_walk_first(ptr noundef %req, ptr noundef nonnull %walk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end.release_dev_crit_edge, label %if.end9

if.end.release_dev_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dev

if.end9:                                          ; preds = %if.end
  %low_word = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5
  %6 = ptrtoint ptr %low_word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %low_word, align 4
  %8 = xor i32 %call7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp11 = icmp ugt i32 %7, %8
  br i1 %cmp11, label %land.lhs.true, label %if.end9.while.body.preheader_crit_edge

if.end9.while.body.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

land.lhs.true:                                    ; preds = %if.end9
  %length = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp14 = icmp eq i32 %10, -1
  br i1 %cmp14, label %do.end, label %land.lhs.true.while.body.preheader_crit_edge

land.lhs.true.while.body.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #11
  %call17 = call i32 @crypto_hash_walk_done(ptr noundef nonnull %walk, i32 noundef -1) #8
  br label %release_dev

while.body.preheader:                             ; preds = %land.lhs.true.while.body.preheader_crit_edge, %if.end9.while.body.preheader_crit_edge
  %11 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_data, align 4
  %updated.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 9
  %state.i = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 11
  %buffer13.i = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 11, i32 6
  %length.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.preheader
  %msg_length.0109 = phi i32 [ %call28, %if.end27.while.body_crit_edge ], [ %call7, %while.body.preheader ]
  %index.0108 = phi i8 [ %index.2, %if.end27.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %13 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %walk, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond71.i.do.body.i_crit_edge, %while.body
  %index.1 = phi i8 [ %index.0108, %while.body ], [ 0, %do.cond71.i.do.body.i_crit_edge ]
  %data_buffer.addr.0.i = phi ptr [ %14, %while.body ], [ %add.ptr51.i, %do.cond71.i.do.body.i_crit_edge ]
  %msg_length.addr.0.i = phi i32 [ %msg_length.0109, %while.body ], [ %sub54.i, %do.cond71.i.do.body.i_crit_edge ]
  %conv.i = zext i8 %index.1 to i32
  %add.i = add i32 %msg_length.addr.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp.i = icmp slt i32 %add.i, 64
  br i1 %cmp.i, label %do.body.i.for.body.i_crit_edge, label %if.else.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %count.0139.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %data_buffer.addr.0.i, i32 %count.0139.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 1
  %add5.i = add i32 %count.0139.i, %conv.i
  %arrayidx.i = getelementptr i8, ptr %buffer5, i32 %add5.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %count.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %msg_length.addr.0.i
  br i1 %exitcond.not.i, label %do.cond71.thread.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.cond71.thread.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = trunc i32 %msg_length.addr.0.i to i8
  %conv8.i = add i8 %index.1, %18
  br label %if.end27

if.else.i:                                        ; preds = %do.body.i
  %19 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %updated.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else18.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  %call.i = call i32 @hash_resume_state(ptr noundef %12, ptr noundef %state.i) #8
  %21 = call ptr @memmove(ptr %buffer5, ptr %buffer13.i, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.then9.i.if.end28.i_crit_edge, label %if.then9.i.do.end25_crit_edge

if.then9.i.do.end25_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then9.i.if.end28.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.else18.i:                                      ; preds = %if.else.i
  %call19.i = call fastcc i32 @init_hash_hw(ptr noundef %12, ptr noundef %__crt_ctx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end26.i, label %if.else18.i.do.end25_crit_edge

if.else18.i.do.end25_crit_edge:                   ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end26.i:                                       ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %updated.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end26.i, %if.then9.i.if.end28.i_crit_edge
  %23 = ptrtoint ptr %data_buffer.addr.0.i to i32
  %and.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp29.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.1)
  %cmp32.i = icmp eq i8 %index.1, 0
  %or.cond.i = select i1 %cmp29.i, i1 %cmp32.i, i1 false
  br i1 %or.cond.i, label %if.then34.i, label %if.else35.i

if.then34.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  %str.i.i = getelementptr inbounds %struct.hash_register, ptr %25, i32 0, i32 2
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str.i.i) #8, !srcloc !344
  %27 = and i32 %26, -520093697
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %12, align 4
  %str2.i.i = getelementptr inbounds %struct.hash_register, ptr %29, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str2.i.i, i32 %27) #8, !srcloc !346
  br label %if.end48.i

if.else35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %index.1)
  %cmp38135.not.i = icmp eq i8 %index.1, 64
  br i1 %cmp38135.not.i, label %if.else35.i.for.end47.i_crit_edge, label %for.body40.i.preheader

if.else35.i.for.end47.i_crit_edge:                ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47.i

for.body40.i.preheader:                           ; preds = %if.else35.i
  %sub.i = sub nsw i32 64, %conv.i
  %umax = call i32 @llvm.umax.i32(i32 %sub.i, i32 1)
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %for.body40.i.preheader
  %count.1136.i = phi i32 [ %inc46.i, %for.body40.i.for.body40.i_crit_edge ], [ 0, %for.body40.i.preheader ]
  %add.ptr41.i = getelementptr i8, ptr %data_buffer.addr.0.i, i32 %count.1136.i
  %30 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr41.i, align 1
  %add43.i = add i32 %count.1136.i, %conv.i
  %arrayidx44.i = getelementptr i8, ptr %buffer5, i32 %add43.i
  %32 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx44.i, align 1
  %inc46.i = add nuw i32 %count.1136.i, 1
  %exitcond.not = icmp eq i32 %inc46.i, %umax
  br i1 %exitcond.not, label %for.body40.i.for.end47.i_crit_edge, label %for.body40.i.for.body40.i_crit_edge

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i

for.body40.i.for.end47.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47.i

for.end47.i:                                      ; preds = %for.body40.i.for.end47.i_crit_edge, %if.else35.i.for.end47.i_crit_edge
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %12, align 4
  %str.i118.i = getelementptr inbounds %struct.hash_register, ptr %34, i32 0, i32 2
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str.i118.i) #8, !srcloc !344
  %36 = and i32 %35, -520093697
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %12, align 4
  %str2.i119.i = getelementptr inbounds %struct.hash_register, ptr %38, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str2.i119.i, i32 %36) #8, !srcloc !346
  br label %if.end48.i

if.end48.i:                                       ; preds = %for.end47.i, %if.then34.i
  %buffer.sink.i = phi ptr [ %buffer5, %for.end47.i ], [ %data_buffer.addr.0.i, %if.then34.i ]
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %12, align 4
  %din.i120.i = getelementptr inbounds %struct.hash_register, ptr %40, i32 0, i32 1
  call void @__raw_writesl(ptr noundef %din.i120.i, ptr noundef %buffer.sink.i, i32 noundef 16) #8
  %41 = ptrtoint ptr %low_word to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %low_word, align 4
  %add.i.i = add i32 %42, 64
  store i32 %add.i.i, ptr %low_word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %42)
  %cmp.i.i = icmp ugt i32 %42, -65
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end48.i.hash_incrementlength.exit.i_crit_edge

if.end48.i.hash_incrementlength.exit.i_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_incrementlength.exit.i

if.then.i.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i.i, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %length.i.i, align 4
  br label %hash_incrementlength.exit.i

hash_incrementlength.exit.i:                      ; preds = %if.then.i.i, %if.end48.i.hash_incrementlength.exit.i_crit_edge
  %call56.i = call i32 @hash_save_state(ptr noundef %12, ptr noundef %state.i) #8
  %45 = call ptr @memmove(ptr %buffer13.i, ptr %buffer5, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool63.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool63.not.i, label %do.cond71.i, label %hash_incrementlength.exit.i.do.end25_crit_edge

hash_incrementlength.exit.i.do.end25_crit_edge:   ; preds = %hash_incrementlength.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.cond71.i:                                      ; preds = %hash_incrementlength.exit.i
  %sub50.i = sub nsw i32 64, %conv.i
  %sub54.i = sub i32 %msg_length.addr.0.i, %sub50.i
  %add.ptr51.i = getelementptr i8, ptr %data_buffer.addr.0.i, i32 %sub50.i
  %cmp72.not.i = icmp eq i32 %sub54.i, 0
  br i1 %cmp72.not.i, label %do.cond71.i.if.end27_crit_edge, label %do.cond71.i.do.body.i_crit_edge

do.cond71.i.do.body.i_crit_edge:                  ; preds = %do.cond71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond71.i.if.end27_crit_edge:                   ; preds = %do.cond71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end25:                                         ; preds = %hash_incrementlength.exit.i.do.end25_crit_edge, %if.else18.i.do.end25_crit_edge, %if.then9.i.do.end25_crit_edge
  %.str.26.sink = phi ptr [ @.str.26, %if.then9.i.do.end25_crit_edge ], [ @.str.29, %if.else18.i.do.end25_crit_edge ], [ @.str.32, %hash_incrementlength.exit.i.do.end25_crit_edge ]
  %ret.2.i.ph = phi i32 [ -1, %if.then9.i.do.end25_crit_edge ], [ -1, %if.else18.i.do.end25_crit_edge ], [ %call56.i, %hash_incrementlength.exit.i.do.end25_crit_edge ]
  %dev.i = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 3
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull %.str.26.sink, ptr noundef nonnull @.str.27) #11
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 3
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #11
  %call26 = call i32 @crypto_hash_walk_done(ptr noundef nonnull %walk, i32 noundef %ret.2.i.ph) #8
  br label %release_dev

if.end27:                                         ; preds = %do.cond71.i.if.end27_crit_edge, %do.cond71.thread.i
  %index.2 = phi i8 [ %conv8.i, %do.cond71.thread.i ], [ 0, %do.cond71.i.if.end27_crit_edge ]
  %call28 = call i32 @crypto_hash_walk_done(ptr noundef nonnull %walk, i32 noundef 0) #8
  %cmp19.not = icmp eq i32 %call28, 0
  br i1 %cmp19.not, label %while.end, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %index3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %index.2, ptr %index3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_hw_update.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_hw_update, %release_dev)) #8
          to label %if.then38 [label %release_dev], !srcloc !347

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_data, align 4
  %dev39 = getelementptr inbounds %struct.hash_device_data, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev39, align 4
  %55 = ptrtoint ptr %index3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %index3, align 4
  %conv = zext i8 %56 to i32
  %bit_index = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 5
  %57 = ptrtoint ptr %bit_index to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bit_index, align 1
  %conv43 = zext i8 %58 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_hw_update.__UNIQUE_ID_ddebug307, ptr noundef %54, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv43) #8
  br label %release_dev

release_dev:                                      ; preds = %if.then38, %while.end, %do.end25, %do.end, %if.end.release_dev_crit_edge
  %ret.1 = phi i32 [ %call17, %do.end ], [ %ret.2.i.ph, %do.end25 ], [ 0, %if.then38 ], [ 0, %if.end.release_dev_crit_edge ], [ 0, %while.end ]
  %59 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_data, align 4
  %ctx_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %60, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #8
  %current_ctx.i = getelementptr inbounds %struct.hash_device_data, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %current_ctx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %current_ctx.i, align 4
  %device.i = getelementptr inbounds %struct.hash_ctx, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %device.i, align 4
  store ptr null, ptr %current_ctx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #8
  call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %cleanup

cleanup:                                          ; preds = %release_dev, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %release_dev ], [ %call6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %walk) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_get_device_data(ptr noundef %ctx, ptr nocapture noundef writeonly %device_data) unnamed_addr #0 align 64 {
entry:
  %device_iterator = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_iterator) #8
  %0 = ptrtoint ptr %device_iterator to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_iterator, align 4, !annotation !352
  %1 = getelementptr inbounds %struct.klist_iter, ptr %device_iterator, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !352
  %call = tail call i32 @down_interruptible(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @klist_iter_init(ptr noundef nonnull @driver_data, ptr noundef nonnull %device_iterator) #8
  %call1 = call ptr @klist_next(ptr noundef nonnull %device_iterator) #8
  %tobool2.not28 = icmp eq ptr %call1, null
  br i1 %tobool2.not28, label %if.end.while.end.thread_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.then4.while.end.thread_crit_edge, %if.end.while.end.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %device_iterator) #8
  br label %cleanup

while.body:                                       ; preds = %if.then4.while.body_crit_edge, %if.end.while.body_crit_edge
  %device_node.029 = phi ptr [ %call5, %if.then4.while.body_crit_edge ], [ %call1, %if.end.while.body_crit_edge ]
  %ctx_lock = getelementptr i8, ptr %device_node.029, i32 20
  call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr i8, ptr %device_node.029, i32 64
  %3 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %current_ctx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %while.body
  %call5 = call ptr @klist_next(ptr noundef nonnull %device_iterator) #8
  call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %tobool2.not = icmp eq ptr %call5, null
  br i1 %tobool2.not, label %if.then4.while.end.thread_crit_edge, label %if.then4.while.body_crit_edge

if.then4.while.body_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then4.while.end.thread_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

if.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %current_ctx.le = getelementptr i8, ptr %device_node.029, i32 64
  %add.ptr = getelementptr i8, ptr %device_node.029, i32 -8
  %5 = ptrtoint ptr %current_ctx.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %current_ctx.le, align 4
  %device = getelementptr inbounds %struct.hash_ctx, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %device, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  call void @klist_iter_exit(ptr noundef nonnull %device_iterator) #8
  %7 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %device_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %while.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ -16, %while.end.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_iterator) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_hash_walk_first(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_hash_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hash_resume_state(ptr nocapture noundef readonly %device_data, ptr noundef readonly %device_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %device_state, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %3)
  %cmp1 = icmp ugt i8 %3, 64
  br i1 %cmp1, label %if.end.do.end8_crit_edge, label %lor.lhs.false

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %low_word = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %low_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %low_word, align 4
  %rem = and i32 %5, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3.not = icmp eq i32 %rem, 0
  br i1 %cmp3.not, label %if.end10, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %dev9 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  %11 = or i32 %10, 67108864
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !346
  %14 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_state, align 4
  %and15 = and i32 %15, 73679
  %16 = tail call i32 @llvm.bswap.i32(i32 %and15)
  %17 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !346
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  %22 = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp ne i32 %22, 0
  br label %if.end35

if.end35:                                         ; preds = %if.end35.if.end35_crit_edge, %if.end10
  %count.069 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end35.if.end35_crit_edge ]
  %arrayidx = getelementptr %struct.hash_state, ptr %device_state, i32 0, i32 3, i32 %count.069
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_data, align 4
  %arrayidx37 = getelementptr %struct.hash_register, ptr %27, i32 0, i32 11, i32 %count.069
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 %25) #8, !srcloc !346
  %inc = add nuw nsw i32 %count.069, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %count.069)
  %cmp28 = icmp ult i32 %count.069, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %count.069)
  %cmp30 = icmp ult i32 %count.069, 35
  %brmerge = select i1 %cmp30, i1 true, i1 %tobool.not
  %or.cond = select i1 %cmp28, i1 %brmerge, i1 false
  br i1 %or.cond, label %if.end35.if.end35_crit_edge, label %for.end

if.end35.if.end35_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.end:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %csfull = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 4
  %28 = ptrtoint ptr %csfull to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %csfull, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_data, align 4
  %csfull39 = getelementptr inbounds %struct.hash_register, ptr %32, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csfull39, i32 %30) #8, !srcloc !346
  %csdatain = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 5
  %33 = ptrtoint ptr %csdatain to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %csdatain, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_data, align 4
  %csdatain41 = getelementptr inbounds %struct.hash_register, ptr %37, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csdatain41, i32 %35) #8, !srcloc !346
  %str_reg = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 1
  %38 = ptrtoint ptr %str_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %str_reg, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_data, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %42, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str, i32 %40) #8, !srcloc !346
  %43 = tail call i32 @llvm.bswap.i32(i32 %15)
  %44 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !346
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end8, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end8 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hash_save_state(ptr nocapture noundef readonly %device_data, ptr noundef writeonly %device_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %device_state, null
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %str76 = getelementptr inbounds %struct.hash_register, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str76) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not77 = icmp eq i32 %3, 0
  br i1 %tobool.not77, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.end6_crit_edge

while.cond.preheader.do.end6_crit_edge:           ; preds = %while.cond.preheader
  br label %do.end6

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) #11
  br label %cleanup

do.end6:                                          ; preds = %do.end6.do.end6_crit_edge, %while.cond.preheader.do.end6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !356
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !357
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  %9 = and i32 %8, 65536
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end6.while.end_crit_edge, label %do.end6.do.end6_crit_edge

do.end6.do.end6_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end6.while.end_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end6.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !344
  %13 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_data, align 4
  %str17 = getelementptr inbounds %struct.hash_register, ptr %14, i32 0, i32 2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str17) #8, !srcloc !344
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %str_reg = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 1
  %17 = ptrtoint ptr %str_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %str_reg, align 4
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %din = getelementptr inbounds %struct.hash_register, ptr %19, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %din) #8, !srcloc !344
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %din_reg = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 2
  %22 = ptrtoint ptr %din_reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %din_reg, align 4
  %23 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_data, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %26 = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp ne i32 %26, 0
  br label %if.end39

if.end39:                                         ; preds = %if.end39.if.end39_crit_edge, %while.end
  %count.078 = phi i32 [ 0, %while.end ], [ %inc, %if.end39.if.end39_crit_edge ]
  %27 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_data, align 4
  %arrayidx = getelementptr %struct.hash_register, ptr %28, i32 0, i32 11, i32 %count.078
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !344
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %arrayidx44 = getelementptr %struct.hash_state, ptr %device_state, i32 0, i32 3, i32 %count.078
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx44, align 4
  %inc = add nuw nsw i32 %count.078, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %count.078)
  %cmp35 = icmp ult i32 %count.078, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %count.078)
  %cmp36 = icmp ult i32 %count.078, 35
  %brmerge = select i1 %cmp36, i1 true, i1 %tobool32.not
  %or.cond = select i1 %cmp35, i1 %brmerge, i1 false
  br i1 %or.cond, label %if.end39.if.end39_crit_edge, label %for.end

if.end39.if.end39_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

for.end:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %12)
  %33 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_data, align 4
  %csfull = getelementptr inbounds %struct.hash_register, ptr %34, i32 0, i32 9
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %csfull) #8, !srcloc !344
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %csfull49 = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 4
  %37 = ptrtoint ptr %csfull49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %csfull49, align 4
  %38 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_data, align 4
  %csdatain = getelementptr inbounds %struct.hash_register, ptr %39, i32 0, i32 10
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %csdatain) #8, !srcloc !344
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %csdatain54 = getelementptr inbounds %struct.hash_state, ptr %device_state, i32 0, i32 5
  %42 = ptrtoint ptr %csdatain54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %csdatain54, align 4
  %43 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %32, ptr %device_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hash_check_hw(ptr nocapture noundef readonly %device_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %periphid0 = getelementptr inbounds %struct.hash_register, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphid0) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %2)
  %cmp = icmp eq i32 %2, -536870912
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_data, align 4
  %periphid1 = getelementptr inbounds %struct.hash_register, ptr %4, i32 0, i32 14
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphid1) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %5)
  %cmp5 = icmp eq i32 %5, 83886080
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %periphid2 = getelementptr inbounds %struct.hash_register, ptr %7, i32 0, i32 15
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphid2) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 939524096, i32 %8)
  %cmp11 = icmp eq i32 %8, 939524096
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true6.do.end_crit_edge

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %9 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_data, align 4
  %periphid3 = getelementptr inbounds %struct.hash_register, ptr %10, i32 0, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphid3) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true12.do.end_crit_edge

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true12
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  %cellid0 = getelementptr inbounds %struct.hash_register, ptr %13, i32 0, i32 17
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cellid0) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %14)
  %cmp23 = icmp eq i32 %14, 218103808
  br i1 %cmp23, label %land.lhs.true24, label %land.lhs.true18.do.end_crit_edge

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true18
  %15 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_data, align 4
  %cellid1 = getelementptr inbounds %struct.hash_register, ptr %16, i32 0, i32 18
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cellid1) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %17)
  %cmp29 = icmp eq i32 %17, -268435456
  br i1 %cmp29, label %land.lhs.true30, label %land.lhs.true24.do.end_crit_edge

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %cellid2 = getelementptr inbounds %struct.hash_register, ptr %19, i32 0, i32 19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cellid2) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %20)
  %cmp35 = icmp eq i32 %20, 83886080
  br i1 %cmp35, label %land.lhs.true36, label %land.lhs.true30.do.end_crit_edge

land.lhs.true30.do.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true36:                                  ; preds = %land.lhs.true30
  %21 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_data, align 4
  %cellid3 = getelementptr inbounds %struct.hash_register, ptr %22, i32 0, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cellid3) #8, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1325400064, i32 %23)
  %cmp41 = icmp eq i32 %23, -1325400064
  br i1 %cmp41, label %land.lhs.true36.return_crit_edge, label %land.lhs.true36.do.end_crit_edge

land.lhs.true36.do.end_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true36.return_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %land.lhs.true36.do.end_crit_edge, %land.lhs.true30.do.end_crit_edge, %land.lhs.true24.do.end_crit_edge, %land.lhs.true18.do.end_crit_edge, %land.lhs.true12.do.end_crit_edge, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #11
  br label %return

return:                                           ; preds = %do.end, %land.lhs.true36.return_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %land.lhs.true36.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hash_get_digest(ptr nocapture noundef readonly %device_data, ptr noundef %digest, i32 noundef %algorithm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %algorithm to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %algorithm, label %do.end [
    i32 0, label %entry.do.body5_crit_edge
    i32 1, label %if.else
  ]

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %algorithm) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.body5:                                         ; preds = %if.else, %entry.do.body5_crit_edge
  %loop_ctr.0 = phi i32 [ 8, %if.else ], [ 5, %entry.do.body5_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_get_digest.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_get_digest, %for.body)) #8
          to label %if.then9 [label %for.body], !srcloc !347

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev10, align 4
  %5 = ptrtoint ptr %digest to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_get_digest.__UNIQUE_ID_ddebug308, ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %5) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9, %do.body5
  %count.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body5 ], [ 0, %if.then9 ]
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %arrayidx = getelementptr %struct.hash_register, ptr %7, i32 0, i32 3, i32 %count.056
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !344
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shr = lshr i32 %9, 24
  %conv = trunc i32 %shr to i8
  %mul = shl i32 %count.056, 2
  %arrayidx17 = getelementptr i8, ptr %digest, i32 %mul
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx17, align 1
  %shr18 = lshr i32 %9, 16
  %conv20 = trunc i32 %shr18 to i8
  %add = or i32 %mul, 1
  %arrayidx22 = getelementptr i8, ptr %digest, i32 %add
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %arrayidx22, align 1
  %shr23 = lshr i32 %9, 8
  %conv25 = trunc i32 %shr23 to i8
  %add27 = or i32 %mul, 2
  %arrayidx28 = getelementptr i8, ptr %digest, i32 %add27
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %arrayidx28, align 1
  %conv31 = trunc i32 %9 to i8
  %add33 = or i32 %mul, 3
  %arrayidx34 = getelementptr i8, ptr %digest, i32 %add33
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv31, ptr %arrayidx34, align 1
  %inc = add nuw nsw i32 %count.056, 1
  %exitcond.not = icmp eq i32 %inc, %loop_ctr.0
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ux500_hash_mod_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hash_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_mod_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @klist_init(ptr noundef nonnull @driver_data, ptr noundef null, ptr noundef null) #8
  %0 = call ptr @memset(ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 0), i32 0, i32 12)
  %1 = call ptr @memset(ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 5), i32 0, i32 10)
  store i32 0, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1), align 4
  store i32 -559067475, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 2), align 4
  store ptr inttoptr (i32 -1 to ptr), ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 3), align 4
  store ptr @.str.145, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 2), align 4
  store i8 0, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 3), align 4
  store i8 2, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4, i32 4), align 1
  store i32 0, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 2), ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 2, i32 0), align 4
  store ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 2), ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 2, i32 1), align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1, i32 0, i32 4), ptr noundef nonnull @.str.146, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hash_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_hash_hw(ptr nocapture noundef readonly %device_data, ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.hash_ctx, ptr %ctx, i32 0, i32 2
  %call = tail call i32 @hash_setconfiguration(ptr noundef %device_data, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_data, align 4
  %str27.i = getelementptr inbounds %struct.hash_register, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str27.i) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not28.i = icmp eq i32 %5, 0
  br i1 %tobool.not28.i, label %if.end.hash_begin.exit_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  br label %do.end.i

if.end.hash_begin.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !349
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !350
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %str.i = getelementptr inbounds %struct.hash_register, ptr %7, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str.i) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  %9 = and i32 %8, 65536
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i.hash_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.hash_begin.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_begin.exit

hash_begin.exit:                                  ; preds = %do.end.i.hash_begin.exit_crit_edge, %if.end.hash_begin.exit_crit_edge
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %13 = or i32 %12, 67108864
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !346
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %str17.i = getelementptr inbounds %struct.hash_register, ptr %17, i32 0, i32 2
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str17.i) #8, !srcloc !344
  %19 = and i32 %18, -520093697
  %20 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_data, align 4
  %str22.i = getelementptr inbounds %struct.hash_register, ptr %21, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str22.i, i32 %19) #8, !srcloc !346
  %oper_mode = getelementptr inbounds %struct.hash_ctx, ptr %ctx, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oper_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then2, label %hash_begin.exit.cleanup_crit_edge

hash_begin.exit.cleanup_crit_edge:                ; preds = %hash_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %hash_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %keylen = getelementptr inbounds %struct.hash_ctx, ptr %ctx, i32 0, i32 1
  %26 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %keylen, align 4
  tail call fastcc void @hash_hw_write_key(ptr noundef %device_data, ptr noundef %25, i32 noundef %27)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %hash_begin.exit.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_hw_write_key(ptr nocapture noundef readonly %device_data, ptr noundef %key, i32 noundef %keylen) unnamed_addr #0 align 64 {
entry:
  %word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word) #8
  %0 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %word, align 4
  %1 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_data, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %2, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  %4 = and i32 %3, -520093697
  %5 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_data, align 4
  %str2 = getelementptr inbounds %struct.hash_register, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str2, i32 %4) #8, !srcloc !346
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp77 = icmp ugt i32 %keylen, 3
  br i1 %cmp77, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %key.addr.079 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %keylen.addr.078 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %keylen, %entry.while.body_crit_edge ]
  %7 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_data, align 4
  %din = getelementptr inbounds %struct.hash_register, ptr %8, i32 0, i32 1
  tail call void @__raw_writesl(ptr noundef %din, ptr noundef %key.addr.079, i32 noundef 1) #8
  %sub = add i32 %keylen.addr.078, -4
  %add.ptr = getelementptr i8, ptr %key.addr.079, i32 4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %keylen.addr.0.lcssa = phi i32 [ %keylen, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %key.addr.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keylen.addr.0.lcssa)
  %tobool.not = icmp eq i32 %keylen.addr.0.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %while.cond4.preheader

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond4.preheader:                            ; preds = %while.end
  %9 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %word, align 4
  br label %while.body6

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.cond4.preheader
  %keylen.addr.182 = phi i32 [ %keylen.addr.0.lcssa, %while.cond4.preheader ], [ %sub7, %while.body6.while.body6_crit_edge ]
  %sub7 = add i32 %keylen.addr.182, -1
  %arrayidx = getelementptr i8, ptr %key.addr.0.lcssa, i32 %sub7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %mul = shl i32 %sub7, 3
  %shl = shl i32 %conv, %mul
  %12 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %word, align 4
  %or = or i32 %shl, %13
  store i32 %or, ptr %word, align 4
  %tobool5.not = icmp eq i32 %sub7, 0
  br i1 %tobool5.not, label %while.end9, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body6

while.end9:                                       ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  %din11 = getelementptr inbounds %struct.hash_register, ptr %15, i32 0, i32 1
  call void @__raw_writesl(ptr noundef %din11, ptr noundef nonnull %word, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %while.end9, %while.end.if.end_crit_edge
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %str1583 = getelementptr inbounds %struct.hash_register, ptr %17, i32 0, i32 2
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str1583) #8, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not84 = icmp eq i32 %19, 0
  br i1 %tobool20.not84, label %if.end.while.end28_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

if.end.while.end28_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !360
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !361
  %20 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_data, align 4
  %str15 = getelementptr inbounds %struct.hash_register, ptr %21, i32 0, i32 2
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str15) #8, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  %23 = and i32 %22, 65536
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %do.end.while.end28_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end28_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.end28:                                      ; preds = %do.end.while.end28_crit_edge, %if.end.while.end28_crit_edge
  %24 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_data, align 4
  %str32 = getelementptr inbounds %struct.hash_register, ptr %25, i32 0, i32 2
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str32) #8, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  %27 = or i32 %26, 65536
  %28 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_data, align 4
  %str39 = getelementptr inbounds %struct.hash_register, ptr %29, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str39, i32 %27) #8, !srcloc !346
  %30 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_data, align 4
  %str4485 = getelementptr inbounds %struct.hash_register, ptr %31, i32 0, i32 2
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str4485) #8, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool49.not86 = icmp eq i32 %33, 0
  br i1 %tobool49.not86, label %while.end28.while.end60_crit_edge, label %while.end28.do.end55_crit_edge

while.end28.do.end55_crit_edge:                   ; preds = %while.end28
  br label %do.end55

while.end28.while.end60_crit_edge:                ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end60

do.end55:                                         ; preds = %do.end55.do.end55_crit_edge, %while.end28.do.end55_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !364
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !365
  %34 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_data, align 4
  %str44 = getelementptr inbounds %struct.hash_register, ptr %35, i32 0, i32 2
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str44) #8, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  %37 = and i32 %36, 65536
  %tobool49.not = icmp eq i32 %37, 0
  br i1 %tobool49.not, label %do.end55.while.end60_crit_edge, label %do.end55.do.end55_crit_edge

do.end55.do.end55_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end55.while.end60_crit_edge:                   ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end60

while.end60:                                      ; preds = %do.end55.while.end60_crit_edge, %while.end28.while.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 520, i32 noundef 2848) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %current_ctx, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_hash_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_hash_probe, %cleanup)) #8
          to label %if.then11 [label %cleanup], !srcloc !347

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_hash_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %phybase = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %phybase to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phybase, align 4
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call3) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %do.body21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call14 to i32
  br label %cleanup

do.body21:                                        ; preds = %if.end13
  %ctx_lock = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @ux500_hash_probe.__key, i16 noundef signext 3) #8
  %power_state_lock = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %power_state_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @ux500_hash_probe.__key.40, i16 noundef signext 3) #8
  %call29 = tail call ptr @regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.42) #8
  %regulator = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %regulator, align 4
  %cmp.i136 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %do.end35, label %if.end39

do.end35:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37) #11
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %10 = ptrtoint ptr %9 to i32
  store ptr null, ptr %regulator, align 4
  br label %cleanup

if.end39:                                         ; preds = %do.body21
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %clk, align 4
  %cmp.i137 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37) #11
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %out_regulator

if.end49:                                         ; preds = %if.end39
  %call51 = tail call i32 @clk_prepare(ptr noundef %call40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37) #11
  br label %out_regulator

if.end57:                                         ; preds = %if.end49
  %call58 = tail call fastcc i32 @hash_enable_power(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.37) #11
  br label %out_clk_unprepare

if.end64:                                         ; preds = %if.end57
  %call65 = tail call i32 @hash_check_hw(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %if.end64.out_power_crit_edge

if.end64.out_power_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_power

if.end71:                                         ; preds = %if.end64
  %15 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then72, label %if.end71.if.end73_crit_edge

if.end71.if.end73_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then72:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hash_dma_setup_channel(ptr noundef nonnull %call.i, ptr noundef %dev1)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end71.if.end73_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %list_node = getelementptr inbounds %struct.hash_device_data, ptr %call.i, i32 0, i32 2
  tail call void @klist_add_tail(ptr noundef %list_node, ptr noundef nonnull @driver_data) #8
  tail call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %call74 = tail call fastcc i32 @ahash_algs_register_all(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.end83, label %if.end73.out_power_crit_edge

if.end73.out_power_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_power

do.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.60) #11
  br label %cleanup

out_power:                                        ; preds = %if.end73.out_power_crit_edge, %if.end64.out_power_crit_edge
  %.str.57.sink = phi ptr [ @.str.54, %if.end64.out_power_crit_edge ], [ @.str.57, %if.end73.out_power_crit_edge ]
  %ret.0 = phi i32 [ %call65, %if.end64.out_power_crit_edge ], [ %call74, %if.end73.out_power_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.57.sink, ptr noundef nonnull @.str.37) #11
  %call84 = tail call fastcc i32 @hash_disable_power(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %out_clk_unprepare

out_clk_unprepare:                                ; preds = %out_power, %do.end63
  %ret.1 = phi i32 [ %call58, %do.end63 ], [ %ret.0, %out_power ]
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %18) #8
  br label %out_regulator

out_regulator:                                    ; preds = %out_clk_unprepare, %do.end56, %do.end46
  %ret.2 = phi i32 [ %14, %do.end46 ], [ %call51, %do.end56 ], [ %ret.1, %out_clk_unprepare ]
  %19 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regulator, align 4
  tail call void @regulator_put(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %out_regulator, %do.end83, %do.end35, %if.then17, %if.then11, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end83 ], [ %6, %if.then17 ], [ %10, %do.end35 ], [ %ret.2, %out_regulator ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.then11 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @down_trylock(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ctx_lock = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool6.not = icmp eq ptr %3, null
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %list_node = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 2
  %call11 = tail call i32 @klist_node_attached(ptr noundef %list_node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @klist_remove(ptr noundef %list_node) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %4, getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 0, i32 1)
  br i1 %cmp.i.not, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 0, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 1, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 2, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 3, i32 2)) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %dev1.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %power_state_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %power_state_lock.i) #8
  %power_state.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %power_state.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %hash_disable_power.exit.thread, label %if.end.i

hash_disable_power.exit.thread:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  br label %if.end26

if.end.i:                                         ; preds = %if.end19
  %clk.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  %regulator.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regulator.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %hash_disable_power.exit.thread42, label %do.end25

hash_disable_power.exit.thread42:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %power_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  br label %if.end26

do.end25:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #11
  %14 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %power_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %hash_disable_power.exit.thread42, %hash_disable_power.exit.thread
  %clk = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %16) #8
  %regulator = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regulator, align 4
  tail call void @regulator_put(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %if.then7 ], [ 0, %if.end26 ], [ -12, %do.end ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ux500_hash_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.133) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_lock = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @down_trylock(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end17_crit_edge, label %do.body6

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_hash_shutdown.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_hash_shutdown, %if.end17)) #8
          to label %if.then12 [label %if.end17], !srcloc !347

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_hash_shutdown.__UNIQUE_ID_ddebug311, ptr noundef %dev13, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %do.body6, %if.then2.if.end17_crit_edge
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ctx, align 4
  %incdec.ptr = getelementptr %struct.hash_ctx, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %current_ctx, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %list_node = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 2
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
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %6, getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 0, i32 1)
  br i1 %cmp.i.not, label %if.then28, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 0, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 1, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 2, i32 2)) #8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 3, i32 2)) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %dev1.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %power_state_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %power_state_lock.i) #8
  %power_state.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_state.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %hash_disable_power.exit.thread, label %if.end.i

hash_disable_power.exit.thread:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  %clk.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  %regulator.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regulator.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %hash_disable_power.exit.thread52, label %do.end35

hash_disable_power.exit.thread52:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %power_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  br label %cleanup

do.end35:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #11
  %16 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %power_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.133) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %hash_disable_power.exit.thread52, %hash_disable_power.exit.thread, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_enable_power(ptr noundef %device_data, i1 noundef zeroext %restore_device_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %power_state_lock = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %power_state_lock) #8
  %power_state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 6
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_state, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %regulator = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 8
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #11
  br label %out

if.end:                                           ; preds = %if.then
  %clk = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 9
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64) #11
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call11 = tail call i32 @regulator_disable(ptr noundef %9) #8
  br label %out

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %power_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %power_state, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry.if.end14_crit_edge
  %restore_dev_state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 10
  %11 = ptrtoint ptr %restore_dev_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %restore_dev_state, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp ne i8 %12, 0
  %13 = and i1 %tobool15.not, %restore_device_state
  br i1 %13, label %if.then18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %restore_dev_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %restore_dev_state, align 4
  %state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 11
  %call20 = tail call i32 @hash_resume_state(ptr noundef %device_data, ptr noundef %state)
  br label %out

out:                                              ; preds = %if.then18, %if.end14.out_crit_edge, %do.end9, %do.end
  %ret.1 = phi i32 [ 0, %if.then18 ], [ 0, %if.end14.out_crit_edge ], [ %call, %do.end ], [ %call11, %do.end9 ]
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_dma_setup_channel(ptr noundef %device_data, ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf) #8
  %2 = getelementptr inbounds i8, ptr %conf, i32 36
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !352
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %conf, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 2
  %phybase = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 1
  %6 = ptrtoint ptr %phybase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phybase, align 4
  %add = add i32 %7, 4
  %8 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 3
  %9 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 4
  %10 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 5
  %11 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 6
  %12 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %dst_maxburst, align 4
  %src_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 7
  %13 = ptrtoint ptr %src_port_window_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %src_port_window_size, align 4
  %dst_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 8
  %14 = ptrtoint ptr %dst_port_window_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dst_port_window_size, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 9
  %15 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %device_fc, align 4
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 10
  %16 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 11
  %17 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %peripheral_size, align 4
  %dma = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 12
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %dma) #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %cfg_mem2hash = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %cfg_mem2hash to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cfg_mem2hash, align 4
  %dma_filter = getelementptr inbounds %struct.hash_platform_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_filter, align 4
  %call = tail call ptr @__dma_request_channel(ptr noundef %dma, ptr noundef %23, ptr noundef %20, ptr noundef null) #8
  %chan_mem2hash = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %chan_mem2hash to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %chan_mem2hash, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %entry.dmaengine_slave_config.exit_crit_edge, label %if.then.i

entry.dmaengine_slave_config.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %28(ptr noundef %call, ptr noundef nonnull %conf) #8
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %entry.dmaengine_slave_config.exit_crit_edge
  %complete = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 12, i32 1
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 12, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_completion.__key) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahash_algs_register_all(ptr nocapture noundef readonly %device_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 0, i32 2, i32 11, i32 3, i32 9)) #11
  br label %cleanup

for.body5.preheader:                              ; preds = %for.inc.2.for.body5.preheader_crit_edge, %for.inc.1.for.body5.preheader_crit_edge, %for.inc.for.body5.preheader_crit_edge
  %exitcond.not.1 = phi i1 [ false, %for.inc.2.for.body5.preheader_crit_edge ], [ true, %for.inc.1.for.body5.preheader_crit_edge ], [ false, %for.inc.for.body5.preheader_crit_edge ]
  %i.023.lcssa.ph = phi i32 [ 3, %for.inc.2.for.body5.preheader_crit_edge ], [ 2, %for.inc.1.for.body5.preheader_crit_edge ], [ 1, %for.inc.for.body5.preheader_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.3, %for.inc.2.for.body5.preheader_crit_edge ], [ %call.2, %for.inc.1.for.body5.preheader_crit_edge ], [ %call.1, %for.inc.for.body5.preheader_crit_edge ]
  %dev31 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %2 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev31, align 4
  %cra_driver_name32 = getelementptr [4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 %i.023.lcssa.ph, i32 2, i32 11, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.69, ptr noundef %cra_driver_name32) #11
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 0, i32 2)) #8
  br i1 %tobool.not.1, label %for.body5.1, label %for.body5.preheader.cleanup_crit_edge

for.body5.preheader.cleanup_crit_edge:            ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 1, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body5.preheader_crit_edge

for.inc.for.body5.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.preheader

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 2, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body5.preheader_crit_edge

for.inc.1.for.body5.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 3, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.for.body5.preheader_crit_edge

for.inc.2.for.body5.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.preheader

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body5.1:                                      ; preds = %for.body5.preheader
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 1, i32 2)) #8
  br i1 %exitcond.not.1, label %for.body5.1.cleanup_crit_edge, label %for.body5.2

for.body5.1.cleanup_crit_edge:                    ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body5.2:                                      ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([4 x %struct.hash_algo_template], ptr @hash_algs, i32 0, i32 2, i32 2)) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body5.2, %for.body5.1.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.body5.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body5.2 ], [ %call.lcssa.ph, %for.body5.1.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body5.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_disable_power(ptr noundef %device_data, i1 noundef zeroext %save_device_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %power_state_lock = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %power_state_lock) #8
  %power_state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 6
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_state, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  br i1 %save_device_state, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 11
  %call = tail call i32 @hash_save_state(ptr noundef %device_data, ptr noundef %state)
  %restore_dev_state = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 10
  %4 = ptrtoint ptr %restore_dev_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %restore_dev_state, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %clk = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 9
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  %regulator = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 8
  %7 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regulator, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %do.end

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge
  %9 = ptrtoint ptr %power_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %power_state, align 4
  br label %out

out:                                              ; preds = %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end8 ], [ 0, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_init(ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %keylen = getelementptr i8, ptr %1, i32 132
  %4 = ptrtoint ptr %keylen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %keylen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = call ptr @memset(ptr %__ctx.i, i32 0, i32 304)
  %updated = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 9
  %6 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %updated, align 1
  %7 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then3:                                         ; preds = %if.end
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp4 = icmp ult i32 %9, 4
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %dma_mode = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %10 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dma_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_hash_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_hash_init, %if.end41)) #8
          to label %if.then11 [label %if.end41], !srcloc !347

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ux500_hash_init.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 4) #8
  br label %if.end41

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %9)
  %cmp14 = icmp ugt i32 %9, 1023
  br i1 %cmp14, label %land.lhs.true, label %if.else.if.else19_crit_edge

if.else.if.else19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

land.lhs.true:                                    ; preds = %if.else
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp29.i.i = icmp slt i32 %9, 1
  %tobool.not30.i.i = icmp eq ptr %12, null
  %or.cond31.i.i = or i1 %cmp29.i.i, %tobool.not30.i.i
  br i1 %or.cond31.i.i, label %land.lhs.true.if.else19_crit_edge, label %land.lhs.true.while.body.i.i_crit_edge

land.lhs.true.while.body.i.i_crit_edge:           ; preds = %land.lhs.true
  br label %while.body.i.i

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %land.lhs.true.while.body.i.i_crit_edge
  %aligned_data.0.off038.i.i = phi i1 [ %aligned_data.1.off0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ true, %land.lhs.true.while.body.i.i_crit_edge ]
  %nents.037.i.i = phi i32 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %land.lhs.true.while.body.i.i_crit_edge ]
  %size.addr.036.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %9, %land.lhs.true.while.body.i.i_crit_edge ]
  %sg.addr.032.i.i = phi ptr [ %call.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %12, %land.lhs.true.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %nents.037.i.i, 1
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.032.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i.i, align 4
  %sub.i.i = sub i32 %size.addr.036.i.i, %14
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.032.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i, align 4
  %and.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i, label %while.body.i.i.if.then.i.i_crit_edge

while.body.i.i.if.then.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %and4.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.i.i = icmp ne i32 %and4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i.i, 0
  %or.cond28.i.i = select i1 %cmp5.i.i, i1 %cmp7.i.i, i1 false
  br i1 %or.cond28.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %while.body.i.i.if.then.i.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %aligned_data.1.off0.i.i = phi i1 [ %aligned_data.0.off038.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge ], [ false, %if.then.i.i ]
  %call.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.032.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %hash_dma_valid_data.exit, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

hash_dma_valid_data.exit:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %nents.037.i.i)
  %phi.cmp.i = icmp ult i32 %nents.037.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp12.not.i.i = icmp eq i32 %sub.i.i, 0
  %cmp.i = select i1 %cmp12.not.i.i, i1 %phi.cmp.i, i1 false
  %spec.select.i = select i1 %cmp.i, i1 %aligned_data.1.off0.i.i, i1 false
  br i1 %spec.select.i, label %if.then17, label %hash_dma_valid_data.exit.if.else19_crit_edge

hash_dma_valid_data.exit.if.else19_crit_edge:     ; preds = %hash_dma_valid_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

if.then17:                                        ; preds = %hash_dma_valid_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dma_mode18 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %17 = ptrtoint ptr %dma_mode18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %dma_mode18, align 4
  br label %if.end41

if.else19:                                        ; preds = %hash_dma_valid_data.exit.if.else19_crit_edge, %land.lhs.true.if.else19_crit_edge, %if.else.if.else19_crit_edge
  %dma_mode20 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %18 = ptrtoint ptr %dma_mode20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dma_mode20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_hash_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_hash_init, %if.end41)) #8
          to label %if.then35 [label %if.end41], !srcloc !347

if.then35:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ux500_hash_init.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.71, i32 noundef 1024) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.else19, %if.then17, %if.then11, %if.then5, %if.end.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_update(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %dma_mode = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %1 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dma_mode, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @hash_hw_update(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge
  %ret.010 = phi i32 [ %call1, %do.end ], [ 0, %if.end.if.end5_crit_edge ], [ 0, %lor.lhs.false.if.end5_crit_edge ]
  ret i32 %ret.010
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_final(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_final, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ahash_final.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %dma_mode = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %3 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dma_mode, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @hash_dma_final(ptr noundef %req)
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %call8 = tail call fastcc i32 @hash_hw_final(ptr noundef %req)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %call8, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %do.end14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_sha1_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %config.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config.i, align 4
  %algorithm.i = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %algorithm.i, align 4
  %oper_mode.i = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %oper_mode.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 148
  %5 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %digestsize.i, align 4
  %call4.i = tail call i32 @ux500_hash_init(ptr noundef %req) #8
  %6 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %dma_mode.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %7 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.ahash_update.exit_crit_edge

lor.lhs.false.i.ahash_update.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call i32 @hash_hw_update(ptr noundef %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.ahash_update.exit_crit_edge, label %do.end.i

if.end.i.ahash_update.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11
  br label %ahash_update.exit

ahash_update.exit:                                ; preds = %do.end.i, %if.end.i.ahash_update.exit_crit_edge, %lor.lhs.false.i.ahash_update.exit_crit_edge
  %ret.010.i = phi i32 [ %call1.i, %do.end.i ], [ 0, %if.end.i.ahash_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.ahash_update.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_sha1_digest, %do.end.i9)) #8
          to label %if.then.i [label %do.end.i9], !srcloc !347

if.then.i:                                        ; preds = %ahash_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ahash_final.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %10) #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i, %ahash_update.exit
  %11 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i9.if.else.i_crit_edge

do.end.i9.if.else.i_crit_edge:                    ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i9
  %dma_mode.i10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %12 = ptrtoint ptr %dma_mode.i10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode.i10, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @hash_dma_final(ptr noundef %req) #8
  br label %if.end9.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.i9.if.else.i_crit_edge
  %call8.i = tail call fastcc i32 @hash_hw_final(ptr noundef %req) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then6.i
  %ret.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.ahash_final.exit_crit_edge, label %do.end14.i

if.end9.i.ahash_final.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_final.exit

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78) #11
  br label %ahash_final.exit

ahash_final.exit:                                 ; preds = %do.end14.i, %if.end9.i.ahash_final.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.010.i)
  %tobool3.not = icmp eq i32 %ret.010.i, 0
  %cond = select i1 %tobool3.not, i32 %ret.0.i, i32 %ret.010.i
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_noexport(ptr nocapture noundef readnone %req, ptr nocapture noundef readnone %out) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ahash_noimport(ptr nocapture noundef readnone %req, ptr nocapture noundef readnone %in) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hash_cra_init(ptr nocapture noundef %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %2 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 308, ptr %reqsize1.i, align 32
  %config = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %config, align 4
  %algorithm = getelementptr i8, ptr %1, i32 -380
  %4 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algorithm, align 4
  %algorithm4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %6 = ptrtoint ptr %algorithm4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %algorithm4, align 4
  %oper_mode = getelementptr i8, ptr %1, i32 -376
  %7 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oper_mode, align 8
  %oper_mode7 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %9 = ptrtoint ptr %oper_mode7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %oper_mode7, align 4
  %halg = getelementptr i8, ptr %1, i32 -128
  %10 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %halg, align 128
  %digestsize8 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %12 = ptrtoint ptr %digestsize8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %digestsize8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahash_sha256_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %config.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config.i, align 4
  %algorithm.i = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %algorithm.i, align 4
  %oper_mode.i = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %oper_mode.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 148
  %5 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %digestsize.i, align 4
  %call4.i = tail call i32 @ux500_hash_init(ptr noundef %req) #8
  %6 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %dma_mode.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %7 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.ahash_update.exit_crit_edge

lor.lhs.false.i.ahash_update.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call i32 @hash_hw_update(ptr noundef %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.ahash_update.exit_crit_edge, label %do.end.i

if.end.i.ahash_update.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11
  br label %ahash_update.exit

ahash_update.exit:                                ; preds = %do.end.i, %if.end.i.ahash_update.exit_crit_edge, %lor.lhs.false.i.ahash_update.exit_crit_edge
  %ret.010.i = phi i32 [ %call1.i, %do.end.i ], [ 0, %if.end.i.ahash_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.ahash_update.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ahash_sha256_digest, %do.end.i9)) #8
          to label %if.then.i [label %do.end.i9], !srcloc !347

if.then.i:                                        ; preds = %ahash_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ahash_final.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %10) #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i, %ahash_update.exit
  %11 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i9.if.else.i_crit_edge

do.end.i9.if.else.i_crit_edge:                    ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i9
  %dma_mode.i10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %12 = ptrtoint ptr %dma_mode.i10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode.i10, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @hash_dma_final(ptr noundef %req) #8
  br label %if.end9.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.i9.if.else.i_crit_edge
  %call8.i = tail call fastcc i32 @hash_hw_final(ptr noundef %req) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then6.i
  %ret.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.ahash_final.exit_crit_edge, label %do.end14.i

if.end9.i.ahash_final.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_final.exit

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78) #11
  br label %ahash_final.exit

ahash_final.exit:                                 ; preds = %do.end14.i, %if.end9.i.ahash_final.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.010.i)
  %tobool3.not = icmp eq i32 %ret.010.i, 0
  %cond = select i1 %tobool3.not, i32 %ret.0.i, i32 %ret.010.i
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_sha1_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %config.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config.i, align 4
  %algorithm.i = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %algorithm.i, align 4
  %oper_mode.i = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %oper_mode.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 148
  %5 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %digestsize.i, align 4
  %call4.i = tail call i32 @ux500_hash_init(ptr noundef %req) #8
  %6 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %dma_mode.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %7 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.ahash_update.exit_crit_edge

lor.lhs.false.i.ahash_update.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call i32 @hash_hw_update(ptr noundef %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.ahash_update.exit_crit_edge, label %do.end.i

if.end.i.ahash_update.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11
  br label %ahash_update.exit

ahash_update.exit:                                ; preds = %do.end.i, %if.end.i.ahash_update.exit_crit_edge, %lor.lhs.false.i.ahash_update.exit_crit_edge
  %ret.010.i = phi i32 [ %call1.i, %do.end.i ], [ 0, %if.end.i.ahash_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.ahash_update.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hmac_sha1_digest, %do.end.i9)) #8
          to label %if.then.i [label %do.end.i9], !srcloc !347

if.then.i:                                        ; preds = %ahash_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ahash_final.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %10) #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i, %ahash_update.exit
  %11 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i9.if.else.i_crit_edge

do.end.i9.if.else.i_crit_edge:                    ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i9
  %dma_mode.i10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %12 = ptrtoint ptr %dma_mode.i10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode.i10, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @hash_dma_final(ptr noundef %req) #8
  br label %if.end9.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.i9.if.else.i_crit_edge
  %call8.i = tail call fastcc i32 @hash_hw_final(ptr noundef %req) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then6.i
  %ret.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.ahash_final.exit_crit_edge, label %do.end14.i

if.end9.i.ahash_final.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_final.exit

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78) #11
  br label %ahash_final.exit

ahash_final.exit:                                 ; preds = %do.end14.i, %if.end9.i.ahash_final.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.010.i)
  %tobool3.not = icmp eq i32 %ret.010.i, 0
  %cond = select i1 %tobool3.not, i32 %ret.0.i, i32 %ret.010.i
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_sha1_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #8
  %0 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %__crt_ctx.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef 0) #11
  br label %hash_setkey.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %keylen5.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %keylen5.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %keylen, ptr %keylen5.i, align 4
  br label %hash_setkey.exit

hash_setkey.exit:                                 ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_sha256_digest(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %config.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config.i, align 4
  %algorithm.i = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %algorithm.i, align 4
  %oper_mode.i = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %oper_mode.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %oper_mode.i, align 4
  %digestsize.i = getelementptr i8, ptr %1, i32 148
  %5 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %digestsize.i, align 4
  %call4.i = tail call i32 @ux500_hash_init(ptr noundef %req) #8
  %6 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %dma_mode.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %7 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.ahash_update.exit_crit_edge

lor.lhs.false.i.ahash_update.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call i32 @hash_hw_update(ptr noundef %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.ahash_update.exit_crit_edge, label %do.end.i

if.end.i.ahash_update.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_update.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #11
  br label %ahash_update.exit

ahash_update.exit:                                ; preds = %do.end.i, %if.end.i.ahash_update.exit_crit_edge, %lor.lhs.false.i.ahash_update.exit_crit_edge
  %ret.010.i = phi i32 [ %call1.i, %do.end.i ], [ 0, %if.end.i.ahash_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.ahash_update.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahash_final.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hmac_sha256_digest, %do.end.i9)) #8
          to label %if.then.i [label %do.end.i9], !srcloc !347

if.then.i:                                        ; preds = %ahash_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ahash_final.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %10) #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i, %ahash_update.exit
  %11 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i9.if.else.i_crit_edge

do.end.i9.if.else.i_crit_edge:                    ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i9
  %dma_mode.i10 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %12 = ptrtoint ptr %dma_mode.i10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode.i10, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @hash_dma_final(ptr noundef %req) #8
  br label %if.end9.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.i9.if.else.i_crit_edge
  %call8.i = tail call fastcc i32 @hash_hw_final(ptr noundef %req) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then6.i
  %ret.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %call8.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.ahash_final.exit_crit_edge, label %do.end14.i

if.end9.i.ahash_final.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahash_final.exit

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78) #11
  br label %ahash_final.exit

ahash_final.exit:                                 ; preds = %do.end14.i, %if.end9.i.ahash_final.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.010.i)
  %tobool3.not = icmp eq i32 %ret.010.i, 0
  %cond = select i1 %tobool3.not, i32 %ret.0.i, i32 %ret.010.i
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmac_sha256_setkey(ptr nocapture noundef writeonly %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1
  %call1.i = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3264) #8
  %0 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %__crt_ctx.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef 1) #11
  br label %hash_setkey.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %keylen5.i = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %keylen5.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %keylen, ptr %keylen5.i, align 4
  br label %hash_setkey.exit

hash_setkey.exit:                                 ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_dma_final(ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  %device_data = alloca ptr, align 4
  %digest = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data) #8
  %2 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_data, align 4, !annotation !352
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %digest) #8
  %3 = call ptr @memset(ptr %digest, i32 255, i32 32)
  %call3 = call fastcc i32 @hash_get_device_data(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_dma_final.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_dma_final, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !347

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_dma_final.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %updated = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 9
  %9 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %do.end.if.then24_crit_edge, label %if.then12

do.end.if.then24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then12:                                        ; preds = %do.end
  %11 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_data, align 4
  %state = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 11
  %call13 = tail call i32 @hash_resume_state(ptr noundef %12, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_data, align 4
  %dev19 = getelementptr inbounds %struct.hash_device_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.82) #11
  br label %out

if.end21:                                         ; preds = %if.then12
  %17 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool23.not = icmp eq i8 %.pr, 0
  br i1 %tobool23.not, label %if.end21.if.then24_crit_edge, label %if.end21.if.end81_crit_edge

if.end21.if.end81_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %if.end21.if.then24_crit_edge, %do.end.if.then24_crit_edge
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %config = getelementptr i8, ptr %1, i32 136
  %call25 = tail call i32 @hash_setconfiguration(ptr noundef %19, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_data, align 4
  %dev31 = getelementptr inbounds %struct.hash_device_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.82) #11
  br label %out

if.end32:                                         ; preds = %if.then24
  %24 = load i32, ptr @hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not = icmp eq i32 %24, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.end32
  %dma_mode = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 8
  %25 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dma_mode, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not = icmp eq i8 %26, 0
  br i1 %tobool33.not, label %lor.lhs.false.if.then34_crit_edge, label %if.else

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false.if.then34_crit_edge, %if.end32.if.then34_crit_edge
  %27 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !344
  %32 = and i32 %31, -134217729
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !346
  br label %if.end54

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !344
  %40 = or i32 %39, 134217728
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !346
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !344
  %46 = or i32 %45, 33554432
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !346
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then34
  %49 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  %54 = or i32 %53, 67108864
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !346
  %oper_mode = getelementptr i8, ptr %1, i32 144
  %57 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %oper_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp66 = icmp eq i32 %58, 1
  br i1 %cmp66, label %if.then67, label %if.end54.if.end68_crit_edge

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then67:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_data, align 4
  %61 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_ctx.i.i, align 4
  %keylen = getelementptr i8, ptr %1, i32 132
  %63 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %keylen, align 4
  tail call fastcc void @hash_hw_write_key(ptr noundef %60, ptr noundef %62, i32 noundef %64)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end54.if.end68_crit_edge
  %65 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device_data, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %68, i32 0, i32 2
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %70 = and i32 %69, -520093697
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %72 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nbytes, align 8
  %mul = shl i32 %73, 3
  %rem = and i32 %mul, 24
  %or77 = or i32 %rem, %71
  %74 = tail call i32 @llvm.bswap.i32(i32 %or77)
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %66, align 4
  %str79 = getelementptr inbounds %struct.hash_register, ptr %76, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str79, i32 %74) #8, !srcloc !346
  %77 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %updated, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.end68, %if.end21.if.end81_crit_edge
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %78 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %src, align 4
  %nbytes82 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %80 = ptrtoint ptr %nbytes82 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nbytes82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp29.i = icmp slt i32 %81, 1
  %tobool.not30.i = icmp eq ptr %79, null
  %or.cond31.i = or i1 %tobool.not30.i, %cmp29.i
  br i1 %or.cond31.i, label %if.end81.hash_get_nents.exit_crit_edge, label %if.end81.while.body.i_crit_edge

if.end81.while.body.i_crit_edge:                  ; preds = %if.end81
  br label %while.body.i

if.end81.hash_get_nents.exit_crit_edge:           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_get_nents.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end81.while.body.i_crit_edge
  %nents.037.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end81.while.body.i_crit_edge ]
  %size.addr.036.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %81, %if.end81.while.body.i_crit_edge ]
  %sg.addr.032.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %79, %if.end81.while.body.i_crit_edge ]
  %inc.i = add i32 %nents.037.i, 1
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.032.i, i32 0, i32 2
  %82 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %size.addr.036.i, %83
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.032.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  %tobool.not.i = icmp eq ptr %call.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %while.body.i.hash_get_nents.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.hash_get_nents.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_get_nents.exit

hash_get_nents.exit:                              ; preds = %while.body.i.hash_get_nents.exit_crit_edge, %if.end81.hash_get_nents.exit_crit_edge
  %size.addr.0.lcssa.i = phi i32 [ %81, %if.end81.hash_get_nents.exit_crit_edge ], [ %sub.i, %while.body.i.hash_get_nents.exit_crit_edge ]
  %nents.0.lcssa.i = phi i32 [ 0, %if.end81.hash_get_nents.exit_crit_edge ], [ %inc.i, %while.body.i.hash_get_nents.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa.i)
  %cmp12.not.i = icmp eq i32 %size.addr.0.lcssa.i, 0
  %nents.0..i = select i1 %cmp12.not.i, i32 %nents.0.lcssa.i, i32 -14
  %device = getelementptr i8, ptr %1, i32 152
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 4
  %nents = getelementptr inbounds %struct.hash_device_data, ptr %85, i32 0, i32 12, i32 6
  %86 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %nents.0..i, ptr %nents, align 4
  %87 = load ptr, ptr %device, align 4
  %nents86 = getelementptr inbounds %struct.hash_device_data, ptr %87, i32 0, i32 12, i32 6
  %88 = ptrtoint ptr %nents86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nents86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool87.not = icmp eq i32 %89, 0
  br i1 %tobool87.not, label %do.end91, label %if.end96

do.end91:                                         ; preds = %hash_get_nents.exit
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device_data, align 4
  %dev92 = getelementptr inbounds %struct.hash_device_data, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev92, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.82) #11
  %94 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device, align 4
  %nents95 = getelementptr inbounds %struct.hash_device_data, ptr %95, i32 0, i32 12, i32 6
  %96 = ptrtoint ptr %nents95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nents95, align 4
  br label %out

if.end96:                                         ; preds = %hash_get_nents.exit
  %98 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %src, align 4
  %100 = ptrtoint ptr %nbytes82 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nbytes82, align 8
  %call.i206 = tail call fastcc i32 @hash_set_dma_transfer(ptr noundef %__crt_ctx.i.i, ptr noundef %99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %if.end96.hash_dma_write.exit_crit_edge, label %do.body.i

if.end96.hash_dma_write.exit_crit_edge:           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_dma_write.exit

do.body.i:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_dma_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_dma_final, %hash_dma_write.exit)) #8
          to label %if.then6.i [label %hash_dma_write.exit], !srcloc !347

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device, align 4
  %dev.i = getelementptr inbounds %struct.hash_device_data, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_dma_write.__UNIQUE_ID_ddebug294, ptr noundef %105, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #8
  br label %hash_dma_write.exit

hash_dma_write.exit:                              ; preds = %if.then6.i, %do.body.i, %if.end96.hash_dma_write.exit_crit_edge
  %retval.0.i208 = phi i32 [ %call.i206, %if.then6.i ], [ %101, %if.end96.hash_dma_write.exit_crit_edge ], [ %call.i206, %do.body.i ]
  %106 = ptrtoint ptr %nbytes82 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nbytes82, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i208, i32 %107)
  %cmp101.not = icmp eq i32 %retval.0.i208, %107
  br i1 %cmp101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %hash_dma_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device_data, align 4
  %dev106 = getelementptr inbounds %struct.hash_device_data, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.82) #11
  br label %out

if.end107:                                        ; preds = %hash_dma_write.exit
  %112 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device, align 4
  %complete = getelementptr inbounds %struct.hash_device_data, ptr %113, i32 0, i32 12, i32 1
  tail call void @wait_for_completion(ptr noundef %complete) #8
  %114 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device, align 4
  %chan_mem2hash.i = getelementptr inbounds %struct.hash_device_data, ptr %115, i32 0, i32 12, i32 2
  %116 = ptrtoint ptr %chan_mem2hash.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chan_mem2hash.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 47
  %120 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i, label %if.end107.hash_dma_done.exit_crit_edge, label %if.then.i.i

if.end107.hash_dma_done.exit_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_dma_done.exit

if.then.i.i:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %121(ptr noundef %117) #8
  br label %hash_dma_done.exit

hash_dma_done.exit:                               ; preds = %if.then.i.i, %if.end107.hash_dma_done.exit_crit_edge
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %117, align 4
  %dev.i210 = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %dev.i210 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i210, align 4
  %126 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device, align 4
  %sg.i = getelementptr inbounds %struct.hash_device_data, ptr %127, i32 0, i32 12, i32 5
  %128 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sg.i, align 4
  %nents.i = getelementptr inbounds %struct.hash_device_data, ptr %127, i32 0, i32 12, i32 6
  %130 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %125, ptr noundef %129, i32 noundef %131, i32 noundef 1, i32 noundef 0) #8
  %132 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device_data, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %str113217 = getelementptr inbounds %struct.hash_register, ptr %135, i32 0, i32 2
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str113217) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  %137 = and i32 %136, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool118.not218 = icmp eq i32 %137, 0
  br i1 %tobool118.not218, label %hash_dma_done.exit.while.end_crit_edge, label %hash_dma_done.exit.do.end123_crit_edge

hash_dma_done.exit.do.end123_crit_edge:           ; preds = %hash_dma_done.exit
  br label %do.end123

hash_dma_done.exit.while.end_crit_edge:           ; preds = %hash_dma_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end123:                                        ; preds = %do.end123.do.end123_crit_edge, %hash_dma_done.exit.do.end123_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !371
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %133, align 4
  %str113 = getelementptr inbounds %struct.hash_register, ptr %139, i32 0, i32 2
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str113) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  %141 = and i32 %140, 65536
  %tobool118.not = icmp eq i32 %141, 0
  br i1 %tobool118.not, label %do.end123.while.end_crit_edge, label %do.end123.do.end123_crit_edge

do.end123.do.end123_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end123

do.end123.while.end_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end123.while.end_crit_edge, %hash_dma_done.exit.while.end_crit_edge
  %oper_mode129 = getelementptr i8, ptr %1, i32 144
  %142 = ptrtoint ptr %oper_mode129 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %oper_mode129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp130 = icmp eq i32 %143, 1
  br i1 %cmp130, label %land.lhs.true, label %while.end.if.end158_crit_edge

while.end.if.end158_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

land.lhs.true:                                    ; preds = %while.end
  %144 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool132.not = icmp eq ptr %145, null
  br i1 %tobool132.not, label %land.lhs.true.if.end158_crit_edge, label %if.then133

land.lhs.true.if.end158_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then133:                                       ; preds = %land.lhs.true
  %keylen135 = getelementptr i8, ptr %1, i32 132
  %146 = ptrtoint ptr %keylen135 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %keylen135, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_dma_final.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_dma_final, %do.end157)) #8
          to label %if.then152 [label %do.end157], !srcloc !347

if.then152:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device_data, align 4
  %dev153 = getelementptr inbounds %struct.hash_device_data, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev153, align 4
  %152 = ptrtoint ptr %keylen135 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %keylen135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_dma_final.__UNIQUE_ID_ddebug303, ptr noundef %151, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.82, i32 noundef %153) #8
  br label %do.end157

do.end157:                                        ; preds = %if.then152, %if.then133
  %154 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %device_data, align 4
  tail call fastcc void @hash_hw_write_key(ptr noundef %155, ptr noundef nonnull %145, i32 noundef %147)
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %land.lhs.true.if.end158_crit_edge, %while.end.if.end158_crit_edge
  %156 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %device_data, align 4
  %algorithm = getelementptr i8, ptr %1, i32 140
  %158 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %algorithm, align 4
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %159, label %do.end.i [
    i32 0, label %if.end158.do.body5.i_crit_edge
    i32 1, label %if.else.i
  ]

if.end158.do.body5.i_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

do.end.i:                                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i211 = getelementptr inbounds %struct.hash_device_data, ptr %157, i32 0, i32 3
  %161 = ptrtoint ptr %dev.i211 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i211, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %159) #11
  br label %hash_get_digest.exit

if.else.i:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.else.i, %if.end158.do.body5.i_crit_edge
  %loop_ctr.0.i = phi i32 [ 8, %if.else.i ], [ 5, %if.end158.do.body5.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_get_digest.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_dma_final, %for.body.i)) #8
          to label %if.then9.i [label %for.body.i], !srcloc !347

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.hash_device_data, ptr %157, i32 0, i32 3
  %163 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev10.i, align 4
  %165 = ptrtoint ptr %digest to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_get_digest.__UNIQUE_ID_ddebug308, ptr noundef %164, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %165) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.i, %do.body5.i
  %count.056.i = phi i32 [ %inc.i212, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then9.i ], [ 0, %do.body5.i ]
  %166 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %157, align 4
  %arrayidx.i = getelementptr %struct.hash_register, ptr %167, i32 0, i32 3, i32 %count.056.i
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #8, !srcloc !344
  %169 = call i32 @llvm.bswap.i32(i32 %168) #8
  %shr.i = lshr i32 %169, 24
  %conv.i = trunc i32 %shr.i to i8
  %mul.i = shl i32 %count.056.i, 2
  %arrayidx17.i = getelementptr i8, ptr %digest, i32 %mul.i
  %170 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv.i, ptr %arrayidx17.i, align 1
  %shr18.i = lshr i32 %169, 16
  %conv20.i = trunc i32 %shr18.i to i8
  %add.i = or i32 %mul.i, 1
  %arrayidx22.i = getelementptr i8, ptr %digest, i32 %add.i
  %171 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv20.i, ptr %arrayidx22.i, align 1
  %shr23.i = lshr i32 %169, 8
  %conv25.i = trunc i32 %shr23.i to i8
  %add27.i = or i32 %mul.i, 2
  %arrayidx28.i = getelementptr i8, ptr %digest, i32 %add27.i
  %172 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv25.i, ptr %arrayidx28.i, align 1
  %conv31.i = trunc i32 %169 to i8
  %add33.i = or i32 %mul.i, 3
  %arrayidx34.i = getelementptr i8, ptr %digest, i32 %add33.i
  %173 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv31.i, ptr %arrayidx34.i, align 1
  %inc.i212 = add nuw nsw i32 %count.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i212, %loop_ctr.0.i
  br i1 %exitcond.not.i, label %for.body.i.hash_get_digest.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.hash_get_digest.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_get_digest.exit

hash_get_digest.exit:                             ; preds = %for.body.i.hash_get_digest.exit_crit_edge, %do.end.i
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %174 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %result, align 32
  %digestsize = getelementptr i8, ptr %1, i32 148
  %176 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %digestsize, align 4
  %178 = call ptr @memcpy(ptr %175, ptr %digest, i32 %177)
  br label %out

out:                                              ; preds = %hash_get_digest.exit, %do.end105, %do.end91, %do.end30, %do.end18
  %ret.2 = phi i32 [ -1, %do.end18 ], [ %retval.0.i208, %do.end105 ], [ 0, %hash_get_digest.exit ], [ %97, %do.end91 ], [ -1, %do.end30 ]
  %179 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %device_data, align 4
  %ctx_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %180, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #8
  %current_ctx.i = getelementptr inbounds %struct.hash_device_data, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %current_ctx.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %current_ctx.i, align 4
  %device.i213 = getelementptr inbounds %struct.hash_ctx, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %device.i213 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %device.i213, align 4
  store ptr null, ptr %current_ctx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #8
  call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %184 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @kfree(ptr noundef %185) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %digest) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_hw_final(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %device_data = alloca ptr, align 4
  %digest = alloca [32 x i8], align 1
  %zero_hash = alloca [32 x i8], align 1
  %zero_hash_size = alloca i32, align 4
  %zero_digest = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data) #8
  %2 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_data, align 4, !annotation !352
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %digest) #8
  %3 = call ptr @memset(ptr %digest, i32 255, i32 32)
  %call3 = call fastcc i32 @hash_get_device_data(ptr noundef %__crt_ctx.i.i, ptr noundef nonnull %device_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup165_crit_edge

entry.cleanup165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup165

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_hw_final.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_hw_final, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !347

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %__crt_ctx.i.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_hw_final.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.104, i32 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %updated = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 9
  %9 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  %11 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_data, align 4
  %state = getelementptr inbounds %struct.hash_device_data, ptr %12, i32 0, i32 11
  %call13 = tail call i32 @hash_resume_state(ptr noundef %12, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end86_crit_edge, label %do.end18

if.then12.if.end86_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_data, align 4
  %dev19 = getelementptr inbounds %struct.hash_device_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.104) #11
  br label %out

if.else:                                          ; preds = %do.end
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end86_crit_edge

if.else.if.end86_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true:                                    ; preds = %if.else
  %keylen = getelementptr i8, ptr %1, i32 132
  %19 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.then22, label %land.lhs.true76

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %zero_hash) #8
  %21 = call ptr @memset(ptr %zero_hash, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero_hash_size) #8
  %22 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %zero_hash_size, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero_digest) #8
  %23 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %zero_digest, align 1
  %24 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_data, align 4
  %call23 = call fastcc i32 @get_empty_message_digest(ptr noundef %25, ptr noundef nonnull %zero_hash, ptr noundef nonnull %zero_hash_size, ptr noundef nonnull %zero_digest)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.then22.do.end65_crit_edge

if.then22.do.end65_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65

land.lhs.true25:                                  ; preds = %if.then22
  %26 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %zero_hash_size, align 4
  %digestsize = getelementptr i8, ptr %1, i32 148
  %28 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %digestsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp26 = icmp eq i32 %27, %29
  %30 = ptrtoint ptr %zero_digest to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %zero_digest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool34.not = icmp eq i8 %31, 0
  br i1 %cmp26, label %land.lhs.true33, label %land.lhs.true40, !prof !372

land.lhs.true33:                                  ; preds = %land.lhs.true25
  br i1 %tobool34.not, label %land.lhs.true33.do.body43_crit_edge, label %if.then35

land.lhs.true33.do.body43_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  %result = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %32 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %result, align 32
  %34 = call ptr @memcpy(ptr %33, ptr %zero_hash, i32 %27)
  br label %cleanup

land.lhs.true40:                                  ; preds = %land.lhs.true25
  br i1 %tobool34.not, label %land.lhs.true40.do.body43_crit_edge, label %land.lhs.true40.do.end65_crit_edge

land.lhs.true40.do.end65_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65

land.lhs.true40.do.body43_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

do.body43:                                        ; preds = %land.lhs.true40.do.body43_crit_edge, %land.lhs.true33.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_hw_final.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_hw_final, %cleanup.thread)) #8
          to label %if.then57 [label %cleanup.thread], !srcloc !347

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_data, align 4
  %dev58 = getelementptr inbounds %struct.hash_device_data, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_hw_final.__UNIQUE_ID_ddebug305, ptr noundef %38, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104) #8
  br label %cleanup.thread

do.end65:                                         ; preds = %land.lhs.true40.do.end65_crit_edge, %if.then22.do.end65_crit_edge
  %39 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_data, align 4
  %dev66 = getelementptr inbounds %struct.hash_device_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev66, align 4
  %43 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %zero_hash_size, align 4
  %digestsize67 = getelementptr i8, ptr %1, i32 148
  %45 = ptrtoint ptr %digestsize67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %digestsize67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp68 = icmp eq i32 %44, %46
  %cond = select i1 %cmp68, ptr @.str.109, ptr @.str.110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.104, i32 noundef %call23, ptr noundef nonnull %cond) #11
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then57, %do.body43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero_digest) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero_hash_size) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zero_hash) #8
  br label %if.end86

cleanup:                                          ; preds = %do.end65, %if.then35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero_digest) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero_hash_size) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zero_hash) #8
  br label %out

land.lhs.true76:                                  ; preds = %land.lhs.true
  %47 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp78.not = icmp eq i32 %48, 0
  br i1 %cmp78.not, label %land.lhs.true76.if.end86_crit_edge, label %if.then79

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_data, align 4
  %dev83 = getelementptr inbounds %struct.hash_device_data, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.104) #11
  br label %out

if.end86:                                         ; preds = %land.lhs.true76.if.end86_crit_edge, %cleanup.thread, %if.else.if.end86_crit_edge, %if.then12.if.end86_crit_edge
  %53 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %updated, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  br i1 %tobool88.not, label %if.then89, label %if.end86.if.end98_crit_edge

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then89:                                        ; preds = %if.end86
  %55 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_data, align 4
  %call90 = tail call fastcc i32 @init_hash_hw(ptr noundef %56, ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then89.if.end98_crit_edge, label %do.end95

if.then89.if.end98_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.end95:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_data, align 4
  %dev96 = getelementptr inbounds %struct.hash_device_data, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.104) #11
  br label %out

if.end98:                                         ; preds = %if.then89.if.end98_crit_edge, %if.end86.if.end98_crit_edge
  %index = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 4
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool100.not = icmp eq i8 %62, 0
  %63 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_data, align 4
  br i1 %tobool100.not, label %if.else105, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 2, i32 5, i32 60
  tail call fastcc void @hash_messagepad(ptr noundef %64, ptr noundef %buffer, i8 noundef zeroext %62)
  br label %if.end129

if.else105:                                       ; preds = %if.end98
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %66, i32 0, i32 2
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  %68 = or i32 %67, 65536
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 4
  %str110 = getelementptr inbounds %struct.hash_register, ptr %70, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str110, i32 %68) #8, !srcloc !346
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %64, align 4
  %str114216 = getelementptr inbounds %struct.hash_register, ptr %72, i32 0, i32 2
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str114216) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool119.not217 = icmp eq i32 %74, 0
  br i1 %tobool119.not217, label %if.else105.if.end129_crit_edge, label %if.else105.do.end124_crit_edge

if.else105.do.end124_crit_edge:                   ; preds = %if.else105
  br label %do.end124

if.else105.if.end129_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

do.end124:                                        ; preds = %do.end124.do.end124_crit_edge, %if.else105.do.end124_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !375
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !376
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %64, align 4
  %str114 = getelementptr inbounds %struct.hash_register, ptr %76, i32 0, i32 2
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str114) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  %78 = and i32 %77, 65536
  %tobool119.not = icmp eq i32 %78, 0
  br i1 %tobool119.not, label %do.end124.if.end129_crit_edge, label %do.end124.do.end124_crit_edge

do.end124.do.end124_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

do.end124.if.end129_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.end129:                                        ; preds = %do.end124.if.end129_crit_edge, %if.else105.if.end129_crit_edge, %if.then101
  %oper_mode = getelementptr i8, ptr %1, i32 144
  %79 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %oper_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp130 = icmp eq i32 %80, 1
  br i1 %cmp130, label %land.lhs.true131, label %if.end129.if.end158_crit_edge

if.end129.if.end158_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

land.lhs.true131:                                 ; preds = %if.end129
  %81 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool132.not = icmp eq ptr %82, null
  br i1 %tobool132.not, label %land.lhs.true131.if.end158_crit_edge, label %if.then133

land.lhs.true131.if.end158_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then133:                                       ; preds = %land.lhs.true131
  %keylen135 = getelementptr i8, ptr %1, i32 132
  %83 = ptrtoint ptr %keylen135 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %keylen135, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_hw_final.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_hw_final, %do.end157)) #8
          to label %if.then152 [label %do.end157], !srcloc !347

if.then152:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_data, align 4
  %dev153 = getelementptr inbounds %struct.hash_device_data, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev153, align 4
  %89 = ptrtoint ptr %keylen135 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %keylen135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_hw_final.__UNIQUE_ID_ddebug306, ptr noundef %88, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.104, i32 noundef %90) #8
  br label %do.end157

do.end157:                                        ; preds = %if.then152, %if.then133
  %91 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device_data, align 4
  tail call fastcc void @hash_hw_write_key(ptr noundef %92, ptr noundef nonnull %82, i32 noundef %84)
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %land.lhs.true131.if.end158_crit_edge, %if.end129.if.end158_crit_edge
  %93 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device_data, align 4
  %algorithm = getelementptr i8, ptr %1, i32 140
  %95 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %algorithm, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %96, label %do.end.i [
    i32 0, label %if.end158.do.body5.i_crit_edge
    i32 1, label %if.else.i
  ]

if.end158.do.body5.i_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

do.end.i:                                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hash_device_data, ptr %94, i32 0, i32 3
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %96) #11
  br label %hash_get_digest.exit

if.else.i:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.else.i, %if.end158.do.body5.i_crit_edge
  %loop_ctr.0.i = phi i32 [ 8, %if.else.i ], [ 5, %if.end158.do.body5.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_get_digest.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_hw_final, %for.body.i)) #8
          to label %if.then9.i [label %for.body.i], !srcloc !347

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.hash_device_data, ptr %94, i32 0, i32 3
  %100 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev10.i, align 4
  %102 = ptrtoint ptr %digest to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_get_digest.__UNIQUE_ID_ddebug308, ptr noundef %101, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %102) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.i, %do.body5.i
  %count.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then9.i ], [ 0, %do.body5.i ]
  %103 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %94, align 4
  %arrayidx.i = getelementptr %struct.hash_register, ptr %104, i32 0, i32 3, i32 %count.056.i
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #8, !srcloc !344
  %106 = call i32 @llvm.bswap.i32(i32 %105) #8
  %shr.i = lshr i32 %106, 24
  %conv.i = trunc i32 %shr.i to i8
  %mul.i = shl i32 %count.056.i, 2
  %arrayidx17.i = getelementptr i8, ptr %digest, i32 %mul.i
  %107 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv.i, ptr %arrayidx17.i, align 1
  %shr18.i = lshr i32 %106, 16
  %conv20.i = trunc i32 %shr18.i to i8
  %add.i = or i32 %mul.i, 1
  %arrayidx22.i = getelementptr i8, ptr %digest, i32 %add.i
  %108 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv20.i, ptr %arrayidx22.i, align 1
  %shr23.i = lshr i32 %106, 8
  %conv25.i = trunc i32 %shr23.i to i8
  %add27.i = or i32 %mul.i, 2
  %arrayidx28.i = getelementptr i8, ptr %digest, i32 %add27.i
  %109 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv25.i, ptr %arrayidx28.i, align 1
  %conv31.i = trunc i32 %106 to i8
  %add33.i = or i32 %mul.i, 3
  %arrayidx34.i = getelementptr i8, ptr %digest, i32 %add33.i
  %110 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv31.i, ptr %arrayidx34.i, align 1
  %inc.i = add nuw nsw i32 %count.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %loop_ctr.0.i
  br i1 %exitcond.not.i, label %for.body.i.hash_get_digest.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.hash_get_digest.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_get_digest.exit

hash_get_digest.exit:                             ; preds = %for.body.i.hash_get_digest.exit_crit_edge, %do.end.i
  %result161 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %111 = ptrtoint ptr %result161 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %result161, align 32
  %digestsize163 = getelementptr i8, ptr %1, i32 148
  %113 = ptrtoint ptr %digestsize163 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %digestsize163, align 4
  %115 = call ptr @memcpy(ptr %112, ptr %digest, i32 %114)
  br label %out

out:                                              ; preds = %hash_get_digest.exit, %do.end95, %if.then79, %cleanup, %do.end18
  %ret.2 = phi i32 [ -1, %do.end18 ], [ 0, %hash_get_digest.exit ], [ %call90, %do.end95 ], [ %call23, %cleanup ], [ -1, %if.then79 ]
  %116 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device_data, align 4
  %ctx_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %117, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #8
  %current_ctx.i = getelementptr inbounds %struct.hash_device_data, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %current_ctx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %current_ctx.i, align 4
  %device.i = getelementptr inbounds %struct.hash_ctx, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %device.i, align 4
  store ptr null, ptr %current_ctx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #8
  call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  %121 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %__crt_ctx.i.i, align 4
  call void @kfree(ptr noundef %122) #8
  br label %cleanup165

cleanup165:                                       ; preds = %out, %entry.cleanup165_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ %call3, %entry.cleanup165_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %digest) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_set_dma_transfer(ptr noundef %ctx, ptr noundef %sg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, -4
  store i32 %and, ptr %length, align 4
  %device2 = getelementptr inbounds %struct.hash_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %chan_mem2hash = getelementptr inbounds %struct.hash_device_data, ptr %3, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %chan_mem2hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_mem2hash, align 4
  %sg5 = getelementptr inbounds %struct.hash_device_data, ptr %3, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %sg5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sg, ptr %sg5, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %dev7 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %11 = load ptr, ptr %device2, align 4
  %sg10 = getelementptr inbounds %struct.hash_device_data, ptr %11, i32 0, i32 12, i32 5
  %12 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg10, align 4
  %nents = getelementptr inbounds %struct.hash_device_data, ptr %11, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %10, ptr noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #8
  %16 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2, align 4
  %sg_len = getelementptr inbounds %struct.hash_device_data, ptr %17, i32 0, i32 12, i32 4
  %18 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %sg_len, align 4
  %19 = load ptr, ptr %device2, align 4
  %sg_len17 = getelementptr inbounds %struct.hash_device_data, ptr %19, i32 0, i32 12, i32 4
  %20 = ptrtoint ptr %sg_len17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %do.end21, label %do.body25

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.hash_device_data, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96) #11
  br label %cleanup

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_set_dma_transfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_set_dma_transfer, %do.end36)) #8
          to label %if.then31 [label %do.end36], !srcloc !347

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device2, align 4
  %dev33 = getelementptr inbounds %struct.hash_device_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_set_dma_transfer.__UNIQUE_ID_ddebug293, ptr noundef %27, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.96) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body25
  %28 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device2, align 4
  %sg39 = getelementptr inbounds %struct.hash_device_data, ptr %29, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %sg39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg39, align 4
  %sg_len42 = getelementptr inbounds %struct.hash_device_data, ptr %29, i32 0, i32 12, i32 4
  %32 = ptrtoint ptr %sg_len42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_len42, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end36.do.end48_crit_edge, label %lor.lhs.false.i

do.end36.do.end48_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false.i:                                  ; preds = %do.end36
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end48_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end48_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end48_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end48_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %37(ptr noundef nonnull %5, ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %dmaengine_prep_slave_sg.exit.do.end48_crit_edge, label %if.end51

dmaengine_prep_slave_sg.exit.do.end48_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end48_crit_edge, %lor.lhs.false2.i.do.end48_crit_edge, %lor.lhs.false.i.do.end48_crit_edge, %do.end36.do.end48_crit_edge
  %38 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device2, align 4
  %dev50 = getelementptr inbounds %struct.hash_device_data, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.96) #11
  br label %cleanup

if.end51:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hash_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctx, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_submit.i, align 4
  %call.i2 = tail call i32 %45(ptr noundef nonnull %call.i) #8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 50
  %48 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %49(ptr noundef nonnull %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end48, %do.end21
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -14, %do.end48 ], [ -14, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_dma_callback(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.hash_ctx, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %complete = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 12, i32 1
  tail call void @complete(ptr noundef %complete) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_empty_message_digest(ptr nocapture noundef readonly %device_data, ptr nocapture noundef writeonly %zero_hash, ptr nocapture noundef writeonly %zero_hash_size, ptr nocapture noundef writeonly %zero_digest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 5
  %0 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ctx, align 4
  %2 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %zero_digest, align 1
  %oper_mode = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %oper_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oper_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %4, label %entry.out_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then14
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then:                                          ; preds = %entry
  %algorithm = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %algorithm, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %7, label %do.end [
    i32 0, label %if.then3
    i32 1, label %if.then7
  ]

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %zero_hash, ptr @sha1_zero_message_hash, i32 20)
  %10 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %zero_hash_size, align 4
  %11 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %zero_digest, align 1
  br label %out

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call ptr @memcpy(ptr %zero_hash, ptr @sha256_zero_message_hash, i32 32)
  %13 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %zero_hash_size, align 4
  %14 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %zero_digest, align 1
  br label %out

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117) #11
  br label %out

if.then14:                                        ; preds = %entry
  %keylen = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then15, label %do.body33

if.then15:                                        ; preds = %if.then14
  %algorithm17 = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %algorithm17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %algorithm17, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %20, label %do.end28 [
    i32 0, label %if.then19
    i32 1, label %if.then24
  ]

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %22 = call ptr @memcpy(ptr %zero_hash, ptr @zero_message_hmac_sha1, i32 20)
  %23 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20, ptr %zero_hash_size, align 4
  %24 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %zero_digest, align 1
  br label %out

if.then24:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call ptr @memcpy(ptr %zero_hash, ptr @zero_message_hmac_sha256, i32 32)
  %26 = ptrtoint ptr %zero_hash_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %zero_hash_size, align 4
  %27 = ptrtoint ptr %zero_digest to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %zero_digest, align 1
  br label %out

do.end28:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117) #11
  br label %out

do.body33:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_empty_message_digest.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_empty_message_digest, %out)) #8
          to label %if.then38 [label %out], !srcloc !347

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %30 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_empty_message_digest.__UNIQUE_ID_ddebug295, ptr noundef %31, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.117) #8
  br label %out

out:                                              ; preds = %if.then38, %do.body33, %do.end28, %if.then24, %if.then19, %do.end, %if.then7, %if.then3, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then7 ], [ -22, %do.end ], [ 0, %if.then38 ], [ 0, %if.then19 ], [ 0, %if.then24 ], [ -22, %do.end28 ], [ 0, %entry.out_crit_edge ], [ 0, %do.body33 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_messagepad(ptr nocapture noundef readonly %device_data, ptr noundef %message, i8 noundef zeroext %index_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %str = getelementptr inbounds %struct.hash_register, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str) #8, !srcloc !344
  %3 = and i32 %2, -520093697
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %str2 = getelementptr inbounds %struct.hash_register, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str2, i32 %3) #8, !srcloc !346
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index_bytes)
  %cmp149 = icmp ugt i8 %index_bytes, 3
  br i1 %cmp149, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %message.addr.0151 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %message, %entry.while.body_crit_edge ]
  %index_bytes.addr.0150 = phi i8 [ %sub, %while.body.while.body_crit_edge ], [ %index_bytes, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %din = getelementptr inbounds %struct.hash_register, ptr %7, i32 0, i32 1
  tail call void @__raw_writesl(ptr noundef %din, ptr noundef %message.addr.0151, i32 noundef 1) #8
  %sub = add i8 %index_bytes.addr.0150, -4
  %incdec.ptr = getelementptr i32, ptr %message.addr.0151, i32 1
  %cmp = icmp ugt i8 %sub, 3
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %index_bytes.addr.0.lcssa148 = phi i8 [ %index_bytes, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %message.addr.0.lcssa = phi ptr [ %message, %entry.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %conv.le = zext i8 %index_bytes.addr.0.lcssa148 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index_bytes.addr.0.lcssa148)
  %tobool.not = icmp eq i8 %index_bytes.addr.0.lcssa148, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  %din8 = getelementptr inbounds %struct.hash_register, ptr %9, i32 0, i32 1
  tail call void @__raw_writesl(ptr noundef %din8, ptr noundef %message.addr.0.lcssa, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %str12154 = getelementptr inbounds %struct.hash_register, ptr %11, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str12154) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  %13 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not155 = icmp eq i32 %13, 0
  br i1 %tobool17.not155, label %if.end.while.end25_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

if.end.while.end25_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end25

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !378
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !379
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  %str12 = getelementptr inbounds %struct.hash_register, ptr %15, i32 0, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str12) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  %17 = and i32 %16, 65536
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %do.end.while.end25_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end25_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end25

while.end25:                                      ; preds = %do.end.while.end25_crit_edge, %if.end.while.end25_crit_edge
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %str29 = getelementptr inbounds %struct.hash_register, ptr %19, i32 0, i32 2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str29) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  %21 = and i32 %20, -520093697
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %mul = shl nuw nsw i32 %conv.le, 3
  %and35 = and i32 %mul, 24
  %or = or i32 %22, %and35
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_data, align 4
  %str37 = getelementptr inbounds %struct.hash_register, ptr %25, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str37, i32 %23) #8, !srcloc !346
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_messagepad.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_messagepad, %do.end59)) #8
          to label %if.then45 [label %do.end59], !srcloc !347

if.then45:                                        ; preds = %while.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_data, align 4
  %din48 = getelementptr inbounds %struct.hash_register, ptr %29, i32 0, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %din48) #8, !srcloc !344
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_data, align 4
  %str53 = getelementptr inbounds %struct.hash_register, ptr %33, i32 0, i32 2
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str53) #8, !srcloc !344
  %35 = lshr i32 %34, 24
  %and56 = and i32 %35, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_messagepad.__UNIQUE_ID_ddebug298, ptr noundef %27, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.121, i32 noundef %31, i32 noundef %and56) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then45, %while.end25
  %36 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_data, align 4
  %str63 = getelementptr inbounds %struct.hash_register, ptr %37, i32 0, i32 2
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str63) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  %39 = or i32 %38, 65536
  %40 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_data, align 4
  %str70 = getelementptr inbounds %struct.hash_register, ptr %41, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %str70, i32 %39) #8, !srcloc !346
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_messagepad.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hash_messagepad, %do.end100)) #8
          to label %if.then85 [label %do.end100], !srcloc !347

if.then85:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.hash_device_data, ptr %device_data, i32 0, i32 3
  %42 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev86, align 4
  %44 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_data, align 4
  %din89 = getelementptr inbounds %struct.hash_register, ptr %45, i32 0, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %din89) #8, !srcloc !344
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_data, align 4
  %str94 = getelementptr inbounds %struct.hash_register, ptr %49, i32 0, i32 2
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str94) #8, !srcloc !344
  %51 = lshr i32 %50, 24
  %and97 = and i32 %51, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_messagepad.__UNIQUE_ID_ddebug299, ptr noundef %43, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef %47, i32 noundef %and97) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then85, %do.end59
  %52 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_data, align 4
  %str105156 = getelementptr inbounds %struct.hash_register, ptr %53, i32 0, i32 2
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str105156) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  %55 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool110.not157 = icmp eq i32 %55, 0
  br i1 %tobool110.not157, label %do.end100.while.end121_crit_edge, label %do.end100.do.end116_crit_edge

do.end100.do.end116_crit_edge:                    ; preds = %do.end100
  br label %do.end116

do.end100.while.end121_crit_edge:                 ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end121

do.end116:                                        ; preds = %do.end116.do.end116_crit_edge, %do.end100.do.end116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !383
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !384
  %56 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_data, align 4
  %str105 = getelementptr inbounds %struct.hash_register, ptr %57, i32 0, i32 2
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %str105) #8, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  %59 = and i32 %58, 65536
  %tobool110.not = icmp eq i32 %59, 0
  br i1 %tobool110.not, label %do.end116.while.end121_crit_edge, label %do.end116.do.end116_crit_edge

do.end116.do.end116_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

do.end116.while.end121_crit_edge:                 ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end121

while.end121:                                     ; preds = %do.end116.while.end121_crit_edge, %do.end100.while.end121_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %ctx_lock = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 28 to ptr), ptr %current_ctx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %5 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_ctx, align 4
  %cmp = icmp eq ptr %6, inttoptr (i32 28 to ptr)
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @down_interruptible(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end22_crit_edge, label %do.body12

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.body12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_hash_suspend.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ux500_hash_suspend, %if.end22)) #8
          to label %if.then18 [label %if.end22], !srcloc !347

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_hash_suspend.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body12, %if.then8.if.end22_crit_edge
  %dev1.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %power_state_lock.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %power_state_lock.i) #8
  %power_state.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_state.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end22.hash_disable_power.exit_crit_edge, label %if.end.i

if.end22.hash_disable_power.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_disable_power.exit

if.end.i:                                         ; preds = %if.end22
  %clk.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  %regulator.i = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regulator.i, align 4
  %call5.i = tail call i32 @regulator_disable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.end.i.if.end8.i_crit_edge
  %15 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %power_state.i, align 4
  br label %hash_disable_power.exit

hash_disable_power.exit:                          ; preds = %if.end8.i, %if.end22.hash_disable_power.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end8.i ], [ 0, %if.end22.hash_disable_power.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %power_state_lock.i) #8
  br label %if.end25

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call fastcc i32 @hash_disable_power(ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %hash_disable_power.exit
  %ret.0 = phi i32 [ %ret.0.i, %hash_disable_power.exit ], [ %call24, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool26.not = icmp eq i32 %ret.0, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end25.cleanup.sink.split_crit_edge

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end25.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.140.sink = phi ptr [ @.str.128, %entry.cleanup.sink.split_crit_edge ], [ @.str.140, %if.end25.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.sink.split_crit_edge ], [ %ret.0, %if.end25.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.140.sink, ptr noundef nonnull @.str.137) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_hash_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.142) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_lock = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #8
  %current_ctx = getelementptr inbounds %struct.hash_device_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %cmp = icmp eq ptr %3, inttoptr (i32 28 to ptr)
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %current_ctx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #8
  %5 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_ctx, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end9.thread, label %if.end9

if.end9.thread:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up(ptr noundef getelementptr inbounds (%struct.hash_driver_data, ptr @driver_data, i32 0, i32 1)) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @hash_enable_power(ptr noundef nonnull %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %do.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.142) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end9.cleanup_crit_edge, %if.end9.thread, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call8, %do.end14 ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end9.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 155)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !111, !112, !114, !115, !117, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !166, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !253, !254, !256, !258, !259, !260, !261, !263, !264, !266, !267, !269, !271, !273, !274, !275, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !306, !307, !309, !311, !313, !314, !315, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !331, !333}
!llvm.module.flags = !{!335, !336, !337, !338, !339, !340, !341, !342}
!llvm.ident = !{!343}

!0 = !{ptr @__param_hash_mode, !1, !"__param_hash_mode", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_hash_modetype291, !1, !"__UNIQUE_ID_hash_modetype291", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_hash_mode292, !4, !"__UNIQUE_ID_hash_mode292", i1 false, i1 false}
!4 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 45, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 705, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hash_setconfiguration._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @hash_setconfiguration._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 721, i32 4}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hash_setconfiguration.__UNIQUE_ID_ddebug300, !14, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 725, i32 4}
!19 = !{ptr @hash_setconfiguration.__UNIQUE_ID_ddebug301, !18, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 732, i32 3}
!22 = !{ptr @hash_setconfiguration._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hash_setconfiguration._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1099, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hash_hw_update._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @hash_hw_update._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1111, i32 4}
!31 = !{ptr @hash_hw_update._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hash_hw_update._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1121, i32 2}
!35 = !{ptr @hash_hw_update.__UNIQUE_ID_ddebug307, !34, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1143, i32 3}
!38 = !{ptr @hash_resume_state._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hash_resume_state._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @hash_resume_state._entry.18, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1151, i32 3}
!42 = !{ptr @hash_resume_state._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1201, i32 3}
!45 = !{ptr @hash_save_state._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @hash_save_state._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1259, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hash_check_hw._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @hash_check_hw._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1276, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hash_get_digest._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @hash_get_digest._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1286, i32 2}
!59 = !{ptr @hash_get_digest.__UNIQUE_ID_ddebug308, !58, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_ux500_hash__313_1959_ux500_hash_mod_init6, !61, !"__initcall__kmod_ux500_hash__313_1959_ux500_hash_mod_init6", i1 false, i1 false}
!61 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1959, i32 1}
!62 = !{ptr @__exitcall_ux500_hash_mod_fini, !63, !"__exitcall_ux500_hash_mod_fini", i1 false, i1 false}
!63 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1960, i32 1}
!64 = !{ptr @__UNIQUE_ID_description314, !65, !"__UNIQUE_ID_description314", i1 false, i1 false}
!65 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1962, i32 1}
!66 = !{ptr @__UNIQUE_ID_file315, !67, !"__UNIQUE_ID_file315", i1 false, i1 false}
!67 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1963, i32 1}
!68 = !{ptr @__UNIQUE_ID_license316, !67, !"__UNIQUE_ID_license316", i1 false, i1 false}
!69 = !{ptr @__UNIQUE_ID_alias_userspace317, !70, !"__UNIQUE_ID_alias_userspace317", i1 false, i1 false}
!70 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1965, i32 1}
!71 = !{ptr @__UNIQUE_ID_alias_crypto318, !70, !"__UNIQUE_ID_alias_crypto318", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_alias_userspace319, !73, !"__UNIQUE_ID_alias_userspace319", i1 false, i1 false}
!73 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1966, i32 1}
!74 = !{ptr @__UNIQUE_ID_alias_crypto320, !73, !"__UNIQUE_ID_alias_crypto320", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_alias_userspace321, !76, !"__UNIQUE_ID_alias_userspace321", i1 false, i1 false}
!76 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1967, i32 1}
!77 = !{ptr @__UNIQUE_ID_alias_crypto322, !76, !"__UNIQUE_ID_alias_crypto322", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_alias_userspace323, !79, !"__UNIQUE_ID_alias_userspace323", i1 false, i1 false}
!79 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1968, i32 1}
!80 = !{ptr @__UNIQUE_ID_alias_crypto324, !79, !"__UNIQUE_ID_alias_crypto324", i1 false, i1 false}
!81 = !{ptr @hash_mode, !82, !"hash_mode", i1 false, i1 false}
!82 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 43, i32 12}
!83 = !{ptr @__param_str_hash_mode, !1, !"__param_str_hash_mode", i1 false, i1 false}
!84 = !{ptr @driver_data, !85, !"driver_data", i1 false, i1 false}
!85 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 73, i32 32}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 789, i32 6}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hash_process_data._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @hash_process_data._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 797, i32 6}
!93 = !{ptr @hash_process_data._entry.28, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hash_process_data._entry_ptr.30, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 840, i32 5}
!97 = !{ptr @hash_process_data._entry.31, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @hash_process_data._entry_ptr.33, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 478, i32 3}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @init_hash_hw._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @init_hash_hw._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1933, i32 12}
!106 = !{ptr @hash_driver, !107, !"hash_driver", i1 false, i1 false}
!107 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1928, i32 31}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1672, i32 3}
!110 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ux500_hash_probe.__UNIQUE_ID_ddebug310, !109, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!112 = !{ptr @ux500_hash_probe.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1683, i32 2}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ux500_hash_probe.__key.40, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1684, i32 2}
!117 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1687, i32 46}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1689, i32 3}
!122 = !{ptr @ux500_hash_probe._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ux500_hash_probe._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1698, i32 3}
!126 = !{ptr @ux500_hash_probe._entry.44, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ux500_hash_probe._entry_ptr.46, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1705, i32 3}
!130 = !{ptr @ux500_hash_probe._entry.47, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ux500_hash_probe._entry_ptr.49, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1712, i32 3}
!134 = !{ptr @ux500_hash_probe._entry.50, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ux500_hash_probe._entry_ptr.52, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1718, i32 3}
!138 = !{ptr @ux500_hash_probe._entry.53, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ux500_hash_probe._entry_ptr.55, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1734, i32 3}
!142 = !{ptr @ux500_hash_probe._entry.56, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ux500_hash_probe._entry_ptr.58, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1739, i32 2}
!146 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ux500_hash_probe._entry.59, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ux500_hash_probe._entry_ptr.62, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 331, i32 4}
!151 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hash_enable_power._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @hash_enable_power._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 337, i32 4}
!156 = !{ptr @hash_enable_power._entry.65, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hash_enable_power._entry_ptr.67, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @init_completion.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../include/linux/completion.h", i32 87, i32 2}
!160 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1630, i32 4}
!163 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ahash_algs_register_all._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ahash_algs_register_all._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @hash_algs, !167, !"hash_algs", i1 false, i1 false}
!167 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1523, i32 34}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 565, i32 4}
!170 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ux500_hash_init.__UNIQUE_ID_ddebug296, !169, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!172 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 573, i32 5}
!175 = !{ptr @ux500_hash_init.__UNIQUE_ID_ddebug297, !174, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!176 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1313, i32 3}
!179 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ahash_update._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ahash_update._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1328, i32 2}
!184 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ahash_final.__UNIQUE_ID_ddebug309, !183, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!186 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1336, i32 3}
!189 = !{ptr @ahash_final._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ahash_final._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 869, i32 2}
!193 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @hash_dma_final.__UNIQUE_ID_ddebug302, !192, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!195 = !{ptr @hash_dma_final._entry, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 876, i32 4}
!197 = !{ptr @hash_dma_final._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @hash_dma_final._entry.84, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 885, i32 4}
!200 = !{ptr @hash_dma_final._entry_ptr.85, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 915, i32 3}
!203 = !{ptr @hash_dma_final._entry.86, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @hash_dma_final._entry_ptr.88, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 923, i32 3}
!207 = !{ptr @hash_dma_final._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @hash_dma_final._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 939, i32 3}
!211 = !{ptr @hash_dma_final.__UNIQUE_ID_ddebug303, !210, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 201, i32 3}
!214 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @hash_dma_write.__UNIQUE_ID_ddebug294, !213, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 147, i32 3}
!218 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @hash_set_dma_transfer._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @hash_set_dma_transfer._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 161, i32 3}
!223 = !{ptr @hash_set_dma_transfer._entry.97, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @hash_set_dma_transfer._entry_ptr.99, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 166, i32 2}
!227 = !{ptr @hash_set_dma_transfer.__UNIQUE_ID_ddebug293, !226, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!228 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 172, i32 3}
!230 = !{ptr @hash_set_dma_transfer._entry.101, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @hash_set_dma_transfer._entry_ptr.103, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 975, i32 2}
!234 = !{ptr @hash_hw_final.__UNIQUE_ID_ddebug304, !233, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!235 = !{ptr @hash_hw_final._entry, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 982, i32 4}
!237 = !{ptr @hash_hw_final._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1001, i32 4}
!240 = !{ptr @hash_hw_final.__UNIQUE_ID_ddebug305, !239, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1005, i32 4}
!243 = !{ptr @hash_hw_final._entry.106, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @hash_hw_final._entry_ptr.108, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1015, i32 3}
!249 = !{ptr @hash_hw_final._entry.111, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @hash_hw_final._entry_ptr.113, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @hash_hw_final._entry.114, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1023, i32 4}
!253 = !{ptr @hash_hw_final._entry_ptr.115, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @hash_hw_final.__UNIQUE_ID_ddebug306, !255, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!255 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1042, i32 3}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 242, i32 4}
!258 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @get_empty_message_digest._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @get_empty_message_digest._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @get_empty_message_digest._entry.118, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 260, i32 5}
!263 = !{ptr @get_empty_message_digest._entry_ptr.119, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.120, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 266, i32 4}
!266 = !{ptr @get_empty_message_digest.__UNIQUE_ID_ddebug295, !265, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!267 = !{ptr @zero_message_hmac_sha1, !268, !"zero_message_hmac_sha1", i1 false, i1 false}
!268 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 48, i32 17}
!269 = !{ptr @zero_message_hmac_sha256, !270, !"zero_message_hmac_sha256", i1 false, i1 false}
!270 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 55, i32 17}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 642, i32 2}
!273 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @hash_messagepad.__UNIQUE_ID_ddebug298, !272, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 646, i32 2}
!277 = !{ptr @hash_messagepad.__UNIQUE_ID_ddebug299, !276, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!278 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1353, i32 3}
!280 = !{ptr @.str.125, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @hash_setkey._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @hash_setkey._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.126, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 303, i32 3}
!285 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @hash_disable_power._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @hash_disable_power._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.128, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1766, i32 3}
!290 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ux500_hash_remove._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @ux500_hash_remove._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1796, i32 3}
!295 = !{ptr @ux500_hash_remove._entry.130, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @ux500_hash_remove._entry_ptr.132, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1815, i32 3}
!299 = !{ptr @ux500_hash_shutdown._entry, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @ux500_hash_shutdown._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1825, i32 4}
!303 = !{ptr @ux500_hash_shutdown.__UNIQUE_ID_ddebug311, !302, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!304 = !{ptr @ux500_hash_shutdown._entry.135, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1845, i32 3}
!306 = !{ptr @ux500_hash_shutdown._entry_ptr.136, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @ux500_hash_match, !308, !"ux500_hash_match", i1 false, i1 false}
!308 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1922, i32 34}
!309 = !{ptr @ux500_hash_pm, !310, !"ux500_hash_pm", i1 false, i1 false}
!310 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1920, i32 8}
!311 = !{ptr @.str.137, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1862, i32 3}
!313 = !{ptr @ux500_hash_suspend._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @ux500_hash_suspend._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.138, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1873, i32 4}
!317 = !{ptr @ux500_hash_suspend.__UNIQUE_ID_ddebug312, !316, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!318 = !{ptr @.str.140, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1882, i32 3}
!320 = !{ptr @ux500_hash_suspend._entry.139, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ux500_hash_suspend._entry_ptr.141, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.142, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1899, i32 3}
!324 = !{ptr @ux500_hash_resume._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @ux500_hash_resume._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @ux500_hash_resume._entry.143, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../drivers/crypto/ux500/hash/hash_core.c", i32 1914, i32 3}
!328 = !{ptr @ux500_hash_resume._entry_ptr.144, !327, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @sema_init.__key, !330, !"__key", i1 false, i1 false}
!330 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!335 = !{i32 1, !"wchar_size", i32 2}
!336 = !{i32 1, !"min_enum_size", i32 4}
!337 = !{i32 8, !"branch-target-enforcement", i32 0}
!338 = !{i32 8, !"sign-return-address", i32 0}
!339 = !{i32 8, !"sign-return-address-all", i32 0}
!340 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!341 = !{i32 7, !"uwtable", i32 1}
!342 = !{i32 7, !"frame-pointer", i32 2}
!343 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!344 = !{i64 6298335}
!345 = !{i64 2155293340}
!346 = !{i64 6297917}
!347 = !{i64 2148771405, i64 2148771410, i64 2148771423, i64 2148771467, i64 2148771501, i64 2148771522}
!348 = !{i64 2155313522}
!349 = !{i64 2155313879}
!350 = !{i64 2155313721}
!351 = !{i64 2155315877}
!352 = !{!"auto-init"}
!353 = !{i64 2155371644}
!354 = !{i64 2155372490}
!355 = !{i64 2155375939}
!356 = !{i64 2155376296}
!357 = !{i64 2155376138}
!358 = !{i64 2155377816}
!359 = !{i64 2155264330}
!360 = !{i64 2155264687}
!361 = !{i64 2155264529}
!362 = !{i64 2155266702}
!363 = !{i64 2155267322}
!364 = !{i64 2155267679}
!365 = !{i64 2155267521}
!366 = !{i8 0, i8 2}
!367 = !{i64 2155333932}
!368 = !{i64 2155336015}
!369 = !{i64 2155340041}
!370 = !{i64 2155340398}
!371 = !{i64 2155340240}
!372 = !{!"branch_weights", i32 2000, i32 1}
!373 = !{i64 2155356863}
!374 = !{i64 2155357483}
!375 = !{i64 2155357840}
!376 = !{i64 2155357682}
!377 = !{i64 2155278490}
!378 = !{i64 2155278847}
!379 = !{i64 2155278689}
!380 = !{i64 2155280792}
!381 = !{i64 2155286364}
!382 = !{i64 2155290566}
!383 = !{i64 2155290923}
!384 = !{i64 2155290765}
