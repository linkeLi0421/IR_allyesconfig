; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-s3c.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-s3c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdhci_s3c_drv_data = type { i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.sdhci_s3c = type { ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x ptr], [4 x i32], i8 }

@__initcall__kmod_sdhci_s3c__277_789_sdhci_s3c_driver_init6 = internal global ptr @sdhci_s3c_driver_init, section ".initcall6.init", align 4
@sdhci_s3c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_s3c_probe, ptr @sdhci_s3c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_s3c_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_pmops, ptr null, ptr null }, ptr @sdhci_s3c_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_s3c_driver_exit = internal global ptr @sdhci_s3c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description278 = internal constant [49 x i8] c"sdhci_s3c.description=Samsung SDHCI (HSMMC) glue\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [47 x i8] c"sdhci_s3c.author=Ben Dooks, <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [42 x i8] c"sdhci_s3c.file=drivers/mmc/host/sdhci-s3c\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [25 x i8] c"sdhci_s3c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-sdhci\00", [22 x i8] zeroinitializer }, align 32
@sdhci_s3c_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_sdhci_drv_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sdhci_s3c_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_runtime_suspend, ptr @sdhci_s3c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_s3c_driver_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c-sdhci\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no device data specified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_s3c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/sdhci-s3c.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry_ptr = internal global ptr @sdhci_s3c_probe._entry, section ".printk_index", align 4
@sdhci_s3c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdhci_alloc_host() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry_ptr.8 = internal global ptr @sdhci_s3c_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsmmc\00", [26 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get io clock\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry_ptr.12 = internal global ptr @sdhci_s3c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_busclk.%d\00", [18 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock source %d: %s (%ld Hz)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry_ptr.17 = internal global ptr @sdhci_s3c_probe._entry.14, section ".printk_index", align 4
@sdhci_s3c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find any bus clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@sdhci_s3c_probe._entry_ptr.20 = internal global ptr @sdhci_s3c_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-hsmmc\00", [18 x i8] zeroinitializer }, align 32
@sdhci_s3c_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_get_max_clk, ptr @sdhci_s3c_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broken-cd\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-removable\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cd-gpios\00", [23 x i8] zeroinitializer }, align 32
@sdhci_s3c_set_clock.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhci_s3c\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdhci_s3c_set_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"selected source %d, clock %d, delta %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdhci_s3c_consider_clock\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"clk %d: rate %ld, min rate %lu > wanted %u\0A\00", [52 x i8] zeroinitializer }, align 32
@sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clk %d: rate %ld, want %d, got %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@sdhci_cmu_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to set clock rate %uHz\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdhci_cmu_set_clock\00", [44 x i8] zeroinitializer }, align 32
@sdhci_cmu_set_clock._entry_ptr = internal global ptr @sdhci_cmu_set_clock._entry, section ".printk_index", align 4
@sdhci_cmu_set_clock._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Internal clock never stabilised.\0A\00", [58 x i8] zeroinitializer }, align 32
@sdhci_cmu_set_clock._entry_ptr.36 = internal global ptr @sdhci_cmu_set_clock._entry.34, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos4_sdhci_drv_data = internal constant { %struct.sdhci_s3c_drv_data, [24 x i8] } { %struct.sdhci_s3c_drv_data { i32 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"sdhci_s3c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 777, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 782, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"sdhci_s3c_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 768, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"sdhci_s3c_pmops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 748, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"sdhci_s3c_driver_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 754, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 486, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 496, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 524, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 526, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 537, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 545, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 550, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 565, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"sdhci_s3c_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 418, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 435, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 440, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 445, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 450, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 251, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 206, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 212, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 393, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 406, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"exynos4_sdhci_drv_data\00", align 1
@___asan_gen_.155 = private constant [32 x i8] c"../drivers/mmc/host/sdhci-s3c.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 764, i32 40 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_sdhci_s3c_driver_exit, ptr @__initcall__kmod_sdhci_s3c__277_789_sdhci_s3c_driver_init6, ptr @sdhci_cmu_set_clock._entry, ptr @sdhci_cmu_set_clock._entry.34, ptr @sdhci_cmu_set_clock._entry_ptr, ptr @sdhci_cmu_set_clock._entry_ptr.36, ptr @sdhci_s3c_driver_exit, ptr @sdhci_s3c_probe._entry, ptr @sdhci_s3c_probe._entry.10, ptr @sdhci_s3c_probe._entry.14, ptr @sdhci_s3c_probe._entry.18, ptr @sdhci_s3c_probe._entry.6, ptr @sdhci_s3c_probe._entry_ptr, ptr @sdhci_s3c_probe._entry_ptr.12, ptr @sdhci_s3c_probe._entry_ptr.17, ptr @sdhci_s3c_probe._entry_ptr.20, ptr @sdhci_s3c_probe._entry_ptr.8, ptr @sdhci_s3c_driver, ptr @.str, ptr @sdhci_s3c_dt_match, ptr @sdhci_s3c_pmops, ptr @sdhci_s3c_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @sdhci_s3c_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @exynos4_sdhci_drv_data], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_driver_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_s3c_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cmu_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cmu_set_clock._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_sdhci_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_s3c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_s3c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_s3c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_width.i = alloca i32, align 4
  %name = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup170

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup170_crit_edge, label %if.end6

if.end.cleanup170_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup170

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @sdhci_alloc_host(ptr noundef %dev1, i32 noundef 64) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup170

if.end14:                                         ; preds = %if.end6
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 81
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #8
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end14.err_pdata_io_clk_crit_edge, label %if.end20

if.end14.err_pdata_io_clk_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pdata_io_clk

if.end20:                                         ; preds = %if.end14
  %of_node22 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node22, align 8
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %if.end32.thread, label %if.then24

if.then24:                                        ; preds = %if.end20
  %7 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_width.i) #8
  %9 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %max_width.i, align 4, !annotation !93
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull %max_width.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then24.if.end.i_crit_edge, label %if.then.i

if.then24.if.end.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %max_width.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then24.if.end.i_crit_edge
  %11 = ptrtoint ptr %max_width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_width.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %call2.i = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef null) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end10.i, label %if.end5.i.cleanup.sink.split.i_crit_edge

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end5.i
  %call.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.cleanup.sink.split.i_crit_edge, label %if.end10.i.if.end32_crit_edge

if.end10.i.if.end32_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end10.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end10.i.cleanup.sink.split.i_crit_edge, %if.end5.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 3, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 4, %if.end5.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end10.i.cleanup.sink.split.i_crit_edge ]
  %cd_type15.i = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %cd_type15.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %cd_type15.i, align 4
  br label %if.end32

