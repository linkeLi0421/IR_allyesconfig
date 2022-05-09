; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-tegra.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_tegra_soc_data = type { ptr, i64, i32, i8, i8 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.sdhci_tegra = type { ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sdhci_tegra_autocal_offsets, i64, i32, i32, i32, i8, i32, i8 }
%struct.sdhci_tegra_autocal_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_sdhci_tegra__306_1892_sdhci_tegra_driver_init6 = internal global ptr @sdhci_tegra_driver_init, section ".initcall6.init", align 4
@sdhci_tegra_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_tegra_probe, ptr @sdhci_tegra_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_tegra_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_tegra_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_tegra_driver_exit = internal global ptr @sdhci_tegra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [47 x i8] c"sdhci_tegra.description=SDHCI driver for Tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [32 x i8] c"sdhci_tegra.author=Google, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [46 x i8] c"sdhci_tegra.file=drivers/mmc/host/sdhci-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [27 x i8] c"sdhci_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-tegra\00", [20 x i8] zeroinitializer }, align 32
@sdhci_tegra_dt_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra194 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra186 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra124 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra114 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra20 }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@sdhci_tegra_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr @sdhci_tegra_suspend, ptr @sdhci_tegra_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_tegra_runtime_suspend, ptr @sdhci_tegra_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmclk\00", [26 x i8] zeroinitializer }, align 32
@sdhci_tegra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1707, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get tmclk: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_tegra_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci-tegra.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_tegra_probe._entry_ptr = internal global ptr @sdhci_tegra_probe._entry, section ".printk_index", align 4
@sdhci_tegra_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1715, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable tmclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sdhci_tegra_probe._entry_ptr.11 = internal global ptr @sdhci_tegra_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdhci\00", [26 x i8] zeroinitializer }, align 32
@sdhci_tegra_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1734, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get reset control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sdhci_tegra_probe._entry_ptr.16 = internal global ptr @sdhci_tegra_probe._entry.14, section ".printk_index", align 4
@tegra_sdhci_init_pinctrl_info.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 1, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci_tegra\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_sdhci_init_pinctrl_info\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No pinctrl info, err: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdmmc-1v8-drv\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdmmc-3v3-drv\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc-3v3\00", [22 x i8] zeroinitializer }, align 32
@tegra_sdhci_init_pinctrl_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 1155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Missing 3.3V pad state, err: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sdhci_init_pinctrl_info._entry_ptr = internal global ptr @tegra_sdhci_init_pinctrl_info._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc-1v8\00", [22 x i8] zeroinitializer }, align 32
@tegra_sdhci_init_pinctrl_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.5, i32 1163, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Missing 1.8V pad state, err: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sdhci_init_pinctrl_info._entry_ptr.27 = internal global ptr @tegra_sdhci_init_pinctrl_info._entry.25, section ".printk_index", align 4
@tegra_sdhci_set_padctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 489, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed pads drvupdn, ret: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_sdhci_set_padctrl\00", [40 x i8] zeroinitializer }, align 32
@tegra_sdhci_set_padctrl._entry_ptr = internal global ptr @tegra_sdhci_set_padctrl._entry, section ".printk_index", align 4
@tegra_sdhci_set_padctrl._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 509, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting 1.8V failed, ret: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sdhci_set_padctrl._entry_ptr.32 = internal global ptr @tegra_sdhci_set_padctrl._entry.30, section ".printk_index", align 4
@tegra_sdhci_set_padctrl._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.5, i32 515, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting 3.3V failed, ret: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sdhci_set_padctrl._entry_ptr.35 = internal global ptr @tegra_sdhci_set_padctrl._entry.33, section ".printk_index", align 4
@tegra_sdhci_pad_autocalib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 570, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pad autocal timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_sdhci_pad_autocalib\00", [38 x i8] zeroinitializer }, align 32
@tegra_sdhci_pad_autocalib._entry_ptr = internal global ptr @tegra_sdhci_pad_autocalib._entry, section ".printk_index", align 4
@tegra_sdhci_pad_autocalib._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 580, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting drive strengths failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_sdhci_pad_autocalib._entry_ptr.40 = internal global ptr @tegra_sdhci_pad_autocalib._entry.38, section ".printk_index", align 4
@tegra_sdhci_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 774, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set clk rate to %luHz: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_sdhci_set_clock\00", [42 x i8] zeroinitializer }, align 32
@tegra_sdhci_set_clock._entry_ptr = internal global ptr @tegra_sdhci_set_clock._entry, section ".printk_index", align 4
@tegra_sdhci_post_tuning.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_sdhci_post_tuning\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Apply tuning correction\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"no edge detected, continue with hw tuned delay.\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"supports-cqe\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nvidia,pad-autocal-pull-up-offset-sdr104\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nvidia,pad-autocal-pull-down-offset-sdr104\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nvidia,pad-autocal-pull-up-offset-hs400\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nvidia,pad-autocal-pull-down-offset-hs400\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nvidia,pad-autocal-pull-up-offset-3v3-timeout\00", [50 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Missing autocal timeout 3v3-pad drvs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_sdhci_parse_pad_autocal_dt\00", [63 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry_ptr = internal global ptr @tegra_sdhci_parse_pad_autocal_dt._entry, section ".printk_index", align 4
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nvidia,pad-autocal-pull-down-offset-3v3-timeout\00", [48 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry_ptr.60 = internal global ptr @tegra_sdhci_parse_pad_autocal_dt._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nvidia,pad-autocal-pull-up-offset-1v8-timeout\00", [50 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.5, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Missing autocal timeout 1v8-pad drvs\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry_ptr.64 = internal global ptr @tegra_sdhci_parse_pad_autocal_dt._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nvidia,pad-autocal-pull-down-offset-1v8-timeout\00", [48 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.5, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_sdhci_parse_pad_autocal_dt._entry_ptr.67 = internal global ptr @tegra_sdhci_parse_pad_autocal_dt._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,default-tap\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,default-trim\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,dqs-trim\00", [16 x i8] zeroinitializer }, align 32
@sdhci_tegra_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_tegra_dumpregs, ptr @tegra_cqhci_writel, ptr null, ptr @sdhci_tegra_cqe_enable, ptr @sdhci_cqe_disable, ptr @sdhci_tegra_update_dcmd_desc, ptr @sdhci_tegra_cqe_pre_enable, ptr @sdhci_tegra_cqe_post_disable, ptr null }, [60 x i8] zeroinitializer }, align 32
@soc_data_tegra194 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra186_pdata, i64 549755813887, i32 1496, i8 96, i8 -117 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra186 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra186_pdata, i64 1099511627775, i32 2008, i8 84, i8 -120 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra210 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra210_pdata, i64 17179869183, i32 1496, i8 106, i8 -71 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra124 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra124_pdata, i64 17179869183, i32 2048, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra114 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra114_pdata, i64 4294967295, i32 2048, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra30 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra30_pdata, i64 4294967295, i32 2140, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@soc_data_tegra20 = internal constant { %struct.sdhci_tegra_soc_data, [40 x i8] } { %struct.sdhci_tegra_soc_data { ptr @sdhci_tegra20_pdata, i64 4294967295, i32 2051, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@sdhci_tegra186_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra186_sdhci_ops, i32 1644171272, i32 8 }, [20 x i8] zeroinitializer }, align 32
@tegra186_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr null, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr @sdhci_tegra_cqhci_irq, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr @tegra_sdhci_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr null, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_sdhci_hs400_dll_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 848, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HS400 delay line calibration timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_sdhci_hs400_dll_cal\00", [38 x i8] zeroinitializer }, align 32
@tegra_sdhci_hs400_dll_cal._entry_ptr = internal global ptr @tegra_sdhci_hs400_dll_cal._entry, section ".printk_index", align 4
@sdhci_tegra210_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra210_sdhci_ops, i32 1644171272, i32 8 }, [20 x i8] zeroinitializer }, align 32
@tegra210_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr @tegra210_sdhci_writew, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr @tegra_sdhci_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr null, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_tegra124_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra114_sdhci_ops, i32 1660948488, i32 8 }, [20 x i8] zeroinitializer }, align 32
@tegra114_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr @tegra_sdhci_writew, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr @tegra_sdhci_execute_tuning, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_tegra114_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra114_sdhci_ops, i32 1660948488, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_tegra30_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra_sdhci_ops, i32 1660948488, i32 16456 }, [20 x i8] zeroinitializer }, align 32
@tegra_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr @tegra_sdhci_readw, ptr null, ptr @tegra_sdhci_writel, ptr null, ptr null, ptr @tegra_sdhci_set_clock, ptr null, ptr null, ptr @tegra_sdhci_set_dma_mask, ptr null, ptr @tegra_sdhci_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr @tegra_sdhci_get_ro, ptr @tegra_sdhci_reset, ptr @tegra_sdhci_execute_tuning, ptr @tegra_sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @tegra_sdhci_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_tegra20_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @tegra_sdhci_ops, i32 1644171272, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 6, i64 19, i64 21]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"sdhci_tegra_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1881, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1883, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"sdhci_tegra_dt_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1559, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"sdhci_tegra_dev_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1875, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1678, i32 63 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1701, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1707, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1714, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1725, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1731, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1734, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1132, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1138, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1145, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1152, i32 51 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1154, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1160, i32 51 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1162, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 488, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 508, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 514, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 570, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 579, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 773, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 982, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 923, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 737, i32 52 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 593, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 599, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 605, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 611, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 617, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 623, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 629, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 635, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 650, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 655, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 661, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 666, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 672, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 677, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 683, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 688, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 716, i32 53 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 721, i32 53 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 726, i32 53 }
@___asan_gen_.290 = private unnamed_addr constant [22 x i8] c"sdhci_tegra_cqhci_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1336, i32 36 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"soc_data_tegra194\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1546, i32 42 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"soc_data_tegra186\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1532, i32 42 }
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"soc_data_tegra210\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1494, i32 42 }
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"soc_data_tegra124\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1463, i32 42 }
@___asan_gen_.305 = private unnamed_addr constant [18 x i8] c"soc_data_tegra114\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1446, i32 42 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"soc_data_tegra30\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1410, i32 42 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"soc_data_tegra20\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1382, i32 42 }
@___asan_gen_.314 = private unnamed_addr constant [21 x i8] c"sdhci_tegra186_pdata\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1522, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant [19 x i8] c"tegra186_sdhci_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1507, i32 31 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 847, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"sdhci_tegra210_pdata\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1484, i32 38 }
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"tegra210_sdhci_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1469, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"sdhci_tegra124_pdata\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1452, i32 38 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"tegra114_sdhci_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1420, i32 31 }
@___asan_gen_.341 = private unnamed_addr constant [21 x i8] c"sdhci_tegra114_pdata\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1435, i32 38 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c"sdhci_tegra30_pdata\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1390, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [16 x i8] c"tegra_sdhci_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1359, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c"sdhci_tegra20_pdata\00", align 1
@___asan_gen_.351 = private constant [34 x i8] c"../drivers/mmc/host/sdhci-tegra.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1373, i32 38 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_sdhci_tegra_driver_exit, ptr @__initcall__kmod_sdhci_tegra__306_1892_sdhci_tegra_driver_init6, ptr @sdhci_tegra_driver_exit, ptr @sdhci_tegra_probe._entry, ptr @sdhci_tegra_probe._entry.14, ptr @sdhci_tegra_probe._entry.8, ptr @sdhci_tegra_probe._entry_ptr, ptr @sdhci_tegra_probe._entry_ptr.11, ptr @sdhci_tegra_probe._entry_ptr.16, ptr @tegra_sdhci_hs400_dll_cal._entry, ptr @tegra_sdhci_hs400_dll_cal._entry_ptr, ptr @tegra_sdhci_init_pinctrl_info._entry, ptr @tegra_sdhci_init_pinctrl_info._entry.25, ptr @tegra_sdhci_init_pinctrl_info._entry_ptr, ptr @tegra_sdhci_init_pinctrl_info._entry_ptr.27, ptr @tegra_sdhci_pad_autocalib._entry, ptr @tegra_sdhci_pad_autocalib._entry.38, ptr @tegra_sdhci_pad_autocalib._entry_ptr, ptr @tegra_sdhci_pad_autocalib._entry_ptr.40, ptr @tegra_sdhci_parse_pad_autocal_dt._entry, ptr @tegra_sdhci_parse_pad_autocal_dt._entry.59, ptr @tegra_sdhci_parse_pad_autocal_dt._entry.62, ptr @tegra_sdhci_parse_pad_autocal_dt._entry.66, ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr, ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.60, ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.64, ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.67, ptr @tegra_sdhci_set_clock._entry, ptr @tegra_sdhci_set_clock._entry_ptr, ptr @tegra_sdhci_set_padctrl._entry, ptr @tegra_sdhci_set_padctrl._entry.30, ptr @tegra_sdhci_set_padctrl._entry.33, ptr @tegra_sdhci_set_padctrl._entry_ptr, ptr @tegra_sdhci_set_padctrl._entry_ptr.32, ptr @tegra_sdhci_set_padctrl._entry_ptr.35, ptr @sdhci_tegra_driver, ptr @.str, ptr @sdhci_tegra_dt_match, ptr @sdhci_tegra_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @sdhci_tegra_cqhci_ops, ptr @soc_data_tegra194, ptr @soc_data_tegra186, ptr @soc_data_tegra210, ptr @soc_data_tegra124, ptr @soc_data_tegra114, ptr @soc_data_tegra30, ptr @soc_data_tegra20, ptr @sdhci_tegra186_pdata, ptr @tegra186_sdhci_ops, ptr @.str.71, ptr @.str.72, ptr @sdhci_tegra210_pdata, ptr @tegra210_sdhci_ops, ptr @sdhci_tegra124_pdata, ptr @tegra114_sdhci_ops, ptr @sdhci_tegra114_pdata, ptr @sdhci_tegra30_pdata, ptr @tegra_sdhci_ops, ptr @sdhci_tegra20_pdata], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_dt_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_init_pinctrl_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_init_pinctrl_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_set_padctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_set_padctrl._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_set_padctrl._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_pad_autocalib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_pad_autocalib._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_parse_pad_autocal_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_parse_pad_autocal_dt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_parse_pad_autocal_dt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_parse_pad_autocal_dt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra186_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_hs400_dll_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra210_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra124_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra114_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra30_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_tegra20_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_tegra_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_tegra_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_tegra_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_tegra_dt_match, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %3, i32 noundef 120) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 81
  %private.i209 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 21
  %ddr_signaling = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i209, i32 0, i32 3
  %5 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ddr_signaling, align 4
  %pad_calib_required = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i209, i32 0, i32 4
  %6 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pad_calib_required, align 1
  %pad_control_available = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i209, i32 0, i32 5
  %7 = ptrtoint ptr %pad_control_available to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pad_control_available, align 2
  %8 = ptrtoint ptr %private.i209 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %private.i209, align 8
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvquirks, align 8
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end5.if.end11_crit_edge, label %if.then10

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 10
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps2, align 4
  %or = or i32 %14, 268435456
  store i32 %or, ptr %caps2, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end5.if.end11_crit_edge
  %15 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nvquirks, align 8
  %and13 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end20_crit_edge, label %if.then15

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end11
  %call17 = tail call fastcc i32 @tegra_sdhci_init_pinctrl_info(ptr noundef %dev, ptr noundef %private.i209)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 11, i32 10
  %17 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdhci_tegra_start_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %18 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nvquirks, align 8
  %and22 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %request = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tegra_sdhci_request, ptr %request, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 11, i32 18
  %21 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tegra_sdhci_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 9
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %platform_execute_tuning = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %platform_execute_tuning to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_execute_tuning, align 4
  %tobool28.not = icmp eq ptr %25, null
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 11, i32 12
  %26 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tegra_sdhci_execute_hw_tuning, ptr %execute_tuning, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %mmc32 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 10
  %27 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc32, align 8
  %call33 = tail call i32 @mmc_of_parse(ptr noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_parse_dt_crit_edge

if.end31.err_parse_dt_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_parse_dt

if.end36:                                         ; preds = %if.end31
  %29 = ptrtoint ptr %private.i209 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i209, align 8
  %nvquirks38 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nvquirks38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nvquirks38, align 8
  %and39 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end36.if.end44_crit_edge, label %if.then41

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc32, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps, align 32
  %or43 = or i32 %36, 4096
  store i32 %or43, ptr %caps, align 32
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end36.if.end44_crit_edge
  %37 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc32, align 8
  %caps46 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %caps46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps46, align 32
  %or47 = or i32 %40, 4194816
  store i32 %or47, ptr %caps46, align 32
  %41 = load ptr, ptr %mmc32, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %43, ptr noundef nonnull @.str.46) #9
  %spec.select.i = zext i1 %call.i.i to i8
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 17, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select.i, ptr %44, align 4
  %autocal_offsets.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 4
  %46 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc32, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 128
  %call.i.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %49, ptr noundef nonnull @.str.47, ptr noundef %autocal_offsets.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end44.if.end.i.i_crit_edge, label %if.then.i.i

