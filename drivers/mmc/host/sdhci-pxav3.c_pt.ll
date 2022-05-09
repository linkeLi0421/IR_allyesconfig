; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pxav3.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pxav3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sdhci_pxa = type { ptr, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_sdhci_pxav3__274_578_sdhci_pxav3_driver_init6 = internal global ptr @sdhci_pxav3_driver_init, section ".initcall6.init", align 4
@sdhci_pxav3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_pxav3_probe, ptr @sdhci_pxav3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_pxav3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pxav3_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_pxav3_driver_exit = internal global ptr @sdhci_pxav3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [47 x i8] c"sdhci_pxav3.description=SDHCI driver for pxav3\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [46 x i8] c"sdhci_pxav3.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [46 x i8] c"sdhci_pxav3.file=drivers/mmc/host/sdhci-pxav3\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [27 x i8] c"sdhci_pxav3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-pxav3\00", [20 x i8] zeroinitializer }, align 32
@sdhci_pxav3_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxav3-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sdhci_pxav3_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pxav3_runtime_suspend, ptr @sdhci_pxav3_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_pxav3_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @pxav3_sdhci_ops, i32 117441024, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@sdhci_pxav3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get io clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_pxav3_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci-pxav3.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_pxav3_probe._entry_ptr = internal global ptr @sdhci_pxav3_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,armada-380-sdhci\00", [39 x i8] zeroinitializer }, align 32
@pxav3_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @pxav3_set_power, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr @pxav3_gen_init_74_clocks, ptr null, ptr @pxav3_reset, ptr null, ptr @pxav3_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pxav3_gen_init_74_clocks.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci_pxav3\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pxav3_gen_init_74_clocks\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: slot->power_mode = %d,ios->power_mode = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pxav3_gen_init_74_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 230, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"74 clock interrupt not cleared\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pxav3_gen_init_74_clocks._entry_ptr = internal global ptr @pxav3_gen_init_74_clocks._entry, section ".printk_index", align 4
@pxav3_set_uhs_signaling.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxav3_set_uhs_signaling\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s uhs = %d, ctrl_2 = %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"conf-sdio3\00", [21 x i8] zeroinitializer }, align 32
@armada_38x_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 147, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"conf-sdio3 register not found: disabling SDR50 and DDR50 modes.\0AConsider updating your dtb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"armada_38x_quirks\00", [46 x i8] zeroinitializer }, align 32
@armada_38x_quirks._entry_ptr = internal global ptr @armada_38x_quirks._entry, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-1-8-v\00", [23 x i8] zeroinitializer }, align 32
@mv_conf_mbus_windows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 80, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no mbus dram info\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_conf_mbus_windows\00", [43 x i8] zeroinitializer }, align 32
@mv_conf_mbus_windows._entry_ptr = internal global ptr @mv_conf_mbus_windows._entry, section ".printk_index", align 4
@mv_conf_mbus_windows._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 86, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get mbus registers\0A\00", [37 x i8] zeroinitializer }, align 32
@mv_conf_mbus_windows._entry_ptr.24 = internal global ptr @mv_conf_mbus_windows._entry.22, section ".printk_index", align 4
@mv_conf_mbus_windows._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot map mbus registers\0A\00", [37 x i8] zeroinitializer }, align 32
@mv_conf_mbus_windows._entry_ptr.27 = internal global ptr @mv_conf_mbus_windows._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mrvl,clk-delay-cycles\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 7]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"sdhci_pxav3_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 567, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 569, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"sdhci_pxav3_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 337, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"sdhci_pxav3_pmops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 561, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"sdhci_pxav3_pdata\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 328, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 389, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 393, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 400, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 407, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"pxav3_sdhci_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 318, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 201, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 230, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 295, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 133, i32 9 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 147, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 155, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 80, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 86, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 92, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [34 x i8] c"../drivers/mmc/host/sdhci-pxav3.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 358, i32 32 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_sdhci_pxav3_driver_exit, ptr @__initcall__kmod_sdhci_pxav3__274_578_sdhci_pxav3_driver_init6, ptr @armada_38x_quirks._entry, ptr @armada_38x_quirks._entry_ptr, ptr @mv_conf_mbus_windows._entry, ptr @mv_conf_mbus_windows._entry.22, ptr @mv_conf_mbus_windows._entry.25, ptr @mv_conf_mbus_windows._entry_ptr, ptr @mv_conf_mbus_windows._entry_ptr.24, ptr @mv_conf_mbus_windows._entry_ptr.27, ptr @pxav3_gen_init_74_clocks._entry, ptr @pxav3_gen_init_74_clocks._entry_ptr, ptr @sdhci_pxav3_driver_exit, ptr @sdhci_pxav3_probe._entry, ptr @sdhci_pxav3_probe._entry_ptr, ptr @sdhci_pxav3_driver, ptr @.str, ptr @sdhci_pxav3_of_match, ptr @sdhci_pxav3_pmops, ptr @sdhci_pxav3_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pxav3_sdhci_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav3_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav3_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav3_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxav3_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxav3_gen_init_74_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_38x_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_conf_mbus_windows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_conf_mbus_windows._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_conf_mbus_windows._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_pxav3_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pxav3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_pxav3_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_delay_cycles.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_pxav3_pdata, i32 noundef 16) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %private.i207 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 22
  %5 = ptrtoint ptr %clk_io to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %clk_io, align 4
  %cmp.i208 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %6 = ptrtoint ptr %clk_io to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %clk_io, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %7 = phi ptr [ %call12, %if.then11 ], [ %call8, %if.end.if.end14_crit_edge ]
  %cmp.i209 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %8 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_io, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %err_clk_get

