; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci_am654.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci_am654.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sdhci_am654_driver_data = type { ptr, i32 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing_data = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.sdhci_am654_data = type { ptr, i8, [11 x i32], [11 x i32], i32, i32, i32, i32, i32 }

@__initcall__kmod_sdhci_am654__273_883_sdhci_am654_driver_init6 = internal global ptr @sdhci_am654_driver_init, section ".initcall6.init", align 4
@sdhci_am654_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_am654_probe, ptr @sdhci_am654_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_am654_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_am654_driver_exit = internal global ptr @sdhci_am654_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [74 x i8] c"sdhci_am654.description=Driver for SDHCI Controller on TI's AM654 devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [50 x i8] c"sdhci_am654.author=Faiz Abbas <faiz_abbas@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [46 x i8] c"sdhci_am654.file=drivers/mmc/host/sdhci_am654\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [24 x i8] c"sdhci_am654.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-am654\00", [20 x i8] zeroinitializer }, align 32
@sdhci_am654_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_am654_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-sdhci-8bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_j721e_8bit_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-sdhci-4bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_j721e_4bit_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-sdhci-8bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_am64_8bit_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-sdhci-4bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_am64_4bit_drvdata }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@sdhci_am654_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.14, ptr @.str.15, ptr null, ptr null, ptr @sdhci_am654_sr1_drvdata, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_xin\00", [24 x i8] zeroinitializer }, align 32
@sdhci_am654_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_xin clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_am654_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci_am654.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_am654_probe._entry_ptr = internal global ptr @sdhci_am654_probe._entry, section ".printk_index", align 4
@sdhci_am654_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sdhci_am654_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sdhci_am654:823:(&sdhci_am654_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@sdhci_am654_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 825, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_am654_probe._entry_ptr.10 = internal global ptr @sdhci_am654_probe._entry.8, section ".printk_index", align 4
@sdhci_am654_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parsing dt failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_am654_probe._entry_ptr.13 = internal global ptr @sdhci_am654_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM65X\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SR1.0\00", [26 x i8] zeroinitializer }, align 32
@sdhci_am654_sr1_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_am654_pdata, i32 31 }, [24 x i8] zeroinitializer }, align 32
@sdhci_am654_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_am654_ops, i32 268435456, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_am654_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_am654_write_b, ptr @sdhci_am654_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr @sdhci_am654_cqhci_irq, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr @sdhci_am654_platform_execute_tuning, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_am654_write_b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 368, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Power on failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdhci_am654_write_b\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdhci_am654_write_b._entry_ptr = internal global ptr @sdhci_am654_write_b._entry, section ".printk_index", align 4
@sdhci_am654_setup_dll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DLL failed to relock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_am654_setup_dll\00", [42 x i8] zeroinitializer }, align 32
@sdhci_am654_setup_dll._entry_ptr = internal global ptr @sdhci_am654_setup_dll._entry, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,trm-icp\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,driver-strength-ohm\00", [41 x i8] zeroinitializer }, align 32
@sdhci_am654_get_of_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid driver strength\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdhci_am654_get_of_property\00", [36 x i8] zeroinitializer }, align 32
@sdhci_am654_get_of_property._entry_ptr = internal global ptr @sdhci_am654_get_of_property._entry, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,strobe-sel\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,clkbuf-sel\00", [18 x i8] zeroinitializer }, align 32
@sdhci_am654_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_am654_dumpregs, ptr null, ptr null, ptr @sdhci_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@td = internal constant { [11 x %struct.timing_data], [60 x i8] } { [11 x %struct.timing_data] [%struct.timing_data { ptr @.str.36, ptr @.str.37, i32 0 }, %struct.timing_data { ptr @.str.38, ptr @.str.39, i32 2 }, %struct.timing_data { ptr @.str.40, ptr @.str.41, i32 4 }, %struct.timing_data { ptr @.str.42, ptr @.str.43, i32 65536 }, %struct.timing_data { ptr @.str.44, ptr @.str.45, i32 131072 }, %struct.timing_data { ptr @.str.46, ptr null, i32 262144 }, %struct.timing_data { ptr @.str.47, ptr null, i32 524288 }, %struct.timing_data { ptr @.str.48, ptr null, i32 1048576 }, %struct.timing_data { ptr @.str.49, ptr @.str.50, i32 14336 }, %struct.timing_data { ptr @.str.51, ptr null, i32 96 }, %struct.timing_data { ptr @.str.52, ptr null, i32 98304 }], [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,otap-del-sel\00", [16 x i8] zeroinitializer }, align 32
@sdhci_am654_get_otap_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't find otap-del-sel\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdhci_am654_get_otap_delay\00", [37 x i8] zeroinitializer }, align 32
@sdhci_am654_get_otap_delay._entry_ptr = internal global ptr @sdhci_am654_get_otap_delay._entry, section ".printk_index", align 4
@sdhci_am654_get_otap_delay._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 600, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using legacy binding ti,otap-del-sel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sdhci_am654_get_otap_delay._entry_ptr.33 = internal global ptr @sdhci_am654_get_otap_delay._entry.30, section ".printk_index", align 4
@sdhci_am654_get_otap_delay.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.29, ptr @.str.4, ptr @.str.35, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci_am654\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Couldn't find %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,otap-del-sel-legacy\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,itap-del-sel-legacy\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,otap-del-sel-mmc-hs\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,itap-del-sel-mmc-hs\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-sd-hs\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,itap-del-sel-sd-hs\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-sdr12\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,itap-del-sel-sdr12\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-sdr25\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,itap-del-sel-sdr25\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-sdr50\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,otap-del-sel-sdr104\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-ddr50\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-ddr52\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,itap-del-sel-ddr52\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-hs200\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,otap-del-sel-hs400\00", [42 x i8] zeroinitializer }, align 32
@sdhci_am654_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_am654_pdata, i32 15 }, [24 x i8] zeroinitializer }, align 32
@sdhci_j721e_8bit_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_j721e_8bit_pdata, i32 24 }, [24 x i8] zeroinitializer }, align 32
@sdhci_j721e_4bit_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_j721e_4bit_pdata, i32 1 }, [24 x i8] zeroinitializer }, align 32
@sdhci_am64_8bit_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_am64_8bit_pdata, i32 24 }, [24 x i8] zeroinitializer }, align 32
@sdhci_am64_4bit_drvdata = internal constant { %struct.sdhci_am654_driver_data, [24 x i8] } { %struct.sdhci_am654_driver_data { ptr @sdhci_am64_4bit_pdata, i32 1 }, [24 x i8] zeroinitializer }, align 32
@sdhci_j721e_8bit_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_j721e_8bit_ops, i32 268435456, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_j721e_8bit_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_am654_write_b, ptr @sdhci_am654_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr @sdhci_am654_cqhci_irq, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr @sdhci_am654_platform_execute_tuning, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_j721e_4bit_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_j721e_4bit_ops, i32 268435456, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_j721e_4bit_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_am654_write_b, ptr @sdhci_j721e_4bit_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr @sdhci_am654_cqhci_irq, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr @sdhci_am654_platform_execute_tuning, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_am64_8bit_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_j721e_8bit_ops, i32 0, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_am64_4bit_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_j721e_4bit_ops, i32 0, i32 8 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 33, i64 40, i64 50, i64 66, i64 100]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 100000000, i64 200000000]
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"sdhci_am654_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 873, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 875, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"sdhci_am654_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 747, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"sdhci_am654_devices\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 537, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 801, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 803, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"sdhci_am654_regmap_config\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 91, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 822, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 825, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 836, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 538, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 539, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"sdhci_am654_sr1_drvdata\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 458, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"sdhci_am654_pdata\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 452, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"sdhci_am654_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 439, i32 25 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 368, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 225, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 706, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 711, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 733, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 738, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 739, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"sdhci_am654_cqhci_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 550, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 104, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 592, i32 39 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 595, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 600, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 611, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 105, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 106, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 108, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 109, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 111, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 112, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 114, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 115, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 117, i32 28 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 118, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 120, i32 28 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 123, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 126, i32 28 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 129, i32 28 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 130, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 132, i32 28 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 135, i32 28 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"sdhci_am654_drvdata\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 464, i32 45 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"sdhci_j721e_8bit_drvdata\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 488, i32 45 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"sdhci_j721e_4bit_drvdata\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 512, i32 45 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"sdhci_am64_8bit_drvdata\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 522, i32 45 }
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"sdhci_am64_4bit_drvdata\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 532, i32 45 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"sdhci_j721e_8bit_pdata\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 482, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant [21 x i8] c"sdhci_j721e_8bit_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 469, i32 25 }
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"sdhci_j721e_4bit_pdata\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 506, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant [21 x i8] c"sdhci_j721e_4bit_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 493, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"sdhci_am64_8bit_pdata\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 517, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"sdhci_am64_4bit_pdata\00", align 1
@___asan_gen_.280 = private constant [34 x i8] c"../drivers/mmc/host/sdhci_am654.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 527, i32 38 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_sdhci_am654_driver_exit, ptr @__initcall__kmod_sdhci_am654__273_883_sdhci_am654_driver_init6, ptr @sdhci_am654_driver_exit, ptr @sdhci_am654_get_of_property._entry, ptr @sdhci_am654_get_of_property._entry_ptr, ptr @sdhci_am654_get_otap_delay._entry, ptr @sdhci_am654_get_otap_delay._entry.30, ptr @sdhci_am654_get_otap_delay._entry_ptr, ptr @sdhci_am654_get_otap_delay._entry_ptr.33, ptr @sdhci_am654_probe._entry, ptr @sdhci_am654_probe._entry.11, ptr @sdhci_am654_probe._entry.8, ptr @sdhci_am654_probe._entry_ptr, ptr @sdhci_am654_probe._entry_ptr.10, ptr @sdhci_am654_probe._entry_ptr.13, ptr @sdhci_am654_setup_dll._entry, ptr @sdhci_am654_setup_dll._entry_ptr, ptr @sdhci_am654_write_b._entry, ptr @sdhci_am654_write_b._entry_ptr, ptr @sdhci_am654_driver, ptr @.str, ptr @sdhci_am654_of_match, ptr @sdhci_am654_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sdhci_am654_probe._key, ptr @sdhci_am654_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @sdhci_am654_sr1_drvdata, ptr @sdhci_am654_pdata, ptr @sdhci_am654_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sdhci_am654_cqhci_ops, ptr @td, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @sdhci_am654_drvdata, ptr @sdhci_j721e_8bit_drvdata, ptr @sdhci_j721e_4bit_drvdata, ptr @sdhci_am64_8bit_drvdata, ptr @sdhci_am64_4bit_drvdata, ptr @sdhci_j721e_8bit_pdata, ptr @sdhci_j721e_8bit_ops, ptr @sdhci_j721e_4bit_pdata, ptr @sdhci_j721e_4bit_ops, ptr @sdhci_am64_8bit_pdata, ptr @sdhci_am64_4bit_pdata], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_sr1_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_write_b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_setup_dll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_get_of_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_get_otap_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_get_otap_delay._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am654_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_8bit_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_4bit_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am64_8bit_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am64_4bit_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_8bit_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_8bit_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_4bit_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_j721e_4bit_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am64_8bit_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_am64_4bit_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_am654_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_am654_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_am654_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %drv_strength.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @sdhci_am654_of_match, ptr noundef %1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call3 = tail call ptr @soc_device_match(ptr noundef nonnull @sdhci_am654_devices) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data4 = getelementptr inbounds %struct.soc_device_attribute, ptr %call3, i32 0, i32 5
  %4 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data4, align 4
  %tobool5.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool5.not, ptr %3, ptr %5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %drvdata.0 = phi ptr [ %3, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %6 = ptrtoint ptr %drvdata.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata.0, align 4
  %call7 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %7, i32 noundef 116) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %private.i100 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 11, i32 21
  %flags = getelementptr inbounds %struct.sdhci_am654_driver_data, ptr %drvdata.0, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %flags14 = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 13, i32 17, i32 3
  %11 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags14, align 4
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i101 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %12 = ptrtoint ptr %call15 to i32
  br label %err_pltfm_free