if.end44.if.end.i.i_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %autocal_offsets.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %autocal_offsets.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end44.if.end.i.i_crit_edge
  %51 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmc32, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 128
  %pull_down_3v3.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 5
  %call.i204.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %54, ptr noundef nonnull @.str.48, ptr noundef %pull_down_3v3.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i204.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %pull_down_3v3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pull_down_3v3.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %56 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc32, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 128
  %pull_up_1v8.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 8
  %call.i205.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %59, ptr noundef nonnull @.str.49, ptr noundef %pull_up_1v8.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i205.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %if.then15.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %pull_up_1v8.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %pull_up_1v8.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then15.i.i, %if.end10.i.i.if.end17.i.i_crit_edge
  %61 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmc32, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  %pull_down_1v8.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 9
  %call.i206.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %64, ptr noundef nonnull @.str.50, ptr noundef %pull_down_1v8.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206.i.i)
  %tobool21.not.i.i = icmp eq i32 %call.i206.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end17.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

if.end17.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %pull_down_1v8.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %pull_down_1v8.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end17.i.i.if.end24.i.i_crit_edge
  %66 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmc32, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 128
  %pull_up_sdr104.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 12
  %call.i207.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %69, ptr noundef nonnull @.str.51, ptr noundef %pull_up_sdr104.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i207.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %if.then29.i.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %pull_up_1v8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pull_up_1v8.i.i, align 4
  %72 = ptrtoint ptr %pull_up_sdr104.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pull_up_sdr104.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then29.i.i, %if.end24.i.i.if.end32.i.i_crit_edge
  %73 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc32, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  %pull_down_sdr104.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 13
  %call.i208.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %76, ptr noundef nonnull @.str.52, ptr noundef %pull_down_sdr104.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i.i)
  %tobool36.not.i.i = icmp eq i32 %call.i208.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end32.i.i.if.end40.i.i_crit_edge, label %if.then37.i.i

if.end32.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %pull_down_1v8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pull_down_1v8.i.i, align 4
  %79 = ptrtoint ptr %pull_down_sdr104.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %pull_down_sdr104.i.i, align 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then37.i.i, %if.end32.i.i.if.end40.i.i_crit_edge
  %80 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmc32, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 128
  %pull_up_hs400.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 13, i32 1
  %call.i209.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %83, ptr noundef nonnull @.str.53, ptr noundef %pull_up_hs400.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i.i)
  %tobool44.not.i.i = icmp eq i32 %call.i209.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

if.end40.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %pull_up_1v8.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pull_up_1v8.i.i, align 4
  %86 = ptrtoint ptr %pull_up_hs400.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %pull_up_hs400.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.end40.i.i.if.end48.i.i_crit_edge
  %87 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmc32, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 128
  %pull_down_hs400.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 14
  %call.i210.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %90, ptr noundef nonnull @.str.54, ptr noundef %pull_down_hs400.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210.i.i)
  %tobool52.not.i.i = icmp eq i32 %call.i210.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end48.i.i.if.end56.i.i_crit_edge, label %if.then53.i.i

if.end48.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i.i

if.then53.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %pull_down_1v8.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pull_down_1v8.i.i, align 4
  %93 = ptrtoint ptr %pull_down_hs400.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pull_down_hs400.i.i, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then53.i.i, %if.end48.i.i.if.end56.i.i_crit_edge
  %94 = ptrtoint ptr %private.i209 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %private.i209, align 8
  %nvquirks.i.i = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %nvquirks.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nvquirks.i.i, align 8
  %and.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end56.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge, label %if.end59.i.i

if.end56.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_parse_pad_autocal_dt.exit.i

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %98 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmc32, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 128
  %pull_up_3v3_timeout.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 6
  %call.i211.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %101, ptr noundef nonnull @.str.55, ptr noundef %pull_up_3v3_timeout.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i.i)
  %tobool63.not.i.i = icmp eq i32 %call.i211.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end59.i.i.if.end72.i.i_crit_edge, label %if.then64.i.i

if.end59.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i.i

if.then64.i.i:                                    ; preds = %if.end59.i.i
  %pinctrl_state_3v3.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13
  %102 = ptrtoint ptr %pinctrl_state_3v3.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pinctrl_state_3v3.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then64.i.i.if.end70.i.i_crit_edge, label %land.lhs.true.i.i

if.then64.i.i.if.end70.i.i_crit_edge:             ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i.i

land.lhs.true.i.i:                                ; preds = %if.then64.i.i
  %pinctrl_state_3v3_drv.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 2
  %104 = ptrtoint ptr %pinctrl_state_3v3_drv.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pinctrl_state_3v3_drv.i.i, align 8
  %cmp.i.i = icmp eq ptr %105, null
  br i1 %cmp.i.i, label %do.end.i.i, label %land.lhs.true.i.i.if.end70.i.i_crit_edge

land.lhs.true.i.i.if.end70.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %106 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmc32, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i.i = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %class_dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %111, %if.end.i.i.i ], [ %109, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  %call69.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %retval.0.i.i.i) #12
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %dev_name.exit.i.i, %land.lhs.true.i.i.if.end70.i.i_crit_edge, %if.then64.i.i.if.end70.i.i_crit_edge
  %112 = ptrtoint ptr %pull_up_3v3_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %pull_up_3v3_timeout.i.i, align 4
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.end70.i.i, %if.end59.i.i.if.end72.i.i_crit_edge
  %113 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmc32, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 128
  %pull_down_3v3_timeout.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 7
  %call.i212.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %116, ptr noundef nonnull @.str.58, ptr noundef %pull_down_3v3_timeout.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212.i.i)
  %tobool76.not.i.i = icmp eq i32 %call.i212.i.i, 0
  br i1 %tobool76.not.i.i, label %if.end72.i.i.if.end94.i.i_crit_edge, label %if.then77.i.i

if.end72.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i.i

if.then77.i.i:                                    ; preds = %if.end72.i.i
  %pinctrl_state_3v378.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13
  %117 = ptrtoint ptr %pinctrl_state_3v378.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pinctrl_state_3v378.i.i, align 8
  %cmp.i213.i.i = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213.i.i, label %if.then77.i.i.if.end92.i.i_crit_edge, label %land.lhs.true80.i.i

if.then77.i.i.if.end92.i.i_crit_edge:             ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

land.lhs.true80.i.i:                              ; preds = %if.then77.i.i
  %pinctrl_state_3v3_drv81.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 2
  %119 = ptrtoint ptr %pinctrl_state_3v3_drv81.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pinctrl_state_3v3_drv81.i.i, align 8
  %cmp82.i.i = icmp eq ptr %120, null
  br i1 %cmp82.i.i, label %do.end86.i.i, label %land.lhs.true80.i.i.if.end92.i.i_crit_edge

land.lhs.true80.i.i.if.end92.i.i_crit_edge:       ; preds = %land.lhs.true80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i.i

do.end86.i.i:                                     ; preds = %land.lhs.true80.i.i
  %121 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmc32, align 8
  %init_name.i214.i.i = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 1, i32 3
  %123 = ptrtoint ptr %init_name.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %init_name.i214.i.i, align 8
  %tobool.not.i215.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i215.i.i, label %if.end.i216.i.i, label %do.end86.i.i.dev_name.exit218.i.i_crit_edge

do.end86.i.i.dev_name.exit218.i.i_crit_edge:      ; preds = %do.end86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit218.i.i

if.end.i216.i.i:                                  ; preds = %do.end86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev89.i.i = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %class_dev89.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %class_dev89.i.i, align 4
  br label %dev_name.exit218.i.i

dev_name.exit218.i.i:                             ; preds = %if.end.i216.i.i, %do.end86.i.i.dev_name.exit218.i.i_crit_edge
  %retval.0.i217.i.i = phi ptr [ %126, %if.end.i216.i.i ], [ %124, %do.end86.i.i.dev_name.exit218.i.i_crit_edge ]
  %call91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %retval.0.i217.i.i) #12
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %dev_name.exit218.i.i, %land.lhs.true80.i.i.if.end92.i.i_crit_edge, %if.then77.i.i.if.end92.i.i_crit_edge
  %127 = ptrtoint ptr %pull_down_3v3_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %pull_down_3v3_timeout.i.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.end92.i.i, %if.end72.i.i.if.end94.i.i_crit_edge
  %128 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmc32, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 128
  %pull_up_1v8_timeout.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 10
  %call.i219.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %131, ptr noundef nonnull @.str.61, ptr noundef %pull_up_1v8_timeout.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219.i.i)
  %tobool98.not.i.i = icmp eq i32 %call.i219.i.i, 0
  br i1 %tobool98.not.i.i, label %if.end94.i.i.if.end114.i.i_crit_edge, label %if.then99.i.i

if.end94.i.i.if.end114.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i.i

if.then99.i.i:                                    ; preds = %if.end94.i.i
  %pinctrl_state_1v8.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 1
  %132 = ptrtoint ptr %pinctrl_state_1v8.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pinctrl_state_1v8.i.i, align 4
  %cmp.i220.i.i = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220.i.i, label %if.then99.i.i.if.end112.i.i_crit_edge, label %land.lhs.true101.i.i

if.then99.i.i.if.end112.i.i_crit_edge:            ; preds = %if.then99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i.i

land.lhs.true101.i.i:                             ; preds = %if.then99.i.i
  %pinctrl_state_1v8_drv.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 3
  %134 = ptrtoint ptr %pinctrl_state_1v8_drv.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pinctrl_state_1v8_drv.i.i, align 4
  %cmp102.i.i = icmp eq ptr %135, null
  br i1 %cmp102.i.i, label %do.end106.i.i, label %land.lhs.true101.i.i.if.end112.i.i_crit_edge

land.lhs.true101.i.i.if.end112.i.i_crit_edge:     ; preds = %land.lhs.true101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i.i

do.end106.i.i:                                    ; preds = %land.lhs.true101.i.i
  %136 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmc32, align 8
  %init_name.i221.i.i = getelementptr inbounds %struct.mmc_host, ptr %137, i32 0, i32 1, i32 3
  %138 = ptrtoint ptr %init_name.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_name.i221.i.i, align 8
  %tobool.not.i222.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i222.i.i, label %if.end.i223.i.i, label %do.end106.i.i.dev_name.exit225.i.i_crit_edge

do.end106.i.i.dev_name.exit225.i.i_crit_edge:     ; preds = %do.end106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit225.i.i

if.end.i223.i.i:                                  ; preds = %do.end106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev109.i.i = getelementptr inbounds %struct.mmc_host, ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %class_dev109.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %class_dev109.i.i, align 4
  br label %dev_name.exit225.i.i

dev_name.exit225.i.i:                             ; preds = %if.end.i223.i.i, %do.end106.i.i.dev_name.exit225.i.i_crit_edge
  %retval.0.i224.i.i = phi ptr [ %141, %if.end.i223.i.i ], [ %139, %do.end106.i.i.dev_name.exit225.i.i_crit_edge ]
  %call111.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %retval.0.i224.i.i) #12
  br label %if.end112.i.i

if.end112.i.i:                                    ; preds = %dev_name.exit225.i.i, %land.lhs.true101.i.i.if.end112.i.i_crit_edge, %if.then99.i.i.if.end112.i.i_crit_edge
  %142 = ptrtoint ptr %pull_up_1v8_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %pull_up_1v8_timeout.i.i, align 4
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %if.end112.i.i, %if.end94.i.i.if.end114.i.i_crit_edge
  %143 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmc32, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 128
  %pull_down_1v8_timeout.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 11
  %call.i226.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %146, ptr noundef nonnull @.str.65, ptr noundef %pull_down_1v8_timeout.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226.i.i)
  %tobool118.not.i.i = icmp eq i32 %call.i226.i.i, 0
  br i1 %tobool118.not.i.i, label %if.end114.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge, label %if.then119.i.i

if.end114.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge: ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_parse_pad_autocal_dt.exit.i

if.then119.i.i:                                   ; preds = %if.end114.i.i
  %pinctrl_state_1v8120.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 1
  %147 = ptrtoint ptr %pinctrl_state_1v8120.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pinctrl_state_1v8120.i.i, align 4
  %cmp.i227.i.i = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227.i.i, label %if.then119.i.i.if.end134.i.i_crit_edge, label %land.lhs.true122.i.i

if.then119.i.i.if.end134.i.i_crit_edge:           ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i.i

land.lhs.true122.i.i:                             ; preds = %if.then119.i.i
  %pinctrl_state_1v8_drv123.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 3
  %149 = ptrtoint ptr %pinctrl_state_1v8_drv123.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pinctrl_state_1v8_drv123.i.i, align 4
  %cmp124.i.i = icmp eq ptr %150, null
  br i1 %cmp124.i.i, label %do.end128.i.i, label %land.lhs.true122.i.i.if.end134.i.i_crit_edge

land.lhs.true122.i.i.if.end134.i.i_crit_edge:     ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i.i

do.end128.i.i:                                    ; preds = %land.lhs.true122.i.i
  %151 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmc32, align 8
  %init_name.i228.i.i = getelementptr inbounds %struct.mmc_host, ptr %152, i32 0, i32 1, i32 3
  %153 = ptrtoint ptr %init_name.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i228.i.i, align 8
  %tobool.not.i229.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i229.i.i, label %if.end.i230.i.i, label %do.end128.i.i.dev_name.exit232.i.i_crit_edge

do.end128.i.i.dev_name.exit232.i.i_crit_edge:     ; preds = %do.end128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit232.i.i

if.end.i230.i.i:                                  ; preds = %do.end128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev131.i.i = getelementptr inbounds %struct.mmc_host, ptr %152, i32 0, i32 1
  %155 = ptrtoint ptr %class_dev131.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %class_dev131.i.i, align 4
  br label %dev_name.exit232.i.i

dev_name.exit232.i.i:                             ; preds = %if.end.i230.i.i, %do.end128.i.i.dev_name.exit232.i.i_crit_edge
  %retval.0.i231.i.i = phi ptr [ %156, %if.end.i230.i.i ], [ %154, %do.end128.i.i.dev_name.exit232.i.i_crit_edge ]
  %call133.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %retval.0.i231.i.i) #12
  br label %if.end134.i.i

if.end134.i.i:                                    ; preds = %dev_name.exit232.i.i, %land.lhs.true122.i.i.if.end134.i.i_crit_edge, %if.then119.i.i.if.end134.i.i_crit_edge
  %157 = ptrtoint ptr %pull_down_1v8_timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %pull_down_1v8_timeout.i.i, align 4
  br label %tegra_sdhci_parse_pad_autocal_dt.exit.i

tegra_sdhci_parse_pad_autocal_dt.exit.i:          ; preds = %if.end134.i.i, %if.end114.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge, %if.end56.i.i.tegra_sdhci_parse_pad_autocal_dt.exit.i_crit_edge
  %158 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmc32, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 128
  %default_tap.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 17
  %call.i.i10.i = tail call i32 @device_property_read_u32_array(ptr noundef %161, ptr noundef nonnull @.str.68, ptr noundef %default_tap.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i.i10.i, 0
  br i1 %tobool.not.i11.i, label %tegra_sdhci_parse_pad_autocal_dt.exit.i.if.end.i14.i_crit_edge, label %if.then.i12.i

tegra_sdhci_parse_pad_autocal_dt.exit.i.if.end.i14.i_crit_edge: ; preds = %tegra_sdhci_parse_pad_autocal_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i14.i

if.then.i12.i:                                    ; preds = %tegra_sdhci_parse_pad_autocal_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %default_tap.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %default_tap.i.i, align 8
  br label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.then.i12.i, %tegra_sdhci_parse_pad_autocal_dt.exit.i.if.end.i14.i_crit_edge
  %163 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmc32, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 128
  %default_trim.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 17, i32 0, i32 1
  %call.i29.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %166, ptr noundef nonnull @.str.69, ptr noundef %default_trim.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool7.not.i13.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool7.not.i13.i, label %if.end.i14.i.if.end10.i17.i_crit_edge, label %if.then8.i15.i

if.end.i14.i.if.end10.i17.i_crit_edge:            ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i17.i

if.then8.i15.i:                                   ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %default_trim.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %default_trim.i.i, align 4
  br label %if.end10.i17.i

if.end10.i17.i:                                   ; preds = %if.then8.i15.i, %if.end.i14.i.if.end10.i17.i_crit_edge
  %168 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmc32, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 128
  %dqs_trim.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 13, i32 17, i32 1
  %call.i30.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %171, ptr noundef nonnull @.str.70, ptr noundef %dqs_trim.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool14.not.i16.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool14.not.i16.i, label %if.end10.i17.i.tegra_sdhci_parse_dt.exit_crit_edge, label %if.then15.i18.i

if.end10.i17.i.tegra_sdhci_parse_dt.exit_crit_edge: ; preds = %if.end10.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_parse_dt.exit

if.then15.i18.i:                                  ; preds = %if.end10.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %dqs_trim.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 17, ptr %dqs_trim.i.i, align 8
  br label %tegra_sdhci_parse_dt.exit

tegra_sdhci_parse_dt.exit:                        ; preds = %if.then15.i18.i, %if.end10.i17.i.tegra_sdhci_parse_dt.exit_crit_edge
  %call49 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #9
  %power_gpio = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 22
  %173 = ptrtoint ptr %power_gpio to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call49, ptr %power_gpio, align 4
  %cmp.i210 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then52, label %if.end55

if.then52:                                        ; preds = %tegra_sdhci_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %call49 to i32
  br label %err_parse_dt

if.end55:                                         ; preds = %tegra_sdhci_parse_dt.exit
  %175 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nvquirks, align 8
  %and57 = and i32 %176, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end79_crit_edge, label %if.then59

if.end55.if.end79_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then59:                                        ; preds = %if.end55
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %cmp.i211 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then63, label %if.then59.if.end69_crit_edge

if.then59.if.end69_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then63:                                        ; preds = %if.then59
  %cmp65 = icmp eq ptr %call61, inttoptr (i32 -517 to ptr)
  br i1 %cmp65, label %if.then63.err_parse_dt_crit_edge, label %do.end

if.then63.err_parse_dt_crit_edge:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_parse_dt

do.end:                                           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %call61 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %177) #12
  br label %if.end69

