; ModuleID = '/llk/IR_all_yes/drivers/crypto/stm32/stm32-hash.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.stm32_hash_drv = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.stm32_hash_pdata = type { ptr, i32 }
%struct.stm32_hash_algs_info = type { ptr, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [88 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.74, ptr, ptr, ptr, ptr, %union.anon.75, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.74 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.stm32_hash_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, ptr, %struct.completion, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.stm32_hash_request_ctx = type { ptr, i32, i32, [32 x i8], i32, i32, i32, ptr, i32, i32, %struct.scatterlist, i32, i32, i32, i8, [3 x i8], [256 x i8], ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_stm32_hash__260_1634_stm32_hash_driver_init6 = internal global ptr @stm32_hash_driver_init, section ".initcall6.init", align 4
@stm32_hash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_hash_probe, ptr @stm32_hash_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_hash_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hash_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_hash_driver_exit = internal global ptr @stm32_hash_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description261 = internal constant [77 x i8] c"stm32_hash.description=STM32 SHA1/224/256 & MD5 (HMAC) hw accelerator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [57 x i8] c"stm32_hash.author=Lionel Debieve <lionel.debieve@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [48 x i8] c"stm32_hash.file=drivers/crypto/stm32/stm32-hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [26 x i8] c"stm32_hash.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-hash\00", [21 x i8] zeroinitializer }, align 32
@stm32_hash_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f456-hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_hash_pdata_stm32f4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f756-hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_hash_pdata_stm32f7 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_hash_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hash_runtime_suspend, ptr @stm32_hash_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Cannot grab IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_hash_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/stm32/stm32-hash.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry_ptr = internal global ptr @stm32_hash_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get clock for hash\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable hash clock (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry_ptr.9 = internal global ptr @stm32_hash_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_hash_probe.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_hash\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA mode not available\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_hash = internal global { %struct.stm32_hash_drv, [44 x i8] } { %struct.stm32_hash_drv { %struct.list_head { ptr @stm32_hash, ptr @stm32_hash }, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [44 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1535, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Init HASH done HW ver %x DMA mode %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_hash_probe._entry_ptr.15 = internal global ptr @stm32_hash_probe._entry.12, section ".printk_index", align 4
@stm32_hash_get_of_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no compatible OF match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_hash_get_of_match\00", [40 x i8] zeroinitializer }, align 32
@stm32_hash_get_of_match._entry_ptr = internal global ptr @stm32_hash_get_of_match._entry, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-maxburst\00", [19 x i8] zeroinitializer }, align 32
@stm32_hash_get_of_match._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 1426, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dma-maxburst not specified, using 0\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_hash_get_of_match._entry_ptr.21 = internal global ptr @stm32_hash_get_of_match._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@stm32_hash_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't configure DMA slave.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_hash_dma_init\00", [44 x i8] zeroinitializer }, align 32
@stm32_hash_dma_init._entry_ptr = internal global ptr @stm32_hash_dma_init._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_hash.lock\00", [16 x i8] zeroinitializer }, align 32
@stm32_hash_register_algs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Algo %d : %d failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_hash_register_algs\00", [39 x i8] zeroinitializer }, align 32
@stm32_hash_register_algs._entry_ptr = internal global ptr @stm32_hash_register_algs._entry, section ".printk_index", align 4
@stm32_hash_pdata_stm32f4 = internal constant { %struct.stm32_hash_pdata, [24 x i8] } { %struct.stm32_hash_pdata { ptr @stm32_hash_algs_info_stm32f4, i32 1 }, [24 x i8] zeroinitializer }, align 32
@stm32_hash_pdata_stm32f7 = internal constant { %struct.stm32_hash_pdata, [24 x i8] } { %struct.stm32_hash_pdata { ptr @stm32_hash_algs_info_stm32f7, i32 2 }, [24 x i8] zeroinitializer }, align 32
@stm32_hash_algs_info_stm32f4 = internal global { [1 x %struct.stm32_hash_algs_info], [24 x i8] } { [1 x %struct.stm32_hash_algs_info] [%struct.stm32_hash_algs_info { ptr @algs_md5_sha1, i32 4 }], [24 x i8] zeroinitializer }, align 32
@algs_md5_sha1 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 16, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_md5_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 20, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_sha1_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }], align 128
@stm32_hash_init.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_hash_init\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s Flags %lx\0A\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stm32_hash_update_cpu.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_hash_update_cpu\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s flags %lx\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_hash_xmit_cpu.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_hash_xmit_cpu\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: length: %zd, final: %x len32 %i\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_hash_write_ctrl.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_hash_write_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Write Control %x\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_hash_dma_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_map_sg error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_hash_dma_send\00", [44 x i8] zeroinitializer }, align 32
@stm32_hash_dma_send._entry_ptr = internal global ptr @stm32_hash_dma_send._entry, section ".printk_index", align 4
@stm32_hash_hmac_dma_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_hash_hmac_dma_send\00", [39 x i8] zeroinitializer }, align 32
@stm32_hash_hmac_dma_send._entry_ptr = internal global ptr @stm32_hash_hmac_dma_send._entry, section ".printk_index", align 4
@stm32_hash_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dmaengine_prep_slave error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_hash_xmit_dma\00", [44 x i8] zeroinitializer }, align 32
@stm32_hash_xmit_dma._entry_ptr = internal global ptr @stm32_hash_xmit_dma._entry, section ".printk_index", align 4
@stm32_hash_xmit_dma._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA Error %i\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_hash_xmit_dma._entry_ptr.44 = internal global ptr @stm32_hash_xmit_dma._entry.42, section ".printk_index", align 4
@stm32_hash_prepare_req.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_hash_prepare_req\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"processing new req, op: %lu, nbytes %d\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_hash_algs_info_stm32f7 = internal global { [2 x %struct.stm32_hash_algs_info], [16 x i8] } { [2 x %struct.stm32_hash_algs_info] [%struct.stm32_hash_algs_info { ptr @algs_md5_sha1, i32 4 }, %struct.stm32_hash_algs_info { ptr @algs_sha224_sha256, i32 4 }], [16 x i8] zeroinitializer }, align 32
@algs_sha224_sha256 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 28, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_sha224_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [88 x i8] undef, %struct.hash_alg_common { i32 32, i32 364, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.74 zeroinitializer, ptr @stm32_hash_cra_sha256_init, ptr null, ptr null, ptr null, %union.anon.75 zeroinitializer, [120 x i8] undef } } }], align 128
@stm32_hash_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_hash_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@stm32_hash_runtime_resume._entry_ptr = internal global ptr @stm32_hash_runtime_resume._entry, section ".printk_index", align 4
@switch.table.stm32_hash_finish_req = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 5, i32 4, i32 7, i32 4, i32 4, i32 4, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.stm32_hash_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 262148, i32 524292, i32 262148, i32 1048580, i32 2097156], [44 x i8] zeroinitializer }, align 32
@switch.table.stm32_hash_write_ctrl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 4, i32 132, i32 262148, i32 132, i32 132, i32 132, i32 262276], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"stm32_hash_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1624, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1628, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"stm32_hash_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1401, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"stm32_hash_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1617, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1463, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1470, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1474, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1506, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"stm32_hash\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 189, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1534, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1420, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1424, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1426, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 524, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 534, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 87, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 191, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1350, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"stm32_hash_pdata_stm32f4\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1380, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant [25 x i8] c"stm32_hash_pdata_stm32f7\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1396, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [29 x i8] c"stm32_hash_algs_info_stm32f4\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1373, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 722, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 385, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 343, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 293, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 593, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 497, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 421, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 461, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 853, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"stm32_hash_algs_info_stm32f7\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1385, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [37 x i8] c"../drivers/crypto/stm32/stm32-hash.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1609, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [35 x i8] c"switch.table.stm32_hash_finish_req\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [29 x i8] c"switch.table.stm32_hash_init\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [35 x i8] c"switch.table.stm32_hash_write_ctrl\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_stm32_hash_driver_exit, ptr @__initcall__kmod_stm32_hash__260_1634_stm32_hash_driver_init6, ptr @stm32_hash_dma_init._entry, ptr @stm32_hash_dma_init._entry_ptr, ptr @stm32_hash_dma_send._entry, ptr @stm32_hash_dma_send._entry_ptr, ptr @stm32_hash_driver_exit, ptr @stm32_hash_get_of_match._entry, ptr @stm32_hash_get_of_match._entry.19, ptr @stm32_hash_get_of_match._entry_ptr, ptr @stm32_hash_get_of_match._entry_ptr.21, ptr @stm32_hash_hmac_dma_send._entry, ptr @stm32_hash_hmac_dma_send._entry_ptr, ptr @stm32_hash_probe._entry, ptr @stm32_hash_probe._entry.12, ptr @stm32_hash_probe._entry.7, ptr @stm32_hash_probe._entry_ptr, ptr @stm32_hash_probe._entry_ptr.15, ptr @stm32_hash_probe._entry_ptr.9, ptr @stm32_hash_register_algs._entry, ptr @stm32_hash_register_algs._entry_ptr, ptr @stm32_hash_runtime_resume._entry, ptr @stm32_hash_runtime_resume._entry_ptr, ptr @stm32_hash_xmit_dma._entry, ptr @stm32_hash_xmit_dma._entry.42, ptr @stm32_hash_xmit_dma._entry_ptr, ptr @stm32_hash_xmit_dma._entry_ptr.44, ptr @stm32_hash_driver, ptr @.str, ptr @stm32_hash_of_match, ptr @stm32_hash_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @stm32_hash, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @init_completion.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @stm32_hash_pdata_stm32f4, ptr @stm32_hash_pdata_stm32f7, ptr @stm32_hash_algs_info_stm32f4, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @stm32_hash_algs_info_stm32f7, ptr @.str.51, ptr @.str.52, ptr @switch.table.stm32_hash_finish_req, ptr @switch.table.stm32_hash_init, ptr @switch.table.stm32_hash_write_ctrl], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_get_of_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_get_of_match._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_register_algs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_pdata_stm32f4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_pdata_stm32f7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_algs_info_stm32f4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_dma_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_hmac_dma_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_xmit_dma._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_algs_info_stm32f7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hash_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_hash_finish_req to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_hash_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_hash_write_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_hash_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hash_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_hash_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_conf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #11
  %io_base = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %phys_base = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phys_base, align 4
  %call.i168 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %pdata.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i168, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %call.i168, null
  br i1 %tobool.not.i, label %stm32_hash_get_of_match.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end9
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %dma_maxburst.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %dma_maxburst.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i.if.end13_crit_edge, label %do.end6.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #14
  %8 = ptrtoint ptr %dma_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_maxburst.i, align 4
  br label %if.end13

stm32_hash_get_of_match.exit:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end13:                                         ; preds = %do.end6.i, %if.end.i.if.end13_crit_edge
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i170 = icmp eq ptr %10, null
  br i1 %tobool.not.i170, label %if.end.i171, label %if.end16.dev_name.exit_crit_edge

if.end16.dev_name.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i171:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i171, %if.end16.dev_name.exit_crit_edge
  %retval.0.i172 = phi ptr [ %12, %if.end.i171 ], [ %10, %if.end16.dev_name.exit_crit_edge ]
  %call18 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call14, ptr noundef nonnull @stm32_hash_irq_handler, ptr noundef nonnull @stm32_hash_irq_thread, i32 noundef 8192, ptr noundef %retval.0.i172, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end21:                                         ; preds = %dev_name.exit
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %clk, align 4
  %cmp.i173 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call23 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call.i174 = tail call i32 @clk_prepare(ptr noundef %call23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %if.end.i176, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

if.end.i176:                                      ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %call23) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i, %if.end30.do.end37_crit_edge
  %retval.0.i177.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i174, %if.end30.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i177.ph) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end.i176
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i178 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !143
  %call.i179 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %rst = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i180 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end38
  %cmp47 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp47, label %if.then44.err_reset_crit_edge, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then44.err_reset_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reset

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #11
  %18 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rst, align 4
  %call53 = tail call i32 @reset_control_deassert(ptr noundef %19) #11
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then44.if.end54_crit_edge
  %dev55 = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %dev55, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_conf.i) #11
  %22 = getelementptr inbounds i8, ptr %dma_conf.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 44)
  %24 = ptrtoint ptr %dma_conf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %dma_conf.i, align 4
  %25 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_base, align 4
  %add.i = add i32 %26, 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf.i, i32 0, i32 2
  %27 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf.i, i32 0, i32 4
  %28 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %dst_addr_width.i, align 4
  %29 = ptrtoint ptr %dma_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_maxburst.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf.i, i32 0, i32 5
  %31 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_conf.i, i32 0, i32 6
  %32 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %dst_maxburst.i, align 4
  %call.i182 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  %cmp.i.i = icmp ugt ptr %call.i182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i183

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call.i182 to i32
  br label %stm32_hash_dma_init.exit