if.end20:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.clk_prepare_enable.exit_crit_edge

if.end20.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end20.clk_prepare_enable.exit_crit_edge
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %12 = ptrtoint ptr %private.i207 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %private.i207, align 4
  %cmp.i210 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %clk_prepare_enable.exit.if.end30_crit_edge, label %if.then27

clk_prepare_enable.exit.if.end30_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %clk_prepare_enable.exit
  %call.i211 = tail call i32 @clk_prepare(ptr noundef %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212, label %if.end.i215, label %if.then27.if.end30_crit_edge

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end.i215:                                      ; preds = %if.then27
  %call1.i213 = tail call i32 @clk_enable(ptr noundef %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213)
  %tobool2.not.i214 = icmp eq i32 %call1.i213, 0
  br i1 %tobool2.not.i214, label %if.end.i215.if.end30_crit_edge, label %if.then3.i216

if.end.i215.if.end30_crit_edge:                   ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then3.i216:                                    ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call24) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then3.i216, %if.end.i215.if.end30_crit_edge, %if.then27.if.end30_crit_edge, %clk_prepare_enable.exit.if.end30_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps, align 32
  %or = or i32 %16, 4096
  store i32 %or, ptr %caps, align 32
  %call31 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end30.if.end41_crit_edge, label %if.then32

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then32:                                        ; preds = %if.end30
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %quirks.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %20, -167772161
  %or.i = or i32 %and.i, 134217728
  store i32 %or.i, ptr %quirks.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !83

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %24(ptr noundef %call, i32 noundef 64) #7
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 64
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %28, %if.else.i.i ]
  %caps.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 56
  %29 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %caps.i, align 8
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i51.i = icmp eq ptr %33, null
  br i1 %tobool.not.i51.i, label %if.else.i56.i, label %if.then.i53.i, !prof !83

if.then.i53.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i52.i = tail call i32 %33(ptr noundef %call, i32 noundef 68) #7
  br label %sdhci_readl.exit58.i

if.else.i56.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i54.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %34 = ptrtoint ptr %ioaddr.i54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i54.i, align 16
  %add.ptr.i55.i = getelementptr i8, ptr %35, i32 68
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #7, !srcloc !84
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  br label %sdhci_readl.exit58.i

sdhci_readl.exit58.i:                             ; preds = %if.else.i56.i, %if.then.i53.i
  %retval.0.i57.i = phi i32 [ %call.i52.i, %if.then.i53.i ], [ %37, %if.else.i56.i ]
  %caps1.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 57
  %38 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i57.i, ptr %caps1.i, align 4
  %call5.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.16) #7
  %tobool.not.i218 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i218, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sdhci_readl.exit58.i
  %call7.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call5.i) #7
  %sdio3_conf_reg.i = getelementptr inbounds %struct.sdhci_pxa, ptr %private.i207, i32 0, i32 3
  %39 = ptrtoint ptr %sdio3_conf_reg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i, ptr %sdio3_conf_reg.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %armada_38x_quirks.exit, label %if.then.i.if.end16.i_crit_edge

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %sdhci_readl.exit58.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps1.i, align 4
  %and14.i = and i32 %41, -6
  store i32 %and14.i, ptr %caps1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then.i.if.end16.i_crit_edge
  %call.i59.i = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i59.i, null
  %42 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps.i, align 8
  br i1 %tobool.i.not.i, label %if.else23.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %and20.i = and i32 %43, -67108865
  %44 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and20.i, ptr %caps.i, align 8
  %45 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmc, align 8
  %caps21.i = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %caps21.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps21.i, align 32
  %and22.i = and i32 %48, -4097
  store i32 %and22.i, ptr %caps21.i, align 32
  br label %armada_38x_quirks.exit.thread