if.end69:                                         ; preds = %do.end, %if.then59.if.end69_crit_edge
  %clk.0 = phi ptr [ null, %do.end ], [ %call61, %if.then59.if.end69_crit_edge ]
  %call70 = tail call i32 @clk_set_rate(ptr noundef %clk.0, i32 noundef 12000000) #9
  %call71 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %clk.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call71) #12
  br label %err_parse_dt

if.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %tmclk = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 23
  %178 = ptrtoint ptr %tmclk to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %clk.0, ptr %tmclk, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end55.if.end79_crit_edge
  %179 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmc32, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 128
  %call81 = tail call ptr @devm_clk_get(ptr noundef %182, ptr noundef null) #9
  %cmp.i212 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %call81 to i32
  %call86 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %183, ptr noundef nonnull @.str.12) #9
  br label %err_clk_get

if.end87:                                         ; preds = %if.end79
  %184 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call81, ptr %private.i, align 128
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 12
  %185 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i, ptr %rst, align 8
  %cmp.i213 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then93, label %if.end100

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %186) #12
  br label %err_clk_get

if.end100:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #9
  %187 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %opp_params.i, align 1
  %call.i214 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i214)
  %cmp.not.i = icmp eq i32 %call.i214, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i214
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool103.not = icmp eq i32 %.call.i, 0
  br i1 %tobool103.not, label %if.end105, label %if.end100.err_clk_get_crit_edge

if.end100.err_clk_get_crit_edge:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_get

if.end105:                                        ; preds = %if.end100
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call108 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end105.err_pm_get_crit_edge

if.end105.err_pm_get_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_get

if.end111:                                        ; preds = %if.end105
  %188 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rst, align 8
  %call113 = call i32 @reset_control_assert(ptr noundef %189) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.err_rst_assert_crit_edge

if.end111.err_rst_assert_crit_edge:               ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rst_assert

if.end116:                                        ; preds = %if.end111
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #9
  %190 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rst, align 8
  %call118 = call i32 @reset_control_deassert(ptr noundef %191) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end116.err_rst_assert_crit_edge

if.end116.err_rst_assert_crit_edge:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rst_assert

if.end121:                                        ; preds = %if.end116
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #9
  %call122 = call fastcc i32 @sdhci_tegra_add_host(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end121.cleanup_crit_edge, label %err_add_host

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_add_host:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rst, align 8
  %call127 = call i32 @reset_control_assert(ptr noundef %193) #9
  br label %err_rst_assert

err_rst_assert:                                   ; preds = %err_add_host, %if.end116.err_rst_assert_crit_edge, %if.end111.err_rst_assert_crit_edge
  %rc.0 = phi i32 [ %call113, %if.end111.err_rst_assert_crit_edge ], [ %call118, %if.end116.err_rst_assert_crit_edge ], [ %call122, %err_add_host ]
  %call.i215 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #9
  br label %err_pm_get

err_pm_get:                                       ; preds = %err_rst_assert, %if.end105.err_pm_get_crit_edge
  %rc.1 = phi i32 [ %call108, %if.end105.err_pm_get_crit_edge ], [ %rc.0, %err_rst_assert ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %err_clk_get

err_clk_get:                                      ; preds = %err_pm_get, %if.end100.err_clk_get_crit_edge, %if.then93, %if.then83
  %rc.2 = phi i32 [ %call86, %if.then83 ], [ %186, %if.then93 ], [ %.call.i, %if.end100.err_clk_get_crit_edge ], [ %rc.1, %err_pm_get ]
  %tmclk131 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 23
  %194 = ptrtoint ptr %tmclk131 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %tmclk131, align 8
  call void @clk_disable(ptr noundef %195) #9
  call void @clk_unprepare(ptr noundef %195) #9
  br label %err_parse_dt

err_parse_dt:                                     ; preds = %err_clk_get, %do.end76, %if.then63.err_parse_dt_crit_edge, %if.then52, %if.end31.err_parse_dt_crit_edge
  %rc.3 = phi i32 [ %call33, %if.end31.err_parse_dt_crit_edge ], [ %174, %if.then52 ], [ -517, %if.then63.err_parse_dt_crit_edge ], [ %call71, %do.end76 ], [ %rc.2, %err_clk_get ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_parse_dt, %if.end121.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %rc.3, %err_parse_dt ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 0) #9
  %rst = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 8
  %call3 = tail call i32 @reset_control_assert(ptr noundef %3) #9
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #9
  %call6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  %tmclk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %4 = ptrtoint ptr %tmclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmclk, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sdhci_init_pinctrl_info(ptr noundef %dev, ptr nocapture noundef %tegra_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #9
  %pinctrl_sdmmc = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 7
  %0 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pinctrl_sdmmc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_sdhci_init_pinctrl_info.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_sdhci_init_pinctrl_info, %if.then6)) #9
          to label %return [label %if.then6], !srcloc !194

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pinctrl_sdmmc, align 4
  %3 = ptrtoint ptr %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_sdhci_init_pinctrl_info.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %3) #9
  br label %return

if.end9:                                          ; preds = %entry
  %call11 = tail call ptr @pinctrl_lookup_state(ptr noundef %call, ptr noundef nonnull @.str.20) #9
  %pinctrl_state_1v8_drv = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 11
  %cmp = icmp eq ptr %call11, inttoptr (i32 -19 to ptr)
  %spec.store.select = select i1 %cmp, ptr null, ptr %call11
  %4 = ptrtoint ptr %pinctrl_state_1v8_drv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select, ptr %pinctrl_state_1v8_drv, align 4
  %5 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinctrl_sdmmc, align 4
  %call22 = tail call ptr @pinctrl_lookup_state(ptr noundef %6, ptr noundef nonnull @.str.21) #9
  %pinctrl_state_3v3_drv = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 10
  %cmp28 = icmp eq ptr %call22, inttoptr (i32 -19 to ptr)
  %spec.store.select83 = select i1 %cmp28, ptr null, ptr %call22
  %7 = ptrtoint ptr %pinctrl_state_3v3_drv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.store.select83, ptr %pinctrl_state_3v3_drv, align 8
  %8 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinctrl_sdmmc, align 4
  %call34 = tail call ptr @pinctrl_lookup_state(ptr noundef %9, ptr noundef nonnull @.str.22) #9
  %pinctrl_state_3v3 = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 8
  %10 = ptrtoint ptr %pinctrl_state_3v3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %pinctrl_state_3v3, align 8
  %cmp.i79 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call34 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %11) #12
  br label %return

if.end42:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pinctrl_sdmmc, align 4
  %call44 = tail call ptr @pinctrl_lookup_state(ptr noundef %13, ptr noundef nonnull @.str.24) #9
  %pinctrl_state_1v8 = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 9
  %14 = ptrtoint ptr %pinctrl_state_1v8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call44, ptr %pinctrl_state_1v8, align 4
  %cmp.i80 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call44 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %15) #12
  br label %return

if.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %pad_control_available = getelementptr inbounds %struct.sdhci_tegra, ptr %tegra_host, i32 0, i32 5
  %16 = ptrtoint ptr %pad_control_available to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pad_control_available, align 2
  br label %return

return:                                           ; preds = %if.end52, %do.end49, %do.end39, %if.then6, %do.body
  %retval.0 = phi i32 [ -1, %do.end39 ], [ -1, %do.end49 ], [ 0, %if.end52 ], [ -1, %if.then6 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i46 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end25_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then15
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %pad_control_available.i = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i46, i32 0, i32 5
  %3 = ptrtoint ptr %pad_control_available.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pad_control_available.i, align 2, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool38.not.i = icmp eq i8 %4, 0
  br i1 %tobool38.not.i, label %if.then.if.end_crit_edge, label %if.end40.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end40.i:                                       ; preds = %if.then
  %pinctrl_sdmmc44.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 3
  %5 = ptrtoint ptr %pinctrl_sdmmc44.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinctrl_sdmmc44.i, align 4
  %pinctrl_state_3v3.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4
  %7 = ptrtoint ptr %pinctrl_state_3v3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pinctrl_state_3v3.i, align 8
  %call57.i = tail call i32 @pinctrl_select_state(ptr noundef %6, ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %tegra_sdhci_set_padctrl.exit, label %if.end40.i.if.end_crit_edge

if.end40.i.if.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

tegra_sdhci_set_padctrl.exit:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmc64.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %9 = ptrtoint ptr %mmc64.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc64.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %call57.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end40.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %call10 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #9
  br label %if.end25

if.then15:                                        ; preds = %entry
  %call16 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.end20

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %pad_control_available.i48 = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i46, i32 0, i32 5
  %13 = ptrtoint ptr %pad_control_available.i48 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pad_control_available.i48, align 2, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool38.not.i49 = icmp eq i8 %14, 0
  br i1 %tobool38.not.i49, label %if.end20.if.end25_crit_edge, label %if.end40.i51

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end40.i51:                                     ; preds = %if.end20
  %15 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp41.i = icmp eq i8 %16, 1
  %pinctrl_sdmmc44.i50 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 3
  %17 = ptrtoint ptr %pinctrl_sdmmc44.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pinctrl_sdmmc44.i50, align 4
  br i1 %cmp41.i, label %if.then43.i, label %if.else55.i

if.then43.i:                                      ; preds = %if.end40.i51
  %pinctrl_state_1v8.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %pinctrl_state_1v8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pinctrl_state_1v8.i, align 4
  %call45.i = tail call i32 @pinctrl_select_state(ptr noundef %18, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %do.end51.i, label %if.then43.i.if.end25_crit_edge

if.then43.i.if.end25_crit_edge:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end51.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmc52.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %21 = ptrtoint ptr %mmc52.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc52.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.31, i32 noundef %call45.i) #12
  br label %if.end25

if.else55.i:                                      ; preds = %if.end40.i51
  %pinctrl_state_3v3.i52 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4
  %25 = ptrtoint ptr %pinctrl_state_3v3.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pinctrl_state_3v3.i52, align 8
  %call57.i53 = tail call i32 @pinctrl_select_state(ptr noundef %18, ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i53)
  %cmp58.i54 = icmp slt i32 %call57.i53, 0
  br i1 %cmp58.i54, label %do.end63.i56, label %if.else55.i.if.end25_crit_edge

if.else55.i.if.end25_crit_edge:                   ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end63.i56:                                     ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmc64.i55 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %27 = ptrtoint ptr %mmc64.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc64.i55, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.34, i32 noundef %call57.i53) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end63.i56, %if.else55.i.if.end25_crit_edge, %do.end51.i, %if.then43.i.if.end25_crit_edge, %if.end20.if.end25_crit_edge, %if.end, %entry.if.end25_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end ], [ 0, %entry.if.end25_crit_edge ], [ 0, %if.end20.if.end25_crit_edge ], [ %call45.i, %do.end51.i ], [ %call45.i, %if.then43.i.if.end25_crit_edge ], [ %call57.i53, %do.end63.i56 ], [ %call57.i53, %if.else55.i.if.end25_crit_edge ]
  %pad_calib_required = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i46, i32 0, i32 4
  %31 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pad_calib_required, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %if.end25.cleanup_crit_edge, label %if.then26

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %private.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end25.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %tegra_sdhci_set_padctrl.exit
  %retval.0 = phi i32 [ %call57.i, %tegra_sdhci_set_padctrl.exit ], [ %call16, %if.then15.cleanup_crit_edge ], [ %ret.0, %if.then26 ], [ %ret.0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i64 @ktime_get() #9
  %last_calib = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 48
  %0 = ptrtoint ptr %last_calib to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last_calib, align 8
  %sub = sub i64 %call3, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #9
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %2) #13, !srcloc !196
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %2, i64 %3, i32 0) #13, !srcloc !197
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %cond213.i.i)
  %cmp = icmp sgt i64 %cond213.i.i, 100
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %private.i)
  %call5 = tail call i64 @ktime_get() #9
  %5 = ptrtoint ptr %last_calib to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call5, ptr %last_calib, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sdhci_request(ptr noundef %mmc, ptr noundef %mrq) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 260) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %8 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhanced_strobe, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %retval.0.i, -2147483648
  tail call void @tegra_sdhci_set_clock(ptr noundef %private.i, i32 noundef 200000000)
  br label %if.end

if.else:                                          ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %retval.0.i, 2147483647
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i7 = icmp eq ptr %13, null
  br i1 %tobool.not.i7, label %do.body.i, label %if.then.i8, !prof !198

if.then.i8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %private.i, i32 noundef %val.0, i32 noundef 260) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  %ioaddr.i9 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ioaddr.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i9, align 16
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %14) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_execute_hw_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %call1 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tuning_err = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 27, i32 0, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %tuning_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuning_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_sdhci_post_tuning(ptr noundef %private.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !204
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_tegra_add_host(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_hwcq = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 2
  %0 = ptrtoint ptr %enable_hwcq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_hwcq, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @sdhci_add_host(ptr noundef %host) #9
  br label %cleanup27

if.end:                                           ; preds = %entry
  tail call void @sdhci_enable_v4_mode(ptr noundef %host) #9
  %call3 = tail call i32 @sdhci_setup_host(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end6:                                          ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %or = or i32 %5, 25165824
  store i32 %or, ptr %caps2, align 4
  %6 = load ptr, ptr %mmc, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 248, i32 noundef 3520) #9
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %10, i32 61440
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %mmio, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sdhci_tegra_cqhci_ops, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps, align 4
  %or15 = or i32 %16, 1
  store i32 %or15, ptr %caps, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 8
  %call19 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i, ptr noundef %18, i1 noundef zeroext %tobool12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = tail call i32 @__sdhci_add_host(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup27_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.cleanup27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end16.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %host) #9
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup, %if.end22.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ %call2, %if.then ], [ %call3, %if.end.cleanup27_crit_edge ], [ 0, %if.end22.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sdhci_set_padctrl(ptr noundef %host, i32 noundef %voltage, i1 noundef zeroext %state_drvupdn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i107 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  br i1 %state_drvupdn, label %if.else37, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 1
  br i1 %cmp, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.then
  %pinctrl_state_1v8_drv = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 3
  %0 = ptrtoint ptr %pinctrl_state_1v8_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pinctrl_state_1v8_drv, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then2.if.then18_crit_edge

if.then2.if.then18_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %pull_up_1v8_timeout = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %pull_down_1v8_timeout = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  br label %if.else24

if.else7:                                         ; preds = %if.then
  %pinctrl_state_3v3_drv = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 2
  %2 = ptrtoint ptr %pinctrl_state_3v3_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinctrl_state_3v3_drv, align 8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.else11, label %if.else7.if.then18_crit_edge

if.else7.if.then18_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  %pull_up_3v3_timeout = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 6
  %pull_down_3v3_timeout = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 7
  br label %if.else24

if.then18:                                        ; preds = %if.else7.if.then18_crit_edge, %if.then2.if.then18_crit_edge
  %pinctrl_drvupdn.0 = phi ptr [ %1, %if.then2.if.then18_crit_edge ], [ %3, %if.else7.if.then18_crit_edge ]
  %pinctrl_sdmmc = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i107, i32 0, i32 7
  %4 = ptrtoint ptr %pinctrl_sdmmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinctrl_sdmmc, align 4
  %call19 = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef nonnull %pinctrl_drvupdn.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %call19) #12
  br label %cleanup

if.else24:                                        ; preds = %if.else11, %if.else
  %drvup.0.ph.in = phi ptr [ %pull_up_3v3_timeout, %if.else11 ], [ %pull_up_1v8_timeout, %if.else ]
  %drvdn.0.ph.in.in = phi ptr [ %pull_down_3v3_timeout, %if.else11 ], [ %pull_down_1v8_timeout, %if.else ]
  %10 = ptrtoint ptr %drvdn.0.ph.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %drvdn.0.ph.in = load i32, ptr %drvdn.0.ph.in.in, align 4
  %drvdn.0.ph = trunc i32 %drvdn.0.ph.in to i8
  %11 = ptrtoint ptr %drvup.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %drvup.0.ph = load i32, ptr %drvup.0.ph.in, align 4
  %conv25 = and i32 %drvup.0.ph, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv25)
  %tobool26.not = icmp eq i32 %conv25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %drvdn.0.ph)
  %tobool28.not = icmp eq i8 %drvdn.0.ph, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.else24.cleanup_crit_edge, label %if.then29

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.else24
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %15(ptr noundef %host, i32 noundef 480) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %17, i32 480
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %19, %if.else.i ]
  %and = and i32 %retval.0.i, -134213633
  %shl = shl nuw nsw i32 %conv25, 20
  %conv32 = shl i32 %drvdn.0.ph.in, 12
  %shl33 = and i32 %conv32, 1044480
  %or = or i32 %shl, %shl33
  %or34 = or i32 %and, %or
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i109 = icmp eq ptr %23, null
  br i1 %tobool.not.i109, label %do.body.i, label %if.then.i110, !prof !198