if.end32.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data, align 8
  %17 = call ptr @memcpy(ptr %call.i, ptr %16, i32 40)
  br label %if.end.i291

if.end32:                                         ; preds = %cleanup.sink.split.i, %if.end10.i.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_width.i) #8
  %18 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %of_node22, align 8
  %tobool.not.i288 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i288, label %if.end32.if.end.i291_crit_edge, label %if.then.i290

if.end32.if.end.i291_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i291

if.then.i290:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call.i289 = call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  br label %sdhci_s3c_get_driver_data.exit

if.end.i291:                                      ; preds = %if.end32.if.end.i291_crit_edge, %if.end32.thread
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %19 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data.i, align 4
  %23 = inttoptr i32 %22 to ptr
  br label %sdhci_s3c_get_driver_data.exit

sdhci_s3c_get_driver_data.exit:                   ; preds = %if.end.i291, %if.then.i290
  %retval.0.i = phi ptr [ %call.i289, %if.then.i290 ], [ %23, %if.end.i291 ]
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7, ptr %private.i, align 4
  %pdev35 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 1
  %25 = ptrtoint ptr %pdev35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pdev, ptr %pdev35, align 4
  %pdata36 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 3
  %26 = ptrtoint ptr %pdata36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %pdata36, align 4
  %cur_clk = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 4
  %27 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %cur_clk, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %call37 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 6
  %29 = ptrtoint ptr %clk_io to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call37, ptr %clk_io, align 4
  %cmp.i292 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %do.end43, label %if.end46

do.end43:                                         ; preds = %sdhci_s3c_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  %30 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_io, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %err_pdata_io_clk

