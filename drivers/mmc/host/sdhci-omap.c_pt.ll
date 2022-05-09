; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-omap.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdhci_omap_data = type { i32, i32, i8 }
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
%struct.sdhci_omap_host = type { ptr, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_sdhci_omap__306_1493_sdhci_omap_driver_init6 = internal global ptr @sdhci_omap_driver_init, section ".initcall6.init", align 4
@sdhci_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_omap_probe, ptr @sdhci_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @omap_sdhci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_omap_driver_exit = internal global ptr @sdhci_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [50 x i8] c"sdhci_omap.description=SDHCI driver for OMAP SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [41 x i8] c"sdhci_omap.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [44 x i8] c"sdhci_omap.file=drivers/mmc/host/sdhci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [26 x i8] c"sdhci_omap.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias311 = internal constant [37 x i8] c"sdhci_omap.alias=platform:sdhci_omap\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhci-omap\00", [21 x i8] zeroinitializer }, align 32
@omap_sdhci_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k2g_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am335_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@sdhci_omap_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_runtime_suspend, ptr @sdhci_omap_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no sdhci omap data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdhci_omap_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/sdhci-omap.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr = internal global ptr @sdhci_omap_probe._entry, section ".printk_index", align 4
@sdhci_omap_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_omap_ops, i32 1660977152, i32 213000 }, [20 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed sdhci_pltfm_init\0A\00", [39 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr.8 = internal global ptr @sdhci_omap_probe._entry.6, section ".printk_index", align 4
@sdhci_omap_soc_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.35, ptr null, ptr @.str.36, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rev11\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"4809c000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"480b4000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"480ad000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set clock to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr.16 = internal global ptr @sdhci_omap_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pbias\00", [26 x i8] zeroinitializer }, align 32
@sdhci_omap_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 1, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhci_omap\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get pbias regulator %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr.22 = internal global ptr @sdhci_omap_probe._entry.20, section ".printk_index", align 4
@sdhci_omap_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set system capabilities\0A\00", [61 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr.25 = internal global ptr @sdhci_omap_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,non-removable\00", [47 x i8] zeroinitializer }, align 32
@sdhci_omap_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sdhci_omap_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1340, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using old ti,non-removable property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdhci_omap_probe._entry_ptr.31 = internal global ptr @sdhci_omap_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@sdhci_omap_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_omap_set_clock, ptr @sdhci_omap_set_power, ptr @sdhci_omap_irq, ptr null, ptr @sdhci_omap_enable_dma, ptr @sdhci_pltfm_clk_get_max_clock, ptr @sdhci_omap_get_min_clock, ptr null, ptr null, ptr @sdhci_omap_set_timeout, ptr @sdhci_omap_set_bus_width, ptr @sdhci_omap_init_74_clocks, ptr null, ptr @sdhci_omap_reset, ptr null, ptr @sdhci_omap_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdhci_omap_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout waiting on controller reset in %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdhci_omap_reset\00", [47 x i8] zeroinitializer }, align 32
@sdhci_omap_reset._entry_ptr = internal global ptr @sdhci_omap_reset._entry, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DRA7[45]*\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1.[01]\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vqmmc\00", [26 x i8] zeroinitializer }, align 32
@sdhci_omap_set_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 979, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vqmmc regulator missing for pbias\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdhci_omap_set_capabilities\00", [36 x i8] zeroinitializer }, align 32
@sdhci_omap_set_capabilities._entry_ptr = internal global ptr @sdhci_omap_set_capabilities._entry, section ".printk_index", align 4
@sdhci_omap_start_signal_voltage_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to switch IO voltage to %dmV\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sdhci_omap_start_signal_voltage_switch\00", [57 x i8] zeroinitializer }, align 32
@sdhci_omap_start_signal_voltage_switch._entry_ptr = internal global ptr @sdhci_omap_start_signal_voltage_switch._entry, section ".printk_index", align 4
@sdhci_omap_start_signal_voltage_switch.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IO voltage switched to %dmV\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_omap_conf_bus_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 238, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"misconfigured CAPA: %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_omap_conf_bus_power\00", [38 x i8] zeroinitializer }, align 32
@sdhci_omap_conf_bus_power._entry_ptr = internal global ptr @sdhci_omap_conf_bus_power._entry, section ".printk_index", align 4
@sdhci_omap_enable_iov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vqmmc set voltage failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_omap_enable_iov\00", [42 x i8] zeroinitializer }, align 32
@sdhci_omap_enable_iov._entry_ptr = internal global ptr @sdhci_omap_enable_iov._entry, section ".printk_index", align 4
@sdhci_omap_set_pbias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pbias set voltage failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_omap_set_pbias\00", [43 x i8] zeroinitializer }, align 32
@sdhci_omap_set_pbias._entry_ptr = internal global ptr @sdhci_omap_set_pbias._entry, section ".printk_index", align 4
@sdhci_omap_set_pbias._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pbias reg enable fail\0A\00", [41 x i8] zeroinitializer }, align 32
@sdhci_omap_set_pbias._entry_ptr.51 = internal global ptr @sdhci_omap_set_pbias._entry.49, section ".printk_index", align 4
@sdhci_omap_set_pbias._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pbias reg disable fail\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_omap_set_pbias._entry_ptr.54 = internal global ptr @sdhci_omap_set_pbias._entry.52, section ".printk_index", align 4
@sdhci_omap_set_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to select pinctrl state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_omap_set_timing\00", [42 x i8] zeroinitializer }, align 32
@sdhci_omap_set_timing._entry_ptr = internal global ptr @sdhci_omap_set_timing._entry, section ".printk_index", align 4
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu_thermal\00", [20 x i8] zeroinitializer }, align 32
@sdhci_omap_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to get thermal zone for tuning\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_omap_execute_tuning\00", [38 x i8] zeroinitializer }, align 32
@sdhci_omap_execute_tuning._entry_ptr = internal global ptr @sdhci_omap_execute_tuning._entry, section ".printk_index", align 4
@sdhci_omap_execute_tuning._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to find match\0A\00", [42 x i8] zeroinitializer }, align 32
@sdhci_omap_execute_tuning._entry_ptr.62 = internal global ptr @sdhci_omap_execute_tuning._entry.60, section ".printk_index", align 4
@sdhci_omap_execute_tuning._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tuning failed\0A\00", [17 x i8] zeroinitializer }, align 32
@sdhci_omap_execute_tuning._entry_ptr.65 = internal global ptr @sdhci_omap_execute_tuning._entry.63, section ".printk_index", align 4
@sdhci_omap_config_iodelay_pinctrl_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot get pinctrl\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sdhci_omap_config_iodelay_pinctrl_state\00", [56 x i8] zeroinitializer }, align 32
@sdhci_omap_config_iodelay_pinctrl_state._entry_ptr = internal global ptr @sdhci_omap_config_iodelay_pinctrl_state._entry, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@sdhci_omap_config_iodelay_pinctrl_state._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.3, i32 1141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no pinctrl state for default mode\0A\00", [61 x i8] zeroinitializer }, align 32
@sdhci_omap_config_iodelay_pinctrl_state._entry_ptr.71 = internal global ptr @sdhci_omap_config_iodelay_pinctrl_state._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdr104\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ddr50\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdr50\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdr25\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdr12\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddr_1_8v\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddr_3_3v\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hs\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hs200_1_8v\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@sdhci_omap_iodelay_pinctrl_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no pinctrl state for %s mode\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdhci_omap_iodelay_pinctrl_state\00", [63 x i8] zeroinitializer }, align 32
@sdhci_omap_iodelay_pinctrl_state._entry_ptr = internal global ptr @sdhci_omap_iodelay_pinctrl_state._entry, section ".printk_index", align 4
@omap2430_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 0, i32 256, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap3_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 0, i32 256, i8 0 }, [20 x i8] zeroinitializer }, align 32
@omap4_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, [20 x i8] zeroinitializer }, align 32
@omap5_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, [20 x i8] zeroinitializer }, align 32
@dra7_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 1 }, [20 x i8] zeroinitializer }, align 32
@k2g_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 0 }, [20 x i8] zeroinitializer }, align 32
@am335_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, [20 x i8] zeroinitializer }, align 32
@am437_data = internal constant { %struct.sdhci_omap_data, [20 x i8] } { %struct.sdhci_omap_data { i32 256, i32 512, i8 2 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"sdhci_omap_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1482, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1486, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"omap_sdhci_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1070, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"sdhci_omap_dev_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1475, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1233, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"sdhci_omap_pdata\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1012, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1245, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"sdhci_omap_soc_devices\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1203, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1270, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1271, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1273, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1275, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1282, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1290, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1294, i32 54 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1299, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1314, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1320, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1335, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1339, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1340, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1366, i32 55 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"sdhci_omap_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 929, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 869, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1205, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1206, i32 15 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 975, i32 45 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 979, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 594, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 598, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 237, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 208, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 164, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 173, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 184, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 619, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 344, i32 46 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 346, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 404, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 487, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1135, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1139, i32 51 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1141, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1146, i32 54 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1151, i32 54 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1156, i32 54 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1161, i32 54 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1166, i32 54 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1171, i32 54 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1176, i32 55 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1183, i32 54 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1193, i32 54 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1096, i32 21 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1104, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [14 x i8] c"omap2430_data\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1025, i32 37 }
@___asan_gen_.360 = private unnamed_addr constant [11 x i8] c"omap3_data\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1030, i32 37 }
@___asan_gen_.363 = private unnamed_addr constant [11 x i8] c"omap4_data\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1035, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant [11 x i8] c"omap5_data\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1041, i32 37 }
@___asan_gen_.369 = private unnamed_addr constant [10 x i8] c"dra7_data\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1064, i32 37 }
@___asan_gen_.372 = private unnamed_addr constant [9 x i8] c"k2g_data\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1047, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant [11 x i8] c"am335_data\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1052, i32 37 }
@___asan_gen_.378 = private unnamed_addr constant [11 x i8] c"am437_data\00", align 1
@___asan_gen_.379 = private constant [33 x i8] c"../drivers/mmc/host/sdhci-omap.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1058, i32 37 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_sdhci_omap_driver_exit, ptr @__initcall__kmod_sdhci_omap__306_1493_sdhci_omap_driver_init6, ptr @sdhci_omap_conf_bus_power._entry, ptr @sdhci_omap_conf_bus_power._entry_ptr, ptr @sdhci_omap_config_iodelay_pinctrl_state._entry, ptr @sdhci_omap_config_iodelay_pinctrl_state._entry.69, ptr @sdhci_omap_config_iodelay_pinctrl_state._entry_ptr, ptr @sdhci_omap_config_iodelay_pinctrl_state._entry_ptr.71, ptr @sdhci_omap_driver_exit, ptr @sdhci_omap_enable_iov._entry, ptr @sdhci_omap_enable_iov._entry_ptr, ptr @sdhci_omap_execute_tuning._entry, ptr @sdhci_omap_execute_tuning._entry.60, ptr @sdhci_omap_execute_tuning._entry.63, ptr @sdhci_omap_execute_tuning._entry_ptr, ptr @sdhci_omap_execute_tuning._entry_ptr.62, ptr @sdhci_omap_execute_tuning._entry_ptr.65, ptr @sdhci_omap_iodelay_pinctrl_state._entry, ptr @sdhci_omap_iodelay_pinctrl_state._entry_ptr, ptr @sdhci_omap_probe._entry, ptr @sdhci_omap_probe._entry.14, ptr @sdhci_omap_probe._entry.20, ptr @sdhci_omap_probe._entry.23, ptr @sdhci_omap_probe._entry.28, ptr @sdhci_omap_probe._entry.6, ptr @sdhci_omap_probe._entry_ptr, ptr @sdhci_omap_probe._entry_ptr.16, ptr @sdhci_omap_probe._entry_ptr.22, ptr @sdhci_omap_probe._entry_ptr.25, ptr @sdhci_omap_probe._entry_ptr.31, ptr @sdhci_omap_probe._entry_ptr.8, ptr @sdhci_omap_reset._entry, ptr @sdhci_omap_reset._entry_ptr, ptr @sdhci_omap_set_capabilities._entry, ptr @sdhci_omap_set_capabilities._entry_ptr, ptr @sdhci_omap_set_pbias._entry, ptr @sdhci_omap_set_pbias._entry.49, ptr @sdhci_omap_set_pbias._entry.52, ptr @sdhci_omap_set_pbias._entry_ptr, ptr @sdhci_omap_set_pbias._entry_ptr.51, ptr @sdhci_omap_set_pbias._entry_ptr.54, ptr @sdhci_omap_set_timing._entry, ptr @sdhci_omap_set_timing._entry_ptr, ptr @sdhci_omap_start_signal_voltage_switch._entry, ptr @sdhci_omap_start_signal_voltage_switch._entry_ptr, ptr @sdhci_omap_driver, ptr @.str, ptr @omap_sdhci_match, ptr @sdhci_omap_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sdhci_omap_pdata, ptr @.str.7, ptr @sdhci_omap_soc_devices, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @sdhci_omap_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @omap2430_data, ptr @omap3_data, ptr @omap4_data, ptr @omap5_data, ptr @dra7_data, ptr @k2g_data, ptr @am335_data, ptr @am437_data], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sdhci_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_soc_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_set_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_start_signal_voltage_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_conf_bus_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_enable_iov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_set_pbias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_set_pbias._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_set_pbias._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_set_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_execute_tuning._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_execute_tuning._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_config_iodelay_pinctrl_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_config_iodelay_pinctrl_state._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_omap_iodelay_pinctrl_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2g_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am437_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_omap_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_omap_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @omap_sdhci_match, ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %offset6 = getelementptr inbounds %struct.sdhci_omap_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset6, align 4
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_omap_pdata, i32 noundef 72) #9
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 81
  %private.i272 = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 11, i32 21
  %host21 = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i272, i32 0, i32 5
  %5 = ptrtoint ptr %host21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %host21, align 4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %base = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 11, i32 22
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %base, align 4
  %dev22 = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 11, i32 23
  %9 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %dev22, align 4
  %power_mode = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i272, i32 0, i32 7
  %10 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %power_mode, align 1
  %timing = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i272, i32 0, i32 8
  %11 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timing, align 2
  %flags = getelementptr inbounds %struct.sdhci_omap_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %flags23 = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i272, i32 0, i32 9
  %14 = ptrtoint ptr %flags23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags23, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %omap_offset24 = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 13, i32 5
  %17 = ptrtoint ptr %omap_offset24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %omap_offset24, align 4
  %con = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 13, i32 6
  %18 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -22, ptr %con, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %3
  store ptr %add.ptr, ptr %ioaddr, align 16
  %19 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7, align 4
  %add = add i32 %20, %3
  %mapbase = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 5
  %21 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %mapbase, align 4
  %mmc26 = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 10
  %22 = ptrtoint ptr %mmc26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc26, align 8
  tail call void @sdhci_get_property(ptr noundef %pdev) #9
  %call27 = tail call i32 @mmc_of_parse(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end18.err_pltfm_free_crit_edge

if.end18.err_pltfm_free_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pltfm_free

if.end30:                                         ; preds = %if.end18
  %call31 = tail call ptr @soc_device_match(ptr noundef nonnull @sdhci_omap_soc_devices) #9
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.if.end51_crit_edge, label %if.then33

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then33:                                        ; preds = %if.end30
  %24 = ptrtoint ptr %private.i272 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.9, ptr %private.i272, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then33.dev_name.exit_crit_edge

if.then33.dev_name.exit_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then33.dev_name.exit_crit_edge
  %retval.0.i273 = phi ptr [ %28, %if.end.i ], [ %26, %if.then33.dev_name.exit_crit_edge ]
  %call35 = tail call i32 @strcmp(ptr noundef %retval.0.i273, ptr noundef nonnull dereferenceable(13) @.str.10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %dev_name.exit.if.end38_crit_edge

dev_name.exit.if.end38_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  %29 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 96000000, ptr %f_max, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %dev_name.exit.if.end38_crit_edge
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i275 = icmp eq ptr %31, null
  br i1 %tobool.not.i275, label %if.end.i276, label %if.end38.dev_name.exit278_crit_edge

if.end38.dev_name.exit278_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit278

if.end.i276:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit278

dev_name.exit278:                                 ; preds = %if.end.i276, %if.end38.dev_name.exit278_crit_edge
  %retval.0.i277 = phi ptr [ %33, %if.end.i276 ], [ %31, %if.end38.dev_name.exit278_crit_edge ]
  %call40 = tail call i32 @strcmp(ptr noundef %retval.0.i277, ptr noundef nonnull dereferenceable(13) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %dev_name.exit278.if.end44_crit_edge

dev_name.exit278.if.end44_crit_edge:              ; preds = %dev_name.exit278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %dev_name.exit278
  call void @__sanitizer_cov_trace_pc() #11
  %f_max43 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  %34 = ptrtoint ptr %f_max43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 48000000, ptr %f_max43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %dev_name.exit278.if.end44_crit_edge
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i280 = icmp eq ptr %36, null
  br i1 %tobool.not.i280, label %if.end.i281, label %if.end44.dev_name.exit283_crit_edge

if.end44.dev_name.exit283_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit283

if.end.i281:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit283

dev_name.exit283:                                 ; preds = %if.end.i281, %if.end44.dev_name.exit283_crit_edge
  %retval.0.i282 = phi ptr [ %38, %if.end.i281 ], [ %36, %if.end44.dev_name.exit283_crit_edge ]
  %call46 = tail call i32 @strcmp(ptr noundef %retval.0.i282, ptr noundef nonnull dereferenceable(13) @.str.12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %dev_name.exit283.if.end51_crit_edge

dev_name.exit283.if.end51_crit_edge:              ; preds = %dev_name.exit283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %dev_name.exit283
  call void @__sanitizer_cov_trace_pc() #11
  %f_max49 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  %39 = ptrtoint ptr %f_max49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 48000000, ptr %f_max49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %dev_name.exit283.if.end51_crit_edge, %if.end30.if.end51_crit_edge
  %call52 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %23) #9
  br i1 %call52, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 17
  %40 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps2, align 4
  %or = or i32 %41, 262144
  store i32 %or, ptr %caps2, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %call55 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %42 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call55, ptr %private.i, align 128
  %cmp.i284 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call55 to i32
  br label %err_pltfm_free

if.end61:                                         ; preds = %if.end54
  %f_max63 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  %44 = ptrtoint ptr %f_max63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_max63, align 8
  %call64 = tail call i32 @clk_set_rate(ptr noundef %call55, i32 noundef %45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %f_max63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_max63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %47) #12
  br label %err_pltfm_free

if.end71:                                         ; preds = %if.end61
  %call72 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  %pbias = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i272, i32 0, i32 3
  %48 = ptrtoint ptr %pbias to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call72, ptr %pbias, align 4
  %cmp.i285 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then75, label %if.end71.if.end89_crit_edge

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then75:                                        ; preds = %if.end71
  %49 = ptrtoint ptr %call72 to i32
  %cmp.not = icmp eq ptr %call72, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %do.body80, label %if.then75.err_pltfm_free_crit_edge

if.then75.err_pltfm_free_crit_edge:               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pltfm_free

do.body80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_omap_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_omap_probe, %if.then85)) #9
          to label %if.end89 [label %if.then85], !srcloc !206

if.then85:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_omap_probe.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef -19) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %do.body80, %if.end71.if.end89_crit_edge
  %pbias_enabled = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 12
  %50 = ptrtoint ptr %pbias_enabled to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %pbias_enabled, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #9
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i286 = icmp slt i32 %call.i, 0
  br i1 %cmp.i286, label %if.then.i, label %if.end96