if.else23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %and25.i = and i32 %43, -16777217
  %49 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and25.i, ptr %caps.i, align 8
  br label %armada_38x_quirks.exit.thread

armada_38x_quirks.exit.thread:                    ; preds = %if.else23.i, %if.then18.i
  %50 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caps1.i, align 4
  %and28.i = and i32 %51, -8195
  store i32 %and28.i, ptr %caps1.i, align 4
  br label %if.end35

armada_38x_quirks.exit:                           ; preds = %if.then.i
  %52 = ptrtoint ptr %call7.i to i32
  %cmp = icmp slt ptr %call7.i, null
  br i1 %cmp, label %armada_38x_quirks.exit.err_mbus_win_crit_edge, label %armada_38x_quirks.exit.if.end35_crit_edge

armada_38x_quirks.exit.if.end35_crit_edge:        ; preds = %armada_38x_quirks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

armada_38x_quirks.exit.err_mbus_win_crit_edge:    ; preds = %armada_38x_quirks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mbus_win

if.end35:                                         ; preds = %armada_38x_quirks.exit.if.end35_crit_edge, %armada_38x_quirks.exit.thread
  %call36 = tail call ptr @mv_mbus_dram_info() #7
  %tobool.not.i219 = icmp eq ptr %call36, null
  br i1 %tobool.not.i219, label %do.end.i, label %if.end.i222

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %err_mbus_win

if.end.i222:                                      ; preds = %if.end35
  %call.i221 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool1.not.i = icmp eq ptr %call.i221, null
  br i1 %tobool1.not.i, label %do.end5.i, label %if.end7.i

do.end5.i:                                        ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %err_mbus_win

if.end7.i:                                        ; preds = %if.end.i222
  %53 = ptrtoint ptr %call.i221 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call.i221, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i221, i32 0, i32 1
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %54
  %add.i.i = add i32 %sub.i.i, %56
  %call9.i = tail call ptr @ioremap(i32 noundef %54, i32 noundef %add.i.i) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.end14.i, label %do.body17.preheader.i

do.body17.preheader.i:                            ; preds = %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.i = getelementptr i8, ptr %call9.i, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.1.i = getelementptr i8, ptr %call9.i, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.1.i = getelementptr i8, ptr %call9.i, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.1.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.2.i = getelementptr i8, ptr %call9.i, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.2.i = getelementptr i8, ptr %call9.i, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.2.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.3.i = getelementptr i8, ptr %call9.i, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.3.i = getelementptr i8, ptr %call9.i, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.3.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.4.i = getelementptr i8, ptr %call9.i, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.4.i = getelementptr i8, ptr %call9.i, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.4.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.5.i = getelementptr i8, ptr %call9.i, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.5.i = getelementptr i8, ptr %call9.i, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.5.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.6.i = getelementptr i8, ptr %call9.i, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.6.i = getelementptr i8, ptr %call9.i, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.6.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %add.ptr.7.i = getelementptr i8, ptr %call9.i, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %add.ptr25.7.i = getelementptr i8, ptr %call9.i, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.7.i, i32 0) #7, !srcloc !87
  %num_cs.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call36, i32 0, i32 1
  %57 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp2781.i = icmp sgt i32 %58, 0
  br i1 %cmp2781.i, label %for.body28.lr.ph.i, label %do.body17.preheader.i.mv_conf_mbus_windows.exit_crit_edge

do.body17.preheader.i.mv_conf_mbus_windows.exit_crit_edge: ; preds = %do.body17.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv_conf_mbus_windows.exit

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %err_mbus_win