if.end19:                                         ; preds = %if.end11
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 81
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %private.i, align 128
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i102 = icmp slt i32 %call.i, 0
  br i1 %cmp.i102, label %if.then.i, label %if.end23

if.then.i:                                        ; preds = %if.end19
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !161
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_disable_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_disable_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_disable

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !162
  br label %pm_runtime_disable

if.end23:                                         ; preds = %if.end19
  %call24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %cmp.i103 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call24 to i32
  br label %pm_runtime_put

if.end28:                                         ; preds = %if.end23
  %call29 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call24, ptr noundef nonnull @sdhci_am654_regmap_config, ptr noundef nonnull @sdhci_am654_probe._key, ptr noundef nonnull @.str.7) #6
  %16 = ptrtoint ptr %private.i100 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %private.i100, align 4
  %cmp.i104 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %17 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i100, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %pm_runtime_put

if.end39:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_strength.i) #6
  %20 = ptrtoint ptr %drv_strength.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %drv_strength.i, align 4, !annotation !163
  %21 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags14, align 4
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end39.if.end43_crit_edge, label %if.then.i105

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then.i105:                                     ; preds = %if.end39
  %trm_icp.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 13, i32 17, i32 0, i32 1
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %trm_icp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i105.sdhci_am654_get_of_property.exit.thread_crit_edge