if.then.i110:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %host, i32 noundef %or34, i32 noundef 480) #9
  br label %cleanup

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or34) #9
  %ioaddr.i111 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i111 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i111, align 16
  %add.ptr.i112 = getelementptr i8, ptr %26, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %24) #9, !srcloc !202
  br label %cleanup

if.else37:                                        ; preds = %entry
  %pad_control_available = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i107, i32 0, i32 5
  %27 = ptrtoint ptr %pad_control_available to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pad_control_available, align 2, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool38.not = icmp eq i8 %28, 0
  br i1 %tobool38.not, label %if.else37.cleanup_crit_edge, label %if.end40

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp41 = icmp eq i32 %voltage, 1
  %pinctrl_sdmmc44 = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i107, i32 0, i32 7
  %29 = ptrtoint ptr %pinctrl_sdmmc44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pinctrl_sdmmc44, align 4
  br i1 %cmp41, label %if.then43, label %if.else55

if.then43:                                        ; preds = %if.end40
  %pinctrl_state_1v8 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %31 = ptrtoint ptr %pinctrl_state_1v8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pinctrl_state_1v8, align 4
  %call45 = tail call i32 @pinctrl_select_state(ptr noundef %30, ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %mmc52 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %33 = ptrtoint ptr %mmc52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc52, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %call45) #12
  br label %cleanup

if.else55:                                        ; preds = %if.end40
  %pinctrl_state_3v3 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %37 = ptrtoint ptr %pinctrl_state_3v3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pinctrl_state_3v3, align 8
  %call57 = tail call i32 @pinctrl_select_state(ptr noundef %30, ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end63, label %if.else55.cleanup_crit_edge

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end63:                                         ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %mmc64 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %39 = ptrtoint ptr %mmc64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc64, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.34, i32 noundef %call57) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.else55.cleanup_crit_edge, %do.end51, %if.then43.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %do.body.i, %if.then.i110, %if.else24.cleanup_crit_edge, %do.end, %if.then18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else37.cleanup_crit_edge ], [ %call45, %do.end51 ], [ %call45, %if.then43.cleanup_crit_edge ], [ %call57, %do.end63 ], [ %call57, %if.else55.cleanup_crit_edge ], [ %call19, %do.end ], [ %call19, %if.then18.cleanup_crit_edge ], [ 0, %if.else24.cleanup_crit_edge ], [ 0, %if.then.i110 ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_start_signal_voltage_switch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %3, label %sw.default [
    i8 6, label %sw.bb
    i8 10, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %offsets.sroa.9.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13
  %5 = ptrtoint ptr %offsets.sroa.9.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %offsets.sroa.9.0.copyload = load i32, ptr %offsets.sroa.9.0.autocal_offsets.sroa_idx, align 4
  %offsets.sroa.892.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 12
  %6 = ptrtoint ptr %offsets.sroa.892.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %offsets.sroa.892.0.copyload = load i32, ptr %offsets.sroa.892.0.autocal_offsets.sroa_idx, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %offsets.sroa.11.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 14
  %7 = ptrtoint ptr %offsets.sroa.11.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %offsets.sroa.11.0.copyload = load i32, ptr %offsets.sroa.11.0.autocal_offsets.sroa_idx, align 4
  %offsets.sroa.10.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13, i32 1
  %8 = ptrtoint ptr %offsets.sroa.10.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %offsets.sroa.10.0.copyload = load i32, ptr %offsets.sroa.10.0.autocal_offsets.sroa_idx, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %offsets.sroa.7.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 9
  %9 = ptrtoint ptr %offsets.sroa.7.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %offsets.sroa.7.0.copyload = load i32, ptr %offsets.sroa.7.0.autocal_offsets.sroa_idx, align 4
  %offsets.sroa.691.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 8
  %10 = ptrtoint ptr %offsets.sroa.691.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %offsets.sroa.691.0.copyload = load i32, ptr %offsets.sroa.691.0.autocal_offsets.sroa_idx, align 8
  %offsets.sroa.5.0.autocal_offsets.sroa_idx = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %11 = ptrtoint ptr %offsets.sroa.5.0.autocal_offsets.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %offsets.sroa.5.0.copyload = load i32, ptr %offsets.sroa.5.0.autocal_offsets.sroa_idx, align 4
  %autocal_offsets = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 4
  %12 = ptrtoint ptr %autocal_offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %offsets.sroa.0.0.copyload = load i32, ptr %autocal_offsets, align 8
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 8
  %13 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  %offsets.sroa.7.0.copyload.offsets.sroa.5.0.copyload = select i1 %cmp, i32 %offsets.sroa.7.0.copyload, i32 %offsets.sroa.5.0.copyload
  %offsets.sroa.691.0.copyload.offsets.sroa.0.0.copyload = select i1 %cmp, i32 %offsets.sroa.691.0.copyload, i32 %offsets.sroa.0.0.copyload
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %offsets.sroa.7.0.copyload.sink = phi i32 [ %offsets.sroa.11.0.copyload, %sw.bb4 ], [ %offsets.sroa.9.0.copyload, %sw.bb ], [ %offsets.sroa.7.0.copyload.offsets.sroa.5.0.copyload, %sw.default ]
  %offsets.sroa.691.0.copyload.sink = phi i32 [ %offsets.sroa.10.0.copyload, %sw.bb4 ], [ %offsets.sroa.892.0.copyload, %sw.bb ], [ %offsets.sroa.691.0.copyload.offsets.sroa.0.0.copyload, %sw.default ]
  %shl10 = shl i32 %offsets.sroa.7.0.copyload.sink, 8
  %or11 = or i32 %shl10, %offsets.sroa.691.0.copyload.sink
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !198

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %18(ptr noundef %host, i32 noundef 484) #9
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 484
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !199
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %22, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -65536
  %conv.i = and i32 %or11, 65535
  %or.i = or i32 %and.i, %conv.i
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %26, null
  br i1 %tobool.not.i5.i, label %do.body.i.i, label %if.then.i6.i, !prof !198

if.then.i6.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %26(ptr noundef %host, i32 noundef %or.i, i32 noundef 484) #9
  br label %tegra_sdhci_set_pad_autocal_offset.exit

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %ioaddr.i7.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %29, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %27) #9, !srcloc !202
  br label %tegra_sdhci_set_pad_autocal_offset.exit

tegra_sdhci_set_pad_autocal_offset.exit:          ; preds = %do.body.i.i, %if.then.i6.i
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i110 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i110, label %if.else.i.i115, label %if.then.i.i112, !prof !198

if.then.i.i112:                                   ; preds = %tegra_sdhci_set_pad_autocal_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i111 = tail call zeroext i16 %33(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i115:                                   ; preds = %tegra_sdhci_set_pad_autocal_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i113 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %34 = ptrtoint ptr %ioaddr.i.i113 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i.i113, align 16
  %add.ptr.i.i114 = getelementptr i8, ptr %35, i32 44
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i114) #9, !srcloc !206
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i115, %if.then.i.i112
  %retval.0.i.i116 = phi i16 [ %call.i.i111, %if.then.i.i112 ], [ %37, %if.else.i.i115 ]
  %38 = and i16 %retval.0.i.i116, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp.i = icmp eq i16 %38, 0
  br i1 %cmp.i, label %sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge, label %if.end.i

sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge: ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_configure_card_clk.exit

if.end.i:                                         ; preds = %sdhci_readw.exit.i
  %and11.i = and i16 %retval.0.i.i116, -5
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i24.i = icmp eq ptr %42, null
  br i1 %tobool.not.i24.i, label %do.body.i.i117, label %if.then.i25.i, !prof !198

if.then.i25.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %42(ptr noundef %host, i16 noundef zeroext %and11.i, i32 noundef 44) #9
  br label %tegra_sdhci_configure_card_clk.exit

do.body.i.i117:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %43 = tail call i16 @llvm.bswap.i16(i16 %and11.i) #9
  %ioaddr.i26.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i26.i, align 16
  %add.ptr.i27.i = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i, i16 %43) #9, !srcloc !209
  br label %tegra_sdhci_configure_card_clk.exit

tegra_sdhci_configure_card_clk.exit:              ; preds = %do.body.i.i117, %if.then.i25.i, %sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge
  %46 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool.not.i.i119 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i119, label %if.else.i.i124, label %if.then.i.i121, !prof !198

if.then.i.i121:                                   ; preds = %tegra_sdhci_configure_card_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i120 = tail call i32 %49(ptr noundef %host, i32 noundef 480) #9
  br label %sdhci_readl.exit.i128

if.else.i.i124:                                   ; preds = %tegra_sdhci_configure_card_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i122 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %50 = ptrtoint ptr %ioaddr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr.i.i122, align 16
  %add.ptr.i.i123 = getelementptr i8, ptr %51, i32 480
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i123) #9, !srcloc !199
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i128

sdhci_readl.exit.i128:                            ; preds = %if.else.i.i124, %if.then.i.i121
  %retval.0.i.i125 = phi i32 [ %call.i.i120, %if.then.i.i121 ], [ %53, %if.else.i.i124 ]
  %val.0.i = or i32 %retval.0.i.i125, -2147483648
  %54 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i127 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_l.i.i127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_l.i.i127, align 4
  %tobool.not.i9.i = icmp eq ptr %57, null
  br i1 %tobool.not.i9.i, label %do.body.i.i129, label %if.then.i10.i, !prof !198

if.then.i10.i:                                    ; preds = %sdhci_readl.exit.i128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %57(ptr noundef %host, i32 noundef %val.0.i, i32 noundef 480) #9
  br label %tegra_sdhci_configure_cal_pad.exit

do.body.i.i129:                                   ; preds = %sdhci_readl.exit.i128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #9
  %ioaddr.i11.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr.i11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i11.i, align 16
  %add.ptr.i12.i = getelementptr i8, ptr %60, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %58) #9, !srcloc !202
  br label %tegra_sdhci_configure_cal_pad.exit

tegra_sdhci_configure_cal_pad.exit:               ; preds = %do.body.i.i129, %if.then.i10.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %61 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %tegra_sdhci_configure_cal_pad.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %64(ptr noundef %host, i32 noundef 484) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %tegra_sdhci_configure_cal_pad.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %65 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %66, i32 484
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %68, %if.else.i ]
  %or18 = or i32 %retval.0.i, -1610612736
  %69 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i131 = icmp eq ptr %72, null
  br i1 %tobool.not.i131, label %do.body.i, label %if.then.i132, !prof !198

if.then.i132:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %72(ptr noundef %host, i32 noundef %or18, i32 noundef 484) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %or18) #9
  %ioaddr.i133 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %74 = ptrtoint ptr %ioaddr.i133 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioaddr.i133, align 16
  %add.ptr.i134 = getelementptr i8, ptr %75, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %73) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i132
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #9
  %call19 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call19, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 563) #9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 16
  %add.ptr199 = getelementptr i8, ptr %77, i32 492
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199) #9, !srcloc !199
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %tobool.not200 = icmp sgt i32 %79, -1
  br i1 %tobool.not200, label %sdhci_writel.exit.for.end_crit_edge, label %sdhci_writel.exit.land.lhs.true_crit_edge

sdhci_writel.exit.land.lhs.true_crit_edge:        ; preds = %sdhci_writel.exit
  br label %land.lhs.true

sdhci_writel.exit.for.end_crit_edge:              ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %if.then50.land.lhs.true_crit_edge, %sdhci_writel.exit.land.lhs.true_crit_edge
  %call36 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call36, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call36, %add.i
  br i1 %cmp3.i, label %if.then40, label %if.then50

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr, align 16
  %add.ptr44 = getelementptr i8, ptr %81, i32 492
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !199
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %for.end

if.then50:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %84 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %85, i32 492
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !199
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %tobool.not = icmp sgt i32 %87, -1
  br i1 %tobool.not, label %if.then50.for.end_crit_edge, label %if.then50.land.lhs.true_crit_edge

if.then50.land.lhs.true_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.then50.for.end_crit_edge, %if.then40, %sdhci_writel.exit.for.end_crit_edge
  %reg.0 = phi i32 [ %83, %if.then40 ], [ %79, %sdhci_writel.exit.for.end_crit_edge ], [ %87, %if.then50.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg.0)
  %tobool54.not = icmp sgt i32 %reg.0, -1
  %88 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %tobool.not.i.i139 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i139, label %if.else.i.i144, label %if.then.i.i141, !prof !198

if.then.i.i141:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i140 = tail call i32 %91(ptr noundef %host, i32 noundef 480) #9
  br label %sdhci_readl.exit.i149

if.else.i.i144:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i143 = getelementptr i8, ptr %93, i32 480
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i143) #9, !srcloc !199
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i149

sdhci_readl.exit.i149:                            ; preds = %if.else.i.i144, %if.then.i.i141
  %retval.0.i.i145 = phi i32 [ %call.i.i140, %if.then.i.i141 ], [ %95, %if.else.i.i144 ]
  %and.i146 = and i32 %retval.0.i.i145, 2147483647
  %96 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i147 = getelementptr inbounds %struct.sdhci_ops, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %write_l.i.i147 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_l.i.i147, align 4
  %tobool.not.i9.i148 = icmp eq ptr %99, null
  br i1 %tobool.not.i9.i148, label %do.body.i.i153, label %if.then.i10.i150, !prof !198

if.then.i10.i150:                                 ; preds = %sdhci_readl.exit.i149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %99(ptr noundef %host, i32 noundef %and.i146, i32 noundef 480) #9
  br label %tegra_sdhci_configure_cal_pad.exit154

do.body.i.i153:                                   ; preds = %sdhci_readl.exit.i149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %100 = tail call i32 @llvm.bswap.i32(i32 %and.i146) #9
  %101 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i12.i152 = getelementptr i8, ptr %102, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i152, i32 %100) #9, !srcloc !202
  br label %tegra_sdhci_configure_cal_pad.exit154

tegra_sdhci_configure_cal_pad.exit154:            ; preds = %do.body.i.i153, %if.then.i10.i150
  %103 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i156 = getelementptr inbounds %struct.sdhci_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %read_w.i.i156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read_w.i.i156, align 4
  %tobool.not.i.i157 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i157, label %if.else.i.i162, label %if.then.i.i159, !prof !198

if.then.i.i159:                                   ; preds = %tegra_sdhci_configure_cal_pad.exit154
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i158 = tail call zeroext i16 %106(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i165

if.else.i.i162:                                   ; preds = %tegra_sdhci_configure_cal_pad.exit154
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i161 = getelementptr i8, ptr %108, i32 44
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i161) #9, !srcloc !206
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i165

sdhci_readw.exit.i165:                            ; preds = %if.else.i.i162, %if.then.i.i159
  %retval.0.i.i163 = phi i16 [ %call.i.i158, %if.then.i.i159 ], [ %110, %if.else.i.i162 ]
  %111 = lshr i16 %retval.0.i.i163, 2
  %112 = and i16 %111, 1
  %.lobit = lshr exact i16 %38, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %.lobit)
  %cmp.i164 = icmp eq i16 %112, %.lobit
  br i1 %cmp.i164, label %sdhci_readw.exit.i165.tegra_sdhci_configure_card_clk.exit175_crit_edge, label %if.end.i169

sdhci_readw.exit.i165.tegra_sdhci_configure_card_clk.exit175_crit_edge: ; preds = %sdhci_readw.exit.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_configure_card_clk.exit175

if.end.i169:                                      ; preds = %sdhci_readw.exit.i165
  %and11.i166 = and i16 %retval.0.i.i163, -5
  %reg.0.i = or i16 %and11.i166, %38
  %113 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i167 = getelementptr inbounds %struct.sdhci_ops, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %write_w.i.i167 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_w.i.i167, align 4
  %tobool.not.i24.i168 = icmp eq ptr %116, null
  br i1 %tobool.not.i24.i168, label %do.body.i.i173, label %if.then.i25.i170, !prof !198

if.then.i25.i170:                                 ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %116(ptr noundef %host, i16 noundef zeroext %reg.0.i, i32 noundef 44) #9
  br label %tegra_sdhci_configure_card_clk.exit175

do.body.i.i173:                                   ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %117 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #9
  %118 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i27.i172 = getelementptr i8, ptr %119, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i172, i16 %117) #9, !srcloc !209
  br label %tegra_sdhci_configure_card_clk.exit175

tegra_sdhci_configure_card_clk.exit175:           ; preds = %do.body.i.i173, %if.then.i25.i170, %sdhci_readw.exit.i165.tegra_sdhci_configure_card_clk.exit175_crit_edge
  br i1 %tobool54.not, label %tegra_sdhci_configure_card_clk.exit175.if.end77_crit_edge, label %do.end61

tegra_sdhci_configure_card_clk.exit175.if.end77_crit_edge: ; preds = %tegra_sdhci_configure_card_clk.exit175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end61:                                         ; preds = %tegra_sdhci_configure_card_clk.exit175
  %120 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmc, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.36) #12
  %124 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %tobool.not.i177 = icmp eq ptr %127, null
  br i1 %tobool.not.i177, label %if.else.i182, label %if.then.i179, !prof !198

if.then.i179:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call.i178 = tail call i32 %127(ptr noundef %host, i32 noundef 484) #9
  br label %sdhci_readl.exit184