if.then.i:                                        ; preds = %if.end89
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !208
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end95_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end95_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  br label %do.end95

do.end95:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end95_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  br label %err_rpm_disable

if.end96:                                         ; preds = %if.end89
  %52 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev22, align 4
  %call.i.i = tail call ptr @regulator_get(ptr noundef %53, ptr noundef nonnull @.str.17) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sdhci_omap_regulator_get_caps.exit.thread.i, label %sdhci_omap_regulator_get_caps.exit.i

sdhci_omap_regulator_get_caps.exit.i:             ; preds = %if.end96
  %call2.i.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i.i, i32 noundef 1700000, i32 noundef 1950000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 67108864
  %call5.i.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i.i, i32 noundef 2700000, i32 noundef 3150000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  %or8.i.i = or i32 %spec.select.i.i, 33554432
  %caps.1.i.i = select i1 %tobool6.not.i.i, i32 %spec.select.i.i, i32 %or8.i.i
  %call10.i.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i.i, i32 noundef 3150000, i32 noundef 3600000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  %or13.i.i = or i32 %caps.1.i.i, 16777216
  %caps.2.i.i = select i1 %tobool11.not.i.i, i32 %caps.1.i.i, i32 %or13.i.i
  tail call void @regulator_put(ptr noundef %call.i.i) #9
  %call.i4.i = tail call ptr @regulator_get(ptr noundef %53, ptr noundef nonnull @.str.37) #9
  %cmp.i.i5.i = icmp ugt ptr %call.i4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i5.i, label %do.end.i, label %sdhci_omap_regulator_get_caps.exit.i.if.else.thread.i_crit_edge

sdhci_omap_regulator_get_caps.exit.i.if.else.thread.i_crit_edge: ; preds = %sdhci_omap_regulator_get_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.thread.i

sdhci_omap_regulator_get_caps.exit.thread.i:      ; preds = %if.end96
  %call.i441.i = tail call ptr @regulator_get(ptr noundef %53, ptr noundef nonnull @.str.37) #9
  %cmp.i.i542.i = icmp ugt ptr %call.i441.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i542.i, label %sdhci_omap_regulator_get_caps.exit.thread.i.sdhci_omap_set_capabilities.exit_crit_edge, label %sdhci_omap_regulator_get_caps.exit.thread.i.if.else.thread.i_crit_edge

sdhci_omap_regulator_get_caps.exit.thread.i.if.else.thread.i_crit_edge: ; preds = %sdhci_omap_regulator_get_caps.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.thread.i

sdhci_omap_regulator_get_caps.exit.thread.i.sdhci_omap_set_capabilities.exit_crit_edge: ; preds = %sdhci_omap_regulator_get_caps.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_omap_set_capabilities.exit

if.else.thread.i:                                 ; preds = %sdhci_omap_regulator_get_caps.exit.thread.i.if.else.thread.i_crit_edge, %sdhci_omap_regulator_get_caps.exit.i.if.else.thread.i_crit_edge
  %call.i446.i = phi ptr [ %call.i441.i, %sdhci_omap_regulator_get_caps.exit.thread.i.if.else.thread.i_crit_edge ], [ %call.i4.i, %sdhci_omap_regulator_get_caps.exit.i.if.else.thread.i_crit_edge ]
  %retval.0.i44.i = phi i32 [ -1, %sdhci_omap_regulator_get_caps.exit.thread.i.if.else.thread.i_crit_edge ], [ %caps.2.i.i, %sdhci_omap_regulator_get_caps.exit.i.if.else.thread.i_crit_edge ]
  %call2.i6.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i446.i, i32 noundef 1700000, i32 noundef 1950000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call2.i6.i, 0
  %spec.select.i8.i = select i1 %tobool.not.i7.i, i32 0, i32 67108864
  %call5.i9.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i446.i, i32 noundef 2700000, i32 noundef 3150000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i9.i)
  %tobool6.not.i10.i = icmp eq i32 %call5.i9.i, 0
  %or8.i11.i = or i32 %spec.select.i8.i, 33554432
  %caps.1.i12.i = select i1 %tobool6.not.i10.i, i32 %spec.select.i8.i, i32 %or8.i11.i
  %call10.i13.i = tail call i32 @regulator_is_supported_voltage(ptr noundef %call.i446.i, i32 noundef 3150000, i32 noundef 3600000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i13.i)
  %tobool11.not.i14.i = icmp eq i32 %call10.i13.i, 0
  %or13.i15.i = or i32 %caps.1.i12.i, 16777216
  %caps.2.i16.i = select i1 %tobool11.not.i14.i, i32 %caps.1.i12.i, i32 %or13.i15.i
  tail call void @regulator_put(ptr noundef %call.i446.i) #9
  %and25.i = and i32 %caps.2.i16.i, %retval.0.i44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i44.i)
  %cmp.not26.i = icmp eq i32 %retval.0.i44.i, -1
  %phi.bo.i = and i32 %caps.2.i16.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i = icmp eq i32 %phi.bo.i, 0
  br label %if.end8.i

do.end.i:                                         ; preds = %sdhci_omap_regulator_get_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.38) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %if.else.thread.i
  %retval.0.i43.i = phi i32 [ %caps.2.i.i, %do.end.i ], [ %retval.0.i44.i, %if.else.thread.i ]
  %cmp.not34.i = phi i1 [ false, %do.end.i ], [ %cmp.not26.i, %if.else.thread.i ]
  %and32.i = phi i32 [ %caps.2.i.i, %do.end.i ], [ %and25.i, %if.else.thread.i ]
  %retval.0.i1830.i = phi i1 [ false, %do.end.i ], [ %phi.cmp.i, %if.else.thread.i ]
  %and11.i = and i32 %retval.0.i43.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i288 = icmp eq i32 %and11.i, 0
  %or.cond1.i = or i1 %cmp.not34.i, %tobool.not.i288
  %or.cond2.i = select i1 %or.cond1.i, i1 true, i1 %retval.0.i1830.i
  %or.i = or i32 %and32.i, 16777216
  %caps.0.i = select i1 %or.cond2.i, i32 %and32.i, i32 %or.i
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %56 = ptrtoint ptr %omap_offset24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %omap_offset24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %57
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 320
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %59 = and i32 %58, -8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %61 = and i32 %caps.0.i, 117440512
  %62 = or i32 %60, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %66 = ptrtoint ptr %omap_offset24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %omap_offset24, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %65, i32 %67
  %add.ptr1.i23.i = getelementptr i8, ptr %add.ptr.i22.i, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i23.i, i32 %63) #9, !srcloc !213
  %caps34.i = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 56
  %68 = ptrtoint ptr %caps34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps34.i, align 8
  %and35.i = and i32 %69, -117440513
  %or37.i = or i32 %and35.i, %caps.0.i
  store i32 %or37.i, ptr %caps34.i, align 8
  br label %sdhci_omap_set_capabilities.exit