if.then.i105.sdhci_am654_get_of_property.exit.thread_crit_edge: ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_get_of_property.exit.thread

if.end.i:                                         ; preds = %if.then.i105
  %call.i38.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull %drv_strength.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool5.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sdhci_am654_get_of_property.exit.thread_crit_edge

if.end.i.sdhci_am654_get_of_property.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_get_of_property.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %drv_strength.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %drv_strength.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.end.i [
    i32 50, label %if.end7.i.if.end17.sink.split.i_crit_edge
    i32 33, label %sw.bb9.i
    i32 66, label %sw.bb11.i
    i32 100, label %sw.bb13.i
    i32 40, label %sw.bb15.i
  ]

if.end7.i.if.end17.sink.split.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split.i

sw.bb9.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split.i

sw.bb11.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split.i

sw.bb13.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split.i

sw.bb15.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  br label %sdhci_am654_get_of_property.exit.thread

if.end17.sink.split.i:                            ; preds = %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %if.end7.i.if.end17.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb9.i ], [ 2, %sw.bb11.i ], [ 3, %sw.bb13.i ], [ 4, %sw.bb15.i ], [ 0, %if.end7.i.if.end17.sink.split.i_crit_edge ]
  %drv_strength8.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 13, i32 17, i32 1
  %26 = ptrtoint ptr %drv_strength8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %drv_strength8.i, align 4
  br label %if.end43

sdhci_am654_get_of_property.exit.thread:          ; preds = %do.end.i, %if.end.i.sdhci_am654_get_of_property.exit.thread_crit_edge, %if.then.i105.sdhci_am654_get_of_property.exit.thread_crit_edge
  %retval.0.i106.ph = phi i32 [ %call.i38.i, %if.end.i.sdhci_am654_get_of_property.exit.thread_crit_edge ], [ %call.i.i, %if.then.i105.sdhci_am654_get_of_property.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_strength.i) #6
  br label %pm_runtime_put

if.end43:                                         ; preds = %if.end17.sink.split.i, %if.end39.if.end43_crit_edge
  %strb_sel.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 13, i32 17, i32 2
  %call.i39.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %strb_sel.i, i32 noundef 1) #6
  %clkbuf_sel.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 1, i32 13, i32 17
  %call.i40.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %clkbuf_sel.i, i32 noundef 1) #6
  call void @sdhci_get_property(ptr noundef %pdev) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_strength.i) #6
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 10
  %27 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc, align 8
  %call44 = call i32 @mmc_of_parse(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call44) #9
  br label %pm_runtime_put