if.else.i182:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i181 = getelementptr i8, ptr %129, i32 484
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #9, !srcloc !199
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit184

sdhci_readl.exit184:                              ; preds = %if.else.i182, %if.then.i179
  %retval.0.i183 = phi i32 [ %call.i178, %if.then.i179 ], [ %131, %if.else.i182 ]
  %and64 = and i32 %retval.0.i183, -536870913
  %132 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops.i.i, align 4
  %write_l.i186 = getelementptr inbounds %struct.sdhci_ops, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %write_l.i186 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write_l.i186, align 4
  %tobool.not.i187 = icmp eq ptr %135, null
  br i1 %tobool.not.i187, label %do.body.i191, label %if.then.i188, !prof !198

if.then.i188:                                     ; preds = %sdhci_readl.exit184
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %135(ptr noundef %host, i32 noundef %and64, i32 noundef 484) #9
  br label %sdhci_writel.exit193

do.body.i191:                                     ; preds = %sdhci_readl.exit184
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %136 = tail call i32 @llvm.bswap.i32(i32 %and64) #9
  %137 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i190 = getelementptr i8, ptr %138, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %136) #9, !srcloc !202
  br label %sdhci_writel.exit193

sdhci_writel.exit193:                             ; preds = %do.body.i191, %if.then.i188
  %signal_voltage65 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 8
  %139 = ptrtoint ptr %signal_voltage65 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %signal_voltage65, align 1
  %conv66 = zext i8 %140 to i32
  %call67 = tail call fastcc i32 @tegra_sdhci_set_padctrl(ptr noundef %host, i32 noundef %conv66, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end73, label %sdhci_writel.exit193.if.end77_crit_edge

sdhci_writel.exit193.if.end77_crit_edge:          ; preds = %sdhci_writel.exit193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end73:                                         ; preds = %sdhci_writel.exit193
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmc, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.39, i32 noundef %call67) #12
  br label %if.end77

if.end77:                                         ; preds = %do.end73, %sdhci_writel.exit193.if.end77_crit_edge, %tegra_sdhci_configure_card_clk.exit175.if.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %private.i41 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddr_signaling = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i41, i32 0, i32 3
  %4 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddr_signaling, align 4, !range !195
  %6 = zext i8 %5 to i32
  %cond = shl i32 %clock, %6
  %call3 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %3, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %cond, i32 noundef %call3) #12
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %curr_clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 3
  %7 = ptrtoint ptr %curr_clk_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %curr_clk_rate, align 8
  %8 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ddr_signaling, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.else, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 128
  %call10 = tail call i32 @clk_get_rate(ptr noundef %11) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end6.if.end12_crit_edge
  %cond.sink = phi i32 [ %call10, %if.else ], [ %cond, %if.end6.if.end12_crit_edge ]
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.sink, ptr %12, align 4
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #9
  %pad_calib_required = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i41, i32 0, i32 4
  %14 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pad_calib_required, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %host)
  %16 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pad_calib_required, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sdhci_post_tuning(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i89 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i89 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i89, align 8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %5(ptr noundef %host, i32 noundef 256) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 256
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i90 = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and = lshr i32 %retval.0.i90, 16
  %conv = trunc i32 %and to i8
  %tuned_tap_delay = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 4
  %10 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %tuned_tap_delay, align 4
  %min_tap_delay = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %min_tap_delay to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %min_tap_delay, align 4
  %conv4 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %sdhci_readl.exit.if.end59_crit_edge, label %land.lhs.true

sdhci_readl.exit.if.end59_crit_edge:              ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true:                                    ; preds = %sdhci_readl.exit
  %max_tap_delay = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %max_tap_delay to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_tap_delay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end59_crit_edge, label %if.then

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then:                                          ; preds = %land.lhs.true
  %conv5 = zext i8 %14 to i32
  %curr_clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 3
  %15 = ptrtoint ptr %curr_clk_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_clk_rate, align 8
  %div = udiv i32 %16, 1000000
  %div11 = udiv i32 1000000, %div
  %div12 = udiv i32 %div11, %conv4
  %div13 = udiv i32 %div11, %conv5
  %17 = lshr i32 %div12, 1
  %18 = add nuw nsw i32 %17, %div13
  %conv15 = trunc i32 %18 to i8
  %div1687 = lshr i32 %div13, 2
  %conv17 = trunc i32 %div1687 to i8
  %mul18 = shl nuw nsw i32 %div11, 1
  %add19 = add nuw nsw i32 %conv5, %conv4
  %div20 = udiv i32 %mul18, %add19
  %div2188 = lshr i32 %div20, 1
  %conv22 = trunc i32 %div2188 to i8
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i92 = icmp eq ptr %22, null
  br i1 %tobool.not.i92, label %if.else.i97, label %if.then.i94, !prof !198

if.then.i94:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i93 = tail call i32 %22(ptr noundef %host, i32 noundef 460) #9
  br label %sdhci_readl.exit99

if.else.i97:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i95 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i95, align 16
  %add.ptr.i96 = getelementptr i8, ptr %24, i32 460
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #9, !srcloc !199
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit99

sdhci_readl.exit99:                               ; preds = %if.else.i97, %if.then.i94
  %retval.0.i98 = phi i32 [ %call.i93, %if.then.i94 ], [ %26, %if.else.i97 ]
  %shr26 = lshr i32 %retval.0.i98, 8
  %conv30 = and i32 %retval.0.i98, 255
  %sub = sub i32 %shr26, %retval.0.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %cmp = icmp eq i32 %conv30, 0
  br i1 %cmp, label %sdhci_readl.exit99.do.body_crit_edge, label %lor.lhs.false

sdhci_readl.exit99.do.body_crit_edge:             ; preds = %sdhci_readl.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %sdhci_readl.exit99
  %conv29 = and i32 %shr26, 255
  %tuning_loop_count = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 76
  %27 = ptrtoint ptr %tuning_loop_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tuning_loop_count, align 4
  %conv36 = and i32 %28, 255
  %sub37 = add nsw i32 %conv36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %sub37)
  %cmp38 = icmp eq i32 %conv29, %sub37
  %sub43 = add nsw i32 %conv36, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %sub43)
  %cmp44 = icmp eq i32 %conv29, %sub43
  %or.cond = select i1 %cmp38, i1 true, i1 %cmp44
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false46

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %conv47 = and i32 %sub, 255
  %conv48 = and i32 %18, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv47, i32 %conv48)
  %cmp49.not = icmp ult i32 %conv47, %conv48
  br i1 %cmp49.not, label %lor.lhs.false46.if.end59_crit_edge, label %lor.lhs.false46.do.body_crit_edge

lor.lhs.false46.do.body_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false46.if.end59_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.body:                                          ; preds = %lor.lhs.false46.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %sdhci_readl.exit99.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_sdhci_post_tuning.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_sdhci_post_tuning, %if.then56)) #9
          to label %do.end [label %if.then56], !srcloc !194

if.then56:                                        ; preds = %do.body
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %29 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i100 = icmp eq ptr %32, null
  br i1 %tobool.not.i100, label %if.end.i, label %if.then56.dev_name.exit_crit_edge

if.then56.dev_name.exit_crit_edge:                ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then56.dev_name.exit_crit_edge
  %retval.0.i101 = phi ptr [ %34, %if.end.i ], [ %32, %if.then56.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra_sdhci_post_tuning.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i101) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %tuning_loop_count.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 76
  %35 = ptrtoint ptr %tuning_loop_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tuning_loop_count.i, align 4
  %div.i = sdiv i32 %36, 32
  %conv3.i = and i32 %div.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp290.not.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp290.not.i, label %do.end.do.end.i_crit_edge, label %for.body.lr.ph.i

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %do.end
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv307.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next308.i, %for.inc.i.for.body.i_crit_edge ]
  %first_pass_tap.0300.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %first_pass_tap.2.i, %for.inc.i.for.body.i_crit_edge ]
  %first_fail_tap.0299.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %first_fail_tap.2.i, %for.inc.i.for.body.i_crit_edge ]
  %end_pass_tap.0298.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %end_pass_tap.2.i, %for.inc.i.for.body.i_crit_edge ]
  %start_pass_tap.0297.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %start_pass_tap.2.i, %for.inc.i.for.body.i_crit_edge ]
  %first_pass.0.off0296.i = phi i1 [ false, %for.body.lr.ph.i ], [ %first_pass.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %first_fail.0.off0295.i = phi i1 [ false, %for.body.lr.ph.i ], [ %first_fail.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %end_pass.0.off0294.i = phi i1 [ false, %for.body.lr.ph.i ], [ %end_pass.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %start_pass.0.off0293.i = phi i1 [ false, %for.body.lr.ph.i ], [ %start_pass.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %start_fail.0.off0292.i = phi i1 [ false, %for.body.lr.ph.i ], [ %start_fail.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !198

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %40(ptr noundef %host, i32 noundef 448) #9
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 448
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !199
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %44, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -8
  %or.i = or i32 %and.i, %indvars.iv307.i
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i253.i = icmp eq ptr %48, null
  br i1 %tobool.not.i253.i, label %do.body.i.i, label %if.then.i254.i, !prof !198

if.then.i254.i:                                   ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %48(ptr noundef %host, i32 noundef %or.i, i32 noundef 448) #9
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %50 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i256.i = getelementptr i8, ptr %51, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256.i, i32 %49) #9, !srcloc !202
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i254.i
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool.not.i258.i = icmp eq ptr %55, null
  br i1 %tobool.not.i258.i, label %if.else.i263.i, label %if.then.i260.i, !prof !198

if.then.i260.i:                                   ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i259.i = tail call i32 %55(ptr noundef %host, i32 noundef 456) #9
  br label %sdhci_readl.exit265.i

if.else.i263.i:                                   ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i262.i = getelementptr i8, ptr %57, i32 456
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262.i) #9, !srcloc !199
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit265.i

sdhci_readl.exit265.i:                            ; preds = %if.else.i263.i, %if.then.i260.i
  %retval.0.i264.i = phi i32 [ %call.i259.i, %if.then.i260.i ], [ %59, %if.else.i263.i ]
  %mul.i = shl i32 %indvars.iv307.i, 5
  %60 = and i32 %mul.i, 224
  br label %while.body.i

while.body.i:                                     ; preds = %if.end80.i.while.body.i_crit_edge, %sdhci_readl.exit265.i
  %indvars.iv.i = phi i32 [ 0, %sdhci_readl.exit265.i ], [ %indvars.iv.next.i, %if.end80.i.while.body.i_crit_edge ]
  %first_pass_tap.1289.i = phi i8 [ %first_pass_tap.0300.i, %sdhci_readl.exit265.i ], [ %first_pass_tap.2.i, %if.end80.i.while.body.i_crit_edge ]
  %first_fail_tap.1288.i = phi i8 [ %first_fail_tap.0299.i, %sdhci_readl.exit265.i ], [ %first_fail_tap.2.i, %if.end80.i.while.body.i_crit_edge ]
  %end_pass_tap.1287.i = phi i8 [ %end_pass_tap.0298.i, %sdhci_readl.exit265.i ], [ %end_pass_tap.2.i, %if.end80.i.while.body.i_crit_edge ]
  %start_pass_tap.1286.i = phi i8 [ %start_pass_tap.0297.i, %sdhci_readl.exit265.i ], [ %start_pass_tap.2.i, %if.end80.i.while.body.i_crit_edge ]
  %first_pass.1.off0285.i = phi i1 [ %first_pass.0.off0296.i, %sdhci_readl.exit265.i ], [ %first_pass.2.off0.i, %if.end80.i.while.body.i_crit_edge ]
  %first_fail.1.off0284.i = phi i1 [ %first_fail.0.off0295.i, %sdhci_readl.exit265.i ], [ %first_fail.2.off0.i, %if.end80.i.while.body.i_crit_edge ]
  %end_pass.1.off0283.i = phi i1 [ %end_pass.0.off0294.i, %sdhci_readl.exit265.i ], [ %end_pass.2.off0.i, %if.end80.i.while.body.i_crit_edge ]
  %start_pass.1.off0282.i = phi i1 [ %start_pass.0.off0293.i, %sdhci_readl.exit265.i ], [ %start_pass.2.off0.i, %if.end80.i.while.body.i_crit_edge ]
  %start_fail.1.off0281.i = phi i1 [ %start_fail.0.off0292.i, %sdhci_readl.exit265.i ], [ %start_fail.2.off0.i, %if.end80.i.while.body.i_crit_edge ]
  %61 = add nuw nsw i32 %indvars.iv.i, %60
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and15.i = and i32 %shl.i, %retval.0.i264.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i102 = icmp eq i32 %and15.i, 0
  %tobool.not.not.i = xor i1 %tobool.not.i102, true
  %brmerge.i = select i1 %tobool.not.not.i, i1 true, i1 %start_fail.1.off0281.i
  br i1 %brmerge.i, label %if.else.i104, label %if.then.i103

if.then.i103:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = trunc i32 %61 to i8
  %spec.select241.i = select i1 %first_fail.1.off0284.i, i8 %first_fail_tap.1288.i, i8 %62
  br label %if.end80.i

if.else.i104:                                     ; preds = %while.body.i
  %start_fail.1.off0.not.i = xor i1 %start_fail.1.off0281.i, true
  %brmerge242.i = select i1 %tobool.not.i102, i1 true, i1 %start_fail.1.off0.not.i
  %brmerge243.i = select i1 %brmerge242.i, i1 true, i1 %start_pass.1.off0282.i
  %63 = trunc i32 %61 to i8
  br i1 %brmerge243.i, label %if.else31.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select245.i = select i1 %first_pass.1.off0285.i, i8 %first_pass_tap.1289.i, i8 %63
  br label %if.end80.i

if.else31.i:                                      ; preds = %if.else.i104
  %brmerge248.i = select i1 %tobool.not.not.i, i1 true, i1 %start_fail.1.off0.not.i
  %start_pass.1.off0.not.i = xor i1 %start_pass.1.off0282.i, true
  %brmerge249.i = select i1 %brmerge248.i, i1 true, i1 %start_pass.1.off0.not.i
  %brmerge250.i = select i1 %brmerge249.i, i1 true, i1 %end_pass.1.off0283.i
  br i1 %brmerge250.i, label %if.else44.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i8 %63, -1
  br label %if.end80.i

if.else44.i:                                      ; preds = %if.else31.i
  br i1 %tobool.not.i102, label %if.else44.i.if.end80.i_crit_edge, label %land.lhs.true47.i

if.else44.i.if.end80.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

land.lhs.true47.i:                                ; preds = %if.else44.i
  br i1 %start_pass.1.off0282.i, label %land.lhs.true50.i, label %land.lhs.true47.i.if.end80.i_crit_edge

land.lhs.true47.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

land.lhs.true50.i:                                ; preds = %land.lhs.true47.i
  br i1 %start_fail.1.off0281.i, label %land.lhs.true53.i, label %land.lhs.true50.i.if.end80.i_crit_edge

land.lhs.true50.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

land.lhs.true53.i:                                ; preds = %land.lhs.true50.i
  br i1 %end_pass.1.off0283.i, label %if.then56.i, label %land.lhs.true53.i.if.end80.i_crit_edge

land.lhs.true53.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.then56.i:                                      ; preds = %land.lhs.true53.i
  %sub59.i = sub i8 %end_pass_tap.1287.i, %start_pass_tap.1286.i
  call void @__sanitizer_cov_trace_cmp1(i8 %sub59.i, i8 %conv15)
  %cmp63.not.i = icmp uge i8 %sub59.i, %conv15
  call void @__sanitizer_cov_trace_cmp1(i8 %sub59.i, i8 %conv17)
  %cmp67.i = icmp ult i8 %sub59.i, %conv17
  %or.cond.i = or i1 %cmp63.not.i, %cmp67.i
  br i1 %or.cond.i, label %if.then56.i.if.end80.i_crit_edge, label %if.else70.i

if.then56.i.if.end80.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.else70.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = lshr i8 %sub59.i, 1
  %add74.i = add i8 %64, %start_pass_tap.1286.i
  %65 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add74.i, ptr %tuned_tap_delay, align 4
  br label %if.end59

if.end80.i:                                       ; preds = %if.then56.i.if.end80.i_crit_edge, %land.lhs.true53.i.if.end80.i_crit_edge, %land.lhs.true50.i.if.end80.i_crit_edge, %land.lhs.true47.i.if.end80.i_crit_edge, %if.else44.i.if.end80.i_crit_edge, %if.then41.i, %if.then27.i, %if.then.i103
  %start_fail.2.off0.i = phi i1 [ true, %land.lhs.true53.i.if.end80.i_crit_edge ], [ false, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %start_fail.1.off0281.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %start_fail.1.off0281.i, %if.else44.i.if.end80.i_crit_edge ], [ %start_fail.1.off0281.i, %if.then41.i ], [ true, %if.then.i103 ], [ %start_fail.1.off0281.i, %if.then27.i ], [ true, %if.then56.i.if.end80.i_crit_edge ]
  %start_pass.2.off0.i = phi i1 [ true, %land.lhs.true53.i.if.end80.i_crit_edge ], [ true, %land.lhs.true50.i.if.end80.i_crit_edge ], [ false, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %start_pass.1.off0282.i, %if.else44.i.if.end80.i_crit_edge ], [ %start_pass.1.off0282.i, %if.then41.i ], [ %start_pass.1.off0282.i, %if.then.i103 ], [ true, %if.then27.i ], [ true, %if.then56.i.if.end80.i_crit_edge ]
  %end_pass.2.off0.i = phi i1 [ false, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %end_pass.1.off0283.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %end_pass.1.off0283.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %end_pass.1.off0283.i, %if.else44.i.if.end80.i_crit_edge ], [ true, %if.then41.i ], [ %end_pass.1.off0283.i, %if.then.i103 ], [ %end_pass.1.off0283.i, %if.then27.i ], [ false, %if.then56.i.if.end80.i_crit_edge ]
  %first_fail.2.off0.i = phi i1 [ %first_fail.1.off0284.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %first_fail.1.off0284.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %first_fail.1.off0284.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %first_fail.1.off0284.i, %if.else44.i.if.end80.i_crit_edge ], [ %first_fail.1.off0284.i, %if.then41.i ], [ true, %if.then.i103 ], [ %first_fail.1.off0284.i, %if.then27.i ], [ %first_fail.1.off0284.i, %if.then56.i.if.end80.i_crit_edge ]
  %first_pass.2.off0.i = phi i1 [ %first_pass.1.off0285.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %first_pass.1.off0285.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %first_pass.1.off0285.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %first_pass.1.off0285.i, %if.else44.i.if.end80.i_crit_edge ], [ %first_pass.1.off0285.i, %if.then41.i ], [ %first_pass.1.off0285.i, %if.then.i103 ], [ true, %if.then27.i ], [ %first_pass.1.off0285.i, %if.then56.i.if.end80.i_crit_edge ]
  %start_pass_tap.2.i = phi i8 [ %start_pass_tap.1286.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %start_pass_tap.1286.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %start_pass_tap.1286.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %start_pass_tap.1286.i, %if.else44.i.if.end80.i_crit_edge ], [ %start_pass_tap.1286.i, %if.then41.i ], [ %start_pass_tap.1286.i, %if.then.i103 ], [ %63, %if.then27.i ], [ %63, %if.then56.i.if.end80.i_crit_edge ]
  %end_pass_tap.2.i = phi i8 [ %end_pass_tap.1287.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %end_pass_tap.1287.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %end_pass_tap.1287.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %end_pass_tap.1287.i, %if.else44.i.if.end80.i_crit_edge ], [ %sub.i, %if.then41.i ], [ %end_pass_tap.1287.i, %if.then.i103 ], [ %end_pass_tap.1287.i, %if.then27.i ], [ %end_pass_tap.1287.i, %if.then56.i.if.end80.i_crit_edge ]
  %first_fail_tap.2.i = phi i8 [ %first_fail_tap.1288.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %first_fail_tap.1288.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %first_fail_tap.1288.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %first_fail_tap.1288.i, %if.else44.i.if.end80.i_crit_edge ], [ %first_fail_tap.1288.i, %if.then41.i ], [ %spec.select241.i, %if.then.i103 ], [ %first_fail_tap.1288.i, %if.then27.i ], [ %first_fail_tap.1288.i, %if.then56.i.if.end80.i_crit_edge ]
  %first_pass_tap.2.i = phi i8 [ %first_pass_tap.1289.i, %land.lhs.true53.i.if.end80.i_crit_edge ], [ %first_pass_tap.1289.i, %land.lhs.true50.i.if.end80.i_crit_edge ], [ %first_pass_tap.1289.i, %land.lhs.true47.i.if.end80.i_crit_edge ], [ %first_pass_tap.1289.i, %if.else44.i.if.end80.i_crit_edge ], [ %first_pass_tap.1289.i, %if.then41.i ], [ %first_pass_tap.1289.i, %if.then.i103 ], [ %spec.select245.i, %if.then27.i ], [ %first_pass_tap.1289.i, %if.then56.i.if.end80.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.inc.i, label %if.end80.i.while.body.i_crit_edge

if.end80.i.while.body.i_crit_edge:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

for.inc.i:                                        ; preds = %if.end80.i
  %indvars.iv.next308.i = add nuw nsw i32 %indvars.iv307.i, 1
  %exitcond309.not.i = icmp eq i32 %indvars.iv.next308.i, %conv3.i
  br i1 %exitcond309.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %first_fail.2.off0.i, label %if.else101.i, label %for.end.i.do.end.i_crit_edge

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 923, i32 noundef 9, ptr noundef nonnull @.str.45) #9
  br label %if.end59

if.else101.i:                                     ; preds = %for.end.i
  br i1 %first_pass.2.off0.i, label %if.then103.i, label %if.else101.i.if.end59_crit_edge

if.else101.i.if.end59_crit_edge:                  ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then103.i:                                     ; preds = %if.else101.i
  %conv104.i = zext i8 %first_fail_tap.2.i to i16
  %conv105.i = zext i8 %first_pass_tap.2.i to i16
  %sub107.i = sub nsw i16 %conv105.i, %conv104.i
  %div108266.i = sdiv i16 %sub107.i, 2
  %66 = trunc i16 %div108266.i to i8
  %conv110.i = add i8 %first_fail_tap.2.i, %66
  %conv111.i = zext i8 %conv110.i to i32
  %sub112.i = add nsw i32 %conv111.i, -1
  %conv113.i = and i32 %div2188, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %sub112.i, i32 %conv113.i)
  %cmp114.i = icmp sgt i32 %sub112.i, %conv113.i
  br i1 %cmp114.i, label %if.then116.i, label %if.else122.i

if.then116.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub119.i = sub i8 %conv110.i, %conv22
  %67 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %sub119.i, ptr %tuned_tap_delay, align 4
  br label %if.end59

if.else122.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #11
  %add125.i = add i8 %conv110.i, %conv22
  %68 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %add125.i, ptr %tuned_tap_delay, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else122.i, %if.then116.i, %if.else101.i.if.end59_crit_edge, %do.end.i, %if.else70.i, %lor.lhs.false46.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %sdhci_readl.exit.if.end59_crit_edge
  %69 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tuned_tap_delay, align 4
  %conv61 = zext i8 %70 to i32
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %conv61)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %tap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i23 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i23, align 8
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvquirks, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !198

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i16 %7(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 44
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !206
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %11, %if.else.i.i ]
  %12 = and i16 %retval.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  br i1 %cmp.i, label %sdhci_readw.exit.i.if.end_crit_edge, label %if.end.i

sdhci_readw.exit.i.if.end_crit_edge:              ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %sdhci_readw.exit.i
  %and11.i = and i16 %retval.0.i.i, -5
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i24.i = icmp eq ptr %16, null
  br i1 %tobool.not.i24.i, label %do.body.i.i, label %if.then.i25.i, !prof !198

if.then.i25.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef %host, i16 noundef zeroext %and11.i, i32 noundef 44) #9
  br label %if.end

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %17 = tail call i16 @llvm.bswap.i16(i16 %and11.i) #9
  %ioaddr.i26.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %18 = ptrtoint ptr %ioaddr.i26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i26.i, align 16
  %add.ptr.i27.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i, i16 %17) #9, !srcloc !209
  br label %if.end