for.body28.lr.ph.i:                               ; preds = %do.body17.preheader.i
  %cs29.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call36, i32 0, i32 2
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %i.182.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc53.i, %for.body28.i.for.body28.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %size.i = getelementptr %struct.mbus_dram_window, ptr %cs29.i, i32 %i.182.i, i32 3
  %59 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.i, align 8
  %mbus_attr.i = getelementptr %struct.mbus_dram_window, ptr %cs29.i, i32 %i.182.i, i32 1
  %61 = ptrtoint ptr %mbus_attr.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mbus_attr.i, align 1
  %conv.i = zext i8 %62 to i32
  %shl34.i = shl nuw nsw i32 %conv.i, 8
  %63 = ptrtoint ptr %call36 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %call36, align 8
  %conv36.i = zext i8 %64 to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, 4
  %65 = trunc i64 %60 to i32
  %66 = add i32 %65, -1
  %67 = and i32 %66, -65536
  %68 = or i32 %67, %shl34.i
  %69 = or i32 %68, %shl37.i
  %conv41.i = or i32 %69, 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %conv41.i) #7
  %shl42.i = shl i32 %i.182.i, 3
  %add43.i = add i32 %shl42.i, 128
  %add.ptr44.i = getelementptr i8, ptr %call9.i, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %70) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr %struct.mbus_dram_window, ptr %cs29.i, i32 %i.182.i, i32 2
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %base.i, align 8
  %conv48.i = trunc i64 %72 to i32
  %73 = tail call i32 @llvm.bswap.i32(i32 %conv48.i) #7
  %add50.i = add i32 %shl42.i, 132
  %add.ptr51.i = getelementptr i8, ptr %call9.i, i32 %add50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %73) #7, !srcloc !87
  %inc53.i = add nuw nsw i32 %i.182.i, 1
  %74 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_cs.i, align 4
  %cmp27.i = icmp slt i32 %inc53.i, %75
  br i1 %cmp27.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.mv_conf_mbus_windows.exit_crit_edge

for.body28.i.mv_conf_mbus_windows.exit_crit_edge: ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv_conf_mbus_windows.exit

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28.i

mv_conf_mbus_windows.exit:                        ; preds = %for.body28.i.mv_conf_mbus_windows.exit_crit_edge, %do.body17.preheader.i.mv_conf_mbus_windows.exit_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call9.i) #7
  br label %if.end41

if.end41:                                         ; preds = %mv_conf_mbus_windows.exit, %if.end30.if.end41_crit_edge
  %call43 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_pxav3_of_match, ptr noundef %dev) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end41
  %76 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmc, align 8
  %call47 = tail call i32 @mmc_of_parse(ptr noundef %77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then45.err_mbus_win_crit_edge

if.then45.err_mbus_win_crit_edge:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mbus_win

if.end50:                                         ; preds = %if.then45
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %78 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_delay_cycles.i) #7
  %80 = ptrtoint ptr %clk_delay_cycles.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %clk_delay_cycles.i, align 4, !annotation !91
  %call.i.i225 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not.i226 = icmp eq ptr %call.i.i225, null
  br i1 %tobool.not.i226, label %if.end50.pxav3_get_mmc_pdata.exit_crit_edge, label %if.end.i228

if.end50.pxav3_get_mmc_pdata.exit_crit_edge:      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %pxav3_get_mmc_pdata.exit

if.end.i228:                                      ; preds = %if.end50
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.28, ptr noundef nonnull %clk_delay_cycles.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i227 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i227, label %if.then3.i229, label %if.end.i228.pxav3_get_mmc_pdata.exit_crit_edge

if.end.i228.pxav3_get_mmc_pdata.exit_crit_edge:   ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %pxav3_get_mmc_pdata.exit

if.then3.i229:                                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %clk_delay_cycles.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clk_delay_cycles.i, align 4
  %clk_delay_cycles4.i = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %call.i.i225, i32 0, i32 1
  %83 = ptrtoint ptr %clk_delay_cycles4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %clk_delay_cycles4.i, align 4
  br label %pxav3_get_mmc_pdata.exit

pxav3_get_mmc_pdata.exit:                         ; preds = %if.then3.i229, %if.end.i228.pxav3_get_mmc_pdata.exit_crit_edge, %if.end50.pxav3_get_mmc_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_delay_cycles.i) #7
  %84 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i225, ptr %platform_data, align 8
  br label %if.end103

if.else:                                          ; preds = %if.end41
  %tobool54.not = icmp eq ptr %1, null
  br i1 %tobool54.not, label %if.else.if.end103_crit_edge, label %if.then55