sdhci_omap_set_capabilities.exit:                 ; preds = %if.end8.i, %sdhci_omap_regulator_get_caps.exit.thread.i.sdhci_omap_set_capabilities.exit_crit_edge
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 11, i32 10
  %70 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @sdhci_omap_start_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %set_ios = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 11, i32 4
  %71 = ptrtoint ptr %set_ios to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sdhci_omap_set_ios, ptr %set_ios, align 4
  %card_busy = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 11, i32 11
  %72 = ptrtoint ptr %card_busy to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @sdhci_omap_card_busy, ptr %card_busy, align 4
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 11, i32 12
  %73 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @sdhci_omap_execute_tuning, ptr %execute_tuning, align 4
  %enable_sdio_irq = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 0, i32 11, i32 7
  %74 = ptrtoint ptr %enable_sdio_irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @sdhci_omap_enable_sdio_irq, ptr %enable_sdio_irq, align 4
  %call108 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br i1 %call108, label %land.lhs.true, label %sdhci_omap_set_capabilities.exit.if.end111_crit_edge

sdhci_omap_set_capabilities.exit.if.end111_crit_edge: ; preds = %sdhci_omap_set_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

land.lhs.true:                                    ; preds = %sdhci_omap_set_capabilities.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp.i289 = icmp slt i32 %3, 512
  br i1 %cmp.i289, label %land.lhs.true.if.then110_crit_edge, label %sdhci_omap_has_adma.exit

land.lhs.true.if.then110_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

sdhci_omap_has_adma.exit:                         ; preds = %land.lhs.true
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  %78 = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not = icmp eq i32 %78, 0
  br i1 %tobool.i.not, label %sdhci_omap_has_adma.exit.if.then110_crit_edge, label %sdhci_omap_has_adma.exit.if.end111_crit_edge

sdhci_omap_has_adma.exit.if.end111_crit_edge:     ; preds = %sdhci_omap_has_adma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

sdhci_omap_has_adma.exit.if.then110_crit_edge:    ; preds = %sdhci_omap_has_adma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

if.then110:                                       ; preds = %sdhci_omap_has_adma.exit.if.then110_crit_edge, %land.lhs.true.if.then110_crit_edge
  tail call void @sdhci_switch_external_dma(ptr noundef %call11, i1 noundef zeroext true) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %sdhci_omap_has_adma.exit.if.end111_crit_edge, %sdhci_omap_set_capabilities.exit.if.end111_crit_edge
  %call.i292 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.27) #9
  br i1 %call.i292, label %do.body114, label %if.end111.if.end124_crit_edge

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.body114:                                       ; preds = %if.end111
  %.b271 = load i1, ptr @sdhci_omap_probe.__print_once, align 1
  br i1 %.b271, label %do.body114.do.end122_crit_edge, label %if.then116

do.body114.do.end122_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end122

if.then116:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sdhci_omap_probe.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %do.end122

do.end122:                                        ; preds = %if.then116, %do.body114.do.end122_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 16
  %79 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %caps, align 32
  %or123 = or i32 %80, 256
  store i32 %or123, ptr %caps, align 32
  br label %if.end124

if.end124:                                        ; preds = %do.end122, %if.end111.if.end124_crit_edge
  %caps125 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 16
  %81 = ptrtoint ptr %caps125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %caps125, align 32
  %or128 = or i32 %82, 4210816
  store i32 %or128, ptr %caps125, align 32
  %call129 = tail call i32 @sdhci_setup_host(ptr noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end124.err_rpm_put_crit_edge

if.end124.err_rpm_put_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rpm_put

if.end132:                                        ; preds = %if.end124
  %call133 = tail call fastcc i32 @sdhci_omap_config_iodelay_pinctrl_state(ptr noundef %private.i272)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.err_cleanup_host_crit_edge

if.end132.err_cleanup_host_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end136:                                        ; preds = %if.end132
  %call137 = tail call i32 @__sdhci_add_host(ptr noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.err_cleanup_host_crit_edge

if.end136.err_cleanup_host_crit_edge:             ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end140:                                        ; preds = %if.end136
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %83 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node, align 8
  %call141 = tail call i32 @of_irq_get_byname(ptr noundef %84, ptr noundef nonnull @.str.32) #9
  %wakeirq = getelementptr inbounds %struct.sdhci_host, ptr %call11, i32 1, i32 13, i32 3
  %85 = ptrtoint ptr %wakeirq to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call141, ptr %wakeirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call141)
  %cmp143 = icmp eq i32 %call141, -517
  br i1 %cmp143, label %if.end140.err_cleanup_host_crit_edge, label %if.end145

if.end140.err_cleanup_host_crit_edge:             ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end145:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp147 = icmp sgt i32 %call141, 0
  br i1 %cmp147, label %if.then148, label %if.end145.if.end158_crit_edge

if.end145.if.end158_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then148:                                       ; preds = %if.end145
  %call149 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #9
  %86 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wakeirq, align 4
  %call151 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev1, i32 noundef %87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end155, label %if.then153

if.then153:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  %call154 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #9
  br label %err_cleanup_host

if.end155:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %mmc26 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmc26, align 8
  %pm_caps = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 19
  %90 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pm_caps, align 4
  %or157 = or i32 %91, 3
  store i32 %or157, ptr %pm_caps, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.end155, %if.end145.if.end158_crit_edge
  %call.i293 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %92 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store volatile i64 %call.i293, ptr %last_busy.i, align 8
  %call.i294 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #9
  br label %cleanup

err_cleanup_host:                                 ; preds = %if.then153, %if.end140.err_cleanup_host_crit_edge, %if.end136.err_cleanup_host_crit_edge, %if.end132.err_cleanup_host_crit_edge
  %ret.0 = phi i32 [ %call133, %if.end132.err_cleanup_host_crit_edge ], [ %call137, %if.end136.err_cleanup_host_crit_edge ], [ %call151, %if.then153 ], [ -517, %if.end140.err_cleanup_host_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %call11) #9
  br label %err_rpm_put

err_rpm_put:                                      ; preds = %err_cleanup_host, %if.end124.err_rpm_put_crit_edge
  %ret.1 = phi i32 [ %call129, %if.end124.err_rpm_put_crit_edge ], [ %ret.0, %err_cleanup_host ]
  %call.i295 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i296 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %93 = ptrtoint ptr %last_busy.i296 to i32
  call void @__asan_store8_noabort(i32 %93)
  store volatile i64 %call.i295, ptr %last_busy.i296, align 8
  %call.i297 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #9
  br label %err_rpm_disable

err_rpm_disable:                                  ; preds = %err_rpm_put, %do.end95
  %ret.2 = phi i32 [ %call.i, %do.end95 ], [ %ret.1, %err_rpm_put ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %err_pltfm_free

err_pltfm_free:                                   ; preds = %err_rpm_disable, %if.then75.err_pltfm_free_crit_edge, %do.end69, %if.then58, %if.end18.err_pltfm_free_crit_edge
  %ret.3 = phi i32 [ %call27, %if.end18.err_pltfm_free_crit_edge ], [ %43, %if.then58 ], [ %call64, %do.end69 ], [ %49, %if.then75.err_pltfm_free_crit_edge ], [ %ret.2, %err_rpm_disable ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_free, %if.end158, %do.end16, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end16 ], [ %ret.3, %err_pltfm_free ], [ 0, %if.end158 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 1) #9
  %call3 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #9
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev1) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #9
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev1) #9
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_start_signal_voltage_switch(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i72 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %dev3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %2 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_voltage, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %7 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 320
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and = and i32 %10, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool8.not, i32 3300000, i32 3000000
  %11 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %signal_voltage, align 1
  tail call fastcc void @sdhci_omap_conf_bus_power(ptr noundef %private.i72, i8 noundef zeroext %12)
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %14, i32 %16
  %add.ptr1.i76 = getelementptr i8, ptr %add.ptr.i75, i32 316
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %18 = and i32 %17, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %21 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i80 = getelementptr i8, ptr %add.ptr.i79, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i80, i32 %18) #9, !srcloc !213
  br label %if.end29

if.then19:                                        ; preds = %entry
  %base.i81 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %23 = ptrtoint ptr %base.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i81, align 4
  %omap_offset.i82 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %25 = ptrtoint ptr %omap_offset.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %omap_offset.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %24, i32 %26
  %add.ptr1.i84 = getelementptr i8, ptr %add.ptr.i83, i32 320
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i84) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %if.end24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %signal_voltage, align 1
  tail call fastcc void @sdhci_omap_conf_bus_power(ptr noundef %private.i72, i8 noundef zeroext %30)
  %31 = ptrtoint ptr %base.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i81, align 4
  %33 = ptrtoint ptr %omap_offset.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %omap_offset.i82, align 4
  %add.ptr.i87 = getelementptr i8, ptr %32, i32 %34
  %add.ptr1.i88 = getelementptr i8, ptr %add.ptr.i87, i32 316
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i88) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %36 = or i32 %35, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i81, align 4
  %39 = ptrtoint ptr %omap_offset.i82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %omap_offset.i82, align 4
  %add.ptr.i91 = getelementptr i8, ptr %38, i32 %40
  %add.ptr1.i92 = getelementptr i8, ptr %add.ptr.i91, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i92, i32 %36) #9, !srcloc !213
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %if.end
  %iov.1 = phi i32 [ %., %if.end ], [ 1800000, %if.end24 ]
  %host1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 3
  %41 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host1.i, align 4
  %mmc2.i = getelementptr inbounds %struct.sdhci_host, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %mmc2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc2.i, align 8
  %45 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3, align 4
  %pbias.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 1
  %47 = ptrtoint ptr %pbias.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pbias.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end29.if.end.i_crit_edge, label %if.end.i.i

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end29
  %pbias_enabled20.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 2
  %49 = ptrtoint ptr %pbias_enabled20.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pbias_enabled20.i.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool21.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool21.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end23.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end23.i.i:                                     ; preds = %if.end.i.i
  %call25.i.i = tail call i32 @regulator_disable(ptr noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end31.i.i, label %sdhci_omap_set_pbias.exit.i

if.end31.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %pbias_enabled20.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %pbias_enabled20.i.i, align 4
  br label %if.end.i

sdhci_omap_set_pbias.exit.i:                      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.53) #12
  br label %do.end

if.end.i:                                         ; preds = %if.end31.i.i, %if.end.i.i.if.end.i_crit_edge, %if.end29.if.end.i_crit_edge
  %vqmmc.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 54, i32 1
  %52 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i.i = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 28
  %call5.i = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %44, ptr noundef %ios.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then4.i.if.end8.i_crit_edge

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %44, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.45) #12
  br label %do.end

if.end8.i:                                        ; preds = %if.then4.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %56 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev3, align 4
  %58 = ptrtoint ptr %pbias.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pbias.i.i, align 4
  %cmp.i.i27.i = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i, label %if.end8.i.do.body34_crit_edge, label %if.end.i28.i

if.end8.i.do.body34_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

if.end.i28.i:                                     ; preds = %if.end8.i
  %call4.i.i = tail call i32 @regulator_set_voltage(ptr noundef %59, i32 noundef %iov.1, i32 noundef %iov.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.47) #12
  br label %do.end

if.end7.i.i:                                      ; preds = %if.end.i28.i
  %pbias_enabled.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 2
  %60 = ptrtoint ptr %pbias_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pbias_enabled.i.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool8.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.do.body34_crit_edge

if.end7.i.i.do.body34_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %62 = ptrtoint ptr %pbias.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pbias.i.i, align 4
  %call12.i.i = tail call i32 @regulator_enable(ptr noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end18.i.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.50) #12
  br label %do.end

if.end18.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %pbias_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %pbias_enabled.i.i, align 4
  br label %do.body34

do.end:                                           ; preds = %do.end17.i.i, %do.end.i.i, %do.end.i, %sdhci_omap_set_pbias.exit.i
  %retval.0.i93.ph = phi i32 [ %call12.i.i, %do.end17.i.i ], [ %call4.i.i, %do.end.i.i ], [ %call25.i.i, %sdhci_omap_set_pbias.exit.i ], [ %call5.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %iov.1) #12
  br label %cleanup

