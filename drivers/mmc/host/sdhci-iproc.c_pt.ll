; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-iproc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-iproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_iproc_data = type { ptr, i32, i32, i32 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.sdhci_iproc_host = type { ptr, i32, i32, i8, i8 }

@__initcall__kmod_sdhci_iproc__273_446_sdhci_iproc_driver_init6 = internal global ptr @sdhci_iproc_driver_init, section ".initcall6.init", align 4
@sdhci_iproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_iproc_probe, ptr @sdhci_pltfm_unregister, ptr @sdhci_iproc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_iproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_iproc_driver_exit = internal global ptr @sdhci_iproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author274 = internal constant [28 x i8] c"sdhci_iproc.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [43 x i8] c"sdhci_iproc.description=IPROC SDHCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [46 x i8] c"sdhci_iproc.file=drivers/mmc/host/sdhci-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [27 x i8] c"sdhci_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-iproc\00", [20 x i8] zeroinitializer }, align 32
@sdhci_iproc_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-emmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sdhci-iproc-cygnus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iproc_cygnus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sdhci-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iproc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211a0-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7211a0_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@sdhci_iproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable host clk\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_iproc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci-iproc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_iproc_probe._entry_ptr = internal global ptr @sdhci_iproc_probe._entry, section ".printk_index", align 4
@bcm2835_data = internal constant { %struct.sdhci_iproc_data, [16 x i8] } { %struct.sdhci_iproc_data { ptr @sdhci_bcm2835_pltfm_data, i32 18939904, i32 48, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bcm2711_data = internal constant { %struct.sdhci_iproc_data, [16 x i8] } { %struct.sdhci_iproc_data { ptr @sdhci_bcm2711_pltfm_data, i32 0, i32 0, i32 2048 }, [16 x i8] zeroinitializer }, align 32
@iproc_cygnus_data = internal constant { %struct.sdhci_iproc_data, [16 x i8] } { %struct.sdhci_iproc_data { ptr @sdhci_iproc_cygnus_pltfm_data, i32 99155968, i32 100, i32 4096 }, [16 x i8] zeroinitializer }, align 32
@iproc_data = internal constant { %struct.sdhci_iproc_data, [16 x i8] } { %struct.sdhci_iproc_data { ptr @sdhci_iproc_pltfm_data, i32 99155968, i32 100, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bcm7211a0_data = internal constant { %struct.sdhci_iproc_data, [16 x i8] } { %struct.sdhci_iproc_data { ptr @sdhci_bcm7211a0_pltfm_data, i32 94528562, i32 96, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sdhci_bcm2835_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_iproc_32only_ops, i32 687898624, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_iproc_32only_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @sdhci_iproc_readl, ptr @sdhci_iproc_readw, ptr @sdhci_iproc_readb, ptr @sdhci_iproc_writel, ptr @sdhci_iproc_writew, ptr @sdhci_iproc_writeb, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_iproc_readl.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci_iproc\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_iproc_readl\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: readl [0x%02x] 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_iproc_writel.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_iproc_writel\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: writel [0x%02x] 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdhci_bcm2711_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_iproc_bcm2711_ops, i32 268435456, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_iproc_bcm2711_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @sdhci_iproc_readl, ptr @sdhci_iproc_readw, ptr @sdhci_iproc_readb, ptr @sdhci_iproc_writel, ptr @sdhci_iproc_writew, ptr @sdhci_iproc_writeb, ptr @sdhci_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr @sdhci_iproc_bcm2711_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_iproc_cygnus_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_iproc_32only_ops, i32 553648128, i32 16385 }, [20 x i8] zeroinitializer }, align 32
@sdhci_iproc_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_iproc_ops, i32 822083584, i32 16384 }, [20 x i8] zeroinitializer }, align 32
@sdhci_iproc_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_iproc_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_bcm7211a0_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_iproc_ops, i32 134221920, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 12]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 14]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 12]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"sdhci_iproc_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 434, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 436, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"sdhci_iproc_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 330, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 405, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"bcm2835_data\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 270, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"bcm2711_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 302, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"iproc_cygnus_data\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 222, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"iproc_data\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 246, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"bcm7211a0_data\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 316, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"sdhci_bcm2835_pltfm_data\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 261, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"sdhci_iproc_32only_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 201, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 47, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 82, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"sdhci_bcm2711_pltfm_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 297, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"sdhci_iproc_bcm2711_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 281, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"sdhci_iproc_cygnus_pltfm_data\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 215, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"sdhci_iproc_pltfm_data\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 238, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"sdhci_iproc_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 193, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"sdhci_bcm7211a0_pltfm_data\00", align 1
@___asan_gen_.92 = private constant [34 x i8] c"../drivers/mmc/host/sdhci-iproc.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 307, i32 38 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_sdhci_iproc_driver_exit, ptr @__initcall__kmod_sdhci_iproc__273_446_sdhci_iproc_driver_init6, ptr @sdhci_iproc_driver_exit, ptr @sdhci_iproc_probe._entry, ptr @sdhci_iproc_probe._entry_ptr, ptr @sdhci_iproc_driver, ptr @.str, ptr @sdhci_iproc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm2835_data, ptr @bcm2711_data, ptr @iproc_cygnus_data, ptr @iproc_data, ptr @bcm7211a0_data, ptr @sdhci_bcm2835_pltfm_data, ptr @sdhci_iproc_32only_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sdhci_bcm2711_pltfm_data, ptr @sdhci_iproc_bcm2711_ops, ptr @sdhci_iproc_cygnus_pltfm_data, ptr @sdhci_iproc_pltfm_data, ptr @sdhci_iproc_ops, ptr @sdhci_bcm7211a0_pltfm_data], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_cygnus_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7211a0_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm2835_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_32only_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm2711_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_bcm2711_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_cygnus_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_iproc_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm7211a0_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_iproc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_iproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_iproc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call2 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %1, i32 noundef 16) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 81
  %private.i82 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 21
  %3 = ptrtoint ptr %private.i82 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %private.i82, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call9 = tail call i32 @mmc_of_parse(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end12:                                         ; preds = %if.end6
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %6 = ptrtoint ptr %private.i82 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i82, align 4
  %mmc_caps = getelementptr inbounds %struct.sdhci_iproc_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmc_caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmc_caps, align 4
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 32
  %or = or i32 %13, %9
  store i32 %or, ptr %caps, align 32
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end12.if.end29_crit_edge, label %if.then16

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then16:                                        ; preds = %if.end12
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %private.i, align 128
  %cmp.i83 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call17 to i32
  br label %err

if.end23:                                         ; preds = %if.then16
  %call.i = tail call i32 @clk_prepare(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end29_crit_edge, label %if.then3.i

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call17) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end23.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end23.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %err

if.end29:                                         ; preds = %if.end.i.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %18 = ptrtoint ptr %private.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i82, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %quirks = getelementptr inbounds %struct.sdhci_pltfm_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks, align 4
  %and = and i32 %23, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end29.if.end39_crit_edge, label %if.then33

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %caps35 = getelementptr inbounds %struct.sdhci_iproc_data, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %caps35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps35, align 4
  %caps36 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 56
  %26 = ptrtoint ptr %caps36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %caps36, align 8
  %caps1 = getelementptr inbounds %struct.sdhci_iproc_data, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps1, align 4
  %caps138 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 57
  %29 = ptrtoint ptr %caps138 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %caps138, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end29.if.end39_crit_edge
  %call40 = tail call i32 @sdhci_add_host(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %err_clk

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_clk:                                          ; preds = %if.end39
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %tobool45.not = icmp eq ptr %31, null
  br i1 %tobool45.not, label %err_clk.err_crit_edge, label %if.then46

err_clk.err_crit_edge:                            ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then46:                                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %err

err:                                              ; preds = %if.then46, %err_clk.err_crit_edge, %do.end, %if.then20, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end6.err_crit_edge ], [ %17, %if.then20 ], [ %retval.0.i.ph, %do.end ], [ %call40, %if.then46 ], [ %call40, %err_clk.err_crit_edge ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end39.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %ret.0, %err ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_iproc_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @sdhci_pltfm_suspend(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_readl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i10 = phi ptr [ %9, %if.end.i ], [ %7, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i10, i32 noundef %reg, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @sdhci_iproc_readw(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i20 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %entry.if.else7_crit_edge [
    i32 12, label %land.lhs.true
    i32 4, label %entry.land.lhs.true4_crit_edge
    i32 6, label %entry.land.lhs.true4_crit_edge21
  ]

entry.land.lhs.true4_crit_edge21:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true4

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true4

entry.if.else7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

land.lhs.true:                                    ; preds = %entry
  %is_cmd_shadowed = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i20, i32 0, i32 3
  %1 = ptrtoint ptr %is_cmd_shadowed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_cmd_shadowed, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.else7_crit_edge, label %if.then

land.lhs.true.if.else7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shadow_cmd = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %3 = ptrtoint ptr %shadow_cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shadow_cmd, align 4
  br label %if.end9

land.lhs.true4:                                   ; preds = %entry.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge21
  %is_blk_shadowed = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i20, i32 0, i32 4
  %5 = ptrtoint ptr %is_blk_shadowed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_blk_shadowed, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.else7_crit_edge, label %if.then6

land.lhs.true4.if.else7_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %shadow_blk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %7 = ptrtoint ptr %shadow_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shadow_blk, align 4
  br label %if.end9

if.else7:                                         ; preds = %land.lhs.true4.if.else7_crit_edge, %land.lhs.true.if.else7_crit_edge, %entry.if.else7_crit_edge
  %and = and i32 %reg, -4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 %and
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_readw, %if.then.i)) #7
          to label %if.end9 [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %if.else7
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %13 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i10.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i10.i, i32 noundef %and, i32 noundef %12) #7
  br label %if.end9

if.end9:                                          ; preds = %dev_name.exit.i, %if.else7, %if.then6, %if.then
  %val.0 = phi i32 [ %4, %if.then ], [ %8, %if.then6 ], [ %12, %if.else7 ], [ %12, %dev_name.exit.i ]
  %shl = shl i32 %reg, 3
  %and10 = and i32 %shl, 24
  %shr = lshr i32 %val.0, %and10
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sdhci_iproc_readb(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_readb, %if.then.i)) #7
          to label %sdhci_iproc_readl.exit [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %entry
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i10.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i10.i, i32 noundef %and, i32 noundef %3) #7
  br label %sdhci_iproc_readl.exit

sdhci_iproc_readl.exit:                           ; preds = %dev_name.exit.i, %entry
  %shl = shl i32 %reg, 3
  %and1 = and i32 %shl, 24
  %shr = lshr i32 %3, %and1
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_iproc_writel(ptr nocapture noundef readonly %host, i32 noundef %val, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writel, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i46 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i46, i32 noundef %reg, i32 noundef %val) #7
  br label %do.body4

do.body4:                                         ; preds = %dev_name.exit, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %val)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %8, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !73
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %9 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %10)
  %cmp = icmp ult i32 %10, 400001
  br i1 %cmp, label %if.then6, label %do.body4.if.end32_crit_edge