if.else.if.end103_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then55:                                        ; preds = %if.else
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %1, align 4
  %and = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.then55.if.end61_crit_edge, label %if.then57

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmc, align 8
  %caps59 = getelementptr inbounds %struct.mmc_host, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %caps59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %caps59, align 32
  %or60 = or i32 %90, 256
  store i32 %or60, ptr %caps59, align 32
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.then55.if.end61_crit_edge
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %1, align 4
  %and63 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end69_crit_edge, label %if.then65

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmc, align 8
  %caps67 = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %caps67 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %caps67, align 32
  %or68 = or i32 %96, 64
  store i32 %or68, ptr %caps67, align 32
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end61.if.end69_crit_edge
  %quirks = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %1, i32 0, i32 7
  %97 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %quirks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool70.not = icmp eq i32 %98, 0
  br i1 %tobool70.not, label %if.end69.if.end75_crit_edge, label %if.then71

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %quirks73 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 1
  %99 = ptrtoint ptr %quirks73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %quirks73, align 4
  %or74 = or i32 %100, %98
  store i32 %or74, ptr %quirks73, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end69.if.end75_crit_edge
  %quirks2 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %1, i32 0, i32 8
  %101 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %quirks2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool76.not = icmp eq i32 %102, 0
  br i1 %tobool76.not, label %if.end75.if.end81_crit_edge, label %if.then77

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %quirks279 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 2
  %103 = ptrtoint ptr %quirks279 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %quirks279, align 8
  %or80 = or i32 %104, %102
  store i32 %or80, ptr %quirks279, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end75.if.end81_crit_edge
  %host_caps = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %host_caps to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %host_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool82.not = icmp eq i32 %106, 0
  br i1 %tobool82.not, label %if.end81.if.end88_crit_edge, label %if.then83

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmc, align 8
  %caps86 = getelementptr inbounds %struct.mmc_host, ptr %108, i32 0, i32 16
  %109 = ptrtoint ptr %caps86 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %caps86, align 32
  %or87 = or i32 %110, %106
  store i32 %or87, ptr %caps86, align 32
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.end81.if.end88_crit_edge
  %host_caps2 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %1, i32 0, i32 6
  %111 = ptrtoint ptr %host_caps2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %host_caps2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool89.not = icmp eq i32 %112, 0
  br i1 %tobool89.not, label %if.end88.if.end94_crit_edge, label %if.then90

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %114, i32 0, i32 17
  %115 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %caps2, align 4
  %or93 = or i32 %116, %112
  store i32 %or93, ptr %caps2, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end88.if.end94_crit_edge
  %pm_caps = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %1, i32 0, i32 9
  %117 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pm_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool95.not = icmp eq i32 %118, 0
  br i1 %tobool95.not, label %if.end94.if.end103_crit_edge, label %if.then96

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmc, align 8
  %pm_caps99 = getelementptr inbounds %struct.mmc_host, ptr %120, i32 0, i32 19
  %121 = ptrtoint ptr %pm_caps99 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pm_caps99, align 4
  %or100 = or i32 %122, %118
  store i32 %or100, ptr %pm_caps99, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.end94.if.end103_crit_edge, %if.else.if.end103_crit_edge, %pxav3_get_mmc_pdata.exit
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i230 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %123 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !92
  %call.i231 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %124 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %call111 = call i32 @sdhci_add_host(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %err_add_host

if.end114:                                        ; preds = %if.end103
  %125 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmc, align 8
  %pm_caps116 = getelementptr inbounds %struct.mmc_host, ptr %126, i32 0, i32 19
  %127 = ptrtoint ptr %pm_caps116 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pm_caps116, align 4
  %and117 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end114.if.end122_crit_edge, label %if.then119

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end114.if.end122_crit_edge
  %call.i232 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  br label %cleanup

err_add_host:                                     ; preds = %if.end103
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i.i.i234 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_add_host.err_mbus_win_crit_edge, label %do.end11.i.i.i.i

err_add_host.err_mbus_win_crit_edge:              ; preds = %err_add_host
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mbus_win

do.end11.i.i.i.i:                                 ; preds = %err_add_host
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  br label %err_mbus_win

err_mbus_win:                                     ; preds = %do.end11.i.i.i.i, %err_add_host.err_mbus_win_crit_edge, %if.then45.err_mbus_win_crit_edge, %do.end14.i, %do.end5.i, %do.end.i, %armada_38x_quirks.exit.err_mbus_win_crit_edge
  %ret.0 = phi i32 [ %52, %armada_38x_quirks.exit.err_mbus_win_crit_edge ], [ %call47, %if.then45.err_mbus_win_crit_edge ], [ %call111, %err_add_host.err_mbus_win_crit_edge ], [ %call111, %do.end11.i.i.i.i ], [ -22, %do.end.i ], [ -22, %do.end5.i ], [ -12, %do.end14.i ]
  %130 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clk_io, align 4
  call void @clk_disable(ptr noundef %131) #7
  call void @clk_unprepare(ptr noundef %131) #7
  %132 = ptrtoint ptr %private.i207 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %private.i207, align 4
  call void @clk_disable(ptr noundef %133) #7
  call void @clk_unprepare(ptr noundef %133) #7
  br label %err_clk_get

err_clk_get:                                      ; preds = %err_mbus_win, %do.end
  %ret.1 = phi i32 [ %10, %do.end ], [ %ret.0, %err_mbus_win ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk_get, %if.end122, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.1, %err_clk_get ], [ 0, %if.end122 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %private.i12 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 1) #7
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %3 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_io, align 4
  tail call void @clk_disable(ptr noundef %4) #7
  tail call void @clk_unprepare(ptr noundef %4) #7
  %5 = ptrtoint ptr %private.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i12, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav3_set_power(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %pwr2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 23
  %2 = ptrtoint ptr %pwr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr2, align 16
  tail call void @sdhci_set_power_noreg(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #7
  %4 = ptrtoint ptr %pwr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwr2, align 16
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp = icmp eq i8 %5, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp8 = icmp eq i8 %5, 0
  %spec.select = select i1 %cmp8, i16 0, i16 %vdd
  %call15 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %spec.select) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav3_gen_init_74_clocks(ptr nocapture noundef %host, i8 noundef zeroext %power_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %0 = ptrtoint ptr %power_mode2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %power_mode)
  %cmp5 = icmp eq i8 %power_mode, 2
  %or.cond = and i1 %cmp5, %cmp
  br i1 %or.cond, label %do.body, label %entry.if.end78_crit_edge

entry.if.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxav3_gen_init_74_clocks.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxav3_gen_init_74_clocks, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !96

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %6 = ptrtoint ptr %power_mode2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode2, align 4
  %conv13 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxav3_gen_init_74_clocks.__UNIQUE_ID_ddebug272, ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %conv13, i32 noundef 2) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 270
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %11 = or i16 %10, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 16
  %add.ptr24 = getelementptr i8, ptr %13, i32 270
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %11) #7, !srcloc !100
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %add.ptr28 = getelementptr i8, ptr %15, i32 256
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %17 = or i16 %16, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 16
  %add.ptr39 = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39, i16 %17) #7, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 158913520) #7
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 16
  %add.ptr45 = getelementptr i8, ptr %22, i32 270
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %24 = and i16 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp50 = icmp eq i16 %24, 0
  br i1 %cmp50, label %do.end.if.end62_crit_edge, label %if.end53