if.end46:                                         ; preds = %sdhci_s3c_get_driver_data.exit
  %call.i293 = call i32 @clk_prepare(ptr noundef %call37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool.not.i294 = icmp eq i32 %call.i293, 0
  br i1 %tobool.not.i294, label %if.end.i295, label %if.end46.clk_prepare_enable.exit_crit_edge

if.end46.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i295:                                      ; preds = %if.end46
  %call1.i = call i32 @clk_enable(ptr noundef %call37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i295.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i295.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call37) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i295.clk_prepare_enable.exit_crit_edge, %if.end46.clk_prepare_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name) #8
  %33 = call ptr @memset(ptr %name, i32 255, i32 14)
  %call50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 14, ptr noundef nonnull @.str.13, i32 noundef 0)
  %call52 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #8
  %arrayidx = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 7
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call52, ptr %arrayidx, align 4
  %cmp.i296 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %clk_prepare_enable.exit.cleanup_crit_edge, label %if.end57

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 @clk_get_rate(ptr noundef %call52) #8
  %arrayidx61 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 11
  %35 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call60, ptr %arrayidx61, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull %name, i32 noundef %call60) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %clk_prepare_enable.exit.cleanup_crit_edge
  %clks.1 = phi i32 [ 1, %if.end57 ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name) #8
  %36 = call ptr @memset(ptr %name, i32 255, i32 14)
  %call50.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 14, ptr noundef nonnull @.str.13, i32 noundef 1)
  %call52.1 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #8
  %arrayidx.1 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 8
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call52.1, ptr %arrayidx.1, align 4
  %cmp.i296.1 = icmp ugt ptr %call52.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.1, label %cleanup.cleanup.1_crit_edge, label %if.end57.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end57.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nuw nsw i32 %clks.1, 1
  %call60.1 = call i32 @clk_get_rate(ptr noundef %call52.1) #8
  %arrayidx61.1 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 1
  %38 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call60.1, ptr %arrayidx61.1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %name, i32 noundef %call60.1) #11
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end57.1, %cleanup.cleanup.1_crit_edge
  %clks.1.1 = phi i32 [ %inc.1, %if.end57.1 ], [ %clks.1, %cleanup.cleanup.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name) #8
  %39 = call ptr @memset(ptr %name, i32 255, i32 14)
  %call50.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 14, ptr noundef nonnull @.str.13, i32 noundef 2)
  %call52.2 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #8
  %arrayidx.2 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 9
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call52.2, ptr %arrayidx.2, align 4
  %cmp.i296.2 = icmp ugt ptr %call52.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end57.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end57.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc.2 = add nuw nsw i32 %clks.1.1, 1
  %call60.2 = call i32 @clk_get_rate(ptr noundef %call52.2) #8
  %arrayidx61.2 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 2
  %41 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call60.2, ptr %arrayidx61.2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 2, ptr noundef nonnull %name, i32 noundef %call60.2) #11
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end57.2, %cleanup.1.cleanup.2_crit_edge
  %clks.1.2 = phi i32 [ %inc.2, %if.end57.2 ], [ %clks.1.1, %cleanup.1.cleanup.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %name) #8
  %42 = call ptr @memset(ptr %name, i32 255, i32 14)
  %call50.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 14, ptr noundef nonnull @.str.13, i32 noundef 3)
  %call52.3 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #8
  %arrayidx.3 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 10
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call52.3, ptr %arrayidx.3, align 4
  %cmp.i296.3 = icmp ugt ptr %call52.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.3, label %cleanup.3, label %cleanup.3.thread

cleanup.3.thread:                                 ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  %call60.3 = call i32 @clk_get_rate(ptr noundef %call52.3) #8
  %arrayidx61.3 = getelementptr %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 3
  %44 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call60.3, ptr %arrayidx61.3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 3, ptr noundef nonnull %name, i32 noundef %call60.3) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #8
  br label %if.end74

cleanup.3:                                        ; preds = %cleanup.2
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clks.1.2)
  %cmp69 = icmp eq i32 %clks.1.2, 0
  br i1 %cmp69, label %do.end73, label %cleanup.3.if.end74_crit_edge

cleanup.3.if.end74_crit_edge:                     ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end73:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %err_no_busclks

if.end74:                                         ; preds = %cleanup.3.if.end74_crit_edge, %cleanup.3.thread
  %call75 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 4
  %45 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call75, ptr %ioaddr, align 16
  %cmp.i297 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call75 to i32
  br label %err_req_regs

if.end81:                                         ; preds = %if.end74
  %cfg_gpio = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 9
  %47 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg_gpio, align 4
  %tobool82.not = icmp eq ptr %48, null
  br i1 %tobool82.not, label %if.end81.if.end85_crit_edge, label %if.then83

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i, align 4
  call void %48(ptr noundef %pdev, i32 noundef %50) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end81.if.end85_crit_edge
  %51 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.21, ptr %call7, align 128
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 9
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @sdhci_s3c_ops, ptr %ops, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 1
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 2
  %53 = ptrtoint ptr %quirks2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %quirks2, align 8
  %irq86 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 3
  %54 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call, ptr %irq86, align 4
  %55 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 603979776, ptr %quirks, align 4
  %tobool90.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool90.not, label %if.end85.if.end96_crit_edge, label %if.then91

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %retval.0.i, align 4
  %or93 = or i32 %57, 603979776
  %58 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or93, ptr %quirks, align 4
  %no_divider = getelementptr inbounds %struct.sdhci_s3c_drv_data, ptr %retval.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %no_divider to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %no_divider, align 4, !range !94
  %no_divider95 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 4
  %61 = ptrtoint ptr %no_divider95 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %no_divider95, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.end85.if.end96_crit_edge
  %62 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %quirks, align 4
  %or102 = or i32 %63, 1342193664
  store i32 %or102, ptr %quirks, align 4
  %cd_type = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 4
  %64 = ptrtoint ptr %cd_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cd_type, align 4
  %.off = add i32 %65, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end109, label %if.end96.if.end113_crit_edge

if.end96.if.end113_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end109:                                        ; preds = %if.end96
  %or108 = or i32 %63, 1342226432
  %66 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or108, ptr %quirks, align 4
  %67 = ptrtoint ptr %cd_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr299 = load i32, ptr %cd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr299)
  %cmp111 = icmp eq i32 %.pr299, 4
  br i1 %cmp111, label %if.then112, label %if.end109.if.end113_crit_edge

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %68 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 256, ptr %caps, align 32
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end109.if.end113_crit_edge, %if.end96.if.end113_crit_edge
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %if.end113.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %if.end113.sw.bb118_crit_edge
  ]