if.end50:                                         ; preds = %if.end43
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 11, i32 12
  %29 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sdhci_am654_execute_tuning, ptr %execute_tuning, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i, align 4, !annotation !163
  %31 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private.i100, align 4
  %call.i.i107 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 268, i32 noundef 1110016, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags14, align 4
  %and.i109 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %if.end50.if.end47.i_crit_edge, label %if.then.i111

if.end50.if.end47.i_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then.i111:                                     ; preds = %if.end50
  %35 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private.i100, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 304, ptr noundef nonnull %val.i) #6
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %neg.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool6.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool6.not.not.i, label %if.then7.i, label %if.then.i111.if.end47.i_crit_edge

if.then.i111.if.end47.i_crit_edge:                ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then7.i:                                       ; preds = %if.then.i111
  %39 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private.i100, align 4
  %call.i115.i = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 256, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call10.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call10.i, 20000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 653) #6
  %41 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i100, align 4
  %call20133.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 304, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20133.i)
  %tobool21.not134.i = icmp eq i32 %call20133.i, 0
  br i1 %tobool21.not134.i, label %if.then7.i.lor.lhs.false.i_crit_edge, label %if.then7.i.sdhci_am654_init.exit.thread_crit_edge

if.then7.i.sdhci_am654_init.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_init.exit.thread

if.then7.i.lor.lhs.false.i_crit_edge:             ; preds = %if.then7.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then35.i.lor.lhs.false.i_crit_edge, %if.then7.i.lor.lhs.false.i_crit_edge
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %and22.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call27.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call27.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then35.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %45 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i100, align 4
  %call20.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 304, ptr noundef nonnull %val.i) #6
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then35.i.lor.lhs.false.i_crit_edge, label %if.then35.i.sdhci_am654_init.exit.thread_crit_edge

if.then35.i.sdhci_am654_init.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_init.exit.thread