do.body4.if.end32_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then6:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then6.if.end32.sink.split_crit_edge, label %cond.false24

if.then6.if.end32.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.sink.split

cond.false24:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nuw nsw i32 %10, 3999999
  %div = udiv i32 %sub, %10
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %cond.false24, %if.then6.if.end32.sink.split_crit_edge
  %.sink49 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %cond.false24 ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %if.then6.if.end32.sink.split_crit_edge ]
  %.sink = phi i32 [ %div, %cond.false24 ], [ 2147480, %if.then6.if.end32.sink.split_crit_edge ]
  %11 = ptrtoint ptr %.sink49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.sink49, align 4
  tail call void %12(i32 noundef %.sink) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %do.body4.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_iproc_writew(ptr nocapture noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i60 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %shl = shl i32 %reg, 3
  %and = and i32 %shl, 24
  %shl2 = shl i32 65535, %and
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %reg, label %entry.if.else11_crit_edge [
    i32 14, label %if.then
    i32 4, label %entry.land.lhs.true_crit_edge
    i32 6, label %entry.land.lhs.true_crit_edge105
  ]

entry.land.lhs.true_crit_edge105:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.if.else11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

if.then:                                          ; preds = %entry
  %is_blk_shadowed = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i60, i32 0, i32 4
  %1 = ptrtoint ptr %is_blk_shadowed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_blk_shadowed, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then.if.end15.thread_crit_edge, label %if.then3

if.then.if.end15.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.thread

if.then3:                                         ; preds = %if.then
  %shadow_blk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %3 = ptrtoint ptr %shadow_blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shadow_blk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writew, %if.then.i)) #7
          to label %do.body4.i [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %if.then3
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %5 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i46.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i46.i, i32 noundef 4, i32 noundef %4) #7
  br label %do.body4.i