if.end113.sw.bb118_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb118

if.end113.sw.epilog_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %mmc115 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %74 = ptrtoint ptr %mmc115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmc115, align 8
  %caps116 = getelementptr inbounds %struct.mmc_host, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %caps116 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %caps116, align 32
  %or117 = or i32 %77, 64
  store i32 %or117, ptr %caps116, align 32
  br label %sw.bb118

sw.bb118:                                         ; preds = %sw.bb, %if.end113.sw.bb118_crit_edge
  %mmc119 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %78 = ptrtoint ptr %mmc119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmc119, align 8
  %caps120 = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 16
  %80 = ptrtoint ptr %caps120 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %caps120, align 32
  %or121 = or i32 %81, 1
  store i32 %or121, ptr %caps120, align 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb118, %if.end113.sw.epilog_crit_edge
  %pm_caps = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 3
  %82 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pm_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool122.not = icmp eq i32 %83, 0
  br i1 %tobool122.not, label %sw.epilog.if.end128_crit_edge, label %if.then123

sw.epilog.if.end128_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then123:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %mmc125 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %84 = ptrtoint ptr %mmc125 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmc125, align 8
  %pm_caps126 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 19
  %86 = ptrtoint ptr %pm_caps126 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pm_caps126, align 4
  %or127 = or i32 %87, %83
  store i32 %or127, ptr %pm_caps126, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %sw.epilog.if.end128_crit_edge
  %88 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %quirks, align 4
  %or132 = or i32 %89, 16777600
  store i32 %or132, ptr %quirks, align 4
  %no_divider133 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 4
  %90 = ptrtoint ptr %no_divider133 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %no_divider133, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool134.not = icmp eq i8 %91, 0
  br i1 %tobool134.not, label %if.end128.if.end136_crit_edge, label %if.then135

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then135:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @sdhci_cmu_set_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 6), align 4
  store ptr @sdhci_cmu_get_min_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 12), align 4
  store ptr @sdhci_cmu_get_max_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 11), align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end128.if.end136_crit_edge
  %host_caps = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 1
  %92 = ptrtoint ptr %host_caps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %host_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool137.not = icmp eq i32 %93, 0
  br i1 %tobool137.not, label %if.end136.if.end143_crit_edge, label %if.then138