if.then35.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %47 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i100, align 4
  %call32.i = call i32 @regmap_read(ptr noundef %48, i32 noundef 304, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool37.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool37.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.sdhci_am654_init.exit.thread_crit_edge

for.end.i.sdhci_am654_init.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_init.exit.thread

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %and38.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %lor.rhs.i.sdhci_am654_init.exit.thread_crit_edge, label %lor.rhs.i.if.end47.i_crit_edge

lor.rhs.i.if.end47.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

lor.rhs.i.sdhci_am654_init.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_init.exit.thread

if.end47.i:                                       ; preds = %lor.rhs.i.if.end47.i_crit_edge, %if.then.i111.if.end47.i_crit_edge, %if.end50.if.end47.i_crit_edge
  %51 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags14, align 4
  %and49.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end47.i.if.end54.i_crit_edge, label %if.then51.i

if.end47.i.if.end54.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private.i100, align 4
  %call.i116.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 256, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.end47.i.if.end54.i_crit_edge
  %55 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps.i, align 32
  %and55.i = shl i32 %58, 22
  %59 = and i32 %and55.i, 1073741824
  %60 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private.i100, align 4
  %call.i117.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 20, i32 noundef -1073741824, i32 noundef %59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %62 = ptrtoint ptr %private.i100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private.i100, align 4
  %call.i118.i = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 24, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call63.i = call i32 @sdhci_setup_host(ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end54.i.sdhci_am654_init.exit.thread_crit_edge

if.end54.i.sdhci_am654_init.exit.thread_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_init.exit.thread

if.end66.i:                                       ; preds = %if.end54.i
  %64 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmc, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 128
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %67, i32 noundef 248, i32 noundef 3520) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end66.i.err_cleanup_host.i_crit_edge, label %sdhci_am654_cqe_add_host.exit.i

if.end66.i.err_cleanup_host.i_crit_edge:          ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup_host.i

sdhci_am654_cqe_add_host.exit.i:                  ; preds = %if.end66.i
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call7, i32 0, i32 4
  %68 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 512
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %call.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i.i, ptr %mmio.i.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.cqhci_host, ptr %call.i.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %quirks.i.i, align 4
  %or.i.i = or i32 %72, 1
  store i32 %or.i.i, ptr %quirks.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.cqhci_host, ptr %call.i.i.i, i32 0, i32 9
  %73 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %caps.i.i, align 4
  %or1.i.i = or i32 %74, 1
  store i32 %or1.i.i, ptr %caps.i.i, align 4
  %75 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @sdhci_am654_cqhci_ops, ptr %call.i.i.i, align 4
  %76 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmc, align 8
  %caps2.i.i = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %caps2.i.i, align 4
  %or3.i.i = or i32 %79, 8388608
  store i32 %or3.i.i, ptr %caps2.i.i, align 4
  %80 = load ptr, ptr %mmc, align 8
  %call5.i.i = call i32 @cqhci_init(ptr noundef nonnull %call.i.i.i, ptr noundef %80, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool68.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %sdhci_am654_cqe_add_host.exit.i.err_cleanup_host.i_crit_edge

sdhci_am654_cqe_add_host.exit.i.err_cleanup_host.i_crit_edge: ; preds = %sdhci_am654_cqe_add_host.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup_host.i

if.end70.i:                                       ; preds = %sdhci_am654_cqe_add_host.exit.i
  %call71.i = call fastcc i32 @sdhci_am654_get_otap_delay(ptr noundef %call7, ptr noundef %private.i100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end70.i.err_cleanup_host.i_crit_edge

if.end70.i.err_cleanup_host.i_crit_edge:          ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup_host.i

if.end74.i:                                       ; preds = %if.end70.i
  %call75.i = call i32 @__sdhci_add_host(ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %sdhci_am654_init.exit, label %if.end74.i.err_cleanup_host.i_crit_edge

if.end74.i.err_cleanup_host.i_crit_edge:          ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup_host.i

err_cleanup_host.i:                               ; preds = %if.end74.i.err_cleanup_host.i_crit_edge, %if.end70.i.err_cleanup_host.i_crit_edge, %sdhci_am654_cqe_add_host.exit.i.err_cleanup_host.i_crit_edge, %if.end66.i.err_cleanup_host.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i.i, %sdhci_am654_cqe_add_host.exit.i.err_cleanup_host.i_crit_edge ], [ %call71.i, %if.end70.i.err_cleanup_host.i_crit_edge ], [ %call75.i, %if.end74.i.err_cleanup_host.i_crit_edge ], [ -12, %if.end66.i.err_cleanup_host.i_crit_edge ]
  call void @sdhci_cleanup_host(ptr noundef %call7) #6
  br label %sdhci_am654_init.exit.thread

sdhci_am654_init.exit.thread:                     ; preds = %err_cleanup_host.i, %if.end54.i.sdhci_am654_init.exit.thread_crit_edge, %lor.rhs.i.sdhci_am654_init.exit.thread_crit_edge, %for.end.i.sdhci_am654_init.exit.thread_crit_edge, %if.then35.i.sdhci_am654_init.exit.thread_crit_edge, %if.then7.i.sdhci_am654_init.exit.thread_crit_edge
  %retval.0.i112.ph = phi i32 [ -110, %lor.rhs.i.sdhci_am654_init.exit.thread_crit_edge ], [ %call32.i, %for.end.i.sdhci_am654_init.exit.thread_crit_edge ], [ %call20133.i, %if.then7.i.sdhci_am654_init.exit.thread_crit_edge ], [ %call63.i, %if.end54.i.sdhci_am654_init.exit.thread_crit_edge ], [ %ret.0.i, %err_cleanup_host.i ], [ %call20.i, %if.then35.i.sdhci_am654_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %pm_runtime_put

sdhci_am654_init.exit:                            ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

pm_runtime_put:                                   ; preds = %sdhci_am654_init.exit.thread, %do.end49, %sdhci_am654_get_of_property.exit.thread, %do.end36, %if.then26
  %ret.0 = phi i32 [ %15, %if.then26 ], [ %19, %do.end36 ], [ %call44, %do.end49 ], [ %retval.0.i106.ph, %sdhci_am654_get_of_property.exit.thread ], [ %retval.0.i112.ph, %sdhci_am654_init.exit.thread ]
  %call.i113 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  br label %pm_runtime_disable

pm_runtime_disable:                               ; preds = %pm_runtime_put, %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %pm_runtime_put ], [ %call.i, %if.then.i.pm_runtime_disable_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %err_pltfm_free

err_pltfm_free:                                   ; preds = %pm_runtime_disable, %do.end
  %ret.2 = phi i32 [ %12, %do.end ], [ %ret.1, %pm_runtime_disable ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_free, %sdhci_am654_init.exit, %if.then9
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %ret.2, %err_pltfm_free ], [ 0, %sdhci_am654_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_am654_write_b(ptr nocapture noundef readonly %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cmp = icmp eq i32 %reg, 40
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %timing1 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing1, align 4
  %.off = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  %4 = and i8 %val, -5
  %spec.select = select i1 %switch, i8 %4, i8 %val
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %val.addr.0 = phi i8 [ %val, %entry.do.body_crit_edge ], [ %spec.select, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %6, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val.addr.0) #6, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %reg)
  %cmp4 = icmp ne i32 %reg, 41
  %7 = and i8 %val.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.body.if.end51_crit_edge, label %if.then8

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then8:                                         ; preds = %do.body
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 1500000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true30.for.cond_crit_edge, %if.then8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %val.addr.0) #6, !srcloc !165
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #6
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr2.i = getelementptr i8, ptr %11, i32 41
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #6, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %land.lhs.true30, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true30:                                  ; preds = %for.cond
  %call31 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then35, label %land.lhs.true30.for.cond_crit_edge

land.lhs.true30.for.cond_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then35:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i70 = getelementptr i8, ptr %15, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i70, i8 %val.addr.0) #6, !srcloc !165
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #6
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 16
  %add.ptr2.i71 = getelementptr i8, ptr %17, i32 41
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i71) #6, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  br label %for.end

for.end:                                          ; preds = %if.then35, %for.cond.for.end_crit_edge
  %pwr.0 = phi i8 [ %18, %if.then35 ], [ %12, %for.cond.for.end_crit_edge ]
  %19 = and i8 %pwr.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not = icmp eq i8 %19, 0
  br i1 %tobool43.not, label %do.end48, label %for.end.if.end51_crit_edge

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.16) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %for.end.if.end51_crit_edge, %do.body.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_am654_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i55 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %timing2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing2, align 4
  %4 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i55, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 256, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #6
  %legacy_otapdly = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %6 = ptrtoint ptr %legacy_otapdly to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %legacy_otapdly, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %otap_del_sel4 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %idxprom = zext i8 %3 to i32
  %arrayidx6 = getelementptr %struct.sdhci_am654_data, ptr %private.i55, i32 0, i32 2, i32 %idxprom
  %otap_del_sel.0.in = select i1 %tobool.not, ptr %arrayidx6, ptr %otap_del_sel4
  %8 = ptrtoint ptr %otap_del_sel.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %otap_del_sel.0 = load i32, ptr %otap_del_sel.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ugt i8 %3, 4
  %shl = select i1 %cmp, i32 1048576, i32 0
  %shl8 = shl i32 %otap_del_sel.0, 12
  %or = or i32 %shl8, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp10 = icmp eq i8 %3, 10
  br i1 %cmp10, label %if.then12, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %. = select i1 %tobool13.not, i32 -15667200, i32 252768256
  %strb_sel = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 2
  %11 = ptrtoint ptr %strb_sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strb_sel, align 4
  %shl19 = shl i32 %12, 24
  %or20 = or i32 %shl19, %or
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %entry.if.end21_crit_edge
  %mask.1 = phi i32 [ %., %if.then12 ], [ 1110016, %entry.if.end21_crit_edge ]
  %val.0 = phi i32 [ %or20, %if.then12 ], [ %or, %entry.if.end21_crit_edge ]
  %13 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i55, align 4
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 268, i32 noundef %mask.1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999999, i32 %clock)
  %cmp27 = icmp ugt i32 %clock, 49999999
  %or.cond = and i1 %cmp27, %cmp
  br i1 %or.cond, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %15 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i55, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 272, i32 noundef 196608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %flags.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  %19 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %clock, label %sw.default.i [
    i32 200000000, label %if.then.i.sw.epilog.i_crit_edge
    i32 100000000, label %sw.bb3.i
  ]

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb3.i, %if.then.i.sw.epilog.i_crit_edge
  %sel100.0.i = phi i32 [ 0, %sw.default.i ], [ 512, %sw.bb3.i ], [ 0, %if.then.i.sw.epilog.i_crit_edge ]
  %sel50.0.i = phi i32 [ 256, %sw.default.i ], [ 0, %sw.bb3.i ], [ 0, %if.then.i.sw.epilog.i_crit_edge ]
  %or.i = or i32 %sel50.0.i, %sel100.0.i
  %20 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i55, align 4
  %call.i89.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 272, i32 noundef 768, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %clock)
  %cond68.i = icmp eq i32 %clock, 200000000
  %..i = select i1 %cond68.i, i32 0, i32 1024
  %22 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i55, align 4
  %call.i90.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 272, i32 noundef 1792, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.epilog.i
  %trm_icp.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 0, i32 1
  %24 = ptrtoint ptr %trm_icp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trm_icp.i, align 4
  %shl13.i = shl i32 %25, 4
  %drv_strength.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 1
  %26 = ptrtoint ptr %drv_strength.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drv_strength.i, align 4
  %shl15.i = shl i32 %27, 20
  %or16.i = or i32 %shl15.i, %shl13.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or16.i, ptr %val.i, align 4
  %29 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i55, align 4
  %call.i91.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 256, i32 noundef 7340272, i32 noundef %or16.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private.i55, align 4
  %call.i92.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 256, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call21.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call21.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 223) #6
  %33 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i55, align 4
  %call32104.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 304, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32104.i)
  %tobool33.not105.i = icmp eq i32 %call32104.i, 0
  br i1 %tobool33.not105.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %if.end.i.do.end59.i_crit_edge