do.body4.i:                                       ; preds = %dev_name.exit.i, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #7, !srcloc !73
  %clock.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %14 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %15)
  %cmp.i = icmp ult i32 %15, 400001
  br i1 %cmp.i, label %if.then6.i, label %do.body4.i.sdhci_iproc_writel.exit_crit_edge

do.body4.i.sdhci_iproc_writel.exit_crit_edge:     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdhci_iproc_writel.exit

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge, label %cond.false24.i

if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdhci_iproc_writel.exit.sink.split

cond.false24.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nuw nsw i32 %15, 3999999
  %div.i = udiv i32 %sub.i, %15
  br label %sdhci_iproc_writel.exit.sink.split

sdhci_iproc_writel.exit.sink.split:               ; preds = %cond.false24.i, %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge
  %.sink104 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %cond.false24.i ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge ]
  %div.i.sink = phi i32 [ %div.i, %cond.false24.i ], [ 2147480, %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge ]
  %16 = ptrtoint ptr %.sink104 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.sink104, align 4
  tail call void %17(i32 noundef %div.i.sink) #7
  br label %sdhci_iproc_writel.exit

sdhci_iproc_writel.exit:                          ; preds = %sdhci_iproc_writel.exit.sink.split, %do.body4.i.sdhci_iproc_writel.exit_crit_edge
  %18 = ptrtoint ptr %is_blk_shadowed to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_blk_shadowed, align 1
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %sdhci_iproc_writel.exit, %if.then.if.end15.thread_crit_edge
  %shadow_cmd = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %19 = ptrtoint ptr %shadow_cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shadow_cmd, align 4
  %is_cmd_shadowed = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i60, i32 0, i32 3
  %21 = ptrtoint ptr %is_cmd_shadowed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_cmd_shadowed, align 4
  %neg97 = xor i32 %shl2, -1
  %and1698 = and i32 %20, %neg97
  %conv99 = zext i16 %val to i32
  %shl17100 = shl i32 %conv99, %and
  %or101 = or i32 %and1698, %shl17100
  br label %if.else32

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge105
  %is_blk_shadowed7 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i60, i32 0, i32 4
  %22 = ptrtoint ptr %is_blk_shadowed7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_blk_shadowed7, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp eq i8 %23, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else11_crit_edge, label %if.then9

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shadow_blk10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %24 = ptrtoint ptr %shadow_blk10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shadow_blk10, align 4
  br label %if.end15