if.end.i183:                                      ; preds = %if.end54
  %dma_lch.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 12
  %34 = ptrtoint ptr %dma_lch.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i182, ptr %dma_lch.i, align 4
  %35 = ptrtoint ptr %call.i182 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i182, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i183.if.then6.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end.i183.if.then6.i_crit_edge:                 ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end.i183
  %call.i.i184 = call i32 %38(ptr noundef %call.i182, ptr noundef nonnull %dma_conf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %tobool.not.i185 = icmp eq i32 %call.i.i184, 0
  br i1 %tobool.not.i185, label %stm32_hash_dma_init.exit.thread, label %dmaengine_slave_config.exit.i.if.then6.i_crit_edge

dmaengine_slave_config.exit.i.if.then6.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then6.i:                                       ; preds = %dmaengine_slave_config.exit.i.if.then6.i_crit_edge, %if.end.i183.if.then6.i_crit_edge
  %retval.0.i27.i = phi i32 [ %call.i.i184, %dmaengine_slave_config.exit.i.if.then6.i_crit_edge ], [ -38, %if.end.i183.if.then6.i_crit_edge ]
  %39 = ptrtoint ptr %dma_lch.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_lch.i, align 4
  call void @dma_release_channel(ptr noundef %40) #11
  %41 = ptrtoint ptr %dma_lch.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dma_lch.i, align 4
  %42 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23) #14
  br label %stm32_hash_dma_init.exit

stm32_hash_dma_init.exit.thread:                  ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_completion.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 13
  %44 = ptrtoint ptr %dma_completion.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dma_completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 13, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_conf.i) #11
  br label %sw.epilog

stm32_hash_dma_init.exit:                         ; preds = %if.then6.i, %if.then.i
  %retval.0.i186 = phi i32 [ %33, %if.then.i ], [ %retval.0.i27.i, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_conf.i) #11
  %45 = zext i32 %retval.0.i186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i186, label %stm32_hash_dma_init.exit.err_dma_crit_edge [
    i32 0, label %stm32_hash_dma_init.exit.sw.epilog_crit_edge
    i32 -2, label %do.body57
  ]

stm32_hash_dma_init.exit.sw.epilog_crit_edge:     ; preds = %stm32_hash_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

stm32_hash_dma_init.exit.err_dma_crit_edge:       ; preds = %stm32_hash_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma

do.body57:                                        ; preds = %stm32_hash_dma_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_probe.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_probe, %if.then62)) #11
          to label %sw.epilog [label %if.then62], !srcloc !144

if.then62:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_probe.__UNIQUE_ID_ddebug259, ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then62, %do.body57, %stm32_hash_dma_init.exit.sw.epilog_crit_edge, %stm32_hash_dma_init.exit.thread
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %46 = load ptr, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 0, i32 1), align 4
  %call.i.i187 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %46, ptr noundef nonnull @stm32_hash) #11
  br i1 %call.i.i187, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 0, i32 1), align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @stm32_hash, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call.i, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %call66 = call ptr @crypto_engine_alloc_init(ptr noundef %dev1, i1 noundef zeroext true) #11
  %engine = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 9
  %50 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call66, ptr %engine, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %list_add_tail.exit.err_engine_crit_edge, label %if.end70

list_add_tail.exit.err_engine_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine

if.end70:                                         ; preds = %list_add_tail.exit
  %call72 = call i32 @crypto_engine_start(ptr noundef nonnull %call66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.err_engine_start_crit_edge

if.end70.err_engine_start_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine_start

if.end75:                                         ; preds = %if.end70
  %51 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 1008
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !145
  %54 = call i32 @llvm.bswap.i32(i32 %53) #11
  %dma_mode = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dma_mode, align 4
  %call77 = call fastcc i32 @stm32_hash_register_algs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end83, label %if.end75.err_engine_start_crit_edge

if.end75.err_engine_start_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_engine_start

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base, align 4
  %add.ptr.i189 = getelementptr i8, ptr %57, i32 1012
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #11, !srcloc !145
  %59 = call i32 @llvm.bswap.i32(i32 %58) #11
  %60 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_mode, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %59, i32 noundef %61) #14
  %call.i190 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #11
  br label %cleanup

err_engine_start:                                 ; preds = %if.end75.err_engine_start_crit_edge, %if.end70.err_engine_start_crit_edge
  %ret.0 = phi i32 [ %call72, %if.end70.err_engine_start_crit_edge ], [ %call77, %if.end75.err_engine_start_crit_edge ]
  %62 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %engine, align 4
  %call88 = call i32 @crypto_engine_exit(ptr noundef %63) #11
  br label %err_engine

err_engine:                                       ; preds = %err_engine_start, %list_add_tail.exit.err_engine_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_engine_start ], [ -12, %list_add_tail.exit.err_engine_crit_edge ]
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %call.i.i191 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #11
  br i1 %call.i.i191, label %if.end.i.i192, label %err_engine.list_del.exit_crit_edge

err_engine.list_del.exit_crit_edge:               ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i192:                                    ; preds = %err_engine
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i192, %err_engine.list_del.exit_crit_edge
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  br label %err_dma

err_dma:                                          ; preds = %list_del.exit, %stm32_hash_dma_init.exit.err_dma_crit_edge
  %ret.2 = phi i32 [ %retval.0.i186, %stm32_hash_dma_init.exit.err_dma_crit_edge ], [ %ret.1, %list_del.exit ]
  %dma_lch = getelementptr inbounds %struct.stm32_hash_dev, ptr %call.i, i32 0, i32 12
  %72 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma_lch, align 4
  %tobool90.not = icmp eq ptr %73, null
  br i1 %tobool90.not, label %err_dma.err_reset_crit_edge, label %if.then91

err_dma.err_reset_crit_edge:                      ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reset

if.then91:                                        ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef nonnull %73) #11
  br label %err_reset