if.end.i.do.end59.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then47.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %and34.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call39.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call39.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call39.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then47.i

if.then47.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %37 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private.i55, align 4
  %call32.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 304, ptr noundef nonnull %val.i) #6
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then47.i.lor.lhs.false.i_crit_edge, label %if.then47.i.do.end59.i_crit_edge

if.then47.i.do.end59.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

if.then47.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private.i55, align 4
  %call44.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 304, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool49.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool49.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end59.i_crit_edge

for.end.i.do.end59.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i, align 4
  %and50.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %lor.rhs.i.do.end59.i_crit_edge, label %lor.rhs.i.sdhci_am654_setup_dll.exit_crit_edge

lor.rhs.i.sdhci_am654_setup_dll.exit_crit_edge:   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sdhci_am654_setup_dll.exit

lor.rhs.i.do.end59.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

do.end59.i:                                       ; preds = %lor.rhs.i.do.end59.i_crit_edge, %for.end.i.do.end59.i_crit_edge, %if.then47.i.do.end59.i_crit_edge, %if.end.i.do.end59.i_crit_edge
  %43 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.19) #9
  br label %sdhci_am654_setup_dll.exit

sdhci_am654_setup_dll.exit:                       ; preds = %do.end59.i, %lor.rhs.i.sdhci_am654_setup_dll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end31