do.end.if.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end53:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #7
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %add.ptr45.1 = getelementptr i8, ptr %27, i32 270
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45.1) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %29 = and i16 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp50.1 = icmp eq i16 %29, 0
  br i1 %cmp50.1, label %if.end53.if.end62_crit_edge, label %if.end53.1

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end53.1:                                       ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #7
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 16
  %add.ptr45.2 = getelementptr i8, ptr %32, i32 270
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45.2) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %34 = and i16 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp50.2 = icmp eq i16 %34, 0
  br i1 %cmp50.2, label %if.end53.1.if.end62_crit_edge, label %if.end53.2

if.end53.1.if.end62_crit_edge:                    ; preds = %if.end53.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end53.2:                                       ; preds = %if.end53.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #7
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 16
  %add.ptr45.3 = getelementptr i8, ptr %37, i32 270
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45.3) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %39 = and i16 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp50.3 = icmp eq i16 %39, 0
  br i1 %cmp50.3, label %if.end53.2.if.end62_crit_edge, label %if.end53.3

if.end53.2.if.end62_crit_edge:                    ; preds = %if.end53.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end53.3:                                       ; preds = %if.end53.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #7
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 16
  %add.ptr45.4 = getelementptr i8, ptr %42, i32 270
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45.4) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %44 = and i16 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp50.4 = icmp eq i16 %44, 0
  br i1 %cmp50.4, label %do.end59, label %if.end53.4

if.end53.4:                                       ; preds = %if.end53.3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #7
  br label %if.end62

do.end59:                                         ; preds = %if.end53.3
  call void @__sanitizer_cov_trace_pc() #9
  %mmc60 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %46 = ptrtoint ptr %mmc60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc60, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.12) #10
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.end53.4, %if.end53.2.if.end62_crit_edge, %if.end53.1.if.end62_crit_edge, %if.end53.if.end62_crit_edge, %do.end.if.end62_crit_edge
  %50 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr, align 16
  %add.ptr66 = getelementptr i8, ptr %51, i32 270
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %53 = or i16 %52, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 16
  %add.ptr77 = getelementptr i8, ptr %55, i32 270
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77, i16 %53) #7, !srcloc !100
  br label %if.end78