err_reset:                                        ; preds = %if.then91, %err_dma.err_reset_crit_edge, %if.then44.err_reset_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.then91 ], [ %ret.2, %err_dma.err_reset_crit_edge ], [ -517, %if.then44.err_reset_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  %call.i.i.i194 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !147
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_reset.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_reset.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_reset
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_reset.pm_runtime_put_noidle.exit_crit_edge
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %76) #11
  call void @clk_unprepare(ptr noundef %76) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end83, %do.end37, %if.then26, %do.end, %if.end13.cleanup_crit_edge, %stm32_hash_get_of_match.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %call18, %do.end ], [ %call29, %if.then26 ], [ %retval.0.i177.ph, %do.end37 ], [ %ret.3, %pm_runtime_put_noidle.exit ], [ 0, %do.end83 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %stm32_hash_get_of_match.exit ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pdata.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 4
  %algs_info_size4.i = getelementptr inbounds %struct.stm32_hash_pdata, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %algs_info_size4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %algs_info_size4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %if.end3.stm32_hash_unregister_algs.exit_crit_edge, label %if.end3.for.cond1.preheader.i_crit_edge

if.end3.for.cond1.preheader.i_crit_edge:          ; preds = %if.end3
  br label %for.cond1.preheader.i

if.end3.stm32_hash_unregister_algs.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_unregister_algs.exit

for.cond1.preheader.i:                            ; preds = %for.inc9.i.for.cond1.preheader.i_crit_edge, %if.end3.for.cond1.preheader.i_crit_edge
  %i.06.i = phi i32 [ %inc10.i, %for.inc9.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.end3.for.cond1.preheader.i_crit_edge ]
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %size1.i = getelementptr %struct.stm32_hash_algs_info, ptr %12, i32 %i.06.i, i32 1
  %13 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp32.not.i = icmp eq i32 %14, 0
  br i1 %cmp32.not.i, label %for.cond1.preheader.i.for.inc9.i_crit_edge, label %for.cond1.preheader.i.for.body4.i_crit_edge

for.cond1.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body4.i

for.cond1.preheader.i.for.inc9.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond1.preheader.i.for.body4.i_crit_edge
  %15 = phi ptr [ %21, %for.body4.i.for.body4.i_crit_edge ], [ %12, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %j.03.i = phi i32 [ %inc.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_hash_algs_info, ptr %15, i32 %i.06.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr %struct.ahash_alg, ptr %17, i32 %j.03.i
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx8.i) #11
  %inc.i = add nuw i32 %j.03.i, 1
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %size.i = getelementptr %struct.stm32_hash_algs_info, ptr %21, i32 %i.06.i, i32 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %23
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc9.i_crit_edge

for.body4.i.for.inc9.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i

for.inc9.i:                                       ; preds = %for.body4.i.for.inc9.i_crit_edge, %for.cond1.preheader.i.for.inc9.i_crit_edge
  %inc10.i = add nuw i32 %i.06.i, 1
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %algs_info_size.i = getelementptr inbounds %struct.stm32_hash_pdata, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %algs_info_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %algs_info_size.i, align 4
  %cmp.i23 = icmp ult i32 %inc10.i, %27
  br i1 %cmp.i23, label %for.inc9.i.for.cond1.preheader.i_crit_edge, label %for.inc9.i.stm32_hash_unregister_algs.exit_crit_edge

for.inc9.i.stm32_hash_unregister_algs.exit_crit_edge: ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_unregister_algs.exit

for.inc9.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

stm32_hash_unregister_algs.exit:                  ; preds = %for.inc9.i.stm32_hash_unregister_algs.exit_crit_edge, %if.end3.stm32_hash_unregister_algs.exit_crit_edge
  %engine = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %engine, align 4
  %call5 = tail call i32 @crypto_engine_exit(ptr noundef %29) #11
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %stm32_hash_unregister_algs.exit.list_del.exit_crit_edge

stm32_hash_unregister_algs.exit.list_del.exit_crit_edge: ; preds = %stm32_hash_unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %stm32_hash_unregister_algs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %stm32_hash_unregister_algs.exit.list_del.exit_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %dma_lch = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_lch, align 4
  %tobool6.not = icmp eq ptr %39, null
  br i1 %tobool6.not, label %list_del.exit.if.end9_crit_edge, label %if.then7

list_del.exit.if.end9_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %39) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %list_del.exit.if.end9_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %41, i1 noundef zeroext true) #11
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !147
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end9.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end9.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end9.pm_runtime_put_noidle.exit_crit_edge
  %clk = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %46) #11
  tail call void @clk_unprepare(ptr noundef %46) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !145
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and1 = and i32 %3, -3
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1) #11
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %4) #11, !srcloc !149
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %dev_id, i32 0, i32 11
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 2
  store i32 %or, ptr %flags, align 4
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #11, !srcloc !149
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_irq_thread(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.finish_crit_edge

if.then.finish_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %2 = and i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %.not = icmp eq i32 %2, 24
  br i1 %.not, label %if.else.finish_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.finish_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

finish:                                           ; preds = %if.else.finish_crit_edge, %if.then.finish_crit_edge
  %.sink = phi i32 [ -3, %if.then.finish_crit_edge ], [ -17, %if.else.finish_crit_edge ]
  %and16 = and i32 %1, %.sink
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and16, ptr %flags, align 4
  %req = getelementptr inbounds %struct.stm32_hash_dev, ptr %dev_id, i32 0, i32 8
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  tail call fastcc void @stm32_hash_finish_req(ptr noundef %5, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %finish, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_register_algs(ptr nocapture noundef readonly %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 14
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %algs_info_size51 = getelementptr inbounds %struct.stm32_hash_pdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %algs_info_size51 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %algs_info_size51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.cleanup_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond1.preheader:                              ; preds = %for.inc9.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %i.053 = phi i32 [ %inc10, %for.inc9.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %size48 = getelementptr %struct.stm32_hash_algs_info, ptr %7, i32 %i.053, i32 1
  %8 = ptrtoint ptr %size48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp349.not = icmp eq i32 %9, 0
  br i1 %cmp349.not, label %for.cond1.preheader.for.inc9_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.for.inc9_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %10 = phi ptr [ %16, %for.inc.for.body4_crit_edge ], [ %7, %for.cond1.preheader.for.body4_crit_edge ]
  %j.050 = phi i32 [ %inc, %for.inc.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_hash_algs_info, ptr %10, i32 %i.053
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.ahash_alg, ptr %12, i32 %j.050
  %call = tail call i32 @crypto_register_ahash(ptr noundef %arrayidx8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

for.inc:                                          ; preds = %for.body4
  %inc = add nuw i32 %j.050, 1
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %size = getelementptr %struct.stm32_hash_algs_info, ptr %16, i32 %i.053, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %cmp3 = icmp ult i32 %inc, %18
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.inc9_crit_edge

for.inc.for.inc9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.inc9:                                         ; preds = %for.inc.for.inc9_crit_edge, %for.cond1.preheader.for.inc9_crit_edge
  %inc10 = add nuw i32 %i.053, 1
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 4
  %algs_info_size = getelementptr inbounds %struct.stm32_hash_pdata, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %algs_info_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %algs_info_size, align 4
  %cmp = icmp ult i32 %inc10, %22
  br i1 %cmp, label %for.inc9.for.cond1.preheader_crit_edge, label %for.inc9.cleanup_crit_edge

for.inc9.cleanup_crit_edge:                       ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc9.for.cond1.preheader_crit_edge:           ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

do.end:                                           ; preds = %for.body4
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %i.053, i32 noundef %j.050) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.053)
  %tobool13.not58 = icmp eq i32 %i.053, 0
  br i1 %tobool13.not58, label %do.end.cleanup_crit_edge, label %do.end.for.cond15.preheader_crit_edge

do.end.for.cond15.preheader_crit_edge:            ; preds = %do.end
  br label %for.cond15.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond12.loopexit:                              ; preds = %for.body18.for.cond12.loopexit_crit_edge, %for.cond15.preheader.for.cond12.loopexit_crit_edge
  %tobool13.not = icmp eq i32 %dec60, 0
  br i1 %tobool13.not, label %for.cond12.loopexit.cleanup_crit_edge, label %for.cond12.loopexit.for.cond15.preheader_crit_edge

for.cond12.loopexit.for.cond15.preheader_crit_edge: ; preds = %for.cond12.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.preheader

for.cond12.loopexit.cleanup_crit_edge:            ; preds = %for.cond12.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond15.preheader:                             ; preds = %for.cond12.loopexit.for.cond15.preheader_crit_edge, %do.end.for.cond15.preheader_crit_edge
  %dec60.in = phi i32 [ %dec60, %for.cond12.loopexit.for.cond15.preheader_crit_edge ], [ %i.053, %do.end.for.cond15.preheader_crit_edge ]
  %j.159 = phi i32 [ -1, %for.cond12.loopexit.for.cond15.preheader_crit_edge ], [ %j.050, %do.end.for.cond15.preheader_crit_edge ]
  %dec60 = add i32 %dec60.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.159)
  %tobool17.not55 = icmp eq i32 %j.159, 0
  br i1 %tobool17.not55, label %for.cond15.preheader.for.cond12.loopexit_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.for.cond12.loopexit_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond12.loopexit

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %j.256 = phi i32 [ %dec16, %for.body18.for.body18_crit_edge ], [ %j.159, %for.cond15.preheader.for.body18_crit_edge ]
  %dec16 = add i32 %j.256, -1
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx21 = getelementptr %struct.stm32_hash_algs_info, ptr %28, i32 %dec60
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx21, align 4
  %arrayidx23 = getelementptr %struct.ahash_alg, ptr %30, i32 %dec16
  tail call void @crypto_unregister_ahash(ptr noundef %arrayidx23) #11
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %for.body18.for.cond12.loopexit_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

for.body18.for.cond12.loopexit_crit_edge:         ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond12.loopexit

cleanup:                                          ; preds = %for.cond12.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.inc9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %for.cond12.loopexit.cleanup_crit_edge ], [ 0, %for.inc9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_hash_finish_req(ptr noundef %req, i32 noundef %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 3932160
  %6 = add nsw i32 %and.i, -262144
  %7 = lshr exact i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %8 = icmp ult i32 %6, 2097152
  br i1 %8, label %switch.hole_check, label %if.then.stm32_hash_copy_hash.exit_crit_edge

if.then.stm32_hash_copy_hash.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_copy_hash.exit

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.stm32_hash_copy_hash.exit_crit_edge, label %switch.lookup

switch.hole_check.stm32_hash_copy_hash.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_copy_hash.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_hash_finish_req, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %switch.lookup
  %i.013.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__ctx.i, align 4
  %mul.i = shl i32 %i.013.i, 2
  %add.i = add nuw nsw i32 %mul.i, 784
  %io_base.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !145
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %arrayidx.i = getelementptr i32, ptr %digest.i, i32 %i.013.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %switch.load
  br i1 %exitcond.not.i, label %for.body.i.stm32_hash_copy_hash.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.stm32_hash_copy_hash.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_copy_hash.exit

stm32_hash_copy_hash.exit:                        ; preds = %for.body.i.stm32_hash_copy_hash.exit_crit_edge, %switch.hole_check.stm32_hash_copy_hash.exit_crit_edge, %if.then.stm32_hash_copy_hash.exit_crit_edge
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %result.i, align 32
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %stm32_hash_copy_hash.exit.stm32_hash_finish.exit_crit_edge, label %if.end.i

stm32_hash_copy_hash.exit.stm32_hash_finish.exit_crit_edge: ; preds = %stm32_hash_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_finish.exit

if.end.i:                                         ; preds = %stm32_hash_copy_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  %digcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 4
  %20 = ptrtoint ptr %digcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %digcnt.i, align 4
  %22 = call ptr @memcpy(ptr %19, ptr %digest.i, i32 %21)
  br label %stm32_hash_finish.exit

stm32_hash_finish.exit:                           ; preds = %if.end.i, %stm32_hash_copy_hash.exit.stm32_hash_finish.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %stm32_hash_copy_hash.exit.stm32_hash_finish.exit_crit_edge ]
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and5 = and i32 %24, -8421616
  store i32 %and5, ptr %flags, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %flags6 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags6, align 4
  %or = or i32 %26, 4194304
  store i32 %or, ptr %flags6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %stm32_hash_finish.exit
  %err.addr.0 = phi i32 [ %err, %if.else ], [ %retval.0.i, %stm32_hash_finish.exit ]
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #11
  %engine = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %33, ptr noundef %req, i32 noundef %err.addr.0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_init(ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.stm32_hash_find_dev.exit_crit_edge

entry.stm32_hash_find_dev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_find_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  br label %stm32_hash_find_dev.exit

stm32_hash_find_dev.exit:                         ; preds = %if.then.i, %entry.stm32_hash_find_dev.exit_crit_edge
  %hdev.1.i = phi ptr [ %spec.select.i, %if.then.i ], [ %3, %entry.stm32_hash_find_dev.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %6 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdev.1.i, ptr %__ctx.i, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %flags, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  %digcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 4
  %12 = ptrtoint ptr %digcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %digcnt, align 4
  %13 = add i32 %11, -16
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %switch.hole_check, label %stm32_hash_find_dev.exit.cleanup_crit_edge

stm32_hash_find_dev.exit.cleanup_crit_edge:       ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %stm32_hash_find_dev.exit
  %switch.maskindex = trunc i32 %14 to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_hash_init, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.load, ptr %flags, align 4
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %19 = ptrtoint ptr %bufcnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bufcnt, align 4
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %20 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %buflen, align 4
  %total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %21 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %total, align 4
  %offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %offset, align 4
  %data_type = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 60
  %23 = ptrtoint ptr %data_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %data_type, align 4
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 64
  %24 = call ptr @memset(ptr %buffer, i32 0, i32 256)
  %flags17 = getelementptr i8, ptr %1, i32 144
  %25 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags17, align 4
  %and = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %switch.lookup.do.body_crit_edge, label %if.then

switch.lookup.do.body_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or19 = or i32 %28, 8388608
  store i32 %or19, ptr %flags, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %switch.lookup.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_init.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_init, %if.then24)) #11
          to label %cleanup [label %if.then24], !srcloc !144

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_init.__UNIQUE_ID_ddebug257, ptr noundef %30, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body, %switch.hole_check.cleanup_crit_edge, %stm32_hash_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %stm32_hash_find_dev.exit.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %do.body ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_update(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %total = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %4 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %total, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 4
  %sg = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sg, align 4
  %offset = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset, align 4
  %bufcnt = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %9 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bufcnt, align 4
  %add = add i32 %10, %1
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %11 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp = icmp ult i32 %add, %12
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %__ctx.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i, align 16
  %hdev2.i = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 1, i32 3
  %15 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev2.i, align 4
  %op3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %op3.i, align 4
  %engine.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 9
  %18 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %19, ptr noundef %req) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call.i.i, %if.end5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_final(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 65536
  store i32 %or, ptr %flags, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %hdev2.i = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 3
  %4 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2.i, align 4
  %op3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %op3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %op3.i, align 4
  %engine.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %8, ptr noundef %req) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_finup(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.stm32_hash_find_dev.exit_crit_edge

entry.stm32_hash_find_dev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_find_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  br label %stm32_hash_find_dev.exit

stm32_hash_find_dev.exit:                         ; preds = %if.then.i, %entry.stm32_hash_find_dev.exit_crit_edge
  %hdev.1.i = phi ptr [ %spec.select.i, %if.then.i ], [ %3, %entry.stm32_hash_find_dev.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %flags = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 65536
  store i32 %or, ptr %flags, align 4
  %dma_lch = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 12
  %8 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_lch, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %stm32_hash_find_dev.exit.if.end_crit_edge, label %land.lhs.true

stm32_hash_find_dev.exit.if.end_crit_edge:        ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %stm32_hash_find_dev.exit
  %10 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i.i = getelementptr i8, ptr %11, i32 140
  %12 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdev1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.stm32_hash_find_dev.exit.i_crit_edge

land.lhs.true.stm32_hash_find_dev.exit.i_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_find_dev.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %14 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i.i = icmp eq ptr %14, @stm32_hash
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %14
  %15 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select.i.i, ptr %hdev1.i.i, align 4
  br label %stm32_hash_find_dev.exit.i

stm32_hash_find_dev.exit.i:                       ; preds = %if.then.i.i, %land.lhs.true.stm32_hash_find_dev.exit.i_crit_edge
  %hdev.1.i.i = phi ptr [ %spec.select.i.i, %if.then.i.i ], [ %13, %land.lhs.true.stm32_hash_find_dev.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %17)
  %cmp.i = icmp ult i32 %17, 51
  br i1 %cmp.i, label %stm32_hash_find_dev.exit.i.if.end_crit_edge, label %if.end.i

stm32_hash_find_dev.exit.i.if.end_crit_edge:      ; preds = %stm32_hash_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %stm32_hash_find_dev.exit.i
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src.i, align 4
  %call3.i = tail call i32 @sg_nents(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, 1
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.stm32_hash_dma_aligned_data.exit_crit_edge

if.end.i.stm32_hash_dma_aligned_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_aligned_data.exit

if.then5.i:                                       ; preds = %if.end.i
  %dma_mode.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp6.i = icmp eq i32 %21, 1
  br i1 %cmp6.i, label %if.then5.i.if.end_crit_edge, label %if.end8.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end8.i:                                        ; preds = %if.then5.i
  %22 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src.i, align 4
  %call1133.i = tail call i32 @sg_nents(ptr noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1133.i)
  %cmp1234.i = icmp sgt i32 %call1133.i, 0
  br i1 %cmp1234.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.stm32_hash_dma_aligned_data.exit_crit_edge

if.end8.i.stm32_hash_dma_aligned_data.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_aligned_data.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %sg.035.i = phi ptr [ %call17.i, %for.inc.i.for.body.i_crit_edge ], [ %23, %if.end8.i.for.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.035.i, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 4
  %and.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp13.i = icmp eq i32 %and.i, 0
  br i1 %cmp13.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %26 = ptrtoint ptr %sg.035.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg.035.i, align 4
  %and.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %call17.i = tail call ptr @sg_next(ptr noundef %sg.035.i) #11
  %28 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src.i, align 4
  %call11.i = tail call i32 @sg_nents(ptr noundef %29) #11
  %cmp12.i = icmp slt i32 %inc.i, %call11.i
  br i1 %cmp12.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.stm32_hash_dma_aligned_data.exit_crit_edge

for.inc.i.stm32_hash_dma_aligned_data.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_aligned_data.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

stm32_hash_dma_aligned_data.exit:                 ; preds = %for.inc.i.stm32_hash_dma_aligned_data.exit_crit_edge, %if.end8.i.stm32_hash_dma_aligned_data.exit_crit_edge, %if.end.i.stm32_hash_dma_aligned_data.exit_crit_edge
  %30 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %rem.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i24 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i24, label %if.then, label %stm32_hash_dma_aligned_data.exit.if.end_crit_edge

stm32_hash_dma_aligned_data.exit.if.end_crit_edge: ; preds = %stm32_hash_dma_aligned_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %stm32_hash_dma_aligned_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, -5
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_hash_dma_aligned_data.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %stm32_hash_find_dev.exit.i.if.end_crit_edge, %stm32_hash_find_dev.exit.if.end_crit_edge
  %nbytes.i25 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %36 = ptrtoint ptr %nbytes.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nbytes.i25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i26 = icmp eq i32 %37, 0
  br i1 %tobool.not.i26, label %if.end.if.end9_crit_edge, label %lor.lhs.false.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

lor.lhs.false.i:                                  ; preds = %if.end
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and.i27 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool1.not.i = icmp eq i32 %and.i27, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end9_crit_edge, label %if.end.i31

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i31:                                       ; preds = %lor.lhs.false.i
  %total.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 24
  %40 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %total.i, align 4
  %src.i28 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %41 = ptrtoint ptr %src.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src.i28, align 4
  %sg.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 16
  %43 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %sg.i, align 4
  %offset.i29 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 20
  %44 = ptrtoint ptr %offset.i29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %offset.i29, align 4
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 8
  %45 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bufcnt.i, align 4
  %add.i = add i32 %46, %37
  %buflen.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 5, i32 12
  %47 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buflen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %48)
  %cmp.i30 = icmp ult i32 %add.i, %48
  br i1 %cmp.i30, label %if.then4.i, label %stm32_hash_update.exit

if.then4.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %__ctx.i) #11
  br label %if.end9

stm32_hash_update.exit:                           ; preds = %if.end.i31
  %49 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tfm.i, align 16
  %hdev2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %50, i32 1, i32 3
  %51 = ptrtoint ptr %hdev2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hdev2.i.i, align 4
  %op3.i.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %op3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %op3.i.i, align 4
  %engine.i.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %52, i32 0, i32 9
  %54 = ptrtoint ptr %engine.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %engine.i.i.i, align 4
  %call.i.i.i = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %55, ptr noundef %req) #11
  %56 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call.i.i.i, label %stm32_hash_update.exit.if.end9_crit_edge [
    i32 -115, label %stm32_hash_update.exit.cleanup_crit_edge
    i32 -16, label %stm32_hash_update.exit.cleanup_crit_edge43
  ]

stm32_hash_update.exit.cleanup_crit_edge43:       ; preds = %stm32_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

stm32_hash_update.exit.cleanup_crit_edge:         ; preds = %stm32_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

stm32_hash_update.exit.if.end9_crit_edge:         ; preds = %stm32_hash_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %stm32_hash_update.exit.if.end9_crit_edge, %if.then4.i, %lor.lhs.false.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %retval.0.i3342 = phi i32 [ %call.i.i.i, %stm32_hash_update.exit.if.end9_crit_edge ], [ 0, %if.then4.i ], [ 0, %lor.lhs.false.i.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %or.i = or i32 %58, 65536
  store i32 %or.i, ptr %flags, align 4
  %59 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tfm.i, align 16
  %hdev2.i.i36 = getelementptr inbounds %struct.crypto_tfm, ptr %60, i32 1, i32 3
  %61 = ptrtoint ptr %hdev2.i.i36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hdev2.i.i36, align 4
  %op3.i.i37 = getelementptr inbounds %struct.ahash_request, ptr %req, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %op3.i.i37 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %op3.i.i37, align 4
  %engine.i.i.i38 = getelementptr inbounds %struct.stm32_hash_dev, ptr %62, i32 0, i32 9
  %64 = ptrtoint ptr %engine.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %engine.i.i.i38, align 4
  %call.i.i.i39 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %65, ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i3342)
  %tobool11.not = icmp eq i32 %retval.0.i3342, 0
  %spec.select = select i1 %tobool11.not, i32 %call.i.i.i39, i32 %retval.0.i3342
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %stm32_hash_update.exit.cleanup_crit_edge, %stm32_hash_update.exit.cleanup_crit_edge43
  %retval.0 = phi i32 [ %call.i.i.i, %stm32_hash_update.exit.cleanup_crit_edge ], [ %call.i.i.i, %stm32_hash_update.exit.cleanup_crit_edge43 ], [ %spec.select, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_digest(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stm32_hash_init(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @stm32_hash_finup(ptr noundef %req)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_export(ptr nocapture noundef %req, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.stm32_hash_find_dev.exit_crit_edge

entry.stm32_hash_find_dev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_find_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  br label %stm32_hash_find_dev.exit

stm32_hash_find_dev.exit:                         ; preds = %if.then.i, %entry.stm32_hash_find_dev.exit_crit_edge
  %hdev.1.i = phi ptr [ %spec.select.i, %if.then.i ], [ %3, %entry.stm32_hash_find_dev.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 4
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #11, !srcloc !145
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not49 = icmp eq i32 %11, 0
  br i1 %tobool.not49, label %stm32_hash_find_dev.exit.while.end_crit_edge, label %stm32_hash_find_dev.exit.do.end_crit_edge

stm32_hash_find_dev.exit.do.end_crit_edge:        ; preds = %stm32_hash_find_dev.exit
  br label %do.end

stm32_hash_find_dev.exit.while.end_crit_edge:     ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %stm32_hash_find_dev.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !151
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !145
  %15 = and i32 %14, 134217728
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %stm32_hash_find_dev.exit.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 224) #15
  %hw_context = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %17 = ptrtoint ptr %hw_context to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %hw_context, align 4
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #11, !srcloc !145
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %incdec.ptr = getelementptr i32, ptr %call7.i.i, i32 1
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #11, !srcloc !145
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %incdec.ptr16 = getelementptr i32, ptr %call7.i.i, i32 2
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr, align 4
  %28 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !145
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %incdec.ptr18 = getelementptr i32, ptr %call7.i.i, i32 3
  %32 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr16, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end
  %i.051 = phi i32 [ 0, %while.end ], [ %inc, %for.body.for.body_crit_edge ]
  %preg.050 = phi ptr [ %incdec.ptr18, %while.end ], [ %incdec.ptr20, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.051, 2
  %add = add nuw nsw i32 %mul, 248
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %34, i32 %add
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #11, !srcloc !145
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %incdec.ptr20 = getelementptr i32, ptr %preg.050, i32 1
  %37 = ptrtoint ptr %preg.050 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %preg.050, align 4
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i46 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i46, ptr %last_busy.i, align 8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #11
  %43 = call ptr @memcpy(ptr %out, ptr %__ctx.i, i32 364)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_import(ptr nocapture noundef %req, ptr nocapture noundef readonly %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.stm32_hash_find_dev.exit_crit_edge

entry.stm32_hash_find_dev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_find_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  br label %stm32_hash_find_dev.exit

stm32_hash_find_dev.exit:                         ; preds = %if.then.i, %entry.stm32_hash_find_dev.exit_crit_edge
  %hdev.1.i = phi ptr [ %spec.select.i, %if.then.i ], [ %3, %entry.stm32_hash_find_dev.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %6 = call ptr @memcpy(ptr %__ctx.i, ptr %in, i32 364)
  %hw_context = getelementptr inbounds %struct.ahash_request, ptr %req, i32 3, i32 5, i32 64
  %7 = ptrtoint ptr %hw_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_context, align 4
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #11
  %incdec.ptr = getelementptr i32, ptr %8, i32 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i, i32 0, i32 4
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #11, !srcloc !149
  %incdec.ptr5 = getelementptr i32, ptr %8, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %18) #11, !srcloc !149
  %21 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr5, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !149
  %incdec.ptr6 = getelementptr i32, ptr %8, i32 3
  %26 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr5, align 4
  %or = or i32 %27, 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !149
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stm32_hash_find_dev.exit
  %i.038 = phi i32 [ 0, %stm32_hash_find_dev.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %preg.037 = phi ptr [ %incdec.ptr6, %stm32_hash_find_dev.exit ], [ %incdec.ptr7, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.038, 2
  %add = add nuw nsw i32 %mul, 248
  %incdec.ptr7 = getelementptr i32, ptr %preg.037, i32 1
  %31 = ptrtoint ptr %preg.037 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %preg.037, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %34 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %35, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %33) #11, !srcloc !149
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %call.i35 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i35, ptr %last_busy.i, align 8
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %call.i36 = tail call i32 @__pm_runtime_suspend(ptr noundef %40, i32 noundef 13) #11
  %41 = ptrtoint ptr %hw_context to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_context, align 4
  tail call void @kfree(ptr noundef %42) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_hash_cra_init(ptr nocapture noundef writeonly %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 364, ptr %reqsize1.i.i, align 32
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 4
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %keylen.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stm32_hash_one_request, ptr %do_one_request.i, align 4
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @stm32_hash_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 513
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %key1 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 1, i32 5
  %0 = call ptr @memcpy(ptr %key1, ptr %key, i32 %keylen)
  %keylen2 = getelementptr inbounds %struct.crypto_ahash, ptr %tfm, i32 3, i32 5
  %1 = ptrtoint ptr %keylen2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %keylen, ptr %keylen2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_md5_init(ptr nocapture noundef %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 364, ptr %reqsize1.i.i, align 32
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 4
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %keylen.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %3, 8388608
  store i32 %or.i, ptr %flags.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stm32_hash_one_request, ptr %do_one_request.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stm32_hash_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha1_init(ptr nocapture noundef %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 364, ptr %reqsize1.i.i, align 32
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 4
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %keylen.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %3, 8388608
  store i32 %or.i, ptr %flags.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stm32_hash_one_request, ptr %do_one_request.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stm32_hash_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_hash_append_sg(ptr noundef %rctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 9
  %bufcnt = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 5
  %buflen = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 6
  %0 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bufcnt, align 4
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp79 = icmp ugt i32 %3, %1
  br i1 %cmp79, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %sg = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 7
  %offset = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 8
  %buffer = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %rctx, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = phi i32 [ %3, %land.rhs.lr.ph ], [ %22, %while.cond.backedge.land.rhs_crit_edge ]
  %5 = phi i32 [ %1, %land.rhs.lr.ph ], [ %20, %while.cond.backedge.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %sub = sub i32 %11, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %7)
  %sub5 = sub i32 %4, %5
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %land.lhs.true, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true:                                    ; preds = %if.then
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then17, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call ptr @sg_next(ptr noundef %9) #11
  %18 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19, ptr %sg, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else41, %if.then39, %if.end.while.cond.backedge_crit_edge, %if.then17
  %19 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bufcnt, align 4
  %21 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buflen, align 4
  %cmp = icmp ugt i32 %22, %20
  br i1 %cmp, label %while.cond.backedge.land.rhs_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %buffer, i32 %5
  tail call void @scatterwalk_map_and_copy(ptr noundef %add.ptr, ptr noundef %9, i32 noundef %13, i32 noundef %15, i32 noundef 0) #11
  %23 = ptrtoint ptr %bufcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufcnt, align 4
  %add = add i32 %24, %15
  store i32 %add, ptr %bufcnt, align 4
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add26 = add i32 %26, %15
  store i32 %add26, ptr %offset, align 4
  %27 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total, align 4
  %sub28 = sub i32 %28, %15
  store i32 %sub28, ptr %total, align 4
  %29 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg, align 4
  %length31 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %length31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %32)
  %cmp32 = icmp eq i32 %add26, %32
  br i1 %cmp32, label %if.then33, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then33:                                        ; preds = %if.end
  %call35 = tail call ptr @sg_next(ptr noundef %30) #11
  %33 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call35, ptr %sg, align 4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset, align 4
  br label %while.cond.backedge

if.else41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %total, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.then.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_one_request(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  %sg.i.i = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %stm32_hash_find_dev.exit, label %stm32_hash_find_dev.exit.thread

stm32_hash_find_dev.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  br label %if.end

stm32_hash_find_dev.exit:                         ; preds = %entry
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %stm32_hash_find_dev.exit.cleanup_crit_edge, label %stm32_hash_find_dev.exit.if.end_crit_edge

stm32_hash_find_dev.exit.if.end_crit_edge:        ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

stm32_hash_find_dev.exit.cleanup_crit_edge:       ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %stm32_hash_find_dev.exit.if.end_crit_edge, %stm32_hash_find_dev.exit.thread
  %hdev.1.i33 = phi ptr [ %3, %stm32_hash_find_dev.exit.thread ], [ %4, %stm32_hash_find_dev.exit.if.end_crit_edge ]
  %req3 = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 8
  %6 = ptrtoint ptr %req3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %areq, ptr %req3, align 4
  %op = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %8, label %if.end.if.then14_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then9
  ]

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc i32 @stm32_hash_update_cpu(ptr noundef %hdev.1.i33) #11
  br label %if.end12

if.then9:                                         ; preds = %if.end
  %bufcnt.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 8
  %10 = ptrtoint ptr %bufcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bufcnt.i, align 4
  store i32 0, ptr %bufcnt.i, align 4
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %if.then.i29, label %if.else.i

if.then.i29:                                      ; preds = %if.then9
  %14 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %16 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 2
  %buffer1.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 64
  %src.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 0, i32 2
  %17 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %18 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src.i.i, align 4
  %sg3.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 16
  %20 = ptrtoint ptr %sg3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sg3.i.i, align 4
  %21 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req3, align 4
  %nbytes.i.i = getelementptr inbounds %struct.ahash_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes.i.i, align 8
  %total.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 24
  %25 = ptrtoint ptr %total.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %total.i.i, align 4
  %call6.i.i = tail call i32 @sg_nents(ptr noundef %19) #11
  %nents.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 56
  %26 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call6.i.i, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.then.i29.stm32_hash_dma_send.exit.i_crit_edge, label %if.end.i.i

if.then.i29.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

if.end.i.i:                                       ; preds = %if.then.i29
  tail call fastcc void @stm32_hash_write_ctrl(ptr noundef %hdev.1.i33) #11
  %flags.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 11
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %call9.i.i = tail call fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %hdev.1.i33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call9.i.i)
  %cmp10.not.i.i = icmp eq i32 %call9.i.i, -115
  br i1 %cmp10.not.i.i, label %if.then8.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i.stm32_hash_dma_send.exit.i_crit_edge

if.then8.i.i.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

if.then8.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then8.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %err.0.i.i = phi i32 [ -115, %if.then8.i.i.if.end13.i.i_crit_edge ], [ 0, %if.end.i.i.if.end13.i.i_crit_edge ]
  %29 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp16199.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp16199.not.i.i, label %if.end13.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end13.i.i.for.end.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end13.i.i
  %31 = ptrtoint ptr %sg3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg3.i.i, align 4
  %dma_mode.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 6
  %dev.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 1
  %dma_ct.i.i = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 5, i32 52
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %33 = phi i32 [ %30, %for.body.lr.ph.i.i ], [ %60, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0202.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ncp.0201.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %ncp.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tsg.0200.i.i = phi ptr [ %32, %for.body.lr.ph.i.i ], [ %call73.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %16, align 4
  %36 = call ptr @memcpy(ptr %sg.i.i, ptr %tsg.0200.i.i, i32 20)
  %37 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg.i.i, align 4
  %and.i.i.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i.if.end56.i.i_crit_edge, label %if.then20.i.i

for.body.i.i.if.end56.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  %39 = ptrtoint ptr %dma_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp21.i.i = icmp eq i32 %40, 1
  %41 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %16, align 4
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.else.i.i

if.then22.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = add i32 %42, -1
  %sub.i.i = and i32 %43, -16
  %44 = ptrtoint ptr %sg3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg3.i.i, align 4
  %sub32.i.i = sub i32 %42, %sub.i.i
  %46 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total.i.i, align 4
  %sub36.i.i = sub i32 %sub.i.i, %42
  %add37.i.i = add i32 %sub36.i.i, %47
  %call38.i.i = call i32 @sg_pcopy_to_buffer(ptr noundef %45, i32 noundef %33, ptr noundef %buffer1.i.i, i32 noundef %sub32.i.i, i32 noundef %add37.i.i) #11
  br label %if.end56.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then20.i.i
  %and43.i.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %cmp44.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %cmp44.i.i, label %if.else.i.i.if.end56.i.i_crit_edge, label %if.then45.i.i

if.else.i.i.if.end56.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add50.i.i = add i32 %42, 3
  %and51.i.i = and i32 %add50.i.i, -4
  br label %if.end56.sink.split.i.i

if.end56.sink.split.i.i:                          ; preds = %if.then45.i.i, %if.then22.i.i
  %sub.sink.i.i = phi i32 [ %sub.i.i, %if.then22.i.i ], [ %and51.i.i, %if.then45.i.i ]
  %len.0.ph.i.i = phi i32 [ %sub.i.i, %if.then22.i.i ], [ %42, %if.then45.i.i ]
  %ncp.1.ph.i.i = phi i32 [ %call38.i.i, %if.then22.i.i ], [ %ncp.0201.i.i, %if.then45.i.i ]
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.sink.i.i, ptr %16, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end56.sink.split.i.i, %if.else.i.i.if.end56.i.i_crit_edge, %for.body.i.i.if.end56.i.i_crit_edge
  %len.0.i.i = phi i32 [ %35, %if.else.i.i.if.end56.i.i_crit_edge ], [ %35, %for.body.i.i.if.end56.i.i_crit_edge ], [ %len.0.ph.i.i, %if.end56.sink.split.i.i ]
  %ncp.1.i.i = phi i32 [ %ncp.0201.i.i, %if.else.i.i.if.end56.i.i_crit_edge ], [ %ncp.0201.i.i, %for.body.i.i.if.end56.i.i_crit_edge ], [ %ncp.1.ph.i.i, %if.end56.sink.split.i.i ]
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %call58.i.i = call i32 @dma_map_sg_attrs(ptr noundef %50, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  %51 = ptrtoint ptr %dma_ct.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call58.i.i, ptr %dma_ct.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %cmp60.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %cmp60.i.i, label %do.end.i.i, label %if.end63.i.i

do.end.i.i:                                       ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.37) #14
  br label %stm32_hash_dma_send.exit.i

if.end63.i.i:                                     ; preds = %if.end56.i.i
  %54 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg.i.i, align 4
  %and.i168.i.i = lshr i32 %55, 1
  %and.i168.lobit.i.i = and i32 %and.i168.i.i, 1
  %56 = xor i32 %and.i168.lobit.i.i, 1
  %call67.i.i = call fastcc i32 @stm32_hash_xmit_dma(ptr noundef %hdev.1.i33, ptr noundef nonnull %sg.i.i, i32 noundef %len.0.i.i, i32 noundef %56) #11
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %58, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call67.i.i)
  %cmp70.i.i = icmp eq i32 %call67.i.i, -12
  br i1 %cmp70.i.i, label %if.end63.i.i.stm32_hash_dma_send.exit.i_crit_edge, label %for.inc.i.i

if.end63.i.i.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

for.inc.i.i:                                      ; preds = %if.end63.i.i
  %inc.i.i = add nuw i32 %i.0202.i.i, 1
  %call73.i.i = call ptr @sg_next(ptr noundef %tsg.0200.i.i) #11
  %59 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nents.i.i, align 4
  %cmp16.i.i = icmp ult i32 %inc.i.i, %60
  br i1 %cmp16.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end13.i.i.for.end.i.i_crit_edge
  %err.1.lcssa.i.i = phi i32 [ %err.0.i.i, %if.end13.i.i.for.end.i.i_crit_edge ], [ %call67.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %ncp.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.i.for.end.i.i_crit_edge ], [ %ncp.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %dma_mode74.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 6
  %61 = ptrtoint ptr %dma_mode74.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_mode74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp75.i.i = icmp eq i32 %62, 1
  br i1 %cmp75.i.i, label %if.then76.i.i, label %for.end.i.i.if.end95.i.i_crit_edge

for.end.i.i.if.end95.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i.i

if.then76.i.i:                                    ; preds = %for.end.i.i
  %call.i.i.i = call i64 @ktime_get() #11
  %add.i.i.i.i = add i64 %call.i.i.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %io_base.i.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 4
  %63 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr36.i.i.i = getelementptr i8, ptr %64, i32 36
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i.i) #11, !srcloc !145
  %66 = and i32 %65, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not38.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not38.i.i.i, label %if.then76.i.i.if.end80.i.i_crit_edge, label %if.then76.i.i.land.lhs.true.i.i.i_crit_edge

if.then76.i.i.land.lhs.true.i.i.i_crit_edge:      ; preds = %if.then76.i.i
  br label %land.lhs.true.i.i.i

if.then76.i.i.if.end80.i.i_crit_edge:             ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.then76.i.i.land.lhs.true.i.i.i_crit_edge
  %call12.i.i.i = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call12.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %67 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 36
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !145
  %70 = and i32 %69, 134217728
  %tobool.not.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i.i, label %if.then23.i.i.i.if.end80.i.i_crit_edge, label %if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge

if.then23.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i.i

if.then23.i.i.i.if.end80.i.i_crit_edge:           ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %71 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %72, i32 36
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #11, !srcloc !145
  %74 = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool27.not.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool27.not.i.i.i, label %for.end.i.i.i.if.end80.i.i_crit_edge, label %for.end.i.i.i.stm32_hash_dma_send.exit.i_crit_edge

for.end.i.i.i.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

for.end.i.i.i.if.end80.i.i_crit_edge:             ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %for.end.i.i.i.if.end80.i.i_crit_edge, %if.then23.i.i.i.if.end80.i.i_crit_edge, %if.then76.i.i.if.end80.i.i_crit_edge
  %75 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i.i.i, align 4
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !145
  %78 = and i32 %77, -138412033
  %79 = or i32 %78, 4194304
  %80 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncp.0.lcssa.i.i)
  %tobool83.not.i.i = icmp eq i32 %ncp.0.lcssa.i.i, 0
  br i1 %tobool83.not.i.i, label %if.end80.i.i.if.end92.i.i_crit_edge, label %if.then84.i.i

if.end80.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i.i

if.then84.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i30 = getelementptr i32, ptr %buffer1.i.i, i32 %ncp.0.lcssa.i.i
  %sub86.i.i = add i32 %ncp.0.lcssa.i.i, 3
  %div167.i.i = lshr i32 %sub86.i.i, 2
  %sub87.i.i = sub i32 %div167.i.i, %ncp.0.lcssa.i.i
  %82 = call ptr @memset(ptr %add.ptr.i.i30, i32 0, i32 %sub87.i.i)
  %83 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr88.i.i = getelementptr i8, ptr %84, i32 4
  call void @__raw_writesl(ptr noundef %add.ptr88.i.i, ptr noundef %buffer1.i.i, i32 noundef %div167.i.i) #11
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then84.i.i, %if.end80.i.i.if.end92.i.i_crit_edge
  %85 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %86, i32 8
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !145
  %88 = and i32 %87, -520093697
  %89 = call i32 @llvm.bswap.i32(i32 %88) #11
  %rem.i.i.i = shl i32 %ncp.0.lcssa.i.i, 3
  %mul.i.i.i = and i32 %rem.i.i.i, 24
  %or.i.i.i = or i32 %89, %mul.i.i.i
  %90 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %91 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %92, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %90) #11, !srcloc !149
  %93 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i173.i.i = getelementptr i8, ptr %94, i32 8
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173.i.i) #11, !srcloc !145
  %96 = or i32 %95, 65536
  %97 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i175.i.i = getelementptr i8, ptr %98, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i.i, i32 %96) #11, !srcloc !149
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.end92.i.i, %for.end.i.i.if.end95.i.i_crit_edge
  %err.2.i.i = phi i32 [ -115, %if.end92.i.i ], [ %err.1.lcssa.i.i, %for.end.i.i.if.end95.i.i_crit_edge ]
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i, align 4
  %and97.i.i = and i32 %100, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.end95.i.i.stm32_hash_dma_send.exit.i_crit_edge, label %if.then99.i.i

if.end95.i.i.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

if.then99.i.i:                                    ; preds = %if.end95.i.i
  %call.i176.i.i = call i64 @ktime_get() #11
  %add.i.i177.i.i = add i64 %call.i176.i.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %io_base.i178.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i33, i32 0, i32 4
  %101 = ptrtoint ptr %io_base.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io_base.i178.i.i, align 4
  %add.ptr36.i179.i.i = getelementptr i8, ptr %102, i32 36
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i179.i.i) #11, !srcloc !145
  %104 = and i32 %103, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not38.i180.i.i = icmp eq i32 %104, 0
  br i1 %tobool.not38.i180.i.i, label %if.then99.i.i.if.end103.i.i_crit_edge, label %if.then99.i.i.land.lhs.true.i183.i.i_crit_edge

if.then99.i.i.land.lhs.true.i183.i.i_crit_edge:   ; preds = %if.then99.i.i
  br label %land.lhs.true.i183.i.i

if.then99.i.i.if.end103.i.i_crit_edge:            ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.i

land.lhs.true.i183.i.i:                           ; preds = %if.then23.i186.i.i.land.lhs.true.i183.i.i_crit_edge, %if.then99.i.i.land.lhs.true.i183.i.i_crit_edge
  %call12.i181.i.i = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i181.i.i, i64 %add.i.i177.i.i)
  %cmp3.i.i182.i.i = icmp sgt i64 %call12.i181.i.i, %add.i.i177.i.i
  br i1 %cmp3.i.i182.i.i, label %for.end.i189.i.i, label %if.then23.i186.i.i

if.then23.i186.i.i:                               ; preds = %land.lhs.true.i183.i.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %105 = ptrtoint ptr %io_base.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base.i178.i.i, align 4
  %add.ptr.i184.i.i = getelementptr i8, ptr %106, i32 36
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184.i.i) #11, !srcloc !145
  %108 = and i32 %107, 134217728
  %tobool.not.i185.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i185.i.i, label %if.then23.i186.i.i.if.end103.i.i_crit_edge, label %if.then23.i186.i.i.land.lhs.true.i183.i.i_crit_edge

if.then23.i186.i.i.land.lhs.true.i183.i.i_crit_edge: ; preds = %if.then23.i186.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i183.i.i

if.then23.i186.i.i.if.end103.i.i_crit_edge:       ; preds = %if.then23.i186.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.i

for.end.i189.i.i:                                 ; preds = %land.lhs.true.i183.i.i
  %109 = ptrtoint ptr %io_base.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io_base.i178.i.i, align 4
  %add.ptr18.i187.i.i = getelementptr i8, ptr %110, i32 36
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i187.i.i) #11, !srcloc !145
  %112 = and i32 %111, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool27.not.i188.i.i = icmp eq i32 %112, 0
  br i1 %tobool27.not.i188.i.i, label %for.end.i189.i.i.if.end103.i.i_crit_edge, label %for.end.i189.i.i.stm32_hash_dma_send.exit.i_crit_edge

for.end.i189.i.i.stm32_hash_dma_send.exit.i_crit_edge: ; preds = %for.end.i189.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_dma_send.exit.i

for.end.i189.i.i.if.end103.i.i_crit_edge:         ; preds = %for.end.i189.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %for.end.i189.i.i.if.end103.i.i_crit_edge, %if.then23.i186.i.i.if.end103.i.i_crit_edge, %if.then99.i.i.if.end103.i.i_crit_edge
  %call104.i.i = call fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %hdev.1.i33) #11
  br label %stm32_hash_dma_send.exit.i

stm32_hash_dma_send.exit.i:                       ; preds = %if.end103.i.i, %for.end.i189.i.i.stm32_hash_dma_send.exit.i_crit_edge, %if.end95.i.i.stm32_hash_dma_send.exit.i_crit_edge, %for.end.i.i.i.stm32_hash_dma_send.exit.i_crit_edge, %if.end63.i.i.stm32_hash_dma_send.exit.i_crit_edge, %do.end.i.i, %if.then8.i.i.stm32_hash_dma_send.exit.i_crit_edge, %if.then.i29.stm32_hash_dma_send.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -12, %do.end.i.i ], [ -22, %if.then.i29.stm32_hash_dma_send.exit.i_crit_edge ], [ %call9.i.i, %if.then8.i.i.stm32_hash_dma_send.exit.i_crit_edge ], [ %call104.i.i, %if.end103.i.i ], [ %err.2.i.i, %if.end95.i.i.stm32_hash_dma_send.exit.i_crit_edge ], [ -110, %for.end.i.i.i.stm32_hash_dma_send.exit.i_crit_edge ], [ -110, %for.end.i189.i.i.stm32_hash_dma_send.exit.i_crit_edge ], [ -12, %if.end63.i.i.stm32_hash_dma_send.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %if.end12

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %buffer.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 5, i32 64
  %call4.i = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %hdev.1.i33, ptr noundef %buffer.i, i32 noundef %11, i32 noundef 1) #11
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %stm32_hash_dma_send.exit.i, %if.then5
  %err.0 = phi i32 [ %call.i, %if.then5 ], [ %call4.i, %if.else.i ], [ %retval.0.i.i, %stm32_hash_dma_send.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err.0)
  %cmp13.not = icmp eq i32 %err.0, -115
  br i1 %cmp13.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %err.038 = phi i32 [ %err.0, %if.end12.if.then14_crit_edge ], [ 0, %if.end.if.then14_crit_edge ]
  call fastcc void @stm32_hash_finish_req(ptr noundef %areq, i32 noundef %err.038)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %stm32_hash_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %stm32_hash_find_dev.exit.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_prepare_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %hdev1.i = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %stm32_hash_find_dev.exit, label %stm32_hash_find_dev.exit.thread

stm32_hash_find_dev.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  br label %if.end

stm32_hash_find_dev.exit:                         ; preds = %entry
  %4 = load ptr, ptr @stm32_hash, align 4
  %cmp.not.i = icmp eq ptr %4, @stm32_hash
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %4
  %5 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %hdev1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #11
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %stm32_hash_find_dev.exit.cleanup_crit_edge, label %stm32_hash_find_dev.exit.if.end_crit_edge

stm32_hash_find_dev.exit.if.end_crit_edge:        ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

stm32_hash_find_dev.exit.cleanup_crit_edge:       ; preds = %stm32_hash_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %stm32_hash_find_dev.exit.if.end_crit_edge, %stm32_hash_find_dev.exit.thread
  %hdev.1.i28 = phi ptr [ %3, %stm32_hash_find_dev.exit.thread ], [ %4, %stm32_hash_find_dev.exit.if.end_crit_edge ]
  %req3 = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 8
  %6 = ptrtoint ptr %req3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %areq, ptr %req3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_prepare_req.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_prepare_req, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !144

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %op = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %op, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %11 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_prepare_req.__UNIQUE_ID_ddebug258, ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef %10, i32 noundef %12) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %dev.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #11
  %flags.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 11
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.then.i25, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i25:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %io_base.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 4
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 67108864) #11, !srcloc !149
  %19 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 0) #11, !srcloc !149
  %21 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #11, !srcloc !149
  %23 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #11, !srcloc !149
  %err.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev.1.i28, i32 0, i32 10
  %25 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %err.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %do.end.cleanup_crit_edge, %stm32_hash_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %stm32_hash_find_dev.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then.i25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_update_cpu(ptr nocapture noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_update_cpu.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_update_cpu, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_update_cpu.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags4 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %bufcnt5 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 8
  %total = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 24
  %buflen = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 12
  %buffer = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %err.0 = phi i32 [ 0, %do.end ], [ %call11, %while.body ]
  %8 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total, align 4
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp ult i32 %9, %11
  br i1 %cmp.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %12 = ptrtoint ptr %bufcnt5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufcnt5, align 4
  %add = add i32 %13, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp8.not = icmp ult i32 %add, %11
  br i1 %cmp8.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %__ctx.i)
  %14 = ptrtoint ptr %bufcnt5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufcnt5, align 4
  store i32 0, ptr %bufcnt5, align 4
  %call11 = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %hdev, ptr noundef %buffer, i32 noundef %15, i32 noundef 0)
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %and = and i32 %7, 65536
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %__ctx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %while.end.if.end21_crit_edge, label %if.then13

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %bufcnt5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufcnt5, align 4
  store i32 0, ptr %bufcnt5, align 4
  %18 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags4, align 4
  %and19 = and i32 %19, 65536
  %call20 = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %hdev, ptr noundef %buffer, i32 noundef %17, i32 noundef %and19)
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %while.end.if.end21_crit_edge
  %err.1 = phi i32 [ %call20, %if.then13 ], [ %err.0, %while.end.if.end21_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_xmit_cpu(ptr nocapture noundef %hdev, ptr nocapture noundef readonly %buf, i32 noundef %length, i32 noundef %final) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final)
  %tobool.not = icmp eq i32 %final, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 32768
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = add i32 %length, 3
  %div68 = lshr i32 %sub, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_xmit_cpu.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_xmit_cpu, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !144

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_xmit_cpu.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %length, i32 noundef %final, i32 noundef %div68) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %flags6 = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %or7 = or i32 %5, 4
  store i32 %or7, ptr %flags6, align 4
  tail call fastcc void @stm32_hash_write_ctrl(ptr noundef %hdev)
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 4
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !145
  %9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not38.i = icmp eq i32 %9, 0
  br i1 %tobool.not38.i, label %do.end.if.end11_crit_edge, label %do.end.land.lhs.true.i_crit_edge