if.else30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i55, align 4
  %call.i.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 256, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private.i55, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 272, i32 noundef 196608, i32 noundef 196608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx.i = getelementptr %struct.sdhci_am654_data, ptr %private.i55, i32 0, i32 3, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %53 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private.i55, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 268, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %55 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i55, align 4
  %call.i7.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 268, i32 noundef 31, i32 noundef %52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private.i55, align 4
  %call.i8.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 268, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %sdhci_am654_setup_dll.exit
  %59 = ptrtoint ptr %private.i55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private.i55, align 4
  %clkbuf_sel = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17
  %61 = ptrtoint ptr %clkbuf_sel to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clkbuf_sel, align 4
  %call.i58 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 272, i32 noundef 7, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #6
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #6
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_am654_platform_execute_tuning(ptr nocapture noundef readonly %host, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i20 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i20, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 268, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %itap.027 = phi i32 [ 0, %entry ], [ %inc9, %for.body.for.body_crit_edge ]
  %pass_window.026 = phi i32 [ 0, %entry ], [ %pass_window.1, %for.body.for.body_crit_edge ]
  %fail_len.025 = phi i32 [ 0, %entry ], [ %fail_len.1, %for.body.for.body_crit_edge ]
  %prev_val.024 = phi i32 [ 1, %entry ], [ %lnot.ext, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i20, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 268, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i20, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 268, i32 noundef 31, i32 noundef %itap.027, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i20, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 268, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %call3 = tail call i32 @mmc_send_tuning(ptr noundef %9, i32 noundef %opcode, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_val.024)
  %tobool5.not = icmp eq i32 %prev_val.024, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  %pass_window.1 = select i1 %or.cond, i32 %itap.027, i32 %pass_window.026
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %fail_len.1 = add i32 %fail_len.025, %inc
  %inc9 = add nuw nsw i32 %itap.027, 1
  %exitcond.not = icmp eq i32 %inc9, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 32, %fail_len.1
  %shr = ashr i32 %sub, 1
  %add = add i32 %shr, %pass_window.1
  %rem = srem i32 %add, 32
  %10 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i20, align 4
  %call.i.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 268, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i20, align 4
  %call.i7.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 268, i32 noundef 31, i32 noundef %rem, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i20, align 4
  %call.i8.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 268, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_am654_get_otap_delay(ptr nocapture noundef readonly %host, ptr noundef %sdhci_am654) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %otap_del_sel = getelementptr inbounds %struct.sdhci_am654_data, ptr %sdhci_am654, i32 0, i32 2
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef %otap_del_sel, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  %call.i73 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %otap_del_sel, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool4.not = icmp eq i32 %call.i73, 0
  br i1 %tobool4.not, label %do.end8, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #9
  br label %cleanup

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.31) #9
  %legacy_otapdly = getelementptr inbounds %struct.sdhci_am654_data, ptr %sdhci_am654, i32 0, i32 1
  %4 = ptrtoint ptr %legacy_otapdly to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %legacy_otapdly, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx10 = getelementptr [11 x %struct.timing_data], ptr @td, i32 0, i32 %i.077
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.sdhci_am654_data, ptr %sdhci_am654, i32 0, i32 2, i32 %i.077
  %call.i74 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef %6, ptr noundef %arrayidx12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool14.not = icmp eq i32 %call.i74, 0
  br i1 %tobool14.not, label %for.body.if.end37_crit_edge, label %do.body16

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body16:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_am654_get_otap_delay.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_am654_get_otap_delay, %if.then21)) #6
          to label %do.end26 [label %if.then21], !srcloc !170

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_am654_get_otap_delay.__UNIQUE_ID_ddebug272, ptr noundef %3, ptr noundef nonnull @.str.35, ptr noundef %6) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.077)
  %cmp27 = icmp ult i32 %i.077, 9
  %capability = getelementptr [11 x %struct.timing_data], ptr @td, i32 0, i32 %i.077, i32 2
  %7 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capability, align 4
  %neg = xor i32 %8, -1
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 8
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  %and = and i32 %12, %neg
  store i32 %and, ptr %caps, align 32
  br label %if.end37