if.else11:                                        ; preds = %land.lhs.true.if.else11_crit_edge, %entry.if.else11_crit_edge
  %and12 = and i32 %reg, -4
  %ioaddr.i61 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i62 = getelementptr i8, ptr %27, i32 %and12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !68
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writew, %if.then.i66)) #7
          to label %if.end15 [label %if.then.i66], !srcloc !70

if.then.i66:                                      ; preds = %if.else11
  %mmc.i63 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %30 = ptrtoint ptr %mmc.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc.i63, align 8
  %init_name.i.i64 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i64, align 8
  %tobool.not.i.i65 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i66.dev_name.exit.i69_crit_edge

if.then.i66.dev_name.exit.i69_crit_edge:          ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i69

if.end.i.i68:                                     ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i67 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i67, align 4
  br label %dev_name.exit.i69

dev_name.exit.i69:                                ; preds = %if.end.i.i68, %if.then.i66.dev_name.exit.i69_crit_edge
  %retval.0.i10.i = phi ptr [ %35, %if.end.i.i68 ], [ %33, %if.then.i66.dev_name.exit.i69_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i10.i, i32 noundef %and12, i32 noundef %29) #7
  br label %if.end15

if.end15:                                         ; preds = %dev_name.exit.i69, %if.else11, %if.then9
  %oldval.0 = phi i32 [ %25, %if.then9 ], [ %29, %if.else11 ], [ %29, %dev_name.exit.i69 ]
  %neg = xor i32 %shl2, -1
  %and16 = and i32 %oldval.0, %neg
  %conv = zext i16 %val to i32
  %shl17 = shl i32 %conv, %and
  %or = or i32 %and16, %shl17
  %36 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %reg, label %if.end15.if.else32_crit_edge [
    i32 12, label %if.then20
    i32 4, label %if.end15.if.then29_crit_edge
    i32 6, label %if.end15.if.then29_crit_edge106
  ]