do.end.land.lhs.true.i_crit_edge:                 ; preds = %do.end
  br label %land.lhs.true.i

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %do.end.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !145
  %13 = and i32 %12, 134217728
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then23.i.if.end11_crit_edge, label %if.then23.i.land.lhs.true.i_crit_edge

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then23.i.if.end11_crit_edge:                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.end.i:                                        ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !145
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not.i = icmp eq i32 %17, 0
  br i1 %tobool27.not.i, label %for.end.i.if.end11_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %for.end.i.if.end11_crit_edge, %if.then23.i.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %18 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags6, align 4
  %20 = and i32 %19, 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %20)
  %21 = icmp eq i32 %20, 8388608
  br i1 %21, label %if.then17, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then17:                                        ; preds = %if.end11
  %or19 = or i32 %19, 128
  %22 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19, ptr %flags6, align 4
  %req.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 8
  %23 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req.i, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm.i.i, align 16
  %keylen2.i = getelementptr i8, ptr %26, i32 660
  %27 = ptrtoint ptr %keylen2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keylen2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i69 = icmp eq i32 %28, 0
  br i1 %tobool.not.i69, label %if.then17.stm32_hash_write_key.exit_crit_edge, label %if.then.i

if.then17.stm32_hash_write_key.exit_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_write_key.exit