do.body34:                                        ; preds = %if.end18.i.i, %if.end7.i.i.do.body34_crit_edge, %if.end8.i.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_omap_start_signal_voltage_switch.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_omap_start_signal_voltage_switch, %if.then39)) #9
          to label %cleanup [label %if.then39], !srcloc !206

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_omap_start_signal_voltage_switch.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %iov.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body34, %do.end, %if.then19.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i93.ph, %do.end ], [ -95, %if.then.cleanup_crit_edge ], [ -95, %if.then19.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_ios(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i10 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %0 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_mode, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4
  %2 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp.i = icmp eq i8 %3, %1
  br i1 %cmp.i, label %entry.sdhci_omap_set_bus_mode.exit_crit_edge, label %if.end.i

entry.sdhci_omap_set_bus_mode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_omap_set_bus_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %omap_offset.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %6 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp2.i = icmp eq i8 %1, 1
  %9 = and i32 %8, -16777217
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %masksel.i = zext i1 %cmp2.i to i32
  %reg.0.i = or i32 %10, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #9
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %14 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i18.i = getelementptr i8, ptr %add.ptr.i17.i, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i18.i, i32 %11) #9, !srcloc !213
  %16 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %1, ptr %bus_mode.i, align 4
  br label %sdhci_omap_set_bus_mode.exit

sdhci_omap_set_bus_mode.exit:                     ; preds = %if.end.i, %entry.sdhci_omap_set_bus_mode.exit_crit_edge
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %17 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing, align 4
  %dev1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %flags.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i10, i32 0, i32 9
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %sdhci_omap_set_bus_mode.exit.sdhci_omap_set_timing.exit_crit_edge, label %if.end.i12

sdhci_omap_set_bus_mode.exit.sdhci_omap_set_timing.exit_crit_edge: ; preds = %sdhci_omap_set_bus_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_omap_set_timing.exit

if.end.i12:                                       ; preds = %sdhci_omap_set_bus_mode.exit
  %timing2.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i10, i32 0, i32 8
  %24 = ptrtoint ptr %timing2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %timing2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %18)
  %cmp.i11 = icmp eq i8 %25, %18
  br i1 %cmp.i11, label %if.end.i12.sdhci_omap_set_timing.exit_crit_edge, label %if.end7.i

if.end.i12.sdhci_omap_set_timing.exit_crit_edge:  ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_omap_set_timing.exit

if.end7.i:                                        ; preds = %if.end.i12
  %conv4.i = zext i8 %18 to i32
  %base.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %omap_offset.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %28 = ptrtoint ptr %omap_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %omap_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %29
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 300
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %31 = and i32 %30, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %34 = ptrtoint ptr %omap_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %omap_offset.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %33, i32 %35
  %add.ptr1.i6.i.i = getelementptr i8, ptr %add.ptr.i5.i.i, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i.i, i32 %31) #9, !srcloc !213
  %pinctrl_state8.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 1, i32 1
  %36 = ptrtoint ptr %pinctrl_state8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pinctrl_state8.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %conv4.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %pinctrl.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 1
  %40 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pinctrl.i, align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %41, ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.55) #12
  br label %sdhci_omap_set_timing.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i, align 4
  %44 = ptrtoint ptr %omap_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %omap_offset.i.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %43, i32 %45
  %add.ptr1.i.i27.i = getelementptr i8, ptr %add.ptr.i.i26.i, i32 300
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i27.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %47 = or i32 %46, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i, align 4
  %50 = ptrtoint ptr %omap_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %omap_offset.i.i.i, align 4
  %add.ptr.i5.i28.i = getelementptr i8, ptr %49, i32 %51
  %add.ptr1.i6.i29.i = getelementptr i8, ptr %add.ptr.i5.i28.i, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i29.i, i32 %47) #9, !srcloc !213
  %52 = ptrtoint ptr %timing2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %18, ptr %timing2.i, align 2
  br label %sdhci_omap_set_timing.exit

sdhci_omap_set_timing.exit:                       ; preds = %if.end11.i, %do.end.i, %if.end.i12.sdhci_omap_set_timing.exit_crit_edge, %sdhci_omap_set_bus_mode.exit.sdhci_omap_set_timing.exit_crit_edge
  tail call void @sdhci_set_ios(ptr noundef %mmc, ptr noundef %ios) #9
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %53 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %power_mode, align 2
  %55 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bus_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp.i14 = icmp eq i8 %56, 0
  br i1 %cmp.i14, label %if.then.i, label %sdhci_omap_set_timing.exit.sdhci_omap_set_power_mode.exit_crit_edge

sdhci_omap_set_timing.exit.sdhci_omap_set_power_mode.exit_crit_edge: ; preds = %sdhci_omap_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_omap_set_power_mode.exit

if.then.i:                                        ; preds = %sdhci_omap_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i.i15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %57 = ptrtoint ptr %base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i15, align 4
  %omap_offset.i.i.i16 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %59 = ptrtoint ptr %omap_offset.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %omap_offset.i.i.i16, align 4
  %add.ptr.i.i.i17 = getelementptr i8, ptr %58, i32 %60
  %add.ptr1.i.i.i18 = getelementptr i8, ptr %add.ptr.i.i.i17, i32 316
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i18) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %62 = and i32 %61, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i15, align 4
  %65 = ptrtoint ptr %omap_offset.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %omap_offset.i.i.i16, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %64, i32 %66
  %add.ptr1.i12.i.i = getelementptr i8, ptr %add.ptr.i11.i.i, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12.i.i, i32 %62) #9, !srcloc !213
  %67 = ptrtoint ptr %base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i15, align 4
  %69 = ptrtoint ptr %omap_offset.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %omap_offset.i.i.i16, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %68, i32 %70
  %add.ptr1.i16.i.i = getelementptr i8, ptr %add.ptr.i15.i.i, i32 52
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i16.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %72 = and i32 %71, -1052673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i.i15, align 4
  %75 = ptrtoint ptr %omap_offset.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %omap_offset.i.i.i16, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %74, i32 %76
  %add.ptr1.i20.i.i = getelementptr i8, ptr %add.ptr.i19.i.i, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i20.i.i, i32 %72) #9, !srcloc !213
  br label %sdhci_omap_set_power_mode.exit

sdhci_omap_set_power_mode.exit:                   ; preds = %if.then.i, %sdhci_omap_set_timing.exit.sdhci_omap_set_power_mode.exit_crit_edge
  %power_mode2.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i10, i32 0, i32 7
  %77 = ptrtoint ptr %power_mode2.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %54, ptr %power_mode2.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_card_busy(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ier1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 11
  %0 = ptrtoint ptr %ier1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier1, align 4
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %4 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %8, i32 %10
  %add.ptr1.i49 = getelementptr i8, ptr %add.ptr.i48, i32 316
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %12 = and i32 %6, -8388865
  %13 = shl i32 %11, 5
  %14 = and i32 %13, 65536
  %15 = or i32 %12, 8388608
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %or7 = or i32 %16, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7) #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i53 = getelementptr i8, ptr %add.ptr.i52, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i53, i32 %17) #9, !srcloc !213
  %irq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %23) #9
  %or8 = or i32 %1, 256
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !216

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %27(ptr noundef %private.i, i32 noundef %or8, i32 noundef 52) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or8) #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i54 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %28) #9, !srcloc !213
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write_l.i56 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_l.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_l.i56, align 4
  %tobool.not.i57 = icmp eq ptr %34, null
  br i1 %tobool.not.i57, label %do.body.i61, label %if.then.i58, !prof !216

if.then.i58:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %34(ptr noundef %private.i, i32 noundef %or8, i32 noundef 56) #9
  br label %sdhci_writel.exit62

do.body.i61:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or8) #9
  %ioaddr.i59 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %ioaddr.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i59, align 16
  %add.ptr.i60 = getelementptr i8, ptr %37, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %35) #9, !srcloc !213
  br label %sdhci_writel.exit62

sdhci_writel.exit62:                              ; preds = %do.body.i61, %if.then.i58
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %40 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %39, i32 %41
  %add.ptr1.i66 = getelementptr i8, ptr %add.ptr.i65, i32 292
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i66) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %44, i32 %46
  %add.ptr1.i70 = getelementptr i8, ptr %add.ptr.i69, i32 44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i70) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %48 = and i32 %47, -8388865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %51 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %50, i32 %52
  %add.ptr1.i74 = getelementptr i8, ptr %add.ptr.i73, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i74, i32 %48) #9, !srcloc !213
  %53 = ptrtoint ptr %ier1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ier1, align 4
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %write_l.i76 = getelementptr inbounds %struct.sdhci_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %write_l.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_l.i76, align 4
  %tobool.not.i77 = icmp eq ptr %58, null
  br i1 %tobool.not.i77, label %do.body.i81, label %if.then.i78, !prof !216

if.then.i78:                                      ; preds = %sdhci_writel.exit62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %58(ptr noundef %private.i, i32 noundef %54, i32 noundef 52) #9
  br label %sdhci_writel.exit82

do.body.i81:                                      ; preds = %sdhci_writel.exit62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %ioaddr.i79 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %ioaddr.i79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr.i79, align 16
  %add.ptr.i80 = getelementptr i8, ptr %61, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %59) #9, !srcloc !213
  br label %sdhci_writel.exit82

sdhci_writel.exit82:                              ; preds = %do.body.i81, %if.then.i78
  %62 = ptrtoint ptr %ier1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ier1, align 4
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %write_l.i84 = getelementptr inbounds %struct.sdhci_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %write_l.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_l.i84, align 4
  %tobool.not.i85 = icmp eq ptr %67, null
  br i1 %tobool.not.i85, label %do.body.i89, label %if.then.i86, !prof !216

if.then.i86:                                      ; preds = %sdhci_writel.exit82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %67(ptr noundef %private.i, i32 noundef %63, i32 noundef 56) #9
  br label %sdhci_writel.exit90

do.body.i89:                                      ; preds = %sdhci_writel.exit82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %68 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %ioaddr.i87 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %ioaddr.i87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr.i87, align 16
  %add.ptr.i88 = getelementptr i8, ptr %70, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %68) #9, !srcloc !213
  br label %sdhci_writel.exit90

sdhci_writel.exit90:                              ; preds = %do.body.i89, %if.then.i86
  %71 = and i32 %42, 33558528
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %71)
  %.not = icmp ne i32 %71, 4096
  %ret.0 = zext i1 %.not to i32
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %73) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i342 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %dev3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %ios4 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #9
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temperature, align 4, !annotation !218
  %3 = ptrtoint ptr %ios4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ios4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %4)
  %cmp = icmp ult i32 %4, 52000001
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %7 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 324
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 7
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp6 = icmp eq i8 %11, 5
  %12 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %or.cond = select i1 %cmp6, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @thermal_zone_get_zone_by_name(ptr noundef nonnull @.str.57) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #12
  %13 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call i32 @thermal_zone_get_temp(ptr noundef %call10, ptr noundef nonnull %temperature) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i345 = getelementptr i8, ptr %15, i32 %17
  %add.ptr1.i346 = getelementptr i8, ptr %add.ptr.i345, i32 52
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i346) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %19 = or i32 %18, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i349 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i350 = getelementptr i8, ptr %add.ptr.i349, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i350, i32 %19) #9, !srcloc !213
  %ier = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 11
  %24 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ier, align 4
  %and20 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %and24 = and i32 %25, -2097153
  %26 = ptrtoint ptr %ier to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and24, ptr %ier, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %is_tuning = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 3
  %27 = ptrtoint ptr %is_tuning to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %is_tuning, align 4
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %if.end25
  %phase_delay.0451 = phi i32 [ 0, %if.end25 ], [ %add, %if.end43.while.body_crit_edge ]
  %max_len.0450 = phi i32 [ 0, %if.end25 ], [ %56, %if.end43.while.body_crit_edge ]
  %length.0449 = phi i32 [ 0, %if.end25 ], [ %length.1, %if.end43.while.body_crit_edge ]
  %prev_match.0448 = phi i8 [ 0, %if.end25 ], [ %conv30, %if.end43.while.body_crit_edge ]
  %single_point_failure.0.off0447 = phi i1 [ false, %if.end25 ], [ %single_point_failure.1.off0, %if.end43.while.body_crit_edge ]
  %max_window.0446 = phi i32 [ 0, %if.end25 ], [ %spec.select, %if.end43.while.body_crit_edge ]
  %start_window.0445 = phi i32 [ 0, %if.end25 ], [ %start_window.1, %if.end43.while.body_crit_edge ]
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %30 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 52
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %31
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %33 = and i32 %32, -15732481
  %34 = call i32 @llvm.bswap.i32(i32 %33) #9
  %shl.i = shl nuw nsw i32 %phase_delay.0451, 13
  %and.i = or i32 %34, %shl.i
  %or1.i = or i32 %and.i, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %35 = call i32 @llvm.bswap.i32(i32 %or1.i) #9
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %37, i32 52
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 %39
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %35) #9, !srcloc !213
  %or2.i = or i32 %and.i, 4098
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %40 = call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %43 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %42, i32 52
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i, i32 %40) #9, !srcloc !213
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body
  %i.035.i = phi i32 [ 0, %while.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %47 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %46, i32 52
  %add.ptr1.i30.i = getelementptr i8, ptr %add.ptr.i29.i, i32 %48
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i30.i) #9, !srcloc !210
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and4.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp ne i32 %and4.i, 0
  %inc.i = add nuw nsw i32 %i.035.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %sdhci_omap_set_dll.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sdhci_omap_set_dll.exit:                          ; preds = %for.body.i
  %and5.i = and i32 %50, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %51 = call i32 @llvm.bswap.i32(i32 %and5.i) #9
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %54 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %53, i32 52
  %add.ptr1.i34.i = getelementptr i8, ptr %add.ptr.i33.i, i32 %55
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i, i32 %51) #9, !srcloc !213
  %call28 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %conv30 = zext i1 %tobool29.not to i8
  br i1 %tobool29.not, label %if.then32, label %if.else41