if.end78:                                         ; preds = %if.end62, %entry.if.end78_crit_edge
  %56 = ptrtoint ptr %power_mode2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %power_mode, ptr %power_mode2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav3_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mask)
  %cmp = icmp ne i8 %mask, 1
  %tobool.not = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %clk_delay_cycles = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_delay_cycles to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_delay_cycles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end17_crit_edge, label %if.then4

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %9, i32 266
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %11 = ptrtoint ptr %clk_delay_cycles to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_delay_cycles, align 4
  %.tr = trunc i32 %12 to i16
  %13 = shl i16 %.tr, 9
  %14 = and i16 %13, 15872
  %15 = or i16 %10, 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = or i16 %16, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 16
  %add.ptr16 = getelementptr i8, ptr %20, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %18) #7, !srcloc !100
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav3_set_uhs_signaling(ptr noundef %host, i32 noundef %uhs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i87 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #7
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !97
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i88 = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i88, -8
  %9 = zext i32 %uhs to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %uhs, label %sdhci_readw.exit.sw.epilog_crit_edge [
    i32 7, label %sdhci_readw.exit.sw.bb18_crit_edge
    i32 4, label %sw.bb6
    i32 5, label %sw.bb10
    i32 6, label %sw.bb14
    i32 8, label %sdhci_readw.exit.sw.bb18_crit_edge95
  ]

sdhci_readw.exit.sw.bb18_crit_edge95:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

sdhci_readw.exit.sw.bb18_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

sdhci_readw.exit.sw.epilog_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i16 %8, 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i16 %8, 10
  br label %sw.epilog

sw.bb14:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i16 %8, 11
  br label %sw.epilog

sw.bb18:                                          ; preds = %sdhci_readw.exit.sw.bb18_crit_edge, %sdhci_readw.exit.sw.bb18_crit_edge95
  %13 = or i16 %8, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sdhci_readw.exit.sw.epilog_crit_edge
  %ctrl_2.0 = phi i16 [ %13, %sw.bb18 ], [ %12, %sw.bb14 ], [ %11, %sw.bb10 ], [ %10, %sw.bb6 ], [ %8, %sdhci_readw.exit.sw.epilog_crit_edge ]
  %sdio3_conf_reg = getelementptr inbounds %struct.sdhci_pxa, ptr %private.i87, i32 0, i32 3
  %14 = ptrtoint ptr %sdio3_conf_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdio3_conf_reg, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %sw.epilog.if.end53_crit_edge, label %if.then

sw.epilog.if.end53_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then:                                          ; preds = %sw.epilog
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %17 = zext i32 %uhs to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %uhs, label %if.else44 [
    i32 5, label %if.then.if.then28_crit_edge
    i32 7, label %if.then.if.then28_crit_edge96
    i32 1, label %if.then37
  ]

if.then.if.then28_crit_edge96:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then.if.then28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %if.then.if.then28_crit_edge, %if.then.if.then28_crit_edge96
  %18 = and i8 %16, -6
  %19 = or i8 %18, 4
  br label %do.body

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %20 = and i8 %16, -6
  br label %do.body

if.else44:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %21 = and i8 %16, -6
  %22 = or i8 %21, 1
  br label %do.body

do.body:                                          ; preds = %if.else44, %if.then37, %if.then28
  %reg_val.0 = phi i8 [ %19, %if.then28 ], [ %20, %if.then37 ], [ %22, %if.else44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %sdio3_conf_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdio3_conf_reg, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %reg_val.0) #7, !srcloc !112
  br label %if.end53

if.end53:                                         ; preds = %do.body, %sw.epilog.if.end53_crit_edge
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i90 = icmp eq ptr %28, null
  br i1 %tobool.not.i90, label %do.body.i, label %if.then.i91, !prof !83

if.then.i91:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %28(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #7
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %29 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #7
  %ioaddr.i92 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %30 = ptrtoint ptr %ioaddr.i92 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i92, align 16
  %add.ptr.i93 = getelementptr i8, ptr %31, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i93, i16 %29) #7, !srcloc !100
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxav3_set_uhs_signaling.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pxav3_set_uhs_signaling, %if.then60)) #7
          to label %do.end64 [label %if.then60], !srcloc !96