if.end136.if.end143_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %mmc140 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %94 = ptrtoint ptr %mmc140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmc140, align 8
  %caps141 = getelementptr inbounds %struct.mmc_host, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %caps141 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %caps141, align 32
  %or142 = or i32 %97, %93
  store i32 %or142, ptr %caps141, align 32
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end136.if.end143_crit_edge
  %host_caps2 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %call.i, i32 0, i32 2
  %98 = ptrtoint ptr %host_caps2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %host_caps2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool144.not = icmp eq i32 %99, 0
  br i1 %tobool144.not, label %if.end143.if.end149_crit_edge, label %if.then145

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %mmc147 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %100 = ptrtoint ptr %mmc147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmc147, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 17
  %102 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %caps2, align 4
  %or148 = or i32 %103, %99
  store i32 %or148, ptr %caps2, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.end143.if.end149_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %104 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %mmc154 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %105 = ptrtoint ptr %mmc154 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmc154, align 8
  %call155 = call i32 @mmc_of_parse(ptr noundef %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end149.err_req_regs_crit_edge

if.end149.err_req_regs_crit_edge:                 ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_req_regs

if.end158:                                        ; preds = %if.end149
  %call159 = call i32 @sdhci_add_host(ptr noundef %call7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.err_req_regs_crit_edge

if.end158.err_req_regs_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_req_regs

if.end162:                                        ; preds = %if.end158
  %107 = ptrtoint ptr %cd_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp164.not = icmp eq i32 %108, 0
  br i1 %cmp164.not, label %if.end162.cleanup170_crit_edge, label %if.then165

if.end162.cleanup170_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup170

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk_io, align 4
  call void @clk_disable(ptr noundef %110) #8
  call void @clk_unprepare(ptr noundef %110) #8
  br label %cleanup170

err_req_regs:                                     ; preds = %if.end158.err_req_regs_crit_edge, %if.end149.err_req_regs_crit_edge, %if.then78
  %ret.0 = phi i32 [ %46, %if.then78 ], [ %call155, %if.end149.err_req_regs_crit_edge ], [ %call159, %if.end158.err_req_regs_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %err_no_busclks

err_no_busclks:                                   ; preds = %err_req_regs, %do.end73
  %ret.1 = phi i32 [ -2, %do.end73 ], [ %ret.0, %err_req_regs ]
  %111 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clk_io, align 4
  call void @clk_disable(ptr noundef %112) #8
  call void @clk_unprepare(ptr noundef %112) #8
  br label %err_pdata_io_clk

err_pdata_io_clk:                                 ; preds = %err_no_busclks, %do.end43, %if.end14.err_pdata_io_clk_crit_edge
  %ret.2 = phi i32 [ %32, %do.end43 ], [ %ret.1, %err_no_busclks ], [ -12, %if.end14.err_pdata_io_clk_crit_edge ]
  call void @sdhci_free_host(ptr noundef %call7) #8
  br label %cleanup170

cleanup170:                                       ; preds = %err_pdata_io_clk, %if.then165, %if.end162.cleanup170_crit_edge, %do.end12, %if.end.cleanup170_crit_edge, %do.end
  %retval.0 = phi i32 [ %4, %do.end12 ], [ %ret.2, %err_pdata_io_clk ], [ -2, %do.end ], [ %call, %if.end.cleanup170_crit_edge ], [ 0, %if.then165 ], [ 0, %if.end162.cleanup170_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ext_cd_irq = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 5
  %2 = ptrtoint ptr %ext_cd_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_cd_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %private.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdata = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %cd_type = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %cd_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 6
  %8 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_io, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i:                                         ; preds = %if.then4
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3.i, %if.end.i.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %clk_io8 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 6
  %10 = ptrtoint ptr %clk_io8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_io8, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  tail call void @sdhci_free_host(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_cmu_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %pdev = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !95

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #8
  br label %cleanup

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #8, !srcloc !97
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sdhci_s3c_set_clock(ptr noundef %host, i32 noundef %clock)
  %ops.i51 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %11 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i51, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i52 = icmp eq ptr %14, null
  br i1 %tobool.not.i52, label %if.else.i, label %if.then.i53, !prof !95

if.then.i53:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %14(ptr noundef %host, i32 noundef 44) #8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i54 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i54, align 16
  %add.ptr.i55 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i55) #8, !srcloc !98
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i53
  %retval.0.i = phi i16 [ %call.i, %if.then.i53 ], [ %18, %if.else.i ]
  %19 = and i16 %retval.0.i, -5
  %20 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i51, align 4
  %write_w.i57 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write_w.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_w.i57, align 4
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %do.body.i62, label %if.then.i59, !prof !95

if.then.i59:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %host, i16 noundef zeroext %19, i32 noundef 44) #8
  br label %sdhci_writew.exit63

do.body.i62:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %24 = tail call i16 @llvm.bswap.i16(i16 %19) #8
  %ioaddr.i60 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i60, align 16
  %add.ptr.i61 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i61, i16 %24) #8, !srcloc !97
  br label %sdhci_writew.exit63

sdhci_writew.exit63:                              ; preds = %do.body.i62, %if.then.i59
  %cur_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 4
  %27 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_clk, align 4
  %arrayidx = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %30, i32 noundef %clock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end10, label %do.end

do.end:                                           ; preds = %sdhci_writew.exit63
  %31 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i64 = icmp eq ptr %34, null
  br i1 %tobool.not.i64, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i65 = phi ptr [ %36, %if.end.i ], [ %34, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef %retval.0.i65, i32 noundef %clock) #11
  br label %cleanup

if.end10:                                         ; preds = %sdhci_writew.exit63
  %37 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i51, align 4
  %write_w.i67 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %write_w.i67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_w.i67, align 4
  %tobool.not.i68 = icmp eq ptr %40, null
  br i1 %tobool.not.i68, label %do.body.i72, label %if.then.i69, !prof !95

if.then.i69:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %40(ptr noundef %host, i16 noundef zeroext 1, i32 noundef 44) #8
  br label %sdhci_writew.exit74

do.body.i72:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %ioaddr.i70 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %41 = ptrtoint ptr %ioaddr.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i70, align 16
  %add.ptr.i71 = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i71, i16 256) #8, !srcloc !97
  br label %sdhci_writew.exit74

sdhci_writew.exit74:                              ; preds = %do.body.i72, %if.then.i69
  %ioaddr.i80 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %sdhci_writew.exit74
  %timeout.0 = phi i32 [ 20, %sdhci_writew.exit74 ], [ %dec, %if.end23 ]
  %43 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i51, align 4
  %read_w.i76 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %read_w.i76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_w.i76, align 4
  %tobool.not.i77 = icmp eq ptr %46, null
  br i1 %tobool.not.i77, label %if.else.i82, label %if.then.i79, !prof !95

if.then.i79:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i78 = tail call zeroext i16 %46(ptr noundef %host, i32 noundef 44) #8
  br label %sdhci_readw.exit84

if.else.i82:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %ioaddr.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i80, align 16
  %add.ptr.i81 = getelementptr i8, ptr %48, i32 44
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i81) #8, !srcloc !98
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  br label %sdhci_readw.exit84

sdhci_readw.exit84:                               ; preds = %if.else.i82, %if.then.i79
  %retval.0.i83 = phi i16 [ %call.i78, %if.then.i79 ], [ %50, %if.else.i82 ]
  %51 = and i16 %retval.0.i83, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not = icmp eq i16 %51, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %sdhci_readw.exit84
  %cmp14 = icmp eq i32 %timeout.0, 0
  br i1 %cmp14, label %do.end19, label %if.end23