if.then.i:                                        ; preds = %if.then17
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #11, !srcloc !145
  %32 = and i32 %31, -520093697
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %rem.i.i = shl i32 %28, 3
  %mul.i.i = and i32 %rem.i.i, 24
  %or.i.i = or i32 %33, %mul.i.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %34) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24.i = icmp sgt i32 %28, 0
  br i1 %cmp24.i, label %while.body.preheader.i, label %if.then.i.while.end.i_crit_edge

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then.i
  %key3.i = getelementptr i8, ptr %26, i32 148
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %key.026.i = phi ptr [ %add.ptr.i70, %while.body.i.while.body.i_crit_edge ], [ %key3.i, %while.body.preheader.i ]
  %keylen.025.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %28, %while.body.preheader.i ]
  %37 = ptrtoint ptr %key.026.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key.026.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #11, !srcloc !149
  %sub.i = add nsw i32 %keylen.025.i, -4
  %add.ptr.i70 = getelementptr i8, ptr %key.026.i, i32 4
  %cmp.i = icmp ugt i32 %keylen.025.i, 4
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %42 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #11, !srcloc !145
  %45 = or i32 %44, 65536
  %46 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %45) #11, !srcloc !149
  br label %stm32_hash_write_key.exit

stm32_hash_write_key.exit:                        ; preds = %while.end.i, %if.then17.stm32_hash_write_key.exit_crit_edge
  %call.i72 = tail call i64 @ktime_get() #11
  %add.i.i73 = add i64 %call.i72, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %48 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i, align 4
  %add.ptr36.i75 = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i75) #11, !srcloc !145
  %51 = and i32 %50, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not38.i76 = icmp eq i32 %51, 0
  br i1 %tobool.not38.i76, label %stm32_hash_write_key.exit.if.end25_crit_edge, label %stm32_hash_write_key.exit.land.lhs.true.i79_crit_edge