if.then60:                                        ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %32 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %conv61 = zext i16 %ctrl_2.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxav3_set_uhs_signaling.__UNIQUE_ID_ddebug273, ptr noundef %35, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %uhs, i32 noundef %conv61) #7
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %sdhci_writew.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_noreg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #7
  %call.i9 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i9, ptr %last_busy.i, align 8
  %call.i10 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %call2 = tail call i32 @sdhci_resume_host(ptr noundef %1) #7
  %call.i7 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i7, ptr %last_busy.i, align 8
  %call.i8 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i19 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %call3 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
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
  br i1 %tobool.not.i, label %if.then4.if.end5_crit_edge, label %if.then.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %9 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_io, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  %11 = ptrtoint ptr %private.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i19, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i11 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %clk_io = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %clk_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_io, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %4 = ptrtoint ptr %private.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i11, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  %call.i12 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i16:                                       ; preds = %if.then
  %call1.i14 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end.i16.if.end_crit_edge, label %if.then3.i17

if.end.i16.if.end_crit_edge:                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i17, %if.end.i16.if.end_crit_edge, %if.then.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %call7 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #7
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_sdhci_pxav3__274_578_sdhci_pxav3_driver_init6, !1, !"__initcall__kmod_sdhci_pxav3__274_578_sdhci_pxav3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 578, i32 1}
!2 = !{ptr @__exitcall_sdhci_pxav3_driver_exit, !1, !"__exitcall_sdhci_pxav3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description275, !4, !"__UNIQUE_ID_description275", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 580, i32 1}
!5 = !{ptr @__UNIQUE_ID_author276, !6, !"__UNIQUE_ID_author276", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 581, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 582, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 569, i32 11}
!12 = !{ptr @sdhci_pxav3_driver, !13, !"sdhci_pxav3_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 567, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 389, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 393, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_pxav3_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_pxav3_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 400, i32 36}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 407, i32 34}
!28 = !{ptr @sdhci_pxav3_pdata, !29, !"sdhci_pxav3_pdata", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 328, i32 38}
!30 = !{ptr @pxav3_sdhci_ops, !31, !"pxav3_sdhci_ops", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 318, i32 31}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 201, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pxav3_gen_init_74_clocks.__UNIQUE_ID_ddebug272, !33, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 230, i32 4}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pxav3_gen_init_74_clocks._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pxav3_gen_init_74_clocks._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 295, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pxav3_set_uhs_signaling.__UNIQUE_ID_ddebug273, !43, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 133, i32 9}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 147, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @armada_38x_quirks._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @armada_38x_quirks._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 155, i32 32}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 80, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mv_conf_mbus_windows._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mv_conf_mbus_windows._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 86, i32 3}
!62 = !{ptr @mv_conf_mbus_windows._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mv_conf_mbus_windows._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 92, i32 3}
!66 = !{ptr @mv_conf_mbus_windows._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mv_conf_mbus_windows._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 358, i32 32}
!70 = !{ptr @sdhci_pxav3_of_match, !71, !"sdhci_pxav3_of_match", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 337, i32 34}
!72 = !{ptr @sdhci_pxav3_pmops, !73, !"sdhci_pxav3_pmops", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-pxav3.c", i32 561, i32 32}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 4829387}
!85 = !{i64 2154794383}
!86 = !{i64 2154804689}
!87 = !{i64 4828969}
!88 = !{i64 2154805114}
!89 = !{i64 2154805635}
!90 = !{i64 2154806355}
!91 = !{!"auto-init"}
!92 = !{i64 2148500184, i64 2148500210, i64 2148500239, i64 2148500273, i64 2148500304, i64 2148500327}
!93 = !{i64 2148499603}
!94 = !{i64 986203, i64 986228, i64 986250, i64 986266, i64 986278, i64 986298, i64 986322, i64 986338, i64 986350}
!95 = !{i64 2148499791}
!96 = !{i64 2148313577, i64 2148313582, i64 2148313595, i64 2148313639, i64 2148313673, i64 2148313694}
!97 = !{i64 4828549}
!98 = !{i64 2154814671}
!99 = !{i64 2154814901}
!100 = !{i64 4828349}
!101 = !{i64 2154815583}
!102 = !{i64 2154815813}
!103 = !{i64 2154817045}
!104 = !{i64 2154819826}
!105 = !{i64 2154820056}
!106 = !{i64 2154810945}
!107 = !{i64 2154811181}
!108 = !{i64 2154795087}
!109 = !{i64 4829167}
!110 = !{i64 2154820550}
!111 = !{i64 2154821268}
!112 = !{i64 4828772}
!113 = !{i64 2154793019}