if.then32:                                        ; preds = %sdhci_omap_set_dll.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %prev_match.0448)
  %tobool33.not = icmp eq i8 %prev_match.0448, 0
  %inc37 = add i32 %length.0449, 1
  br i1 %tobool33.not, label %if.else, label %if.then32.if.end43_crit_edge

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select339 = select i1 %single_point_failure.0.off0447, i32 %start_window.0445, i32 %phase_delay.0451
  %spec.select340 = select i1 %single_point_failure.0.off0447, i32 %inc37, i32 1
  br label %if.end43

if.else41:                                        ; preds = %sdhci_omap_set_dll.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %prev_match.0448)
  %tobool42 = icmp ne i8 %prev_match.0448, 0
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.else, %if.then32.if.end43_crit_edge
  %start_window.1 = phi i32 [ %start_window.0445, %if.else41 ], [ %spec.select339, %if.else ], [ %start_window.0445, %if.then32.if.end43_crit_edge ]
  %single_point_failure.1.off0 = phi i1 [ %tobool42, %if.else41 ], [ %single_point_failure.0.off0447, %if.else ], [ %single_point_failure.0.off0447, %if.then32.if.end43_crit_edge ]
  %length.1 = phi i32 [ %length.0449, %if.else41 ], [ %spec.select340, %if.else ], [ %inc37, %if.then32.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %length.1, i32 %max_len.0450)
  %cmp44 = icmp ugt i32 %length.1, %max_len.0450
  %spec.select = select i1 %cmp44, i32 %start_window.1, i32 %max_window.0446
  %56 = call i32 @llvm.umax.i32(i32 %length.1, i32 %max_len.0450)
  %add = add nuw nsw i32 %phase_delay.0451, 4
  %cmp26 = icmp ult i32 %phase_delay.0451, 121
  br i1 %cmp26, label %if.end43.while.body_crit_edge, label %while.end

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool48.not = icmp eq i32 %56, 0
  br i1 %tobool48.not, label %do.end52, label %if.end53

do.end52:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.61) #12
  br label %tuning_error

if.end53:                                         ; preds = %while.end
  %57 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %temperature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20000, i32 %58)
  %cmp54 = icmp slt i32 %58, -20000
  br i1 %cmp54, label %if.then56, label %if.else66

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %sub = shl i32 %56, 2
  %add57 = add i32 %spec.select, -28
  %sub58 = add i32 %add57, %sub
  %mul59 = mul i32 %56, 13
  %sub61 = add i32 %mul59, 15
  %59 = lshr i32 %sub61, 2
  %mul62 = and i32 %59, 1073741820
  %add63 = add i32 %mul62, %spec.select
  %60 = call i32 @llvm.umin.i32(i32 %sub58, i32 %add63)
  br label %if.end128

if.else66:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %58)
  %cmp67 = icmp slt i32 %58, 20000
  br i1 %cmp67, label %if.then69, label %if.else76

if.then69:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  %mul70 = mul i32 %56, 9
  %sub72 = add i32 %mul70, 15
  %61 = lshr i32 %sub72, 2
  %mul74 = and i32 %61, 1073741820
  %add75 = add i32 %mul74, %spec.select
  br label %if.end128

if.else76:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %58)
  %cmp77 = icmp ult i32 %58, 40000
  br i1 %cmp77, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #11
  %mul80 = shl i32 %56, 3
  %sub82 = add i32 %mul80, 15
  %62 = lshr i32 %sub82, 2
  %mul84 = and i32 %62, 1073741820
  %add85 = add i32 %mul84, %spec.select
  br label %if.end128

if.else86:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %58)
  %cmp87 = icmp ult i32 %58, 70000
  br i1 %cmp87, label %if.then89, label %if.else96

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  %mul90 = mul i32 %56, 7
  %sub92 = add i32 %mul90, 15
  %63 = lshr i32 %sub92, 2
  %mul94 = and i32 %63, 1073741820
  %add95 = add i32 %mul94, %spec.select
  br label %if.end128

if.else96:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000, i32 %58)
  %cmp97 = icmp ult i32 %58, 90000
  br i1 %cmp97, label %if.then99, label %if.else106

if.then99:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  %mul100 = mul i32 %56, 5
  %sub102 = add i32 %mul100, 15
  %64 = lshr i32 %sub102, 2
  %mul104 = and i32 %64, 1073741820
  %add105 = add i32 %mul104, %spec.select
  br label %if.end128

if.else106:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %58)
  %cmp107 = icmp ult i32 %58, 120000
  br i1 %cmp107, label %if.then109, label %if.else116

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  %65 = add i32 %56, 3
  %mul114 = and i32 %65, 1073741820
  %add115 = add i32 %mul114, %spec.select
  br label %if.end128

if.else116:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  %mul117 = mul i32 %56, 3
  %sub119 = add i32 %mul117, 15
  %66 = lshr i32 %sub119, 2
  %mul121 = and i32 %66, 1073741820
  %add122 = add i32 %mul121, %spec.select
  br label %if.end128

if.end128:                                        ; preds = %if.else116, %if.then109, %if.then99, %if.then89, %if.then79, %if.then69, %if.then56
  %phase_delay.1 = phi i32 [ %60, %if.then56 ], [ %add75, %if.then69 ], [ %add85, %if.then79 ], [ %add95, %if.then89 ], [ %add105, %if.then99 ], [ %add115, %if.then109 ], [ %add122, %if.else116 ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end128
  %i.0453 = phi i32 [ 3, %if.end128 ], [ %inc159, %for.inc.for.body_crit_edge ]
  %add131 = add i32 %i.0453, %phase_delay.1
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %69 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i.i353 = getelementptr i8, ptr %68, i32 52
  %add.ptr1.i.i354 = getelementptr i8, ptr %add.ptr.i.i353, i32 %70
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i354) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %72 = and i32 %71, -15732481
  %73 = call i32 @llvm.bswap.i32(i32 %72) #9
  %shl.i355 = shl i32 %add131, 13
  %and.i356 = or i32 %73, %shl.i355
  %or1.i357 = or i32 %and.i356, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %74 = call i32 @llvm.bswap.i32(i32 %or1.i357) #9
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %77 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i21.i358 = getelementptr i8, ptr %76, i32 52
  %add.ptr1.i22.i359 = getelementptr i8, ptr %add.ptr.i21.i358, i32 %78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i359, i32 %74) #9, !srcloc !213
  %or2.i360 = or i32 %and.i356, 4098
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %79 = call i32 @llvm.bswap.i32(i32 %or2.i360) #9
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %82 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i25.i361 = getelementptr i8, ptr %81, i32 52
  %add.ptr1.i26.i362 = getelementptr i8, ptr %add.ptr.i25.i361, i32 %83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i362, i32 %79) #9, !srcloc !213
  br label %for.body.i371

for.body.i371:                                    ; preds = %for.body.i371.for.body.i371_crit_edge, %for.body
  %i.035.i363 = phi i32 [ 0, %for.body ], [ %inc.i368, %for.body.i371.for.body.i371_crit_edge ]
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 4
  %86 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i29.i364 = getelementptr i8, ptr %85, i32 52
  %add.ptr1.i30.i365 = getelementptr i8, ptr %add.ptr.i29.i364, i32 %87
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i30.i365) #9, !srcloc !210
  %89 = call i32 @llvm.bswap.i32(i32 %88) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and4.i366 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i366)
  %tobool.not.i367 = icmp ne i32 %and4.i366, 0
  %inc.i368 = add nuw nsw i32 %i.035.i363, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i368)
  %exitcond.not.i369 = icmp eq i32 %inc.i368, 1000
  %or.cond.i370 = select i1 %tobool.not.i367, i1 true, i1 %exitcond.not.i369
  br i1 %or.cond.i370, label %sdhci_omap_set_dll.exit375, label %for.body.i371.for.body.i371_crit_edge

for.body.i371.for.body.i371_crit_edge:            ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i371

sdhci_omap_set_dll.exit375:                       ; preds = %for.body.i371
  %and5.i372 = and i32 %89, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %90 = call i32 @llvm.bswap.i32(i32 %and5.i372) #9
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %93 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i33.i373 = getelementptr i8, ptr %92, i32 52
  %add.ptr1.i34.i374 = getelementptr i8, ptr %add.ptr.i33.i373, i32 %94
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i374, i32 %90) #9, !srcloc !213
  %call132 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %for.inc, label %if.then134

if.then134:                                       ; preds = %sdhci_omap_set_dll.exit375
  %95 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %temperature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %96)
  %cmp135 = icmp slt i32 %96, 10000
  br i1 %cmp135, label %if.then137, label %if.else140

if.then137:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %add139 = add i32 %add131, 6
  br label %single_failure_found

if.else140:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %96)
  %cmp141 = icmp ult i32 %96, 20000
  br i1 %cmp141, label %if.then143, label %if.else146

if.then143:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #11
  %add145 = add i32 %add131, -12
  br label %single_failure_found

if.else146:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %96)
  %cmp147 = icmp ult i32 %96, 70000
  br i1 %cmp147, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #11
  %add151 = add i32 %add131, -8
  br label %single_failure_found

if.else152:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #11
  %add154 = add i32 %add131, -6
  br label %single_failure_found

for.inc:                                          ; preds = %sdhci_omap_set_dll.exit375
  %inc159 = add nuw nsw i32 %i.0453, 1
  %exitcond.not = icmp eq i32 %inc159, 11
  br i1 %exitcond.not, label %for.inc.for.body163_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.body163_crit_edge:                    ; preds = %for.inc
  br label %for.body163

for.body163:                                      ; preds = %for.inc199.for.body163_crit_edge, %for.inc.for.body163_crit_edge
  %i.1454 = phi i32 [ %dec, %for.inc199.for.body163_crit_edge ], [ 2, %for.inc.for.body163_crit_edge ]
  %add164 = add i32 %i.1454, %phase_delay.1
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %99 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i.i378 = getelementptr i8, ptr %98, i32 52
  %add.ptr1.i.i379 = getelementptr i8, ptr %add.ptr.i.i378, i32 %100
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i379) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %102 = and i32 %101, -15732481
  %103 = call i32 @llvm.bswap.i32(i32 %102) #9
  %shl.i380 = shl i32 %add164, 13
  %and.i381 = or i32 %103, %shl.i380
  %or1.i382 = or i32 %and.i381, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %104 = call i32 @llvm.bswap.i32(i32 %or1.i382) #9
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %107 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i21.i383 = getelementptr i8, ptr %106, i32 52
  %add.ptr1.i22.i384 = getelementptr i8, ptr %add.ptr.i21.i383, i32 %108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i384, i32 %104) #9, !srcloc !213
  %or2.i385 = or i32 %and.i381, 4098
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %109 = call i32 @llvm.bswap.i32(i32 %or2.i385) #9
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %112 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i25.i386 = getelementptr i8, ptr %111, i32 52
  %add.ptr1.i26.i387 = getelementptr i8, ptr %add.ptr.i25.i386, i32 %113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i387, i32 %109) #9, !srcloc !213
  br label %for.body.i396

for.body.i396:                                    ; preds = %for.body.i396.for.body.i396_crit_edge, %for.body163
  %i.035.i388 = phi i32 [ 0, %for.body163 ], [ %inc.i393, %for.body.i396.for.body.i396_crit_edge ]
  %114 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i, align 4
  %116 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i29.i389 = getelementptr i8, ptr %115, i32 52
  %add.ptr1.i30.i390 = getelementptr i8, ptr %add.ptr.i29.i389, i32 %117
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i30.i390) #9, !srcloc !210
  %119 = call i32 @llvm.bswap.i32(i32 %118) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and4.i391 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i391)
  %tobool.not.i392 = icmp ne i32 %and4.i391, 0
  %inc.i393 = add nuw nsw i32 %i.035.i388, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i393)
  %exitcond.not.i394 = icmp eq i32 %inc.i393, 1000
  %or.cond.i395 = select i1 %tobool.not.i392, i1 true, i1 %exitcond.not.i394
  br i1 %or.cond.i395, label %sdhci_omap_set_dll.exit400, label %for.body.i396.for.body.i396_crit_edge