if.else:                                          ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 17
  %13 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps2, align 4
  %and35 = and i32 %14, %neg
  store i32 %and35, ptr %caps2, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then28, %for.body.if.end37_crit_edge
  %15 = lshr i32 1760, %i.077
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool39.not.not = icmp eq i32 %16, 0
  br i1 %tobool39.not.not, label %if.then40, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %itap_binding = getelementptr [11 x %struct.timing_data], ptr @td, i32 0, i32 %i.077, i32 1
  %17 = ptrtoint ptr %itap_binding to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %itap_binding, align 4
  %arrayidx43 = getelementptr %struct.sdhci_am654_data, ptr %sdhci_am654, i32 0, i32 3, i32 %i.077
  %call.i75 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef %18, ptr noundef %arrayidx43, i32 noundef 1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end37.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i73, %do.end ], [ 0, %do.end8 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_am654_dumpregs(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_j721e_4bit_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i16 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %legacy_otapdly = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %legacy_otapdly to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy_otapdly, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otap_del_sel3 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %timing2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  %4 = ptrtoint ptr %timing2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timing2, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx5 = getelementptr %struct.sdhci_am654_data, ptr %private.i16, i32 0, i32 2, i32 %idxprom
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %otap_del_sel.0.in = phi ptr [ %otap_del_sel3, %if.then ], [ %arrayidx5, %if.else ]
  %6 = ptrtoint ptr %otap_del_sel.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %otap_del_sel.0 = load i32, ptr %otap_del_sel.0.in, align 4
  %shl = shl i32 %otap_del_sel.0, 12
  %or = or i32 %shl, 1048576
  %7 = ptrtoint ptr %private.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i16, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 268, i32 noundef 1110016, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %private.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i16, align 4
  %clkbuf_sel = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17
  %11 = ptrtoint ptr %clkbuf_sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkbuf_sel, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 272, i32 noundef 7, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_sdhci_am654__273_883_sdhci_am654_driver_init6, !1, !"__initcall__kmod_sdhci_am654__273_883_sdhci_am654_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 883, i32 1}
!2 = !{ptr @__exitcall_sdhci_am654_driver_exit, !1, !"__exitcall_sdhci_am654_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description274, !4, !"__UNIQUE_ID_description274", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 885, i32 1}
!5 = !{ptr @__UNIQUE_ID_author275, !6, !"__UNIQUE_ID_author275", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 886, i32 1}
!7 = !{ptr @__UNIQUE_ID_file276, !8, !"__UNIQUE_ID_file276", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 887, i32 1}
!9 = !{ptr @__UNIQUE_ID_license277, !8, !"__UNIQUE_ID_license277", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 875, i32 11}
!12 = !{ptr @sdhci_am654_driver, !13, !"sdhci_am654_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 873, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 801, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 803, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_am654_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_am654_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @sdhci_am654_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 822, i32 22}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 825, i32 3}
!29 = !{ptr @sdhci_am654_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sdhci_am654_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 836, i32 3}
!33 = !{ptr @sdhci_am654_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sdhci_am654_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 538, i32 14}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 539, i32 16}
!39 = !{ptr @sdhci_am654_devices, !40, !"sdhci_am654_devices", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 537, i32 42}
!41 = !{ptr @sdhci_am654_sr1_drvdata, !42, !"sdhci_am654_sr1_drvdata", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 458, i32 45}
!43 = !{ptr @sdhci_am654_pdata, !44, !"sdhci_am654_pdata", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 452, i32 38}
!45 = !{ptr @sdhci_am654_ops, !46, !"sdhci_am654_ops", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 439, i32 25}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 368, i32 4}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sdhci_am654_write_b._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @sdhci_am654_write_b._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 225, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sdhci_am654_setup_dll._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sdhci_am654_setup_dll._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sdhci_am654_regmap_config, !59, !"sdhci_am654_regmap_config", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 91, i32 29}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 706, i32 39}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 711, i32 39}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 733, i32 4}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sdhci_am654_get_of_property._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sdhci_am654_get_of_property._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 738, i32 32}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 739, i32 32}
!73 = !{ptr @sdhci_am654_cqhci_ops, !74, !"sdhci_am654_cqhci_ops", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 550, i32 36}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 592, i32 39}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 595, i32 4}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sdhci_am654_get_otap_delay._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sdhci_am654_get_otap_delay._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 600, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sdhci_am654_get_otap_delay._entry.30, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sdhci_am654_get_otap_delay._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 611, i32 4}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sdhci_am654_get_otap_delay.__UNIQUE_ID_ddebug272, !88, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 105, i32 25}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 106, i32 8}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 108, i32 25}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 109, i32 8}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 111, i32 24}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 112, i32 8}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 114, i32 28}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 115, i32 8}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 117, i32 28}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 118, i32 8}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 120, i32 28}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 123, i32 29}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 126, i32 28}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 129, i32 28}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 130, i32 8}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 132, i32 28}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 135, i32 28}
!125 = !{ptr @td, !126, !"td", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 104, i32 33}
!127 = !{ptr @sdhci_am654_of_match, !128, !"sdhci_am654_of_match", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 747, i32 34}
!129 = !{ptr @sdhci_am654_drvdata, !130, !"sdhci_am654_drvdata", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 464, i32 45}
!131 = !{ptr @sdhci_j721e_8bit_drvdata, !132, !"sdhci_j721e_8bit_drvdata", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 488, i32 45}
!133 = !{ptr @sdhci_j721e_8bit_pdata, !134, !"sdhci_j721e_8bit_pdata", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 482, i32 38}
!135 = !{ptr @sdhci_j721e_8bit_ops, !136, !"sdhci_j721e_8bit_ops", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 469, i32 25}
!137 = !{ptr @sdhci_j721e_4bit_drvdata, !138, !"sdhci_j721e_4bit_drvdata", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 512, i32 45}
!139 = !{ptr @sdhci_j721e_4bit_pdata, !140, !"sdhci_j721e_4bit_pdata", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 506, i32 38}
!141 = !{ptr @sdhci_j721e_4bit_ops, !142, !"sdhci_j721e_4bit_ops", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 493, i32 25}
!143 = !{ptr @sdhci_am64_8bit_drvdata, !144, !"sdhci_am64_8bit_drvdata", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 522, i32 45}
!145 = !{ptr @sdhci_am64_8bit_pdata, !146, !"sdhci_am64_8bit_pdata", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 517, i32 38}
!147 = !{ptr @sdhci_am64_4bit_drvdata, !148, !"sdhci_am64_4bit_drvdata", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 532, i32 45}
!149 = !{ptr @sdhci_am64_4bit_pdata, !150, !"sdhci_am64_4bit_pdata", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/sdhci_am654.c", i32 527, i32 38}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2148260988}
!161 = !{i64 745811, i64 745836, i64 745858, i64 745874, i64 745886, i64 745906, i64 745930, i64 745946, i64 745958}
!162 = !{i64 2148261176}
!163 = !{!"auto-init"}
!164 = !{i64 2154856301}
!165 = !{i64 3098539}
!166 = !{i64 2154855780}
!167 = !{i64 3098934}
!168 = !{i64 2154856068}
!169 = !{i8 0, i8 2}
!170 = !{i64 2148743384, i64 2148743389, i64 2148743402, i64 2148743446, i64 2148743480, i64 2148743501}