stm32_hash_write_key.exit.land.lhs.true.i79_crit_edge: ; preds = %stm32_hash_write_key.exit
  br label %land.lhs.true.i79

stm32_hash_write_key.exit.if.end25_crit_edge:     ; preds = %stm32_hash_write_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.i79:                                ; preds = %if.then23.i82.land.lhs.true.i79_crit_edge, %stm32_hash_write_key.exit.land.lhs.true.i79_crit_edge
  %call12.i77 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i77, i64 %add.i.i73)
  %cmp3.i.i78 = icmp sgt i64 %call12.i77, %add.i.i73
  br i1 %cmp3.i.i78, label %for.end.i85, label %if.then23.i82

if.then23.i82:                                    ; preds = %land.lhs.true.i79
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %52 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %53, i32 36
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #11, !srcloc !145
  %55 = and i32 %54, 134217728
  %tobool.not.i81 = icmp eq i32 %55, 0
  br i1 %tobool.not.i81, label %if.then23.i82.if.end25_crit_edge, label %if.then23.i82.land.lhs.true.i79_crit_edge

if.then23.i82.land.lhs.true.i79_crit_edge:        ; preds = %if.then23.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i79

if.then23.i82.if.end25_crit_edge:                 ; preds = %if.then23.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.end.i85:                                      ; preds = %land.lhs.true.i79
  %56 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base.i, align 4
  %add.ptr18.i83 = getelementptr i8, ptr %57, i32 36
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i83) #11, !srcloc !145
  %59 = and i32 %58, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool27.not.i84 = icmp eq i32 %59, 0
  br i1 %tobool27.not.i84, label %for.end.i85.if.end25_crit_edge, label %for.end.i85.cleanup_crit_edge