for.body.i396.for.body.i396_crit_edge:            ; preds = %for.body.i396
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i396

sdhci_omap_set_dll.exit400:                       ; preds = %for.body.i396
  %and5.i397 = and i32 %119, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %120 = call i32 @llvm.bswap.i32(i32 %and5.i397) #9
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %123 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i33.i398 = getelementptr i8, ptr %122, i32 52
  %add.ptr1.i34.i399 = getelementptr i8, ptr %add.ptr.i33.i398, i32 %124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i399, i32 %120) #9, !srcloc !213
  %call165 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %for.inc199, label %if.then167

if.then167:                                       ; preds = %sdhci_omap_set_dll.exit400
  %125 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %temperature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %126)
  %cmp168 = icmp slt i32 %126, 10000
  br i1 %cmp168, label %if.then170, label %if.else173

if.then170:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  %add172 = add i32 %add164, 12
  br label %single_failure_found

if.else173:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %126)
  %cmp174 = icmp ult i32 %126, 20000
  br i1 %cmp174, label %if.then176, label %if.else179

if.then176:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #11
  %add178 = add i32 %add164, 8
  br label %single_failure_found

if.else179:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %126)
  %cmp180 = icmp ult i32 %126, 70000
  br i1 %cmp180, label %if.then182, label %if.else185

if.then182:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #11
  %add184 = add i32 %add164, 8
  br label %single_failure_found

if.else185:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000, i32 %126)
  %cmp186 = icmp ult i32 %126, 90000
  br i1 %cmp186, label %if.then188, label %if.else191

if.then188:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #11
  %add190 = add i32 %add164, 10
  br label %single_failure_found

if.else191:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #11
  %add193 = add i32 %add164, 12
  br label %single_failure_found

for.inc199:                                       ; preds = %sdhci_omap_set_dll.exit400
  %dec = add nsw i32 %i.1454, -1
  %cmp161 = icmp sgt i32 %i.1454, -10
  br i1 %cmp161, label %for.inc199.for.body163_crit_edge, label %for.inc199.single_failure_found_crit_edge

for.inc199.single_failure_found_crit_edge:        ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #11
  br label %single_failure_found

for.inc199.for.body163_crit_edge:                 ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body163

single_failure_found:                             ; preds = %for.inc199.single_failure_found_crit_edge, %if.else191, %if.then188, %if.then182, %if.then176, %if.then170, %if.else152, %if.then149, %if.then143, %if.then137
  %phase_delay.2 = phi i32 [ %add139, %if.then137 ], [ %add145, %if.then143 ], [ %add151, %if.then149 ], [ %add154, %if.else152 ], [ %add172, %if.then170 ], [ %add178, %if.then176 ], [ %add184, %if.then182 ], [ %add190, %if.then188 ], [ %add193, %if.else191 ], [ %phase_delay.1, %for.inc199.single_failure_found_crit_edge ]
  %127 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i, align 4
  %129 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i403 = getelementptr i8, ptr %128, i32 %130
  %add.ptr1.i404 = getelementptr i8, ptr %add.ptr.i403, i32 316
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i404) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %132 = and i32 %131, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool203.not = icmp eq i32 %132, 0
  br i1 %tobool203.not, label %single_failure_found.tuning_error_crit_edge, label %if.end205

single_failure_found.tuning_error_crit_edge:      ; preds = %single_failure_found
  call void @__sanitizer_cov_trace_pc() #11
  br label %tuning_error

if.end205:                                        ; preds = %single_failure_found
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i, align 4
  %135 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i.i407 = getelementptr i8, ptr %134, i32 %136
  %add.ptr1.i.i408 = getelementptr i8, ptr %add.ptr.i.i407, i32 52
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i408) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %138 = and i32 %137, -15732481
  %139 = call i32 @llvm.bswap.i32(i32 %138) #9
  %shl.i409 = shl i32 %phase_delay.2, 13
  %and.i410 = or i32 %139, %shl.i409
  %or1.i411 = or i32 %and.i410, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %140 = call i32 @llvm.bswap.i32(i32 %or1.i411) #9
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 4
  %143 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i21.i412 = getelementptr i8, ptr %142, i32 %144
  %add.ptr1.i22.i413 = getelementptr i8, ptr %add.ptr.i21.i412, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i413, i32 %140) #9, !srcloc !213
  %or2.i414 = or i32 %and.i410, 4098
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %145 = call i32 @llvm.bswap.i32(i32 %or2.i414) #9
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i, align 4
  %148 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i25.i415 = getelementptr i8, ptr %147, i32 %149
  %add.ptr1.i26.i416 = getelementptr i8, ptr %add.ptr.i25.i415, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i416, i32 %145) #9, !srcloc !213
  br label %for.body.i425

for.body.i425:                                    ; preds = %for.body.i425.for.body.i425_crit_edge, %if.end205
  %i.035.i417 = phi i32 [ 0, %if.end205 ], [ %inc.i422, %for.body.i425.for.body.i425_crit_edge ]
  %150 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i, align 4
  %152 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i29.i418 = getelementptr i8, ptr %151, i32 52
  %add.ptr1.i30.i419 = getelementptr i8, ptr %add.ptr.i29.i418, i32 %153
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i30.i419) #9, !srcloc !210
  %155 = call i32 @llvm.bswap.i32(i32 %154) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and4.i420 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i420)
  %tobool.not.i421 = icmp ne i32 %and4.i420, 0
  %inc.i422 = add nuw nsw i32 %i.035.i417, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i422)
  %exitcond.not.i423 = icmp eq i32 %inc.i422, 1000
  %or.cond.i424 = select i1 %tobool.not.i421, i1 true, i1 %exitcond.not.i423
  br i1 %or.cond.i424, label %sdhci_omap_set_dll.exit429, label %for.body.i425.for.body.i425_crit_edge

for.body.i425.for.body.i425_crit_edge:            ; preds = %for.body.i425
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i425

sdhci_omap_set_dll.exit429:                       ; preds = %for.body.i425
  call void @__sanitizer_cov_trace_pc() #11
  %and5.i426 = and i32 %155, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @arm_heavy_mb() #9
  %156 = call i32 @llvm.bswap.i32(i32 %and5.i426) #9
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i, align 4
  %159 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i33.i427 = getelementptr i8, ptr %158, i32 %160
  %add.ptr1.i34.i428 = getelementptr i8, ptr %add.ptr.i33.i427, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i428, i32 %156) #9, !srcloc !213
  %161 = ptrtoint ptr %is_tuning to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %is_tuning, align 4
  br label %ret211

tuning_error:                                     ; preds = %single_failure_found.tuning_error_crit_edge, %do.end52
  %162 = ptrtoint ptr %is_tuning to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %is_tuning, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64) #12
  call fastcc void @sdhci_omap_disable_tuning(ptr noundef %private.i342)
  br label %ret211

ret211:                                           ; preds = %tuning_error, %sdhci_omap_set_dll.exit429
  %ret.1 = phi i32 [ 0, %sdhci_omap_set_dll.exit429 ], [ -5, %tuning_error ]
  call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 6) #9
  br i1 %tobool21.not, label %ret211.if.end216_crit_edge, label %if.then213

ret211.if.end216_crit_edge:                       ; preds = %ret211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then213:                                       ; preds = %ret211
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ier, align 4
  %or215 = or i32 %164, 2097152
  store i32 %or215, ptr %ier, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %ret211.if.end216_crit_edge
  %165 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ier, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %167 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i430 = icmp eq ptr %170, null
  br i1 %tobool.not.i430, label %do.body.i, label %if.then.i, !prof !216

if.then.i:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  call void %170(ptr noundef %private.i, i32 noundef %166, i32 noundef 52) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  call void @arm_heavy_mb() #9
  %171 = call i32 @llvm.bswap.i32(i32 %166) #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i431 = getelementptr i8, ptr %173, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i431, i32 %171) #9, !srcloc !213
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  %174 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ier, align 4
  %176 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops.i, align 4
  %write_l.i433 = getelementptr inbounds %struct.sdhci_ops, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %write_l.i433 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_l.i433, align 4
  %tobool.not.i434 = icmp eq ptr %179, null
  br i1 %tobool.not.i434, label %do.body.i438, label %if.then.i435, !prof !216

if.then.i435:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %179(ptr noundef %private.i, i32 noundef %175, i32 noundef 56) #9
  br label %cleanup

do.body.i438:                                     ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  call void @arm_heavy_mb() #9
  %180 = call i32 @llvm.bswap.i32(i32 %175) #9
  %ioaddr.i436 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %181 = ptrtoint ptr %ioaddr.i436 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ioaddr.i436, align 16
  %add.ptr.i437 = getelementptr i8, ptr %182, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437, i32 %180) #9, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %do.body.i438, %if.then.i435, %if.end14.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %ret.1, %if.then.i435 ], [ %ret.1, %do.body.i438 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %5 = and i32 %4, -524545
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 67584
  %reg.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 %11
  %add.ptr1.i14 = getelementptr i8, ptr %add.ptr.i13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14, i32 %7) #9, !srcloc !213
  tail call void @sdhci_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_switch_external_dma(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_omap_config_iodelay_pinctrl_state(ptr nocapture noundef %omap_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %host2 = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 5
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %mmc3 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mmc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc3, align 8
  %caps4 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %caps25 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 17
  %flags = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %call10 = tail call ptr @devm_pinctrl_get(ptr noundef %10) #9
  %pinctrl = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 10
  %11 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.66) #12
  %12 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pinctrl, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call18 = tail call ptr @pinctrl_lookup_state(ptr noundef %call10, ptr noundef nonnull @.str.68) #9
  %cmp.i146 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.70) #12
  %15 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %call5.i.i, align 4
  %call26 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.72, ptr noundef %caps4, i32 noundef 524288)
  %cmp.i147 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.end25.if.end30_crit_edge, label %if.then28

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29 = getelementptr ptr, ptr %call5.i.i, i32 6
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call26, ptr %arrayidx29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %call31 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.73, ptr noundef %caps4, i32 noundef 1048576)
  %cmp.i148 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx34 = getelementptr ptr, ptr %call5.i.i, i32 7
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %arrayidx34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %call36 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.74, ptr noundef %caps4, i32 noundef 262144)
  %cmp.i149 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx39 = getelementptr ptr, ptr %call5.i.i, i32 5
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %arrayidx39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %call41 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.75, ptr noundef %caps4, i32 noundef 131072)
  %cmp.i150 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44 = getelementptr ptr, ptr %call5.i.i, i32 4
  %20 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call41, ptr %arrayidx44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %call46 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.76, ptr noundef %caps4, i32 noundef 65536)
  %cmp.i151 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx49 = getelementptr ptr, ptr %call5.i.i, i32 3
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call46, ptr %arrayidx49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45.if.end50_crit_edge
  %call51 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.77, ptr noundef %caps4, i32 noundef 4096)
  %cmp.i152 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.else, label %if.end50.if.end60.sink.split_crit_edge

if.end50.if.end60.sink.split_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.else:                                          ; preds = %if.end50
  %call55 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.78, ptr noundef %caps4, i32 noundef 2048)
  %cmp.i153 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.else.if.end60_crit_edge, label %if.else.if.end60.sink.split_crit_edge

if.else.if.end60.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end60.sink.split:                              ; preds = %if.else.if.end60.sink.split_crit_edge, %if.end50.if.end60.sink.split_crit_edge
  %call55.sink = phi ptr [ %call51, %if.end50.if.end60.sink.split_crit_edge ], [ %call55, %if.else.if.end60.sink.split_crit_edge ]
  %arrayidx58 = getelementptr ptr, ptr %call5.i.i, i32 8
  %22 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call55.sink, ptr %arrayidx58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.else.if.end60_crit_edge
  %call61 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.79, ptr noundef %caps4, i32 noundef 4)
  %cmp.i154 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx64 = getelementptr ptr, ptr %call5.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call61, ptr %arrayidx64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %call66 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.79, ptr noundef %caps4, i32 noundef 2)
  %cmp.i155 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx69 = getelementptr ptr, ptr %call5.i.i, i32 1
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call66, ptr %arrayidx69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %call71 = tail call fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr noundef %omap_host, ptr noundef nonnull @.str.80, ptr noundef %caps25, i32 noundef 32)
  %cmp.i156 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.end70.if.end75_crit_edge, label %if.then73

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx74 = getelementptr ptr, ptr %call5.i.i, i32 9
  %25 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call71, ptr %arrayidx74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70.if.end75_crit_edge
  %pinctrl_state76 = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 11
  %26 = ptrtoint ptr %pinctrl_state76 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %pinctrl_state76, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end23, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ %15, %do.end23 ], [ 0, %if.end75 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %omap_offset.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %8 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i6.i = getelementptr i8, ptr %add.ptr.i5.i, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 %5) #9, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_get_rate(ptr noundef %11) #9
  %add.i = add i32 %clock, -1
  %sub.i = add i32 %add.i, %call.i
  %div.i = udiv i32 %sub.i, %clock
  %conv.i = trunc i32 %div.i to i16
  %conv1.i = and i32 %div.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %conv.i.op = shl i16 %conv.i, 6
  %12 = select i1 %cmp.not.i, i16 %conv.i.op, i16 -64
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %12) #9
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %15 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %14, i32 %16
  %add.ptr1.i.i15 = getelementptr i8, ptr %add.ptr.i.i14, i32 300
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i15) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %18 = or i32 %17, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %21 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i5.i16 = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i6.i17 = getelementptr i8, ptr %add.ptr.i5.i16, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i17, i32 %18) #9, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_power(ptr nocapture noundef readonly %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %supply = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %3, i16 noundef zeroext %vdd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_tuning = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 4
  %0 = ptrtoint ptr %is_tuning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_tuning, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %cmd = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 33
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true3

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true3:                                   ; preds = %land.lhs.true
  %data_early = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 37
  %4 = ptrtoint ptr %data_early to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %data_early, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4.not = icmp slt i8 %bf.load, 0
  %and = and i32 %intmask, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool6.not, %tobool4.not
  br i1 %or.cond, label %land.lhs.true3.if.end16_crit_edge, label %if.then