if.end15.if.then29_crit_edge106:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end15.if.then29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end15.if.else32_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else32

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %shadow_cmd21 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %37 = ptrtoint ptr %shadow_cmd21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %shadow_cmd21, align 4
  %is_cmd_shadowed22 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i60, i32 0, i32 3
  %38 = ptrtoint ptr %is_cmd_shadowed22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %is_cmd_shadowed22, align 4
  br label %if.end35

if.then29:                                        ; preds = %if.end15.if.then29_crit_edge, %if.end15.if.then29_crit_edge106
  %shadow_blk30 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %39 = ptrtoint ptr %shadow_blk30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %shadow_blk30, align 4
  %is_blk_shadowed31 = getelementptr inbounds %struct.sdhci_iproc_host, ptr %private.i60, i32 0, i32 4
  %40 = ptrtoint ptr %is_blk_shadowed31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %is_blk_shadowed31, align 1
  br label %if.end35

if.else32:                                        ; preds = %if.end15.if.else32_crit_edge, %if.end15.thread
  %or102 = phi i32 [ %or101, %if.end15.thread ], [ %or, %if.end15.if.else32_crit_edge ]
  %and33 = and i32 %reg, -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writew, %if.then.i73)) #7
          to label %do.body4.i82 [label %if.then.i73], !srcloc !70

if.then.i73:                                      ; preds = %if.else32
  %mmc.i70 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %41 = ptrtoint ptr %mmc.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmc.i70, align 8
  %init_name.i.i71 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %init_name.i.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i71, align 8
  %tobool.not.i.i72 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i72, label %if.end.i.i75, label %if.then.i73.dev_name.exit.i77_crit_edge

if.then.i73.dev_name.exit.i77_crit_edge:          ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i77

if.end.i.i75:                                     ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i74 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %class_dev.i74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %class_dev.i74, align 4
  br label %dev_name.exit.i77

dev_name.exit.i77:                                ; preds = %if.end.i.i75, %if.then.i73.dev_name.exit.i77_crit_edge
  %retval.0.i46.i76 = phi ptr [ %46, %if.end.i.i75 ], [ %44, %if.then.i73.dev_name.exit.i77_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i46.i76, i32 noundef %and33, i32 noundef %or102) #7
  br label %do.body4.i82