if.end:                                           ; preds = %do.body.i.i, %if.then.i25.i, %sdhci_readw.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %card_clk_enabled.0.off0 = phi i1 [ true, %entry.if.end_crit_edge ], [ true, %sdhci_readw.exit.i.if.end_crit_edge ], [ false, %if.then.i25.i ], [ false, %do.body.i.i ]
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %23(ptr noundef %host, i32 noundef 256) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %25, i32 256
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %27, %if.else.i ]
  %and5 = and i32 %retval.0.i, -16711681
  %shl = shl i32 %tap, 16
  %or = or i32 %and5, %shl
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i25 = icmp eq ptr %31, null
  br i1 %tobool.not.i25, label %do.body.i, label %if.then.i26, !prof !198

if.then.i26:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %31(ptr noundef %host, i32 noundef %or, i32 noundef 256) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %ioaddr.i27 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %ioaddr.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i27, align 16
  %add.ptr.i28 = getelementptr i8, ptr %34, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %32) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i26
  %35 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nvquirks, align 8
  %and7 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %brmerge = or i1 %tobool8.not, %card_clk_enabled.0.off0
  br i1 %brmerge, label %sdhci_writel.exit.if.end13_crit_edge, label %if.then10

sdhci_writel.exit.if.end13_crit_edge:             ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %sdhci_writel.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #9
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext 6) #9
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %read_w.i.i31 = getelementptr inbounds %struct.sdhci_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read_w.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_w.i.i31, align 4
  %tobool.not.i.i32 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i32, label %if.else.i.i37, label %if.then.i.i34, !prof !198

if.then.i.i34:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i33 = tail call zeroext i16 %41(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i40

if.else.i.i37:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i.i35, align 16
  %add.ptr.i.i36 = getelementptr i8, ptr %43, i32 44
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i36) #9, !srcloc !206
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i40

sdhci_readw.exit.i40:                             ; preds = %if.else.i.i37, %if.then.i.i34
  %retval.0.i.i38 = phi i16 [ %call.i.i33, %if.then.i.i34 ], [ %45, %if.else.i.i37 ]
  %46 = and i16 %retval.0.i.i38, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i39.not = icmp eq i16 %46, 0
  br i1 %cmp.i39.not, label %if.end.i44, label %sdhci_readw.exit.i40.if.end13_crit_edge

sdhci_readw.exit.i40.if.end13_crit_edge:          ; preds = %sdhci_readw.exit.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i44:                                       ; preds = %sdhci_readw.exit.i40
  %reg.0.i = or i16 %retval.0.i.i38, 4
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %write_w.i.i42 = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %write_w.i.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_w.i.i42, align 4
  %tobool.not.i24.i43 = icmp eq ptr %50, null
  br i1 %tobool.not.i24.i43, label %do.body.i.i48, label %if.then.i25.i45, !prof !198

if.then.i25.i45:                                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %50(ptr noundef %host, i16 noundef zeroext %reg.0.i, i32 noundef 44) #9
  br label %if.end13

do.body.i.i48:                                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %51 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #9
  %ioaddr.i26.i46 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i26.i46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i26.i46, align 16
  %add.ptr.i27.i47 = getelementptr i8, ptr %53, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i47, i16 %51) #9, !srcloc !209
  br label %if.end13

if.end13:                                         ; preds = %do.body.i.i48, %if.then.i25.i45, %sdhci_readw.exit.i40.if.end13_crit_edge, %sdhci_writel.exit.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_v4_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_tegra_dumpregs(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_cqhci_writel(ptr noundef %cq_host, i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %cmp = icmp eq i32 %reg, 12
  %and = and i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %land.lhs.true2, label %entry.do.body26_crit_edge

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

land.lhs.true2:                                   ; preds = %entry
  %2 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_host, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %5(ptr noundef %cq_host, i32 noundef 12) #9
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and4 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cqhci_readl.exit.do.body26_crit_edge, label %if.then

cqhci_readl.exit.do.body26_crit_edge:             ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

if.then:                                          ; preds = %cqhci_readl.exit
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i45 = icmp eq ptr %13, null
  br i1 %tobool.not.i45, label %do.body.i, label %if.then.i46, !prof !198

if.then.i46:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %private.i, i16 noundef zeroext 35, i32 noundef 12) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i47 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i47, i16 8960) #9, !srcloc !209
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i46
  tail call void @sdhci_cqe_enable(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %val)
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #9, !srcloc !202
  %call6 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call6, 50000
  br label %while.cond

while.cond:                                       ; preds = %cqhci_readl.exit57.while.cond_crit_edge, %sdhci_writew.exit
  %call8 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call8, %add.i
  %19 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cq_host, align 4
  %read_l.i49 = getelementptr inbounds %struct.cqhci_host_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_l.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_l.i49, align 4
  %tobool.not.i50 = icmp eq ptr %22, null
  br i1 %tobool.not.i50, label %if.else.i55, label %if.then.i52, !prof !198

if.then.i52:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call.i51 = tail call i32 %22(ptr noundef %cq_host, i32 noundef 12) #9
  br label %cqhci_readl.exit57

if.else.i55:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr.i54 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #9, !srcloc !199
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  br label %cqhci_readl.exit57

cqhci_readl.exit57:                               ; preds = %if.else.i55, %if.then.i52
  %retval.0.i56 = phi i32 [ %call.i51, %if.then.i52 ], [ %26, %if.else.i55 ]
  %and13 = and i32 %retval.0.i56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %brmerge = select i1 %tobool14.not, i1 true, i1 %cmp3.i
  br i1 %brmerge, label %while.end, label %cqhci_readl.exit57.while.cond_crit_edge

cqhci_readl.exit57.while.cond_crit_edge:          ; preds = %cqhci_readl.exit57
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %cqhci_readl.exit57
  br i1 %cmp3.i, label %do.body20, label %while.end.if.end31_crit_edge

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr24 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %16) #9, !srcloc !202
  br label %if.end31

do.body26:                                        ; preds = %cqhci_readl.exit.do.body26_crit_edge, %entry.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %val)
  %mmio29 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %30 = ptrtoint ptr %mmio29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio29, align 4
  %add.ptr30 = getelementptr i8, ptr %31, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %29) #9, !srcloc !202
  br label %if.end31

if.end31:                                         ; preds = %do.body26, %do.body20, %while.end.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_enable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %activated = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %activated, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 8) #9
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %11, %if.else.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end9.critedge, label %if.then3

if.then3:                                         ; preds = %cqhci_readl.exit
  %and4 = and i32 %retval.0.i, -2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i24 = icmp eq ptr %15, null
  br i1 %tobool.not.i24, label %if.else.i28, label %if.then.i25, !prof !198

if.then.i25:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %15(ptr noundef %1, i32 noundef %and4, i32 noundef 8) #9
  br label %cqhci_writel.exit

if.else.i28:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %and4) #9
  %mmio.i26 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %mmio.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %16) #9, !srcloc !202
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i28, %if.then.i25
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i29 = icmp eq ptr %22, null
  br i1 %tobool.not.i29, label %do.body.i, label %if.then.i30, !prof !198

if.then.i30:                                      ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %22(ptr noundef %private.i, i16 noundef zeroext 35, i32 noundef 12) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i31 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i31, i16 8960) #9, !srcloc !209
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i30
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %write_l.i32 = getelementptr inbounds %struct.cqhci_host_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_l.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_l.i32, align 4
  %tobool.not.i33 = icmp eq ptr %28, null
  br i1 %tobool.not.i33, label %if.else.i37, label %if.then.i34, !prof !198

if.then.i34:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %28(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef 8) #9
  br label %if.end9

if.else.i37:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #9
  %mmio.i35 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %mmio.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %29) #9, !srcloc !202
  br label %if.end9

if.end9.critedge:                                 ; preds = %cqhci_readl.exit
  %ops.i39 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %32 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i39, align 4
  %write_w.i40 = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write_w.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_w.i40, align 4
  %tobool.not.i41 = icmp eq ptr %35, null
  br i1 %tobool.not.i41, label %do.body.i45, label %if.then.i42, !prof !198

if.then.i42:                                      ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %35(ptr noundef %private.i, i16 noundef zeroext 35, i32 noundef 12) #9
  br label %sdhci_writew.exit46

do.body.i45:                                      ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %ioaddr.i43 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %ioaddr.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i43, align 16
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 8960) #9, !srcloc !209
  br label %sdhci_writew.exit46

sdhci_writew.exit46:                              ; preds = %do.body.i45, %if.then.i42
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #9
  br label %if.end9

if.end9:                                          ; preds = %sdhci_writew.exit46, %if.else.i37, %if.then.i34, %entry.if.end9_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %read_l.i47 = getelementptr inbounds %struct.cqhci_host_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read_l.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_l.i47, align 4
  %tobool.not.i48 = icmp eq ptr %41, null
  br i1 %tobool.not.i48, label %if.else.i53, label %if.then.i50, !prof !198

if.then.i50:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i49 = tail call i32 %41(ptr noundef %1, i32 noundef 64) #9
  br label %cqhci_readl.exit55

if.else.i53:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i51 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %mmio.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %43, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #9, !srcloc !199
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  br label %cqhci_readl.exit55

cqhci_readl.exit55:                               ; preds = %if.else.i53, %if.then.i50
  %retval.0.i54 = phi i32 [ %call.i49, %if.then.i50 ], [ %45, %if.else.i53 ]
  %and11 = and i32 %retval.0.i54, -983041
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %write_l.i56 = getelementptr inbounds %struct.cqhci_host_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_l.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_l.i56, align 4
  %tobool.not.i57 = icmp eq ptr %49, null
  br i1 %tobool.not.i57, label %if.else.i61, label %if.then.i58, !prof !198

if.then.i58:                                      ; preds = %cqhci_readl.exit55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %49(ptr noundef %1, i32 noundef %and11, i32 noundef 64) #9
  br label %cqhci_writel.exit62

if.else.i61:                                      ; preds = %cqhci_readl.exit55
  call void @__sanitizer_cov_trace_pc() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %and11) #9
  %mmio.i59 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %mmio.i59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %52, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %50) #9, !srcloc !202
  br label %cqhci_writel.exit62