for.end.i85.cleanup_crit_edge:                    ; preds = %for.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i85.if.end25_crit_edge:                   ; preds = %for.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %for.end.i85.if.end25_crit_edge, %if.then23.i82.if.end25_crit_edge, %stm32_hash_write_key.exit.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp141.not = icmp ult i32 %sub, 4
  br i1 %cmp141.not, label %if.end25.for.end_crit_edge, label %for.body.preheader

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end25
  %umax = call i32 @llvm.umax.i32(i32 %div68, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %count.0142 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %buf, i32 %count.0142
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #11
  %63 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %62) #11, !srcloc !149
  %inc = add nuw nsw i32 %count.0142, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %for.end
  %65 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %66, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #11, !srcloc !145
  %68 = and i32 %67, -520093697
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #11
  %rem.i = shl i32 %length, 3
  %mul.i = and i32 %rem.i, 24
  %or.i = or i32 %69, %mul.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %71 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %70) #11, !srcloc !149
  %73 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %74, i32 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #11, !srcloc !145
  %76 = or i32 %75, 65536
  %77 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %76) #11, !srcloc !149
  %79 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags6, align 4
  %and31 = and i32 %80, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then27.cleanup_crit_edge, label %if.then33

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %if.then27
  %call.i95 = tail call i64 @ktime_get() #11
  %add.i.i96 = add i64 %call.i95, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %81 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_base.i, align 4
  %add.ptr36.i98 = getelementptr i8, ptr %82, i32 36
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i98) #11, !srcloc !145
  %84 = and i32 %83, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not38.i99 = icmp eq i32 %84, 0
  br i1 %tobool.not38.i99, label %if.then33.if.end37_crit_edge, label %if.then33.land.lhs.true.i102_crit_edge

if.then33.land.lhs.true.i102_crit_edge:           ; preds = %if.then33
  br label %land.lhs.true.i102

if.then33.if.end37_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true.i102:                               ; preds = %if.then23.i105.land.lhs.true.i102_crit_edge, %if.then33.land.lhs.true.i102_crit_edge
  %call12.i100 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i100, i64 %add.i.i96)
  %cmp3.i.i101 = icmp sgt i64 %call12.i100, %add.i.i96
  br i1 %cmp3.i.i101, label %for.end.i108, label %if.then23.i105

if.then23.i105:                                   ; preds = %land.lhs.true.i102
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %85 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %86, i32 36
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #11, !srcloc !145
  %88 = and i32 %87, 134217728
  %tobool.not.i104 = icmp eq i32 %88, 0
  br i1 %tobool.not.i104, label %if.then23.i105.if.end37_crit_edge, label %if.then23.i105.land.lhs.true.i102_crit_edge

if.then23.i105.land.lhs.true.i102_crit_edge:      ; preds = %if.then23.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i102

if.then23.i105.if.end37_crit_edge:                ; preds = %if.then23.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.end.i108:                                     ; preds = %land.lhs.true.i102
  %89 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base.i, align 4
  %add.ptr18.i106 = getelementptr i8, ptr %90, i32 36
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i106) #11, !srcloc !145
  %92 = and i32 %91, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool27.not.i107 = icmp eq i32 %92, 0
  br i1 %tobool27.not.i107, label %for.end.i108.if.end37_crit_edge, label %for.end.i108.cleanup_crit_edge

for.end.i108.cleanup_crit_edge:                   ; preds = %for.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i108.if.end37_crit_edge:                  ; preds = %for.end.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end37:                                         ; preds = %for.end.i108.if.end37_crit_edge, %if.then23.i105.if.end37_crit_edge, %if.then33.if.end37_crit_edge
  %req.i111 = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 8
  %93 = ptrtoint ptr %req.i111 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %req.i111, align 4
  %tfm.i.i112 = getelementptr inbounds %struct.crypto_async_request, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %tfm.i.i112 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tfm.i.i112, align 16
  %keylen2.i113 = getelementptr i8, ptr %96, i32 660
  %97 = ptrtoint ptr %keylen2.i113 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %keylen2.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i114 = icmp eq i32 %98, 0
  br i1 %tobool.not.i114, label %if.end37.cleanup_crit_edge, label %if.then.i122

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i122:                                     ; preds = %if.end37
  %99 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i19.i116 = getelementptr i8, ptr %100, i32 8
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i116) #11, !srcloc !145
  %102 = and i32 %101, -520093697
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #11
  %rem.i.i117 = shl i32 %98, 3
  %mul.i.i118 = and i32 %rem.i.i117, 24
  %or.i.i119 = or i32 %103, %mul.i.i118
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i.i119) #11
  %105 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i5.i.i120 = getelementptr i8, ptr %106, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i120, i32 %104) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp24.i121 = icmp sgt i32 %98, 0
  br i1 %cmp24.i121, label %while.body.preheader.i124, label %if.then.i122.while.end.i134_crit_edge

if.then.i122.while.end.i134_crit_edge:            ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i134

while.body.preheader.i124:                        ; preds = %if.then.i122
  %key3.i123 = getelementptr i8, ptr %96, i32 148
  br label %while.body.i131

while.body.i131:                                  ; preds = %while.body.i131.while.body.i131_crit_edge, %while.body.preheader.i124
  %key.026.i125 = phi ptr [ %add.ptr.i129, %while.body.i131.while.body.i131_crit_edge ], [ %key3.i123, %while.body.preheader.i124 ]
  %keylen.025.i126 = phi i32 [ %sub.i128, %while.body.i131.while.body.i131_crit_edge ], [ %98, %while.body.preheader.i124 ]
  %107 = ptrtoint ptr %key.026.i125 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %key.026.i125, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #11
  %110 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127, i32 %109) #11, !srcloc !149
  %sub.i128 = add nsw i32 %keylen.025.i126, -4
  %add.ptr.i129 = getelementptr i8, ptr %key.026.i125, i32 4
  %cmp.i130 = icmp ugt i32 %keylen.025.i126, 4
  br i1 %cmp.i130, label %while.body.i131.while.body.i131_crit_edge, label %while.body.i131.while.end.i134_crit_edge

while.body.i131.while.end.i134_crit_edge:         ; preds = %while.body.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i134

while.body.i131.while.body.i131_crit_edge:        ; preds = %while.body.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i131

while.end.i134:                                   ; preds = %while.body.i131.while.end.i134_crit_edge, %if.then.i122.while.end.i134_crit_edge
  %112 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i21.i132 = getelementptr i8, ptr %113, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i132) #11, !srcloc !145
  %115 = or i32 %114, 65536
  %116 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i23.i133 = getelementptr i8, ptr %117, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i133, i32 %115) #11, !srcloc !149
  br label %cleanup

cleanup:                                          ; preds = %while.end.i134, %if.end37.cleanup_crit_edge, %for.end.i108.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.i85.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.then27.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -110, %for.end.i.cleanup_crit_edge ], [ -110, %for.end.i85.cleanup_crit_edge ], [ -110, %for.end.i108.cleanup_crit_edge ], [ -115, %if.end37.cleanup_crit_edge ], [ -115, %while.end.i134 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_hash_write_ctrl(ptr nocapture noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then:                                          ; preds = %entry
  %flags4 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %and5 = and i32 %7, 3932160
  %8 = add nsw i32 %and5, -262144
  %9 = lshr exact i32 %8, 18
  %switch.tableidx = add nsw i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 7
  br i1 %10, label %switch.lookup, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.stm32_hash_write_ctrl, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 132, %if.then.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %data_type = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 60
  %12 = ptrtoint ptr %data_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_type, align 4
  %conv = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %or13 = or i32 %shl, %reg.0
  %and15 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %sw.epilog.if.end24_crit_edge, label %if.then17

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or19 = or i32 %5, 8388608
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or19, ptr %flags, align 4
  %keylen = getelementptr i8, ptr %3, i32 660
  %15 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %cmp = icmp sgt i32 %16, 64
  %spec.select.v = select i1 %cmp, i32 65600, i32 64
  %spec.select = or i32 %spec.select.v, %or13
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %sw.epilog.if.end24_crit_edge
  %reg.1 = phi i32 [ %or13, %sw.epilog.if.end24_crit_edge ], [ %spec.select, %if.then17 ]
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 4
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #11, !srcloc !149
  %19 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #11
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !149
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or26 = or i32 %23, 1
  store i32 %or26, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_hash_write_ctrl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_hash_write_ctrl, %if.then31)) #11
          to label %if.end33 [label %if.then31], !srcloc !144

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_hash_write_ctrl.__UNIQUE_ID_ddebug250, ptr noundef %25, ptr noundef nonnull @.str.36, i32 noundef %reg.1) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end24, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %keylen = getelementptr i8, ptr %3, i32 660
  %4 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %cmp = icmp slt i32 %5, 50
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dma_mode = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.thenthread-pre-split, label %if.else

if.thenthread-pre-split:                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %keylen, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %entry.if.then_crit_edge
  %9 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %5, %entry.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.stm32_hash_write_key.exit_crit_edge, label %if.then.i

if.then.stm32_hash_write_key.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_write_key.exit