do.end19:                                         ; preds = %while.body
  %52 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmc, align 8
  %init_name.i85 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %init_name.i85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i85, align 8
  %tobool.not.i86 = icmp eq ptr %55, null
  br i1 %tobool.not.i86, label %if.end.i87, label %do.end19.dev_name.exit89_crit_edge

do.end19.dev_name.exit89_crit_edge:               ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit89

if.end.i87:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev21 = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %class_dev21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev21, align 4
  br label %dev_name.exit89

dev_name.exit89:                                  ; preds = %if.end.i87, %do.end19.dev_name.exit89_crit_edge
  %retval.0.i88 = phi ptr [ %57, %if.end.i87 ], [ %55, %do.end19.dev_name.exit89_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i88) #11
  br label %cleanup

if.end23:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add nsw i32 %timeout.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  br label %while.cond

while.end:                                        ; preds = %sdhci_readw.exit84
  %or = or i16 %retval.0.i83, 4
  %59 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i51, align 4
  %write_w.i91 = getelementptr inbounds %struct.sdhci_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %write_w.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_w.i91, align 4
  %tobool.not.i92 = icmp eq ptr %62, null
  br i1 %tobool.not.i92, label %do.body.i96, label %if.then.i93, !prof !95

if.then.i93:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %62(ptr noundef %host, i16 noundef zeroext %or, i32 noundef 44) #8
  br label %cleanup

do.body.i96:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %63 = tail call i16 @llvm.bswap.i16(i16 %or) #8
  %64 = ptrtoint ptr %ioaddr.i80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr.i80, align 16
  %add.ptr.i95 = getelementptr i8, ptr %65, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i95, i16 %63) #8, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %do.body.i96, %if.then.i93, %dev_name.exit89, %dev_name.exit, %do.body.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cmu_get_min_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %min.2 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 8
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %call2.1 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef 0) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %call2.1, i32 %min.2)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %min.2.1 = phi i32 [ %4, %if.end.1 ], [ %min.2, %cleanup.cleanup.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 9
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  %call2.2 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef 0) #8
  %7 = tail call i32 @llvm.umin.i32(i32 %call2.2, i32 %min.2.1)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %min.2.2 = phi i32 [ %7, %if.end.2 ], [ %min.2.1, %cleanup.1.cleanup.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 10
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  %call2.3 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef 0) #8
  %10 = tail call i32 @llvm.umin.i32(i32 %call2.3, i32 %min.2.2)
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %min.2.3 = phi i32 [ %10, %if.end.3 ], [ %min.2.2, %cleanup.2.cleanup.3_crit_edge ]
  ret i32 %min.2.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cmu_get_max_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef -1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %max.2 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 8
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %call2.1 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef -1) #8
  %4 = tail call i32 @llvm.umax.i32(i32 %call2.1, i32 %max.2)
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %max.2.1 = phi i32 [ %4, %if.end.1 ], [ %max.2, %cleanup.cleanup.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 9
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  %call2.2 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef -1) #8
  %7 = tail call i32 @llvm.umax.i32(i32 %call2.2, i32 %max.2.1)
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %max.2.2 = phi i32 [ %7, %if.end.2 ], [ %max.2.1, %cleanup.1.cleanup.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 10
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  %call2.3 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef -1) #8
  %10 = tail call i32 @llvm.umax.i32(i32 %call2.3, i32 %max.2.2)
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %max.2.3 = phi i32 [ %10, %if.end.3 ], [ %max.2.2, %cleanup.2.cleanup.3_crit_edge ]
  ret i32 %max.2.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_s3c_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call2 = tail call fastcc i32 @sdhci_s3c_consider_clock(ptr noundef %private.i.i, i32 noundef 0, i32 noundef %clock)
  %call2.1 = tail call fastcc i32 @sdhci_s3c_consider_clock(ptr noundef %private.i.i, i32 noundef 1, i32 noundef %clock)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.1, i32 %call2)
  %cmp3.1 = icmp ult i32 %call2.1, %call2
  %spec.select.1 = zext i1 %cmp3.1 to i32
  %3 = tail call i32 @llvm.umin.i32(i32 %call2.1, i32 %call2)
  %call2.2 = tail call fastcc i32 @sdhci_s3c_consider_clock(ptr noundef %private.i.i, i32 noundef 2, i32 noundef %clock)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.2, i32 %3)
  %cmp3.2 = icmp ult i32 %call2.2, %3
  %spec.select.2 = select i1 %cmp3.2, i32 2, i32 %spec.select.1
  %4 = tail call i32 @llvm.umin.i32(i32 %call2.2, i32 %3)
  %call2.3 = tail call fastcc i32 @sdhci_s3c_consider_clock(ptr noundef %private.i.i, i32 noundef 3, i32 noundef %clock)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.3, i32 %4)
  %cmp3.3 = icmp ult i32 %call2.3, %4
  %spec.select.3 = select i1 %cmp3.3, i32 3, i32 %spec.select.2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_s3c_set_clock.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_s3c_set_clock, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !100

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.umin.i32(i32 %call2.3, i32 %4)
  %pdev = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_s3c_set_clock.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %spec.select.3, i32 noundef %clock, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %for.body.preheader
  %cur_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 4
  %8 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %spec.select.3)
  %cmp11.not = icmp eq i32 %9, %spec.select.3
  br i1 %cmp11.not, label %do.end.do.body24_crit_edge, label %if.then12