land.lhs.true3.if.end16_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true3
  %and7 = and i32 %intmask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %spec.select = select i1 %tobool8.not, i32 -84, i32 -110
  %5 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cmd, align 4
  %and14 = and i32 %intmask, 983041
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !216

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %host, i32 noundef %and14, i32 noundef 48) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and14) #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !213
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  %and15 = and i32 %intmask, -983042
  br label %if.end16

if.end16:                                         ; preds = %sdhci_writel.exit, %land.lhs.true3.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %intmask.addr.0 = phi i32 [ %intmask, %land.lhs.true3.if.end16_crit_edge ], [ %and15, %sdhci_writel.exit ], [ %intmask, %land.lhs.true.if.end16_crit_edge ], [ %intmask, %entry.if.end16_crit_edge ]
  ret i32 %intmask.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_enable_dma(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %5 = and i32 %4, -4097
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %use_external_dma = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 30
  %7 = ptrtoint ptr %use_external_dma to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_external_dma, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %masksel = select i1 %tobool.not, i32 1048576, i32 0
  %spec.select = or i32 %masksel, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i11 = getelementptr i8, ptr %add.ptr.i10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11, i32 %9) #9, !srcloc !213
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_get_min_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %div = udiv i32 %call1, 1023
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_timeout(ptr noundef %host, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp = icmp eq i32 %1, 38
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdhci_set_data_timeout_irq(ptr noundef %host, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__sdhci_set_timeout(ptr noundef %host, ptr noundef %cmd) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_bus_width(ptr noundef %host, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %width)
  %cmp = icmp eq i32 %width, 3
  %5 = and i32 %4, -536870913
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %cmp, i32 32, i32 0
  %reg.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 %11
  %add.ptr1.i12 = getelementptr i8, ptr %add.ptr.i11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12, i32 %7) #9, !srcloc !213
  tail call void @sdhci_set_bus_width(ptr noundef %host, i32 noundef %width) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_init_74_clocks(ptr nocapture noundef readonly %host, i8 noundef zeroext %power_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i66 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %power_mode2 = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i66, i32 0, i32 7
  %0 = ptrtoint ptr %power_mode2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %power_mode)
  %cmp6.not = icmp eq i8 %power_mode, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %2 = icmp ne i8 %1, 2
  %3 = and i1 %cmp6.not, %2
  br i1 %3, label %if.end9, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end9:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #9
  %base.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %8 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %11 = or i32 %10, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i70 = getelementptr i8, ptr %add.ptr.i69, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i70, i32 %11) #9, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %17, i32 %19
  %add.ptr1.i74 = getelementptr i8, ptr %add.ptr.i73, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i74, i32 0) #9, !srcloc !213
  %call11 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call11, 1000000
  %call1394 = tail call i64 @ktime_get() #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i7795 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i7896 = getelementptr i8, ptr %add.ptr.i7795, i32 304
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i7896) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not97 = icmp eq i32 %25, 0
  br i1 %tobool.not97, label %if.end9.if.end17_crit_edge, label %if.end9.while.end_crit_edge

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %call1398 = phi i64 [ %call13, %cleanup.if.end17_crit_edge ], [ %call1394, %if.end9.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call1398, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call1398, %add.i
  br i1 %cmp3.i.i, label %cleanup.thread, label %cleanup, !prof !219

cleanup.thread:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 808, i32 noundef 9, ptr noundef null) #9
  br label %cleanup46

cleanup:                                          ; preds = %if.end17
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #9
  %call13 = tail call i64 @ktime_get() #9
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %27, i32 304
  %add.ptr1.i78 = getelementptr i8, ptr %add.ptr.i77, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i78) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %31 = and i32 %30, 16777216
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %cleanup.if.end17_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end9.while.end_crit_edge
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %34 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %33, i32 %35
  %add.ptr1.i82 = getelementptr i8, ptr %add.ptr.i81, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i82) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %37 = and i32 %36, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %40 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %39, i32 %41
  %add.ptr1.i86 = getelementptr i8, ptr %add.ptr.i85, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i86, i32 %37) #9, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %44 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %43, i32 %45
  %add.ptr1.i90 = getelementptr i8, ptr %add.ptr.i89, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i90, i32 16777216) #9, !srcloc !213
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %47) #9
  br label %cleanup46

cleanup46:                                        ; preds = %while.end, %cleanup.thread, %entry.cleanup46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i67 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %3 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sysc.0 = phi i32 [ %6, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %is_tuning = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 4
  %7 = ptrtoint ptr %is_tuning to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_tuning, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %and6 = and i8 %mask, -5
  %spec.select = select i1 %tobool3.not, i8 %mask, i8 %and6
  %flags = getelementptr inbounds %struct.sdhci_omap_host, ptr %private.i67, i32 0, i32 9
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end39, label %if.then12

if.then12:                                        ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !216

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %15(ptr noundef %host, i8 noundef zeroext %spec.select, i32 noundef 47) #9
  br label %sdhci_writeb.exit

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i68 = getelementptr i8, ptr %17, i32 47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i68, i8 %spec.select) #9, !srcloc !221
  br label %sdhci_writeb.exit

sdhci_writeb.exit:                                ; preds = %do.body.i, %if.then.i
  %ioaddr.i72 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sdhci_writeb.exit
  %i.0 = phi i32 [ 0, %sdhci_writeb.exit ], [ %inc, %while.body ]
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i70 = icmp eq ptr %21, null
  br i1 %tobool.not.i70, label %if.else.i, label %if.then.i71, !prof !216

if.then.i71:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i8 %21(ptr noundef %host, i32 noundef 47) #9
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ioaddr.i72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i72, align 16
  %add.ptr.i73 = getelementptr i8, ptr %23, i32 47
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i71
  %retval.0.i = phi i8 [ %call.i, %if.then.i71 ], [ %24, %if.else.i ]
  %and1663 = and i8 %retval.0.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1663)
  %tobool17.not = icmp eq i8 %and1663, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %i.0)
  %cmp = icmp ult i32 %i.0, 20000
  %or.cond = select i1 %tobool17.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body, label %sdhci_readb.exit.while.cond19_crit_edge

sdhci_readb.exit.while.cond19_crit_edge:          ; preds = %sdhci_readb.exit
  br label %while.cond19

while.body:                                       ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i32 %i.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #9
  br label %while.cond

while.cond19:                                     ; preds = %while.body30, %sdhci_readb.exit.while.cond19_crit_edge
  %i.1 = phi i32 [ %inc26, %while.body30 ], [ 0, %sdhci_readb.exit.while.cond19_crit_edge ]
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %read_b.i75 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read_b.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_b.i75, align 4
  %tobool.not.i76 = icmp eq ptr %29, null
  br i1 %tobool.not.i76, label %if.else.i81, label %if.then.i78, !prof !216

if.then.i78:                                      ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #11
  %call.i77 = tail call zeroext i8 %29(ptr noundef %host, i32 noundef 47) #9
  br label %sdhci_readb.exit83

if.else.i81:                                      ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ioaddr.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i72, align 16
  %add.ptr.i80 = getelementptr i8, ptr %31, i32 47
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i80) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  br label %sdhci_readb.exit83

sdhci_readb.exit83:                               ; preds = %if.else.i81, %if.then.i78
  %retval.0.i82 = phi i8 [ %call.i77, %if.then.i78 ], [ %32, %if.else.i81 ]
  %and2364 = and i8 %retval.0.i82, %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2364)
  %tobool24.not = icmp ne i8 %and2364, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %i.1)
  %cmp27 = icmp ult i32 %i.1, 20000
  %or.cond66 = select i1 %tobool24.not, i1 %cmp27, i1 false
  br i1 %or.cond66, label %while.body30, label %while.end31

while.body30:                                     ; preds = %sdhci_readb.exit83
  call void @__sanitizer_cov_trace_pc() #11
  %inc26 = add nuw nsw i32 %i.1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #9
  br label %while.cond19

while.end31:                                      ; preds = %sdhci_readb.exit83
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %read_b.i85 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %read_b.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_b.i85, align 4
  %tobool.not.i86 = icmp eq ptr %37, null
  br i1 %tobool.not.i86, label %if.else.i91, label %if.then.i88, !prof !216

if.then.i88:                                      ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call.i87 = tail call zeroext i8 %37(ptr noundef %host, i32 noundef 47) #9
  br label %sdhci_readb.exit93

if.else.i91:                                      ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %ioaddr.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i72, align 16
  %add.ptr.i90 = getelementptr i8, ptr %39, i32 47
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i90) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  br label %sdhci_readb.exit93

sdhci_readb.exit93:                               ; preds = %if.else.i91, %if.then.i88
  %retval.0.i92 = phi i8 [ %call.i87, %if.then.i88 ], [ %40, %if.else.i91 ]
  %and3565 = and i8 %retval.0.i92, %spec.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3565)
  %tobool36.not = icmp eq i8 %and3565, 0
  br i1 %tobool36.not, label %sdhci_readb.exit93.restore_sysc_crit_edge, label %do.end

sdhci_readb.exit93.restore_sysc_crit_edge:        ; preds = %sdhci_readb.exit93
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore_sysc

do.end:                                           ; preds = %sdhci_readb.exit93
  call void @__sanitizer_cov_trace_pc() #11
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %41 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmc, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #12
  br label %restore_sysc

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %spec.select) #9
  br label %restore_sysc

restore_sysc:                                     ; preds = %if.end39, %do.end, %sdhci_readb.exit93.restore_sysc_crit_edge
  %45 = and i8 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool42.not = icmp eq i8 %45, 0
  br i1 %tobool42.not, label %restore_sysc.if.end44_crit_edge, label %if.then43

restore_sysc.if.end44_crit_edge:                  ; preds = %restore_sysc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %restore_sysc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %sysc.0) #9
  %base.i94 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %47 = ptrtoint ptr %base.i94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i94, align 4
  %omap_offset.i95 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %49 = ptrtoint ptr %omap_offset.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %omap_offset.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %48, i32 %50
  %add.ptr1.i97 = getelementptr i8, ptr %add.ptr.i96, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i97, i32 %46) #9, !srcloc !213
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %restore_sysc.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_omap_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %omap_offset.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %2 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %8 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i6.i = getelementptr i8, ptr %add.ptr.i5.i, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 %5) #9, !srcloc !213
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %12 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %timing.off = add i32 %timing, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %timing.off)
  %switch = icmp ult i32 %timing.off, 2
  %15 = and i32 %14, -2049
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %masksel = select i1 %switch, i32 524288, i32 0
  %reg.0 = or i32 %16, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %20 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i16 = getelementptr i8, ptr %add.ptr.i15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16, i32 %17) #9, !srcloc !213
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #9
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %24 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %23, i32 %25
  %add.ptr1.i.i20 = getelementptr i8, ptr %add.ptr.i.i19, i32 300
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i20) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %27 = or i32 %26, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %30 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i5.i21 = getelementptr i8, ptr %29, i32 %31
  %add.ptr1.i6.i22 = getelementptr i8, ptr %add.ptr.i5.i21, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i22, i32 %27) #9, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_data_timeout_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_omap_conf_bus_power(ptr nocapture noundef readonly %omap_host, i8 noundef zeroext %signal_voltage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 14
  %2 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 296
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and = and i32 %5, -3585
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %signal_voltage)
  %cond = icmp eq i8 %signal_voltage, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i72 = getelementptr i8, ptr %add.ptr.i71, i32 320
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i72) #9, !srcloc !210
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %and2 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %5, 3584
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %and3 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.end, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or6 = or i32 %and, 3072
  br label %sw.epilog

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef %11) #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %and, 2560
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %if.then5, %if.then
  %reg.0 = phi i32 [ %or, %if.then ], [ %or6, %if.then5 ], [ %and, %do.end ], [ %or10, %sw.default ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i76 = getelementptr i8, ptr %add.ptr.i75, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i76, i32 %14) #9, !srcloc !213
  %or11 = or i32 %reg.0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or11) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i80 = getelementptr i8, ptr %add.ptr.i79, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i80, i32 %19) #9, !srcloc !213
  %call12 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call12, 1000000
  %call1487 = tail call i64 @ktime_get() #9
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i8388 = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i8489 = getelementptr i8, ptr %add.ptr.i8388, i32 296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i8489) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool18.not90 = icmp eq i32 %29, 0
  br i1 %tobool18.not90, label %sw.epilog.if.end20_crit_edge, label %sw.epilog.cleanup49_crit_edge