do.body4.i82:                                     ; preds = %dev_name.exit.i77, %if.else32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or102) #7
  %ioaddr.i78 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %48 = ptrtoint ptr %ioaddr.i78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i78, align 16
  %add.ptr.i79 = getelementptr i8, ptr %49, i32 %and33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %47) #7, !srcloc !73
  %clock.i80 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %50 = ptrtoint ptr %clock.i80 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clock.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %51)
  %cmp.i81 = icmp ult i32 %51, 400001
  br i1 %cmp.i81, label %if.then6.i84, label %do.body4.i82.if.end35_crit_edge

do.body4.i82.if.end35_crit_edge:                  ; preds = %do.body4.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then6.i84:                                     ; preds = %do.body4.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool8.not.i83 = icmp eq i32 %51, 0
  br i1 %tobool8.not.i83, label %if.else.i94, label %cond.false24.i93

cond.false24.i93:                                 ; preds = %if.then6.i84
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i85 = add nuw nsw i32 %51, 3999999
  %div.i86 = udiv i32 %sub.i85, %51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %div.i86) #7
  br label %if.end35

if.else.i94:                                      ; preds = %if.then6.i84
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #7
  br label %if.end35

if.end35:                                         ; preds = %if.else.i94, %cond.false24.i93, %do.body4.i82.if.end35_crit_edge, %if.then29, %if.then20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_iproc_writeb(ptr nocapture noundef readonly %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writeb, %if.then.i)) #7
          to label %sdhci_iproc_readl.exit [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %entry
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i10.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i10.i, i32 noundef %and, i32 noundef %3) #7
  br label %sdhci_iproc_readl.exit

sdhci_iproc_readl.exit:                           ; preds = %dev_name.exit.i, %entry
  %shl = shl i32 %reg, 3
  %and1 = and i32 %shl, 24
  %shl2 = shl nuw i32 255, %and1
  %neg = xor i32 %shl2, -1
  %and3 = and i32 %3, %neg
  %conv = zext i8 %val to i32
  %shl4 = shl nuw i32 %conv, %and1
  %or = or i32 %and3, %shl4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_iproc_writeb, %if.then.i13)) #7
          to label %do.body4.i [label %if.then.i13], !srcloc !70

if.then.i13:                                      ; preds = %sdhci_iproc_readl.exit
  %mmc.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %10 = ptrtoint ptr %mmc.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc.i10, align 8
  %init_name.i.i11 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i11, align 8
  %tobool.not.i.i12 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i12, label %if.end.i.i15, label %if.then.i13.dev_name.exit.i16_crit_edge

if.then.i13.dev_name.exit.i16_crit_edge:          ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i16

if.end.i.i15:                                     ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i14 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev.i14, align 4
  br label %dev_name.exit.i16

dev_name.exit.i16:                                ; preds = %if.end.i.i15, %if.then.i13.dev_name.exit.i16_crit_edge
  %retval.0.i46.i = phi ptr [ %15, %if.end.i.i15 ], [ %13, %if.then.i13.dev_name.exit.i16_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i46.i, i32 noundef %and, i32 noundef %or) #7
  br label %do.body4.i

do.body4.i:                                       ; preds = %dev_name.exit.i16, %sdhci_iproc_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %17 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i18 = getelementptr i8, ptr %18, i32 %and
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %16) #7, !srcloc !73
  %clock.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %19 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %20)
  %cmp.i = icmp ult i32 %20, 400001
  br i1 %cmp.i, label %if.then6.i, label %do.body4.i.sdhci_iproc_writel.exit_crit_edge

do.body4.i.sdhci_iproc_writel.exit_crit_edge:     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdhci_iproc_writel.exit

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i, label %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge, label %cond.false24.i

if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdhci_iproc_writel.exit.sink.split

cond.false24.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nuw nsw i32 %20, 3999999
  %div.i = udiv i32 %sub.i, %20
  br label %sdhci_iproc_writel.exit.sink.split