do.end.do.body24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then12:                                        ; preds = %do.end
  %arrayidx = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 7, i32 %spec.select.3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.clk_prepare_enable.exit_crit_edge

if.then12.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then12
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then12.clk_prepare_enable.exit_crit_edge
  %12 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp15 = icmp sgt i32 %13, -1
  br i1 %cmp15, label %if.then16, label %clk_prepare_enable.exit.if.end20_crit_edge

clk_prepare_enable.exit.if.end20_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %clk_prepare_enable.exit.if.end20_crit_edge
  %16 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select.3, ptr %cur_clk, align 4
  %arrayidx22 = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 8, i32 %spec.select.3
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx22, align 4
  %max_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %19 = ptrtoint ptr %max_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_clk, align 4
  br label %do.body24

do.body24:                                        ; preds = %if.end20, %do.end.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #8, !srcloc !97
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 16
  %add.ptr28 = getelementptr i8, ptr %23, i32 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %25 = and i32 %24, -805306369
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %shl = shl nuw nsw i32 %spec.select.3, 4
  %or = or i32 %26, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr, align 16
  %add.ptr36 = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %27) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 16
  %add.ptr41 = getelementptr i8, ptr %31, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 768) #8, !srcloc !105
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 16
  %add.ptr45 = getelementptr i8, ptr %33, i32 128
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %35 = or i32 %34, 4260032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 16
  %add.ptr54 = getelementptr i8, ptr %37, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %35) #8, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %clock)
  %cmp55 = icmp ult i32 %clock, 25000000
  %spec.select110 = select i1 %cmp55, i32 -2139062144, i32 32896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %spec.select110)
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 16
  %add.ptr63 = getelementptr i8, ptr %40, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %38) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %entry.cleanup_crit_edge
  %clock.sink = phi i32 [ %clock, %do.body24 ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock.sink) #8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_get_max_clk(ptr nocapture noundef readonly %host) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %1)
  %arrayidx.2 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.2, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %4)
  %arrayidx.3 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %7)
  ret i32 %10
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_get_min_clock(ptr nocapture noundef readonly %host) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %div9 = lshr i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %tobool.not = icmp ugt i32 %1, 255
  %min.1 = select i1 %tobool.not, i32 %div9, i32 -1
  %arrayidx.1 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  %div9.1 = lshr i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %tobool.not.1 = icmp ugt i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.1, i32 %min.1)
  %cmp1.1 = icmp ult i32 %div9.1, %min.1
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp1.1, i1 false
  %min.1.1 = select i1 %or.cond.1, i32 %div9.1, i32 %min.1
  %arrayidx.2 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  %div9.2 = lshr i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool.not.2 = icmp ugt i32 %5, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.2, i32 %min.1.1)
  %cmp1.2 = icmp ult i32 %div9.2, %min.1.1
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp1.2, i1 false
  %min.1.2 = select i1 %or.cond.2, i32 %div9.2, i32 %min.1.1
  %arrayidx.3 = getelementptr %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3, align 4
  %div9.3 = lshr i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %tobool.not.3 = icmp ugt i32 %7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.3, i32 %min.1.2)
  %cmp1.3 = icmp ult i32 %div9.3, %min.1.2
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp1.3, i1 false
  %min.1.3 = select i1 %or.cond.3, i32 %div9.3, i32 %min.1.2
  ret i32 %min.1.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_s3c_consider_clock(ptr nocapture noundef readonly %ourhost, i32 noundef %src, i32 noundef %wanted) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sdhci_s3c, ptr %ourhost, i32 0, i32 7, i32 %src
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_divider = getelementptr inbounds %struct.sdhci_s3c, ptr %ourhost, i32 0, i32 9
  %2 = ptrtoint ptr %no_divider to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_divider, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %wanted) #8
  %sub = sub i32 %wanted, %call2
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx4 = getelementptr %struct.sdhci_s3c, ptr %ourhost, i32 0, i32 8, i32 %src
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end3
  %shift.0 = phi i32 [ 0, %if.end3 ], [ %inc, %for.cond.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shift.0)
  %cmp = icmp ult i32 %shift.0, 9
  %shr = lshr i32 %5, %shift.0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %wanted)
  %cmp5.not = icmp ugt i32 %shr, %wanted
  %or.cond = select i1 %cmp, i1 %cmp5.not, i1 false
  %inc = add nuw nsw i32 %shift.0, 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shift.0)
  %cmp8 = icmp ugt i32 %shift.0, 8
  br i1 %cmp8, label %do.body, label %do.body17

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_s3c_consider_clock, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !100

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.sdhci_s3c, ptr %ourhost, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %div64 = lshr i32 %5, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %src, i32 noundef %5, i32 noundef %div64, i32 noundef %wanted) #8
  br label %cleanup