sw.epilog.cleanup49_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  br label %if.end20

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %sw.epilog.if.end20_crit_edge
  %call1491 = phi i64 [ %call14, %cleanup.if.end20_crit_edge ], [ %call1487, %sw.epilog.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call1491, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call1491, %add.i
  br i1 %cmp3.i.i, label %do.end33, label %cleanup, !prof !219

do.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 258, i32 noundef 9, ptr noundef null) #9
  br label %cleanup49

cleanup:                                          ; preds = %if.end20
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #9
  %call14 = tail call i64 @ktime_get() #9
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %32 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %31, i32 296
  %add.ptr1.i84 = getelementptr i8, ptr %add.ptr.i83, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i84) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %35 = and i32 %34, 65536
  %tobool18.not = icmp eq i32 %35, 0
  br i1 %tobool18.not, label %cleanup.if.end20_crit_edge, label %cleanup.cleanup49_crit_edge

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

cleanup49:                                        ; preds = %cleanup.cleanup49_crit_edge, %do.end33, %sw.epilog.cleanup49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_ios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_omap_disable_tuning(ptr nocapture noundef readonly %omap_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %omap_offset.i = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 14
  %2 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 316
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %5 = and i32 %4, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i12 = getelementptr i8, ptr %add.ptr.i11, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i12, i32 %5) #9, !srcloc !213
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i16 = getelementptr i8, ptr %add.ptr.i15, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i16) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %15 = and i32 %14, -1052673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %omap_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %omap_offset.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 %19
  %add.ptr1.i20 = getelementptr i8, ptr %add.ptr.i19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i20, i32 %15) #9, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_sdio_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sdhci_omap_iodelay_pinctrl_state(ptr nocapture noundef readonly %omap_host, ptr noundef %mode, ptr nocapture noundef %caps, i32 noundef %capmask) unnamed_addr #2 align 64 {
entry:
  %str = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %omap_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %omap_host, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %str) #9
  %4 = call ptr @memset(ptr %str, i32 255, i32 20)
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and = and i32 %6, %capmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.ret_crit_edge, label %if.end

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.then10_crit_edge, label %if.end8

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end8:                                          ; preds = %if.end
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 20, ptr noundef nonnull @.str.81, ptr noundef %mode, ptr noundef nonnull %3)
  %pinctrl = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 10
  %7 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pinctrl, align 4
  %call7 = call ptr @pinctrl_lookup_state(ptr noundef %8, ptr noundef nonnull %str) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.if.then10_crit_edge, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %pinctrl11 = getelementptr inbounds %struct.sdhci_omap_host, ptr %omap_host, i32 0, i32 10
  %9 = ptrtoint ptr %pinctrl11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pinctrl11, align 4
  %call12 = call ptr @pinctrl_lookup_state(ptr noundef %10, ptr noundef %mode) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %pinctrl_state.1 = phi ptr [ %call12, %if.then10 ], [ %call7, %if.end8.if.end13_crit_edge ]
  %cmp.i28 = icmp ugt ptr %pinctrl_state.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %do.end, label %if.end13.ret_crit_edge

if.end13.ret_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.82, ptr noundef %mode) #12
  %neg = xor i32 %capmask, -1
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 4
  %and16 = and i32 %12, %neg
  store i32 %and16, ptr %caps, align 4
  br label %ret

ret:                                              ; preds = %do.end, %if.end13.ret_crit_edge, %entry.ret_crit_edge
  %pinctrl_state.2 = phi ptr [ %pinctrl_state.1, %do.end ], [ %pinctrl_state.1, %if.end13.ret_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.ret_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %str) #9
  ret ptr %pinctrl_state.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #9
  %base.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %omap_offset.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 5
  %4 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !210
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %con.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 6
  %8 = ptrtoint ptr %con.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %con.i, align 4
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %11 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %10, i32 %12
  %add.ptr1.i20.i = getelementptr i8, ptr %add.ptr.i19.i, i32 296
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i20.i) #9, !srcloc !210
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %hctl.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 7
  %15 = ptrtoint ptr %hctl.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hctl.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %18 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %17, i32 %19
  %add.ptr1.i24.i = getelementptr i8, ptr %add.ptr.i23.i, i32 300
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i24.i) #9, !srcloc !210
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %sysctl.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %22 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sysctl.i, align 4
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %25 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %24, i32 %26
  %add.ptr1.i28.i = getelementptr i8, ptr %add.ptr.i27.i, i32 320
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #9, !srcloc !210
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %capa.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 9
  %29 = ptrtoint ptr %capa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %capa.i, align 4
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %32 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %31, i32 %33
  %add.ptr1.i32.i = getelementptr i8, ptr %add.ptr.i31.i, i32 308
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i32.i) #9, !srcloc !210
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %ie.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 10
  %36 = ptrtoint ptr %ie.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ie.i, align 4
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %39 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %38, i32 %40
  %add.ptr1.i36.i = getelementptr i8, ptr %add.ptr.i35.i, i32 312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i36.i) #9, !srcloc !210
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %ise.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 11
  %43 = ptrtoint ptr %ise.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ise.i, align 4
  %call4 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_omap_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %con = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 6
  %2 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %con, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %3)
  %cmp.not = icmp eq i32 %3, -22
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hctl.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 7
  %4 = ptrtoint ptr %hctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hctl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %base.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %omap_offset.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 5
  %9 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %10
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %6) #9, !srcloc !213
  %capa.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 9
  %11 = ptrtoint ptr %capa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capa.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %16 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %15, i32 %17
  %add.ptr1.i18.i = getelementptr i8, ptr %add.ptr.i17.i, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i18.i, i32 %13) #9, !srcloc !213
  %18 = ptrtoint ptr %hctl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hctl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %23 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %22, i32 %24
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %20) #9, !srcloc !213
  %sysctl.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %25 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sysctl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %30 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %29, i32 %31
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i, i32 %27) #9, !srcloc !213
  %32 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %con, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %37 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %36, i32 %38
  %add.ptr1.i30.i = getelementptr i8, ptr %add.ptr.i29.i, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %34) #9, !srcloc !213
  %ie.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 10
  %39 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ie.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %44 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %43, i32 %45
  %add.ptr1.i34.i = getelementptr i8, ptr %add.ptr.i33.i, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34.i, i32 %41) #9, !srcloc !213
  %ise.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 11
  %46 = ptrtoint ptr %ise.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ise.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %51 = ptrtoint ptr %omap_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %omap_offset.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %50, i32 %52
  %add.ptr1.i38.i = getelementptr i8, ptr %add.ptr.i37.i, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38.i, i32 %48) #9, !srcloc !213
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__initcall__kmod_sdhci_omap__306_1493_sdhci_omap_driver_init6, !1, !"__initcall__kmod_sdhci_omap__306_1493_sdhci_omap_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1493, i32 1}
!2 = !{ptr @__exitcall_sdhci_omap_driver_exit, !1, !"__exitcall_sdhci_omap_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1495, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1496, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1497, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias311, !11, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1498, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1486, i32 14}
!14 = !{ptr @sdhci_omap_driver, !15, !"sdhci_omap_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1482, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1233, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_omap_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_omap_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1245, i32 3}
!26 = !{ptr @sdhci_omap_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sdhci_omap_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1270, i32 24}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1271, i32 30}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1273, i32 30}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1275, i32 30}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1282, i32 38}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1290, i32 3}
!40 = !{ptr @sdhci_omap_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sdhci_omap_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1294, i32 54}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1299, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sdhci_omap_probe.__UNIQUE_ID_ddebug305, !45, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1314, i32 3}
!50 = !{ptr @sdhci_omap_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sdhci_omap_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1320, i32 3}
!54 = !{ptr @sdhci_omap_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sdhci_omap_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1335, i32 35}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1339, i32 37}
!60 = distinct !{null, !61, !"__print_once", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1340, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sdhci_omap_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @sdhci_omap_probe._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1366, i32 55}
!68 = !{ptr @sdhci_omap_pdata, !69, !"sdhci_omap_pdata", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1012, i32 38}
!70 = !{ptr @sdhci_omap_ops, !71, !"sdhci_omap_ops", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 929, i32 25}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 869, i32 4}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sdhci_omap_reset._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sdhci_omap_reset._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1205, i32 14}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1206, i32 15}
!81 = !{ptr @sdhci_omap_soc_devices, !82, !"sdhci_omap_soc_devices", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1203, i32 42}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 975, i32 45}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 979, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sdhci_omap_set_capabilities._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @sdhci_omap_set_capabilities._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 594, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sdhci_omap_start_signal_voltage_switch._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sdhci_omap_start_signal_voltage_switch._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 598, i32 2}
!97 = !{ptr @sdhci_omap_start_signal_voltage_switch.__UNIQUE_ID_ddebug304, !96, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 237, i32 4}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sdhci_omap_conf_bus_power._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sdhci_omap_conf_bus_power._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 208, i32 4}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sdhci_omap_enable_iov._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @sdhci_omap_enable_iov._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 164, i32 4}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sdhci_omap_set_pbias._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @sdhci_omap_set_pbias._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 173, i32 4}
!115 = !{ptr @sdhci_omap_set_pbias._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @sdhci_omap_set_pbias._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 184, i32 4}
!119 = !{ptr @sdhci_omap_set_pbias._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @sdhci_omap_set_pbias._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 619, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sdhci_omap_set_timing._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @sdhci_omap_set_timing._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 344, i32 46}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 346, i32 3}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sdhci_omap_execute_tuning._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @sdhci_omap_execute_tuning._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 404, i32 3}
!135 = !{ptr @sdhci_omap_execute_tuning._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sdhci_omap_execute_tuning._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 487, i32 2}
!139 = !{ptr @sdhci_omap_execute_tuning._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sdhci_omap_execute_tuning._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1135, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sdhci_omap_config_iodelay_pinctrl_state._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @sdhci_omap_config_iodelay_pinctrl_state._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1139, i32 51}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1141, i32 3}
!150 = !{ptr @sdhci_omap_config_iodelay_pinctrl_state._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @sdhci_omap_config_iodelay_pinctrl_state._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1146, i32 54}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1151, i32 54}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1156, i32 54}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1161, i32 54}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1166, i32 54}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1171, i32 54}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1176, i32 55}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1183, i32 54}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1193, i32 54}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1096, i32 21}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1104, i32 3}
!174 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @sdhci_omap_iodelay_pinctrl_state._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @sdhci_omap_iodelay_pinctrl_state._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @omap_sdhci_match, !178, !"omap_sdhci_match", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1070, i32 34}
!179 = !{ptr @omap2430_data, !180, !"omap2430_data", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1025, i32 37}
!181 = !{ptr @omap3_data, !182, !"omap3_data", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1030, i32 37}
!183 = !{ptr @omap4_data, !184, !"omap4_data", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1035, i32 37}
!185 = !{ptr @omap5_data, !186, !"omap5_data", i1 false, i1 false}
!186 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1041, i32 37}
!187 = !{ptr @dra7_data, !188, !"dra7_data", i1 false, i1 false}
!188 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1064, i32 37}
!189 = !{ptr @k2g_data, !190, !"k2g_data", i1 false, i1 false}
!190 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1047, i32 37}
!191 = !{ptr @am335_data, !192, !"am335_data", i1 false, i1 false}
!192 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1052, i32 37}
!193 = !{ptr @am437_data, !194, !"am437_data", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1058, i32 37}
!195 = !{ptr @sdhci_omap_dev_pm_ops, !196, !"sdhci_omap_dev_pm_ops", i1 false, i1 false}
!196 = !{!"../drivers/mmc/host/sdhci-omap.c", i32 1475, i32 32}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 2148794454, i64 2148794459, i64 2148794472, i64 2148794516, i64 2148794550, i64 2148794571}
!207 = !{i64 2148226208}
!208 = !{i64 711031, i64 711056, i64 711078, i64 711094, i64 711106, i64 711126, i64 711150, i64 711166, i64 711178}
!209 = !{i64 2148226396}
!210 = !{i64 5057753}
!211 = !{i64 2155471693}
!212 = !{i64 2155472099}
!213 = !{i64 5057335}
!214 = !{i64 2155498520}
!215 = !{i8 0, i8 2}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2155467005}
!218 = !{!"auto-init"}
!219 = !{!"branch_weights", i32 1, i32 2000}
!220 = !{i64 2155468217}
!221 = !{i64 5057138}
!222 = !{i64 5057533}
!223 = !{i64 2155470127}