sdhci_iproc_writel.exit.sink.split:               ; preds = %cond.false24.i, %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge
  %.sink19 = phi ptr [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), %cond.false24.i ], [ getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge ]
  %div.i.sink = phi i32 [ %div.i, %cond.false24.i ], [ 2147480, %if.then6.i.sdhci_iproc_writel.exit.sink.split_crit_edge ]
  %21 = ptrtoint ptr %.sink19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.sink19, align 4
  tail call void %22(i32 noundef %div.i.sink) #7
  br label %sdhci_iproc_writel.exit

sdhci_iproc_writel.exit:                          ; preds = %sdhci_iproc_writel.exit.sink.split, %do.body4.i.sdhci_iproc_writel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_iproc_get_max_clock(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef %host) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_iproc_bcm2711_get_min_clock(ptr nocapture noundef readnone %host) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 200000
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_sdhci_iproc__273_446_sdhci_iproc_driver_init6, !1, !"__initcall__kmod_sdhci_iproc__273_446_sdhci_iproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 446, i32 1}
!2 = !{ptr @__exitcall_sdhci_iproc_driver_exit, !1, !"__exitcall_sdhci_iproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author274, !4, !"__UNIQUE_ID_author274", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 448, i32 1}
!5 = !{ptr @__UNIQUE_ID_description275, !6, !"__UNIQUE_ID_description275", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 449, i32 1}
!7 = !{ptr @__UNIQUE_ID_file276, !8, !"__UNIQUE_ID_file276", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 450, i32 1}
!9 = !{ptr @__UNIQUE_ID_license277, !8, !"__UNIQUE_ID_license277", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 436, i32 11}
!12 = !{ptr @sdhci_iproc_driver, !13, !"sdhci_iproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 434, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 405, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sdhci_iproc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sdhci_iproc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sdhci_iproc_of_match, !23, !"sdhci_iproc_of_match", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 330, i32 34}
!24 = !{ptr @bcm2835_data, !25, !"bcm2835_data", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 270, i32 38}
!26 = !{ptr @sdhci_bcm2835_pltfm_data, !27, !"sdhci_bcm2835_pltfm_data", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 261, i32 38}
!28 = !{ptr @sdhci_iproc_32only_ops, !29, !"sdhci_iproc_32only_ops", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 201, i32 31}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 47, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sdhci_iproc_readl.__UNIQUE_ID_ddebug271, !31, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 82, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sdhci_iproc_writel.__UNIQUE_ID_ddebug272, !36, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!39 = !{ptr @bcm2711_data, !40, !"bcm2711_data", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 302, i32 38}
!41 = !{ptr @sdhci_bcm2711_pltfm_data, !42, !"sdhci_bcm2711_pltfm_data", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 297, i32 38}
!43 = !{ptr @sdhci_iproc_bcm2711_ops, !44, !"sdhci_iproc_bcm2711_ops", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 281, i32 31}
!45 = !{ptr @iproc_cygnus_data, !46, !"iproc_cygnus_data", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 222, i32 38}
!47 = !{ptr @sdhci_iproc_cygnus_pltfm_data, !48, !"sdhci_iproc_cygnus_pltfm_data", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 215, i32 38}
!49 = !{ptr @iproc_data, !50, !"iproc_data", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 246, i32 38}
!51 = !{ptr @sdhci_iproc_pltfm_data, !52, !"sdhci_iproc_pltfm_data", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 238, i32 38}
!53 = !{ptr @sdhci_iproc_ops, !54, !"sdhci_iproc_ops", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 193, i32 31}
!55 = !{ptr @bcm7211a0_data, !56, !"bcm7211a0_data", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 316, i32 38}
!57 = !{ptr @sdhci_bcm7211a0_pltfm_data, !58, !"sdhci_bcm7211a0_pltfm_data", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/sdhci-iproc.c", i32 307, i32 38}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 7096687}
!69 = !{i64 2155266732}
!70 = !{i64 2148959217, i64 2148959222, i64 2148959235, i64 2148959279, i64 2148959313, i64 2148959334}
!71 = !{i8 0, i8 2}
!72 = !{i64 2155272044}
!73 = !{i64 7096269}