do.body17:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_s3c_consider_clock, %if.then29)) #8
          to label %do.end35 [label %if.then29], !srcloc !100

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %pdev30 = getelementptr inbounds %struct.sdhci_s3c, ptr %ourhost, i32 0, i32 1
  %8 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug275, ptr noundef %dev31, ptr noundef nonnull @.str.31, i32 noundef %src, i32 noundef %5, i32 noundef %wanted, i32 noundef %shr) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  %sub37 = sub i32 %wanted, %shr
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then14, %do.body, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then1 ], [ %sub37, %do.end35 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then14 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %7 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sdhci_resume_host(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 6
  %2 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_io, align 4
  %call2 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #8
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %4 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %9 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_clk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 4
  %11 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp3 = icmp sgt i32 %12, -1
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 7, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 6
  %2 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_io, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %cur_clk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 4
  %4 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  %arrayidx = getelementptr %struct.sdhci_s3c, ptr %private.i.i, i32 0, i32 7, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i14, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i14:                                       ; preds = %if.then
  %call1.i12 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool2.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool2.not.i13, label %if.end.i14.if.end_crit_edge, label %if.then3.i15

if.end.i14.if.end_crit_edge:                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i15, %if.end.i14.if.end_crit_edge, %if.then.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %call5 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #8
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_sdhci_s3c__277_789_sdhci_s3c_driver_init6, !1, !"__initcall__kmod_sdhci_s3c__277_789_sdhci_s3c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 789, i32 1}
!2 = !{ptr @__exitcall_sdhci_s3c_driver_exit, !1, !"__exitcall_sdhci_s3c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description278, !4, !"__UNIQUE_ID_description278", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 791, i32 1}
!5 = !{ptr @__UNIQUE_ID_author279, !6, !"__UNIQUE_ID_author279", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 792, i32 1}
!7 = !{ptr @__UNIQUE_ID_file280, !8, !"__UNIQUE_ID_file280", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 793, i32 1}
!9 = !{ptr @__UNIQUE_ID_license281, !8, !"__UNIQUE_ID_license281", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 782, i32 11}
!12 = !{ptr @sdhci_s3c_driver, !13, !"sdhci_s3c_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 777, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 486, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sdhci_s3c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sdhci_s3c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 496, i32 3}
!24 = !{ptr @sdhci_s3c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sdhci_s3c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 524, i32 33}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 526, i32 3}
!30 = !{ptr @sdhci_s3c_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_s3c_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 537, i32 22}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 545, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sdhci_s3c_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sdhci_s3c_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 550, i32 3}
!41 = !{ptr @sdhci_s3c_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sdhci_s3c_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 565, i32 18}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 435, i32 33}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 440, i32 28}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 445, i32 28}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 450, i32 30}
!53 = !{ptr @sdhci_s3c_ops, !54, !"sdhci_s3c_ops", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 418, i32 25}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 251, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sdhci_s3c_set_clock.__UNIQUE_ID_ddebug276, !56, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 206, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug274, !61, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 212, i32 2}
!66 = !{ptr @sdhci_s3c_consider_clock.__UNIQUE_ID_ddebug275, !65, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 393, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sdhci_cmu_set_clock._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sdhci_cmu_set_clock._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 406, i32 4}
!74 = !{ptr @sdhci_cmu_set_clock._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sdhci_cmu_set_clock._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @sdhci_s3c_dt_match, !77, !"sdhci_s3c_dt_match", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 768, i32 34}
!78 = !{ptr @exynos4_sdhci_drv_data, !79, !"exynos4_sdhci_drv_data", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 764, i32 40}
!80 = !{ptr @sdhci_s3c_pmops, !81, !"sdhci_s3c_pmops", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 748, i32 32}
!82 = !{ptr @sdhci_s3c_driver_ids, !83, !"sdhci_s3c_driver_ids", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci-s3c.c", i32 754, i32 40}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2154959827}
!97 = !{i64 6242584}
!98 = !{i64 6242784}
!99 = !{i64 2154961895}
!100 = !{i64 2148320693, i64 2148320698, i64 2148320711, i64 2148320755, i64 2148320789, i64 2148320810}
!101 = !{i64 2154970802}
!102 = !{i64 6243622}
!103 = !{i64 2154971482}
!104 = !{i64 2154971723}
!105 = !{i64 6243204}
!106 = !{i64 2154972150}
!107 = !{i64 2154972862}
!108 = !{i64 2154973433}
!109 = !{i64 2154974175}