cqhci_writel.exit62:                              ; preds = %if.else.i61, %if.then.i58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdhci_tegra_update_dcmd_desc(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, ptr nocapture noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i7 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %private.i7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i7, align 8
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvquirks, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and4 = and i32 %7, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data, align 8
  %or = or i64 %9, 4194304
  store i64 %or, ptr %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_pre_enable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #9
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %if.else.i7, label %if.then.i4, !prof !198

if.then.i4:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %1, i32 noundef %or, i32 noundef 8) #9
  br label %cqhci_writel.exit

if.else.i7:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %mmio.i5 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %14) #9, !srcloc !202
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i7, %if.then.i4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_tegra_cqe_post_disable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #9
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and = and i32 %retval.0.i, -2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i5 = icmp eq ptr %13, null
  br i1 %tobool.not.i5, label %if.else.i9, label %if.then.i6, !prof !198

if.then.i6:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %1, i32 noundef %and, i32 noundef 8) #9
  br label %cqhci_writel.exit

if.else.i9:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %mmio.i7 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %14) #9, !srcloc !202
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i9, %if.then.i6
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i10 = icmp eq ptr %20, null
  br i1 %tobool.not.i10, label %do.body.i, label %if.then.i11, !prof !198

if.then.i11:                                      ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %20(ptr noundef %private.i, i16 noundef zeroext 0, i32 noundef 12) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i12 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 0) #9, !srcloc !209
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @tegra_sdhci_readw(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i11 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i11, align 8
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvquirks, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %reg)
  %cmp = icmp eq i32 %reg, 254
  %spec.select = and i1 %cmp, %tobool.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !215

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 %reg
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !206
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_writel(ptr nocapture noundef readonly %host, i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i41 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i41 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %reg)
  %cmp = icmp eq i32 %reg, 56
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge, !prof !215

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %val, -196609
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %val.addr.0 = phi i32 [ %and, %if.then ], [ %val, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !202
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvquirks, align 8
  %and4 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %reg)
  %cmp6 = icmp eq i32 %reg, 52
  %spec.select = and i1 %cmp6, %tobool5.not
  br i1 %spec.select, label %if.then13, label %do.body.if.end31_crit_edge, !prof !215

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr15 = getelementptr i8, ptr %8, i32 42
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #9, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  %10 = and i8 %9, -9
  %and18 = lshr i32 %val.addr.0, 5
  %11 = trunc i32 %and18 to i8
  %12 = and i8 %11, 8
  %gap_ctrl.0 = or i8 %10, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 16
  %add.ptr30 = getelementptr i8, ptr %14, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 %gap_ctrl.0) #9, !srcloc !221
  br label %if.end31

if.end31:                                         ; preds = %if.then13, %do.body.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #9
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #9
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_error, align 4
  %6 = ptrtoint ptr %data_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_error, align 4
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_set_dma_mask(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i9 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i9, align 8
  %dma_mask = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %call.i = tail call i32 @dma_set_mask(ptr noundef %7, i64 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_get_max_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %call1 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef -1) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_timeout(ptr noundef %host, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 288) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %sdhci_readl.exit.if.else_crit_edge, label %land.lhs.true

sdhci_readl.exit.if.else_crit_edge:               ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sdhci_readl.exit
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %8 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10999, i32 %9)
  %cmp = icmp ugt i32 %9, 10999
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %retval.0.i, 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sdhci_readl.exit.if.else_crit_edge
  %and = and i32 %retval.0.i, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i8 = icmp eq ptr %13, null
  br i1 %tobool.not.i8, label %do.body.i, label %if.then.i9, !prof !198

if.then.i9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %host, i32 noundef %val.0, i32 noundef 288) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  %ioaddr.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i10, align 16
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %14) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i9
  tail call void @__sdhci_set_timeout(ptr noundef %host, ptr noundef %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_get_ro(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call = tail call i32 @mmc_gpio_get_ro(ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i82 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i82 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i82, align 8
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #9
  %2 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %default_tap = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17
  %3 = ptrtoint ptr %default_tap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_tap, align 8
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %4)
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %8(ptr noundef %host, i32 noundef 288) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 288
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %12, %if.else.i ]
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i84 = icmp eq ptr %16, null
  br i1 %tobool.not.i84, label %if.else.i89, label %if.then.i86, !prof !198

if.then.i86:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i85 = tail call i32 %16(ptr noundef %host, i32 noundef 256) #9
  br label %sdhci_readl.exit91

if.else.i89:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i87 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %17 = ptrtoint ptr %ioaddr.i87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i87, align 16
  %add.ptr.i88 = getelementptr i8, ptr %18, i32 256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #9, !srcloc !199
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit91

sdhci_readl.exit91:                               ; preds = %if.else.i89, %if.then.i86
  %retval.0.i90 = phi i32 [ %call.i85, %if.then.i86 ], [ %20, %if.else.i89 ]
  %and5 = and i32 %retval.0.i, -569
  %and6 = and i32 %retval.0.i90, -520093701
  %21 = ptrtoint ptr %private.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private.i82, align 8
  %nvquirks.i = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nvquirks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nvquirks.i, align 8
  %and.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i92 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i92, label %sdhci_readl.exit91.if.then8_crit_edge, label %if.end.i

sdhci_readl.exit91.if.then8_crit_edge:            ; preds = %sdhci_readl.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.i:                                         ; preds = %sdhci_readl.exit91
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %25 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc.i, align 8
  %vqmmc.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 54, i32 1
  %27 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i.i = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end37_crit_edge, label %if.end4.i

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end4.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %28, i32 noundef 1700000, i32 noundef 1950000) #9
  %29 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc.i, align 8
  %vqmmc11.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 54, i32 1
  %31 = ptrtoint ptr %vqmmc11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vqmmc11.i, align 4
  %call12.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %32, i32 noundef 2700000, i32 noundef 3600000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 1
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %tegra_sdhci_is_pad_and_regulator_valid.exit, label %if.end4.i.if.then8_crit_edge

if.end4.i.if.then8_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

tegra_sdhci_is_pad_and_regulator_valid.exit:      ; preds = %if.end4.i
  %pad_control_available.i = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i82, i32 0, i32 5
  %33 = ptrtoint ptr %pad_control_available.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pad_control_available.i, align 2, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.i.not = icmp eq i8 %34, 0
  br i1 %tobool15.i.not, label %tegra_sdhci_is_pad_and_regulator_valid.exit.if.end37_crit_edge, label %tegra_sdhci_is_pad_and_regulator_valid.exit.if.then8_crit_edge

tegra_sdhci_is_pad_and_regulator_valid.exit.if.then8_crit_edge: ; preds = %tegra_sdhci_is_pad_and_regulator_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

tegra_sdhci_is_pad_and_regulator_valid.exit.if.end37_crit_edge: ; preds = %tegra_sdhci_is_pad_and_regulator_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then8:                                         ; preds = %tegra_sdhci_is_pad_and_regulator_valid.exit.if.then8_crit_edge, %if.end4.i.if.then8_crit_edge, %sdhci_readl.exit91.if.then8_crit_edge
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nvquirks, align 8
  %and9 = shl i32 %36, 3
  %37 = and i32 %and9, 32
  %38 = or i32 %and5, %37
  %and14 = and i32 %36, 8
  %39 = shl nuw nsw i32 %and14, 1
  %40 = or i32 %38, %39
  %and20 = shl i32 %36, 4
  %41 = and i32 %and20, 512
  %42 = or i32 %40, %41
  %and26 = lshr i32 %36, 1
  %43 = and i32 %and26, 8
  %44 = or i32 %42, %43
  %45 = shl nuw nsw i32 %and14, 2
  %46 = or i32 %45, %and6
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %tegra_sdhci_is_pad_and_regulator_valid.exit.if.end37_crit_edge, %if.end.i.if.end37_crit_edge
  %misc_ctrl.4 = phi i32 [ %and5, %tegra_sdhci_is_pad_and_regulator_valid.exit.if.end37_crit_edge ], [ %44, %if.then8 ], [ %and5, %if.end.i.if.end37_crit_edge ]
  %clk_ctrl.0 = phi i32 [ %and6, %tegra_sdhci_is_pad_and_regulator_valid.exit.if.end37_crit_edge ], [ %46, %if.then8 ], [ %and6, %if.end.i.if.end37_crit_edge ]
  %default_trim = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 0, i32 1
  %47 = ptrtoint ptr %default_trim to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %default_trim, align 4
  %shl = shl i32 %48, 24
  %or38 = or i32 %shl, %clk_ctrl.0
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i95 = icmp eq ptr %52, null
  br i1 %tobool.not.i95, label %do.body.i, label %if.then.i96, !prof !198

if.then.i96:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %52(ptr noundef %host, i32 noundef %misc_ctrl.4, i32 noundef 288) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %misc_ctrl.4) #9
  %ioaddr.i97 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %54 = ptrtoint ptr %ioaddr.i97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr.i97, align 16
  %add.ptr.i98 = getelementptr i8, ptr %55, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %53) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i96
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %write_l.i101 = getelementptr inbounds %struct.sdhci_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %write_l.i101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_l.i101, align 4
  %tobool.not.i102 = icmp eq ptr %59, null
  br i1 %tobool.not.i102, label %do.body.i106, label %if.then.i103, !prof !198

if.then.i103:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %59(ptr noundef %host, i32 noundef %or38, i32 noundef 256) #9
  br label %sdhci_writel.exit108

do.body.i106:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %or38) #9
  %ioaddr.i104 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i104, align 16
  %add.ptr.i105 = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %60) #9, !srcloc !202
  br label %sdhci_writel.exit108

sdhci_writel.exit108:                             ; preds = %do.body.i106, %if.then.i103
  %nvquirks39 = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %nvquirks39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nvquirks39, align 8
  %and40 = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %sdhci_writel.exit108.if.end46_crit_edge, label %if.then42

sdhci_writel.exit108.if.end46_crit_edge:          ; preds = %sdhci_writel.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then42:                                        ; preds = %sdhci_writel.exit108
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %tobool.not.i110 = icmp eq ptr %68, null
  br i1 %tobool.not.i110, label %if.else.i115, label %if.then.i112, !prof !198

if.then.i112:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %call.i111 = tail call i32 %68(ptr noundef %host, i32 noundef 480) #9
  br label %sdhci_readl.exit117

if.else.i115:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i113 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %69 = ptrtoint ptr %ioaddr.i113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr.i113, align 16
  %add.ptr.i114 = getelementptr i8, ptr %70, i32 480
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #9, !srcloc !199
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit117

sdhci_readl.exit117:                              ; preds = %if.else.i115, %if.then.i112
  %retval.0.i116 = phi i32 [ %call.i111, %if.then.i112 ], [ %72, %if.else.i115 ]
  %and44 = and i32 %retval.0.i116, -16
  %or45 = or i32 %and44, 7
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i, align 4
  %write_l.i119 = getelementptr inbounds %struct.sdhci_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %write_l.i119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_l.i119, align 4
  %tobool.not.i120 = icmp eq ptr %76, null
  br i1 %tobool.not.i120, label %do.body.i124, label %if.then.i121, !prof !198

if.then.i121:                                     ; preds = %sdhci_readl.exit117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %76(ptr noundef %host, i32 noundef %or45, i32 noundef 480) #9
  br label %sdhci_writel.exit126

do.body.i124:                                     ; preds = %sdhci_readl.exit117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %77 = tail call i32 @llvm.bswap.i32(i32 %or45) #9
  %ioaddr.i122 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %78 = ptrtoint ptr %ioaddr.i122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr.i122, align 16
  %add.ptr.i123 = getelementptr i8, ptr %79, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %77) #9, !srcloc !202
  br label %sdhci_writel.exit126

sdhci_writel.exit126:                             ; preds = %do.body.i124, %if.then.i121
  %pad_calib_required = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i82, i32 0, i32 4
  %80 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %pad_calib_required, align 1
  br label %if.end46

if.end46:                                         ; preds = %sdhci_writel.exit126, %sdhci_writel.exit108.if.end46_crit_edge
  %ddr_signaling = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i82, i32 0, i32 3
  %81 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %ddr_signaling, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i40 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %ddr_signaling = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i40, i32 0, i32 3
  %0 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ddr_signaling, align 4
  %1 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %timing, label %sw.default [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge69
    i32 10, label %sw.bb2
    i32 8, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge70
  ]

entry.sw.bb3_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge69
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge70
  %2 = ptrtoint ptr %ddr_signaling to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ddr_signaling, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %set_default_tap.0.off0 = phi i1 [ true, %sw.default ], [ true, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb ], [ false, %entry.sw.epilog_crit_edge ]
  %do_hs400_dll_cal.0.off0 = phi i1 [ false, %sw.default ], [ false, %sw.bb3 ], [ true, %sw.bb2 ], [ false, %sw.bb ], [ false, %entry.sw.epilog_crit_edge ]
  %cmp = phi i32 [ 256, %sw.default ], [ 256, %sw.bb3 ], [ 128, %sw.bb2 ], [ 128, %sw.bb ], [ 256, %entry.sw.epilog_crit_edge ]
  %iter.0 = phi i32 [ 32832, %sw.default ], [ 32832, %sw.bb3 ], [ 16448, %sw.bb2 ], [ 16448, %sw.bb ], [ 32832, %entry.sw.epilog_crit_edge ]
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %6(ptr noundef %host, i32 noundef 448) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 448
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !199
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  %and = and i32 %retval.0.i, -66912193
  %or7 = or i32 %and, %iter.0
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i42 = icmp eq ptr %14, null
  br i1 %tobool.not.i42, label %do.body.i, label %if.then.i43, !prof !198

if.then.i43:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %host, i32 noundef %or7, i32 noundef 448) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or7) #9
  %ioaddr.i44 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %17, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %15) #9, !srcloc !202
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i43
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_l.i47 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_l.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_l.i47, align 4
  %tobool.not.i48 = icmp eq ptr %21, null
  br i1 %tobool.not.i48, label %do.body.i52, label %if.then.i49, !prof !198

if.then.i49:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %21(ptr noundef %host, i32 noundef 0, i32 noundef 452) #9
  br label %sdhci_writel.exit53

do.body.i52:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %ioaddr.i50 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i50, align 16
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #9, !srcloc !202
  br label %sdhci_writel.exit53

sdhci_writel.exit53:                              ; preds = %do.body.i52, %if.then.i49
  %tuning_loop_count = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 76
  %24 = ptrtoint ptr %tuning_loop_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cmp, ptr %tuning_loop_count, align 4
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #9
  tail call fastcc void @tegra_sdhci_pad_autocalib(ptr noundef %host)
  %tuned_tap_delay = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 4
  %25 = ptrtoint ptr %tuned_tap_delay to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tuned_tap_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %brmerge = or i1 %set_default_tap.0.off0, %tobool.not
  br i1 %brmerge, label %if.else, label %if.then

if.then:                                          ; preds = %sdhci_writel.exit53
  call void @__sanitizer_cov_trace_pc() #11
  %conv10 = zext i8 %26 to i32
  br label %if.end

if.else:                                          ; preds = %sdhci_writel.exit53
  call void @__sanitizer_cov_trace_pc() #11
  %default_tap = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17
  %27 = ptrtoint ptr %default_tap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %default_tap, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %28, %if.else ], [ %conv10, %if.then ]
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %.sink)
  br i1 %do_hs400_dll_cal.0.off0, label %if.then15, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end
  %dqs_trim = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 1
  %29 = ptrtoint ptr %dqs_trim to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dqs_trim, align 8
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !198

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %34(ptr noundef %host, i32 noundef 268) #9
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 268
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !199
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %38, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -16129
  %conv.i = shl i32 %30, 8
  %shl.i = and i32 %conv.i, 65280
  %or.i = or i32 %and.i, %shl.i
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %42, null
  br i1 %tobool.not.i5.i, label %do.body.i.i, label %if.then.i6.i, !prof !198

if.then.i6.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %42(ptr noundef %host, i32 noundef %or.i, i32 noundef 268) #9
  br label %tegra_sdhci_set_dqs_trim.exit

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %ioaddr.i7.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %45, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %43) #9, !srcloc !202
  br label %tegra_sdhci_set_dqs_trim.exit

tegra_sdhci_set_dqs_trim.exit:                    ; preds = %do.body.i.i, %if.then.i6.i
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool.not.i.i55 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i55, label %if.else.i.i60, label %if.then.i.i57, !prof !198

if.then.i.i57:                                    ; preds = %tegra_sdhci_set_dqs_trim.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i56 = tail call i32 %49(ptr noundef %host, i32 noundef 432) #9
  br label %sdhci_readl.exit.i64

if.else.i.i60:                                    ; preds = %tegra_sdhci_set_dqs_trim.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i58 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %50 = ptrtoint ptr %ioaddr.i.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr.i.i58, align 16
  %add.ptr.i.i59 = getelementptr i8, ptr %51, i32 432
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #9, !srcloc !199
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %sdhci_readl.exit.i64

sdhci_readl.exit.i64:                             ; preds = %if.else.i.i60, %if.then.i.i57
  %retval.0.i.i61 = phi i32 [ %call.i.i56, %if.then.i.i57 ], [ %53, %if.else.i.i60 ]
  %or.i62 = or i32 %retval.0.i.i61, -2147483648
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %write_l.i.i63 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_l.i.i63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_l.i.i63, align 4
  %tobool.not.i50.i = icmp eq ptr %57, null
  br i1 %tobool.not.i50.i, label %do.body.i.i65, label %if.then.i51.i, !prof !198