if.then.i:                                        ; preds = %if.then
  %io_base.i.i.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 4
  %10 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #11, !srcloc !145
  %13 = and i32 %12, -520093697
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %rem.i.i = shl i32 %9, 3
  %mul.i.i = and i32 %rem.i.i, 24
  %or.i.i = or i32 %14, %mul.i.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %16 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %15) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.i = icmp sgt i32 %9, 0
  br i1 %cmp24.i, label %while.body.preheader.i, label %if.then.i.while.end.i_crit_edge

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then.i
  %key3.i = getelementptr i8, ptr %3, i32 148
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %key.026.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %key3.i, %while.body.preheader.i ]
  %keylen.025.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %9, %while.body.preheader.i ]
  %18 = ptrtoint ptr %key.026.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key.026.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 %20) #11, !srcloc !149
  %sub.i = add nsw i32 %keylen.025.i, -4
  %add.ptr.i = getelementptr i8, ptr %key.026.i, i32 4
  %cmp.i = icmp ugt i32 %keylen.025.i, 4
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %23 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #11, !srcloc !145
  %26 = or i32 %25, 65536
  %27 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %26) #11, !srcloc !149
  br label %stm32_hash_write_key.exit

stm32_hash_write_key.exit:                        ; preds = %while.end.i, %if.then.stm32_hash_write_key.exit_crit_edge
  %retval.0.i = phi i32 [ -115, %while.end.i ], [ 0, %if.then.stm32_hash_write_key.exit_crit_edge ]
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 212) #11
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 4
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %30, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !145
  %32 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not38.i = icmp eq i32 %32, 0
  br i1 %tobool.not38.i, label %stm32_hash_write_key.exit.stm32_hash_wait_busy.exit.thread_crit_edge, label %stm32_hash_write_key.exit.land.lhs.true.i_crit_edge

stm32_hash_write_key.exit.land.lhs.true.i_crit_edge: ; preds = %stm32_hash_write_key.exit
  br label %land.lhs.true.i

stm32_hash_write_key.exit.stm32_hash_wait_busy.exit.thread_crit_edge: ; preds = %stm32_hash_write_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_wait_busy.exit.thread

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %stm32_hash_write_key.exit.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %34, i32 36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #11, !srcloc !145
  %36 = and i32 %35, 134217728
  %tobool.not.i48 = icmp eq i32 %36, 0
  br i1 %tobool.not.i48, label %if.then23.i.stm32_hash_wait_busy.exit.thread_crit_edge, label %if.then23.i.land.lhs.true.i_crit_edge

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then23.i.stm32_hash_wait_busy.exit.thread_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_wait_busy.exit.thread

for.end.i:                                        ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !145
  %40 = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool27.not.i = icmp eq i32 %40, 0
  br i1 %tobool27.not.i, label %for.end.i.stm32_hash_wait_busy.exit.thread_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i.stm32_hash_wait_busy.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stm32_hash_wait_busy.exit.thread

stm32_hash_wait_busy.exit.thread:                 ; preds = %for.end.i.stm32_hash_wait_busy.exit.thread_crit_edge, %if.then23.i.stm32_hash_wait_busy.exit.thread_crit_edge, %stm32_hash_write_key.exit.stm32_hash_wait_busy.exit.thread_crit_edge
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 11
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sg_key = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 28
  %key = getelementptr i8, ptr %3, i32 148
  %add = add nuw i32 %5, 3
  %and11 = and i32 %add, -4
  tail call void @sg_init_one(ptr noundef %sg_key, ptr noundef %key, i32 noundef %and11) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %sg_key13 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 28
  %call14 = tail call i32 @dma_map_sg_attrs(ptr noundef %44, ptr noundef %sg_key13, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  %dma_ct = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 52
  %45 = ptrtoint ptr %dma_ct to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call14, ptr %dma_ct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp eq i32 %call14, 0
  br i1 %cmp16, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %keylen, align 4
  %call22 = tail call fastcc i32 @stm32_hash_xmit_dma(ptr noundef %hdev, ptr noundef %sg_key13, i32 noundef %49, i32 noundef 0)
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %51, ptr noundef %sg_key13, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %stm32_hash_wait_busy.exit.thread, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -110, %for.end.i.cleanup_crit_edge ], [ %call22, %if.end19 ], [ %retval.0.i, %stm32_hash_wait_busy.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_xmit_dma(ptr noundef %hdev, ptr noundef %sg, i32 noundef %length, i32 noundef %mdma) unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_lch = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_lch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %dma_completion = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 13
  %8 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_completion, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @stm32_hash_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hdev, ptr %callback_param, align 4
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 11
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or2 = or i32 %12, 32784
  store i32 %or2, ptr %flags, align 4
  %io_base.i = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 4
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mdma)
  %tobool4.not = icmp eq i32 %mdma, 0
  %16 = and i32 %15, -2097153
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %reg.0 = select i1 %tobool4.not, i32 8, i32 8200
  %or8 = or i32 %reg.0, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %or8) #11
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #11, !srcloc !149
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !145
  %24 = and i32 %23, -520093697
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %rem.i = shl i32 %length, 3
  %mul.i = and i32 %rem.i, 24
  %or.i = or i32 %25, %mul.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %26) #11, !srcloc !149
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_submit.i, align 4
  %call.i61 = tail call i32 %30(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61)
  %tobool11.not = icmp sgt i32 %call.i61, -1
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %31 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_lch, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %36(ptr noundef %32) #11
  %call17 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_completion, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 -110, i32 0
  %37 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_lch, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #11
  %39 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %38, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 49
  %42 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_tx_status.i, align 4
  %call.i62 = call i32 %43(ptr noundef %38, i32 noundef %call.i61, ptr noundef nonnull %state.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.not = icmp eq i32 %call.i62, 0
  %err.1 = select i1 %cmp.not, i32 %spec.select, i32 -110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool25.not = icmp eq i32 %err.1, 0
  br i1 %tobool25.not, label %if.end13.cleanup_crit_edge, label %do.end29

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %if.end13
  %dev30 = getelementptr inbounds %struct.stm32_hash_dev, ptr %hdev, i32 0, i32 1
  %44 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.43, i32 noundef %err.1) #14
  %46 = ptrtoint ptr %dma_lch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_lch, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 47
  %50 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i63 = icmp eq ptr %51, null
  br i1 %tobool.not.i63, label %do.end29.cleanup_crit_edge, label %if.then.i

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call.i64 = call i32 %51(ptr noundef %47) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end29.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -115, %if.end13.cleanup_crit_edge ], [ %err.1, %do.end29.cleanup_crit_edge ], [ %err.1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hash_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_completion = getelementptr inbounds %struct.stm32_hash_dev, ptr %param, i32 0, i32 13
  tail call void @complete(ptr noundef %dma_completion) #11
  %flags = getelementptr inbounds %struct.stm32_hash_dev, ptr %param, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 8
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha224_init(ptr nocapture noundef %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 364, ptr %reqsize1.i.i, align 32
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 4
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %keylen.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %3, 8388608
  store i32 %or.i, ptr %flags.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stm32_hash_one_request, ptr %do_one_request.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stm32_hash_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha256_init(ptr nocapture noundef %tfm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -96
  %0 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 364, ptr %reqsize1.i.i, align 32
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 5, i32 4, i32 4
  %1 = ptrtoint ptr %keylen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %keylen.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %3, 8388608
  store i32 %or.i, ptr %flags.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %do_one_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %4 = ptrtoint ptr %do_one_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @stm32_hash_one_request, ptr %do_one_request.i, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stm32_hash_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %unprepare_request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %unprepare_request.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hash_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_stm32_hash__260_1634_stm32_hash_driver_init6, !1, !"__initcall__kmod_stm32_hash__260_1634_stm32_hash_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1634, i32 1}
!2 = !{ptr @__exitcall_stm32_hash_driver_exit, !1, !"__exitcall_stm32_hash_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description261, !4, !"__UNIQUE_ID_description261", i1 false, i1 false}
!4 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1636, i32 1}
!5 = !{ptr @__UNIQUE_ID_author262, !6, !"__UNIQUE_ID_author262", i1 false, i1 false}
!6 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1637, i32 1}
!7 = !{ptr @__UNIQUE_ID_file263, !8, !"__UNIQUE_ID_file263", i1 false, i1 false}
!8 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1638, i32 1}
!9 = !{ptr @__UNIQUE_ID_license264, !8, !"__UNIQUE_ID_license264", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1628, i32 11}
!12 = !{ptr @stm32_hash_driver, !13, !"stm32_hash_driver", i1 false, i1 false}
!13 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1624, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1463, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stm32_hash_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stm32_hash_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1470, i32 10}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1474, i32 3}
!26 = !{ptr @stm32_hash_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_hash_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1506, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @stm32_hash_probe.__UNIQUE_ID_ddebug259, !29, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1534, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @stm32_hash_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @stm32_hash_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1420, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @stm32_hash_get_of_match._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm32_hash_get_of_match._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1424, i32 41}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1426, i32 3}
!46 = !{ptr @stm32_hash_get_of_match._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stm32_hash_get_of_match._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 524, i32 37}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 534, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @stm32_hash_dma_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @stm32_hash_dma_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @init_completion.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/completion.h", i32 87, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 191, i32 10}
!60 = !{ptr @stm32_hash, !61, !"stm32_hash", i1 false, i1 false}
!61 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 189, i32 30}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1350, i32 2}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stm32_hash_register_algs._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @stm32_hash_register_algs._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @stm32_hash_of_match, !68, !"stm32_hash_of_match", i1 false, i1 false}
!68 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1401, i32 34}
!69 = !{ptr @stm32_hash_pdata_stm32f4, !70, !"stm32_hash_pdata_stm32f4", i1 false, i1 false}
!70 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1380, i32 38}
!71 = !{ptr @stm32_hash_algs_info_stm32f4, !72, !"stm32_hash_algs_info_stm32f4", i1 false, i1 false}
!72 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1373, i32 36}
!73 = !{ptr @algs_md5_sha1, !74, !"algs_md5_sha1", i1 false, i1 false}
!74 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1124, i32 25}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 722, i32 2}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @stm32_hash_init.__UNIQUE_ID_ddebug257, !76, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 385, i32 2}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @stm32_hash_update_cpu.__UNIQUE_ID_ddebug256, !80, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 343, i32 2}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @stm32_hash_xmit_cpu.__UNIQUE_ID_ddebug255, !84, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 293, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stm32_hash_write_ctrl.__UNIQUE_ID_ddebug250, !88, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 593, i32 4}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @stm32_hash_dma_send._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @stm32_hash_dma_send._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 497, i32 4}
!98 = !{ptr @stm32_hash_hmac_dma_send._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @stm32_hash_hmac_dma_send._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 421, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @stm32_hash_xmit_dma._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @stm32_hash_xmit_dma._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 461, i32 3}
!107 = !{ptr @stm32_hash_xmit_dma._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stm32_hash_xmit_dma._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 853, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @stm32_hash_prepare_req.__UNIQUE_ID_ddebug258, !110, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1063, i32 39}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1068, i32 39}
!117 = !{ptr @stm32_hash_pdata_stm32f7, !118, !"stm32_hash_pdata_stm32f7", i1 false, i1 false}
!118 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1396, i32 38}
!119 = !{ptr @stm32_hash_algs_info_stm32f7, !120, !"stm32_hash_algs_info_stm32f7", i1 false, i1 false}
!120 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1385, i32 36}
!121 = !{ptr @algs_sha224_sha256, !122, !"algs_sha224_sha256", i1 false, i1 false}
!122 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1229, i32 25}
!123 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1073, i32 39}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1078, i32 39}
!127 = !{ptr @stm32_hash_pm_ops, !128, !"stm32_hash_pm_ops", i1 false, i1 false}
!128 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1617, i32 32}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/crypto/stm32/stm32-hash.c", i32 1609, i32 3}
!131 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @stm32_hash_runtime_resume._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @stm32_hash_runtime_resume._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148276896, i64 2148276922, i64 2148276951, i64 2148276985, i64 2148277016, i64 2148277039}
!144 = !{i64 2148758711, i64 2148758716, i64 2148758729, i64 2148758773, i64 2148758807, i64 2148758828}
!145 = !{i64 6366222}
!146 = !{i64 2148276315}
!147 = !{i64 761138, i64 761163, i64 761185, i64 761201, i64 761213, i64 761233, i64 761257, i64 761273, i64 761285}
!148 = !{i64 2148276503}
!149 = !{i64 6365804}
!150 = !{i64 2154853880}
!151 = !{i64 2154853722}