if.then.i51.i:                                    ; preds = %sdhci_readl.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %57(ptr noundef %host, i32 noundef %or.i62, i32 noundef 432) #9
  br label %sdhci_writel.exit.i

do.body.i.i65:                                    ; preds = %sdhci_readl.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i62) #9
  %ioaddr.i52.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr.i52.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i52.i, align 16
  %add.ptr.i53.i = getelementptr i8, ptr %60, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %58) #9, !srcloc !202
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i65, %if.then.i51.i
  %call1.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call1.i, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 845) #9
  %ioaddr.i66 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr59.i = getelementptr i8, ptr %62, i32 444
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  %.mask60.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask60.i)
  %tobool.not61.i = icmp eq i32 %.mask60.i, 0
  br i1 %tobool.not61.i, label %sdhci_writel.exit.i.if.end20_crit_edge, label %sdhci_writel.exit.i.land.lhs.true.i_crit_edge

sdhci_writel.exit.i.land.lhs.true.i_crit_edge:    ; preds = %sdhci_writel.exit.i
  br label %land.lhs.true.i

sdhci_writel.exit.i.if.end20_crit_edge:           ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.then27.i.land.lhs.true.i_crit_edge, %sdhci_writel.exit.i.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %64 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr.i67 = getelementptr i8, ptr %65, i32 444
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  %.mask.i = and i32 %66, 128
  %tobool.not.i68 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i68, label %if.then27.i.if.end20_crit_edge, label %if.then27.i.land.lhs.true.i_crit_edge

if.then27.i.land.lhs.true.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then27.i.if.end20_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.end.i:                                        ; preds = %land.lhs.true.i
  %67 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr21.i = getelementptr i8, ptr %68, i32 444
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %.mask57.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask57.i)
  %tobool31.not.i = icmp eq i32 %.mask57.i, 0
  br i1 %tobool31.not.i, label %for.end.i.if.end20_crit_edge, label %do.end36.i

for.end.i.if.end20_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end36.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %70 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmc.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.71) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end36.i, %for.end.i.if.end20_crit_edge, %if.then27.i.if.end20_crit_edge, %sdhci_writel.exit.i.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_sdhci_voltage_switch(ptr nocapture noundef %host) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i4 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i4, align 8
  %nvquirks = getelementptr inbounds %struct.sdhci_tegra_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nvquirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvquirks, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pad_calib_required = getelementptr inbounds %struct.sdhci_tegra, ptr %private.i4, i32 0, i32 4
  %4 = ptrtoint ptr %pad_calib_required to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pad_calib_required, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_sdhci_writew(ptr noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %reg)
  %cmp = icmp eq i32 %reg, 14
  br i1 %cmp, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %entry
  %0 = lshr i16 %val, 8
  %trunc = trunc i16 %0 to i6
  %1 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.75)
  switch i6 %trunc, label %if.end.do.body_crit_edge [
    i6 21, label %if.end.if.then8_crit_edge
    i6 19, label %if.end.if.then8_crit_edge46
  ]

if.end.if.then8_crit_edge46:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge46
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !198

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i16 %5(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !206
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %9, %if.else.i.i ]
  %10 = and i16 %retval.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i = icmp eq i16 %10, 0
  br i1 %cmp.i, label %sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge, label %if.end.i

sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge: ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_sdhci_configure_card_clk.exit

if.end.i:                                         ; preds = %sdhci_readw.exit.i
  %and11.i = and i16 %retval.0.i.i, -5
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i24.i = icmp eq ptr %14, null
  br i1 %tobool.not.i24.i, label %do.body.i.i, label %if.then.i25.i, !prof !198

if.then.i25.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %host, i16 noundef zeroext %and11.i, i32 noundef 44) #9
  br label %tegra_sdhci_configure_card_clk.exit

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %15 = tail call i16 @llvm.bswap.i16(i16 %and11.i) #9
  %ioaddr.i26.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i26.i, align 16
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i, i16 %15) #9, !srcloc !209
  br label %tegra_sdhci_configure_card_clk.exit

tegra_sdhci_configure_card_clk.exit:              ; preds = %do.body.i.i, %if.then.i25.i, %sdhci_readw.exit.i.tegra_sdhci_configure_card_clk.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i = icmp ne i16 %10, 0
  br label %do.body

do.body:                                          ; preds = %tegra_sdhci_configure_card_clk.exit, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %is_tuning_cmd.0.off045 = phi i1 [ true, %tegra_sdhci_configure_card_clk.exit ], [ false, %if.end.do.body_crit_edge ], [ false, %entry.do.body_crit_edge ]
  %clk_enabled.0.off0 = phi i1 [ %tobool.i, %tegra_sdhci_configure_card_clk.exit ], [ true, %if.end.do.body_crit_edge ], [ true, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %18 = tail call i16 @llvm.bswap.i16(i16 %val)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %20, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %18) #9, !srcloc !209
  br i1 %is_tuning_cmd.0.off045, label %if.then12, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext 6) #9
  %ops.i.i23 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %22 = ptrtoint ptr %ops.i.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i23, align 4
  %read_w.i.i24 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read_w.i.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_w.i.i24, align 4
  %tobool.not.i.i25 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i25, label %if.else.i.i30, label %if.then.i.i27, !prof !198

if.then.i.i27:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i26 = tail call zeroext i16 %25(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i33

if.else.i.i30:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i29 = getelementptr i8, ptr %27, i32 44
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i29) #9, !srcloc !206
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  br label %sdhci_readw.exit.i33

sdhci_readw.exit.i33:                             ; preds = %if.else.i.i30, %if.then.i.i27
  %retval.0.i.i31 = phi i16 [ %call.i.i26, %if.then.i.i27 ], [ %29, %if.else.i.i30 ]
  %30 = and i16 %retval.0.i.i31, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %31 = icmp eq i16 %30, 0
  %cmp.i32 = xor i1 %clk_enabled.0.off0, %31
  br i1 %cmp.i32, label %sdhci_readw.exit.i33.if.end15_crit_edge, label %if.end.i37

sdhci_readw.exit.i33.if.end15_crit_edge:          ; preds = %sdhci_readw.exit.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i37:                                       ; preds = %sdhci_readw.exit.i33
  %and11.i34 = and i16 %retval.0.i.i31, -5
  %masksel.i = select i1 %clk_enabled.0.off0, i16 4, i16 0
  %reg.0.i = or i16 %and11.i34, %masksel.i
  %32 = ptrtoint ptr %ops.i.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i23, align 4
  %write_w.i.i35 = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write_w.i.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_w.i.i35, align 4
  %tobool.not.i24.i36 = icmp eq ptr %35, null
  br i1 %tobool.not.i24.i36, label %do.body.i.i41, label %if.then.i25.i38, !prof !198

if.then.i25.i38:                                  ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %35(ptr noundef %host, i16 noundef zeroext %reg.0.i, i32 noundef 44) #9
  br label %if.end15

do.body.i.i41:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %36 = tail call i16 @llvm.bswap.i16(i16 %reg.0.i) #9
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i27.i40 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i40, i16 %36) #9, !srcloc !209
  br label %if.end15

if.end15:                                         ; preds = %do.body.i.i41, %if.then.i25.i38, %sdhci_readw.exit.i33.if.end15_crit_edge, %do.body.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sdhci_writew(ptr nocapture noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %reg, label %do.body4 [
    i32 12, label %sw.bb
    i32 14, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xfer_mode_shadow = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %1 = ptrtoint ptr %xfer_mode_shadow to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %val, ptr %xfer_mode_shadow, align 8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %conv = zext i16 %val to i32
  %shl = shl nuw i32 %conv, 16
  %xfer_mode_shadow2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %2 = ptrtoint ptr %xfer_mode_shadow2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xfer_mode_shadow2, align 8
  %conv3 = zext i16 %3 to i32
  %or = or i32 %shl, %conv3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !202
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %7 = tail call i16 @llvm.bswap.i16(i16 %val)
  %ioaddr7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr7, align 16
  %add.ptr8 = getelementptr i8, ptr %9, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %7) #9, !srcloc !209
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.body, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sdhci_execute_tuning(ptr noundef %host, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %min.031 = phi i32 [ 10, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %min.031)
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call = tail call i32 @mmc_send_tuning(ptr noundef %1, i32 noundef %opcode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %min.031, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %min.0.lcssa = phi i32 [ %min.031, %while.body.while.end_crit_edge ], [ 255, %if.end.while.end_crit_edge ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3.while.cond1_crit_edge, %while.end
  %max.0.in = phi i32 [ %min.0.lcssa, %while.end ], [ %max.0, %while.body3.while.cond1_crit_edge ]
  %max.0 = add nuw nsw i32 %max.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %max.0.in)
  %cmp2 = icmp ult i32 %max.0.in, 254
  br i1 %cmp2, label %while.body3, label %while.cond1.while.end10_crit_edge

while.cond1.while.end10_crit_edge:                ; preds = %while.cond1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end10

while.body3:                                      ; preds = %while.cond1
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %max.0)
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %call5 = tail call i32 @mmc_send_tuning(ptr noundef %3, i32 noundef %opcode, ptr noundef null) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.body3.while.cond1_crit_edge, label %while.body3.while.end10_crit_edge

while.body3.while.end10_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end10

while.body3.while.cond1_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond1

while.end10:                                      ; preds = %while.body3.while.end10_crit_edge, %while.cond1.while.end10_crit_edge
  %max.1 = phi i32 [ %max.0, %while.cond1.while.end10_crit_edge ], [ %max.0.in, %while.body3.while.end10_crit_edge ]
  %sub = sub i32 %max.1, %min.0.lcssa
  %mul = mul i32 %sub, 3
  %div30 = lshr i32 %mul, 2
  %add11 = add nuw i32 %div30, %min.0.lcssa
  tail call fastcc void @tegra_sdhci_set_tap(ptr noundef %host, i32 noundef %add11)
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call13 = tail call i32 @mmc_send_tuning(ptr noundef %5, i32 noundef %opcode, ptr noundef null) #9
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @sdhci_resume_host(ptr noundef %1) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call12, %if.then14 ], [ %call6, %if.end5.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %call17 = tail call i32 @cqhci_resume(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sdhci_resume_host(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.disable_clk_crit_edge

if.end.disable_clk_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_clk

if.end5:                                          ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call9 = tail call i32 @cqhci_resume(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %suspend_host

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

suspend_host:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #9
  br label %disable_clk

disable_clk:                                      ; preds = %suspend_host, %if.end.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.disable_clk_crit_edge ], [ %call9, %suspend_host ]
  %call15 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_clk ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_tegra_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !123, !125, !127, !128, !129, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__initcall__kmod_sdhci_tegra__306_1892_sdhci_tegra_driver_init6, !1, !"__initcall__kmod_sdhci_tegra__306_1892_sdhci_tegra_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1892, i32 1}
!2 = !{ptr @__exitcall_sdhci_tegra_driver_exit, !1, !"__exitcall_sdhci_tegra_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1894, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1895, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1896, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1883, i32 11}
!12 = !{ptr @sdhci_tegra_driver, !13, !"sdhci_tegra_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1881, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1678, i32 63}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1701, i32 34}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1707, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sdhci_tegra_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sdhci_tegra_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1714, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sdhci_tegra_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @sdhci_tegra_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1725, i32 8}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1731, i32 11}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1734, i32 3}
!37 = !{ptr @sdhci_tegra_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sdhci_tegra_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1132, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tegra_sdhci_init_pinctrl_info.__UNIQUE_ID_ddebug305, !40, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1138, i32 32}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1145, i32 32}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1152, i32 51}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1154, i32 3}
!52 = !{ptr @tegra_sdhci_init_pinctrl_info._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra_sdhci_init_pinctrl_info._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1160, i32 51}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1162, i32 3}
!58 = !{ptr @tegra_sdhci_init_pinctrl_info._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_sdhci_init_pinctrl_info._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 488, i32 5}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tegra_sdhci_set_padctrl._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tegra_sdhci_set_padctrl._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 508, i32 5}
!67 = !{ptr @tegra_sdhci_set_padctrl._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tegra_sdhci_set_padctrl._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 514, i32 5}
!71 = !{ptr @tegra_sdhci_set_padctrl._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra_sdhci_set_padctrl._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 570, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tegra_sdhci_pad_autocalib._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tegra_sdhci_pad_autocalib._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 579, i32 4}
!80 = !{ptr @tegra_sdhci_pad_autocalib._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tegra_sdhci_pad_autocalib._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 773, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tegra_sdhci_set_clock._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @tegra_sdhci_set_clock._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 982, i32 4}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tegra_sdhci_post_tuning.__UNIQUE_ID_ddebug304, !88, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 923, i32 3}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 737, i32 52}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 593, i32 4}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 599, i32 4}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 605, i32 4}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 611, i32 4}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 617, i32 4}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 623, i32 4}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 629, i32 4}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 635, i32 4}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 650, i32 4}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 655, i32 4}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 661, i32 4}
!120 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry.59, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 666, i32 4}
!122 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 672, i32 4}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 677, i32 4}
!127 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry.62, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 683, i32 4}
!131 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry.66, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 688, i32 4}
!133 = !{ptr @tegra_sdhci_parse_pad_autocal_dt._entry_ptr.67, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 716, i32 53}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 721, i32 53}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 726, i32 53}
!140 = !{ptr @sdhci_tegra_cqhci_ops, !141, !"sdhci_tegra_cqhci_ops", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1336, i32 36}
!142 = !{ptr @sdhci_tegra_dt_match, !143, !"sdhci_tegra_dt_match", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1559, i32 34}
!144 = !{ptr @soc_data_tegra194, !145, !"soc_data_tegra194", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1546, i32 42}
!146 = !{ptr @sdhci_tegra186_pdata, !147, !"sdhci_tegra186_pdata", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1522, i32 38}
!148 = !{ptr @tegra186_sdhci_ops, !149, !"tegra186_sdhci_ops", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1507, i32 31}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 847, i32 3}
!152 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tegra_sdhci_hs400_dll_cal._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @tegra_sdhci_hs400_dll_cal._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @soc_data_tegra186, !156, !"soc_data_tegra186", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1532, i32 42}
!157 = !{ptr @soc_data_tegra210, !158, !"soc_data_tegra210", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1494, i32 42}
!159 = !{ptr @sdhci_tegra210_pdata, !160, !"sdhci_tegra210_pdata", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1484, i32 38}
!161 = !{ptr @tegra210_sdhci_ops, !162, !"tegra210_sdhci_ops", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1469, i32 31}
!163 = !{ptr @soc_data_tegra124, !164, !"soc_data_tegra124", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1463, i32 42}
!165 = !{ptr @sdhci_tegra124_pdata, !166, !"sdhci_tegra124_pdata", i1 false, i1 false}
!166 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1452, i32 38}
!167 = !{ptr @tegra114_sdhci_ops, !168, !"tegra114_sdhci_ops", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1420, i32 31}
!169 = !{ptr @soc_data_tegra114, !170, !"soc_data_tegra114", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1446, i32 42}
!171 = !{ptr @sdhci_tegra114_pdata, !172, !"sdhci_tegra114_pdata", i1 false, i1 false}
!172 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1435, i32 38}
!173 = !{ptr @soc_data_tegra30, !174, !"soc_data_tegra30", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1410, i32 42}
!175 = !{ptr @sdhci_tegra30_pdata, !176, !"sdhci_tegra30_pdata", i1 false, i1 false}
!176 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1390, i32 38}
!177 = !{ptr @tegra_sdhci_ops, !178, !"tegra_sdhci_ops", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1359, i32 31}
!179 = !{ptr @soc_data_tegra20, !180, !"soc_data_tegra20", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1382, i32 42}
!181 = !{ptr @sdhci_tegra20_pdata, !182, !"sdhci_tegra20_pdata", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1373, i32 38}
!183 = !{ptr @sdhci_tegra_dev_pm_ops, !184, !"sdhci_tegra_dev_pm_ops", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/sdhci-tegra.c", i32 1875, i32 32}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148810984, i64 2148810989, i64 2148811002, i64 2148811046, i64 2148811080, i64 2148811101}
!195 = !{i8 0, i8 2}
!196 = !{i64 528642, i64 528669}
!197 = !{i64 529337, i64 529364, i64 529397, i64 529418, i64 529445, i64 529471}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 6279198}
!200 = !{i64 2155555814}
!201 = !{i64 2155553844}
!202 = !{i64 6278780}
!203 = !{i64 2148242738}
!204 = !{i64 727561, i64 727586, i64 727608, i64 727624, i64 727636, i64 727656, i64 727680, i64 727696, i64 727708}
!205 = !{i64 2148242926}
!206 = !{i64 6278360}
!207 = !{i64 2155556518}
!208 = !{i64 2155554450}
!209 = !{i64 6278160}
!210 = !{i64 2155579795}
!211 = !{i64 2155580293}
!212 = !{i64 2155607167}
!213 = !{i64 2155607576}
!214 = !{i64 2155607969}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i64 2155567717}
!217 = !{i64 2155568953}
!218 = !{i64 6278978}
!219 = !{i64 2155569557}
!220 = !{i64 2155569794}
!221 = !{i64 6278583}
!222 = !{i64 2155595315}
!223 = !{i64 2155595813}
!224 = !{i64 2155570131}
!225 = !{i64 2155567987}
!226 = !{i64 2155568496}
