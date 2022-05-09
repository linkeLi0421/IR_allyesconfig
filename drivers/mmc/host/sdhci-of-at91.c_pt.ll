; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-at91.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-at91.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdhci_at91_soc_data = type { ptr, i8, i32 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sdhci_at91_priv = type { ptr, ptr, ptr, ptr, i8, i8 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@__initcall__kmod_sdhci_of_at91__283_476_sdhci_at91_driver_init6 = internal global ptr @sdhci_at91_driver_init, section ".initcall6.init", align 4
@sdhci_at91_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_at91_probe, ptr @sdhci_at91_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_at91_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_at91_driver_exit = internal global ptr @sdhci_at91_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [48 x i8] c"sdhci_of_at91.description=SDHCI driver for at91\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [69 x i8] c"sdhci_of_at91.author=Ludovic Desroches <ludovic.desroches@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [50 x i8] c"sdhci_of_at91.file=drivers/mmc/host/sdhci-of-at91\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [29 x i8] c"sdhci_of_at91.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhci-at91\00", [21 x i8] zeroinitializer }, align 32
@sdhci_at91_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_sama5d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_sam9x60 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sdhci_at91_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr @sdhci_at91_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_runtime_suspend, ptr @sdhci_at91_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"baseclk\00", [24 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get baseclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdhci_at91_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/sdhci-of-at91.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry_ptr = internal global ptr @sdhci_at91_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hclock\00", [25 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get hclock\0A\00", [42 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry_ptr.10 = internal global ptr @sdhci_at91_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"multclk\00", [24 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get multclk\0A\00", [41 x i8] zeroinitializer }, align 32
@sdhci_at91_probe._entry_ptr.14 = internal global ptr @sdhci_at91_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"microchip,sdcal-inverted\00", [39 x i8] zeroinitializer }, align 32
@sdhci_at91_set_clks_presets.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci_of_at91\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdhci_at91_set_clks_presets\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\0A\00", [63 x i8] zeroinitializer }, align 32
@soc_data_sama5d2 = internal constant { %struct.sdhci_at91_soc_data, [20 x i8] } { %struct.sdhci_at91_soc_data { ptr @sdhci_sama5d2_pdata, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@soc_data_sam9x60 = internal constant { %struct.sdhci_at91_soc_data, [20 x i8] } { %struct.sdhci_at91_soc_data { ptr @sdhci_sama5d2_pdata, i8 1, i32 2 }, [20 x i8] zeroinitializer }, align 32
@sdhci_sama5d2_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_at91_sama5d2_ops, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_at91_sama5d2_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_at91_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_at91_reset, ptr null, ptr @sdhci_at91_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_at91_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_at91_set_clock\00", [43 x i8] zeroinitializer }, align 32
@sdhci_at91_set_clock._entry_ptr = internal global ptr @sdhci_at91_set_clock._entry, section ".printk_index", align 4
@sdhci_at91_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to calibrate\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdhci_at91_reset\00", [47 x i8] zeroinitializer }, align 32
@sdhci_at91_reset._entry_ptr = internal global ptr @sdhci_at91_reset._entry, section ".printk_index", align 4
@sdhci_at91_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't enable mainck\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_at91_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@sdhci_at91_runtime_resume._entry_ptr = internal global ptr @sdhci_at91_runtime_resume._entry, section ".printk_index", align 4
@sdhci_at91_runtime_resume._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't enable hclock\0A\00", [43 x i8] zeroinitializer }, align 32
@sdhci_at91_runtime_resume._entry_ptr.27 = internal global ptr @sdhci_at91_runtime_resume._entry.25, section ".printk_index", align 4
@sdhci_at91_runtime_resume._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't enable gck\0A\00", [46 x i8] zeroinitializer }, align 32
@sdhci_at91_runtime_resume._entry_ptr.30 = internal global ptr @sdhci_at91_runtime_resume._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"sdhci_at91_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 465, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 467, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"sdhci_at91_dt_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 155, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"sdhci_at91_dev_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 302, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 331, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 336, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 342, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 344, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 349, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 351, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 368, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 196, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"soc_data_sama5d2\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 144, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"soc_data_sam9x60\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 149, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"sdhci_sama5d2_pdata\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 140, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"sdhci_at91_sama5d2_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 132, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 91, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 128, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 281, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 287, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [36 x i8] c"../drivers/mmc/host/sdhci-of-at91.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 293, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_sdhci_at91_driver_exit, ptr @__initcall__kmod_sdhci_of_at91__283_476_sdhci_at91_driver_init6, ptr @sdhci_at91_driver_exit, ptr @sdhci_at91_probe._entry, ptr @sdhci_at91_probe._entry.12, ptr @sdhci_at91_probe._entry.8, ptr @sdhci_at91_probe._entry_ptr, ptr @sdhci_at91_probe._entry_ptr.10, ptr @sdhci_at91_probe._entry_ptr.14, ptr @sdhci_at91_reset._entry, ptr @sdhci_at91_reset._entry_ptr, ptr @sdhci_at91_runtime_resume._entry, ptr @sdhci_at91_runtime_resume._entry.25, ptr @sdhci_at91_runtime_resume._entry.28, ptr @sdhci_at91_runtime_resume._entry_ptr, ptr @sdhci_at91_runtime_resume._entry_ptr.27, ptr @sdhci_at91_runtime_resume._entry_ptr.30, ptr @sdhci_at91_set_clock._entry, ptr @sdhci_at91_set_clock._entry_ptr, ptr @sdhci_at91_driver, ptr @.str, ptr @sdhci_at91_dt_match, ptr @sdhci_at91_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @soc_data_sama5d2, ptr @soc_data_sam9x60, ptr @sdhci_sama5d2_pdata, ptr @sdhci_at91_sama5d2_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_sama5d2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_sam9x60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sama5d2_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_sama5d2_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_runtime_resume._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_at91_runtime_resume._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_at91_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_at91_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_at91_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_at91_dt_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %3, i32 noundef 20) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private.i152 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 21
  %5 = ptrtoint ptr %private.i152 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %private.i152, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %mainck = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i152, i32 0, i32 3
  %6 = ptrtoint ptr %mainck to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %mainck, align 4
  %cmp.i153 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then13, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.end5
  %baseclk_is_generated_internally = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %baseclk_is_generated_internally to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %baseclk_is_generated_internally, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  br i1 %tobool14.not, label %do.end, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mainck to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mainck, align 4
  br label %if.end21

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %10 = ptrtoint ptr %mainck to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mainck, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %sdhci_pltfm_free

if.end21:                                         ; preds = %if.then15, %if.end5.if.end21_crit_edge
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %hclock = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 22
  %13 = ptrtoint ptr %hclock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %hclock, align 4
  %cmp.i154 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end29, label %if.end33

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %14 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hclock, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %sdhci_pltfm_free

if.end33:                                         ; preds = %if.end21
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  %gck = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 11, i32 23
  %17 = ptrtoint ptr %gck to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35, ptr %gck, align 4
  %cmp.i155 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %18 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gck, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %sdhci_pltfm_free

if.end45:                                         ; preds = %if.end33
  tail call fastcc void @sdhci_at91_set_clks_presets(ptr noundef %dev)
  %restore_needed = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 1, i32 12
  %21 = ptrtoint ptr %restore_needed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %restore_needed, align 4
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %cal_always_on = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i152, i32 0, i32 5
  %frombool = zext i1 %call.i to i8
  %22 = ptrtoint ptr %cal_always_on to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %cal_always_on, align 1
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 10
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 8
  %call53 = tail call i32 @mmc_of_parse(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end45.clocks_disable_unprepare_crit_edge

if.end45.clocks_disable_unprepare_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %clocks_disable_unprepare

if.end56:                                         ; preds = %if.end45
  tail call void @sdhci_get_property(ptr noundef %pdev) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !88
  %call.i156 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 2
  %26 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks2, align 8
  %or = or i32 %27, 64
  store i32 %or, ptr %quirks2, align 8
  %call63 = tail call i32 @sdhci_add_host(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %pm_runtime_disable

if.end66:                                         ; preds = %if.end56
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps.i, align 32
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool69.not.not = icmp eq i32 %32, 0
  br i1 %tobool69.not.not, label %land.lhs.true, label %if.end66.if.end75_crit_edge

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end66
  %call71 = tail call i32 @mmc_gpio_get_cd(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %if.then72, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps, align 32
  %or74 = or i32 %36, 32
  store i32 %or74, ptr %caps, align 32
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 1
  %37 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks, align 4
  %and = and i32 %38, -32769
  store i32 %and, ptr %quirks, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true.if.end75_crit_edge, %if.end66.if.end75_crit_edge
  %39 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc, align 8
  %caps77 = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %caps77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps77, align 32
  %and78 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.end75.if.then83_crit_edge

if.end75.if.then83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.end75
  %call81 = tail call i32 @mmc_gpio_get_cd(ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call81)
  %cmp82 = icmp sgt i32 %call81, -1
  br i1 %cmp82, label %lor.lhs.false.if.then83_crit_edge, label %lor.lhs.false.if.end84_crit_edge

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %if.end75.if.then83_crit_edge
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call1, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %44, i32 516
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %46 = or i8 %45, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr4.i = getelementptr i8, ptr %48, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %46) #6, !srcloc !92
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %lor.lhs.false.if.end84_crit_edge
  %call.i157 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #6
  br label %cleanup

pm_runtime_disable:                               ; preds = %if.end56
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i158 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  %call.i.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %pm_runtime_disable.clocks_disable_unprepare_crit_edge, label %do.end11.i.i.i.i

pm_runtime_disable.clocks_disable_unprepare_crit_edge: ; preds = %pm_runtime_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %clocks_disable_unprepare

do.end11.i.i.i.i:                                 ; preds = %pm_runtime_disable
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !95
  br label %clocks_disable_unprepare

clocks_disable_unprepare:                         ; preds = %do.end11.i.i.i.i, %pm_runtime_disable.clocks_disable_unprepare_crit_edge, %if.end45.clocks_disable_unprepare_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end45.clocks_disable_unprepare_crit_edge ], [ %call63, %pm_runtime_disable.clocks_disable_unprepare_crit_edge ], [ %call63, %do.end11.i.i.i.i ]
  %50 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gck, align 4
  tail call void @clk_disable(ptr noundef %51) #6
  tail call void @clk_unprepare(ptr noundef %51) #6
  %52 = ptrtoint ptr %mainck to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mainck, align 4
  tail call void @clk_disable(ptr noundef %53) #6
  tail call void @clk_unprepare(ptr noundef %53) #6
  %54 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hclock, align 4
  tail call void @clk_disable(ptr noundef %55) #6
  tail call void @clk_unprepare(ptr noundef %55) #6
  br label %sdhci_pltfm_free

sdhci_pltfm_free:                                 ; preds = %clocks_disable_unprepare, %do.end41, %do.end29, %do.end
  %ret.1 = phi i32 [ %16, %do.end29 ], [ %20, %do.end41 ], [ %ret.0, %clocks_disable_unprepare ], [ %12, %do.end ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %sdhci_pltfm_free, %if.end84, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %ret.1, %sdhci_pltfm_free ], [ 0, %if.end84 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i16 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %gck3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %2 = ptrtoint ptr %gck3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gck3, align 4
  %hclock4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %4 = ptrtoint ptr %hclock4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclock4, align 4
  %mainck5 = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i16, i32 0, i32 3
  %6 = ptrtoint ptr %mainck5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mainck5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !95
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %call9 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %pdev) #6
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_at91_set_clks_presets(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %hclock = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr9 = getelementptr i8, ptr %8, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %gck = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %10 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gck, align 4
  %call13 = tail call i32 @clk_get_rate(ptr noundef %11) #6
  %12 = ptrtoint ptr %private.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i3, align 4
  %baseclk_is_generated_internally = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %baseclk_is_generated_internally to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %baseclk_is_generated_internally, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %divider_for_baseclk = getelementptr inbounds %struct.sdhci_at91_soc_data, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %divider_for_baseclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %divider_for_baseclk, align 4
  %div = udiv i32 %call13, %17
  br label %if.end

if.else:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mainck = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i3, i32 0, i32 3
  %18 = ptrtoint ptr %mainck to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mainck, align 4
  %call15 = tail call i32 @clk_get_rate(ptr noundef %19) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %clk_base_rate.0 = phi i32 [ %div, %if.then ], [ %call15, %if.else ]
  %div16 = udiv i32 %clk_base_rate.0, 1000000
  %div17 = udiv i32 %call13, %clk_base_rate.0
  %sub = add i32 %div17, -1
  %20 = and i32 %9, -65281
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = and i32 %6, -16711681
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %shl = shl nuw nsw i32 %div16, 8
  %and35 = and i32 %shl, 65280
  %or = or i32 %and35, %23
  %shl59 = shl i32 %sub, 16
  %and60 = and i32 %shl59, 16711680
  %or61 = or i32 %and60, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 16
  %add.ptr66 = getelementptr i8, ptr %25, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 21364736) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 16
  %add.ptr71 = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %26) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 16
  %add.ptr76 = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %29) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 16
  %add.ptr81 = getelementptr i8, ptr %33, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #6, !srcloc !100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_at91_set_clks_presets.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_at91_set_clks_presets, %if.then88)) #6
          to label %do.end91 [label %if.then88], !srcloc !104

if.then88:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_at91_set_clks_presets.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %sub, i32 noundef %call13, i32 noundef %clk_base_rate.0) #6
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %if.end
  %sub92 = add i32 %call13, 23999999
  %div93 = udiv i32 %sub92, 24000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %34 = trunc i32 %div93 to i16
  %35 = add nsw i16 %34, -1
  %conv = or i16 %35, 1024
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 16
  %add.ptr100 = getelementptr i8, ptr %38, i32 102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr100, i16 %36) #6, !srcloc !106
  %sub102 = add i32 %call13, 49999999
  %div103 = udiv i32 %sub102, 50000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %39 = trunc i32 %div103 to i16
  %40 = add nsw i16 %39, -1
  %conv109 = or i16 %40, 1024
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv109)
  %42 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr, align 16
  %add.ptr111 = getelementptr i8, ptr %43, i32 104
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr111, i16 %41) #6, !srcloc !106
  %sub113 = add i32 %call13, 99999999
  %div114 = udiv i32 %sub113, 100000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %44 = trunc i32 %div114 to i16
  %45 = add nsw i16 %44, -1
  %conv120 = or i16 %45, 1024
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv120)
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 16
  %add.ptr122 = getelementptr i8, ptr %48, i32 106
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr122, i16 %46) #6, !srcloc !106
  %sub124 = add i32 %call13, 119999999
  %div125 = udiv i32 %sub124, 120000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %49 = trunc i32 %div125 to i16
  %50 = add nsw i16 %49, -1
  %conv131 = or i16 %50, 1024
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv131)
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 16
  %add.ptr133 = getelementptr i8, ptr %53, i32 108
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr133, i16 %51) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 16
  %add.ptr144 = getelementptr i8, ptr %55, i32 110
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr144, i16 %41) #6, !srcloc !106
  %mainck145 = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i3, i32 0, i32 3
  %56 = ptrtoint ptr %mainck145 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mainck145, align 4
  %call.i5 = tail call i32 @clk_prepare(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end.i9, label %do.end91.clk_prepare_enable.exit12_crit_edge

do.end91.clk_prepare_enable.exit12_crit_edge:     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit12

if.end.i9:                                        ; preds = %do.end91
  %call1.i7 = tail call i32 @clk_enable(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool2.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool2.not.i8, label %if.end.i9.clk_prepare_enable.exit12_crit_edge, label %if.then3.i10

if.end.i9.clk_prepare_enable.exit12_crit_edge:    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit12

if.then3.i10:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %57) #6
  br label %clk_prepare_enable.exit12

clk_prepare_enable.exit12:                        ; preds = %if.then3.i10, %if.end.i9.clk_prepare_enable.exit12_crit_edge, %do.end91.clk_prepare_enable.exit12_crit_edge
  %58 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gck, align 4
  %call.i13 = tail call i32 @clk_prepare(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.i17, label %clk_prepare_enable.exit12.clk_prepare_enable.exit20_crit_edge

clk_prepare_enable.exit12.clk_prepare_enable.exit20_crit_edge: ; preds = %clk_prepare_enable.exit12
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit20

if.end.i17:                                       ; preds = %clk_prepare_enable.exit12
  %call1.i15 = tail call i32 @clk_enable(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool2.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool2.not.i16, label %if.end.i17.clk_prepare_enable.exit20_crit_edge, label %if.then3.i18

if.end.i17.clk_prepare_enable.exit20_crit_edge:   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit20

if.then3.i18:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %59) #6
  br label %clk_prepare_enable.exit20

clk_prepare_enable.exit20:                        ; preds = %if.then3.i18, %if.end.i17.clk_prepare_enable.exit20_crit_edge, %clk_prepare_enable.exit12.clk_prepare_enable.exit20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

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
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_at91_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual_clock, align 8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !111

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i16 %6(ptr noundef %host, i32 noundef 44) #6
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 44
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !112
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  %11 = and i16 %retval.0.i, 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i74 = icmp eq ptr %15, null
  br i1 %tobool.not.i74, label %do.body.i, label %if.then.i75, !prof !111

if.then.i75:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %host, i16 noundef zeroext %11, i32 noundef 44) #6
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %16 = shl nuw nsw i16 %11, 8
  %ioaddr.i76 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %17 = ptrtoint ptr %ioaddr.i76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i76, align 16
  %add.ptr.i77 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i77, i16 %16) #6, !srcloc !106
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 8
  %actual_clock4 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 58
  %call5 = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %host, i32 noundef %clock, ptr noundef %actual_clock4) #6
  %21 = or i16 %call5, 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write_w.i79 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write_w.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_w.i79, align 4
  %tobool.not.i80 = icmp eq ptr %25, null
  br i1 %tobool.not.i80, label %do.body.i84, label %if.then.i81, !prof !111

if.then.i81:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %25(ptr noundef %host, i16 noundef zeroext %21, i32 noundef 44) #6
  br label %sdhci_writew.exit85

do.body.i84:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %26 = tail call i16 @llvm.bswap.i16(i16 %21) #6
  %ioaddr.i82 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i82, align 16
  %add.ptr.i83 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i83, i16 %26) #6, !srcloc !106
  br label %sdhci_writew.exit85

sdhci_writew.exit85:                              ; preds = %do.body.i84, %if.then.i81
  %call8 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call8, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 90) #6
  %ioaddr.i91 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then34, %sdhci_writew.exit85
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %read_w.i87 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read_w.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_w.i87, align 4
  %tobool.not.i88 = icmp eq ptr %32, null
  br i1 %tobool.not.i88, label %if.else.i93, label %if.then.i90, !prof !111

if.then.i90:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i89 = tail call zeroext i16 %32(ptr noundef %host, i32 noundef 44) #6
  br label %sdhci_readw.exit95

if.else.i93:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ioaddr.i91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i91, align 16
  %add.ptr.i92 = getelementptr i8, ptr %34, i32 44
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i92) #6, !srcloc !112
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  br label %sdhci_readw.exit95

sdhci_readw.exit95:                               ; preds = %if.else.i93, %if.then.i90
  %retval.0.i94 = phi i16 [ %call.i89, %if.then.i90 ], [ %36, %if.else.i93 ]
  %37 = and i16 %retval.0.i94, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not = icmp eq i16 %37, 0
  br i1 %tobool.not, label %land.lhs.true, label %sdhci_readw.exit95.for.end_crit_edge

sdhci_readw.exit95.for.end_crit_edge:             ; preds = %sdhci_readw.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %sdhci_readw.exit95
  %call26 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then30, label %if.then34

if.then30:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %read_w.i98 = getelementptr inbounds %struct.sdhci_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read_w.i98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_w.i98, align 4
  %tobool.not.i99 = icmp eq ptr %41, null
  br i1 %tobool.not.i99, label %if.else.i104, label %if.then.i101, !prof !111

if.then.i101:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %call.i100 = tail call zeroext i16 %41(ptr noundef %host, i32 noundef 44) #6
  br label %for.end

if.else.i104:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ioaddr.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i91, align 16
  %add.ptr.i103 = getelementptr i8, ptr %43, i32 44
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i103) #6, !srcloc !112
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  br label %for.end

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  br label %for.cond

for.end:                                          ; preds = %if.else.i104, %if.then.i101, %sdhci_readw.exit95.for.end_crit_edge
  %clk.0 = phi i16 [ %call.i100, %if.then.i101 ], [ %45, %if.else.i104 ], [ %retval.0.i94, %sdhci_readw.exit95.for.end_crit_edge ]
  %46 = and i16 %clk.0, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool38.not = icmp eq i16 %46, 0
  br i1 %tobool38.not, label %do.end43, label %if.end48

do.end43:                                         ; preds = %for.end
  %47 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i107 = icmp eq ptr %50, null
  br i1 %tobool.not.i107, label %if.end.i, label %do.end43.dev_name.exit_crit_edge

do.end43.dev_name.exit_crit_edge:                 ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end43.dev_name.exit_crit_edge
  %retval.0.i108 = phi ptr [ %52, %if.end.i ], [ %50, %do.end43.dev_name.exit_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i108) #9
  br label %cleanup

if.end48:                                         ; preds = %for.end
  %or50 = or i16 %clk.0, 4
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %write_w.i110 = getelementptr inbounds %struct.sdhci_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %write_w.i110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_w.i110, align 4
  %tobool.not.i111 = icmp eq ptr %56, null
  br i1 %tobool.not.i111, label %do.body.i115, label %if.then.i112, !prof !111

if.then.i112:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %56(ptr noundef %host, i16 noundef zeroext %or50, i32 noundef 44) #6
  br label %cleanup

do.body.i115:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %57 = tail call i16 @llvm.bswap.i16(i16 %or50) #6
  %58 = ptrtoint ptr %ioaddr.i91 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i91, align 16
  %add.ptr.i114 = getelementptr i8, ptr %59, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i114, i16 %57) #6, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %do.body.i115, %if.then.i112, %dev_name.exit, %sdhci_writew.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_at91_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i65 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #6
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 32
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @mmc_gpio_get_cd(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 516
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %7 = or i8 %6, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr4.i = getelementptr i8, ptr %9, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %7) #6, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %cal_always_on = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i65, i32 0, i32 5
  %10 = ptrtoint ptr %cal_always_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cal_always_on, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  %12 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  %or.cond = or i1 %tobool6.not, %tobool4.not
  br i1 %or.cond, label %if.end.if.end49_crit_edge, label %if.then7

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then7:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !111

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %16(ptr noundef %host, i32 noundef 576) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i66 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %17 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr.i67 = getelementptr i8, ptr %18, i32 576
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #6, !srcloc !96
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %20, %if.else.i ]
  %or9 = or i32 %retval.0.i, 17
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i69 = icmp eq ptr %24, null
  br i1 %tobool.not.i69, label %do.body.i, label %if.then.i70, !prof !111

if.then.i70:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef %host, i32 noundef %or9, i32 noundef 576) #6
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or9) #6
  %ioaddr.i71 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr.i71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i71, align 16
  %add.ptr.i72 = getelementptr i8, ptr %27, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %25) #6, !srcloc !100
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i70
  %call10 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call10, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 127) #6
  %ioaddr.i77 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then37, %sdhci_writel.exit
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i74 = icmp eq ptr %31, null
  br i1 %tobool.not.i74, label %if.else.i79, label %if.then.i76, !prof !111

if.then.i76:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i75 = tail call i32 %31(ptr noundef %host, i32 noundef 576) #6
  br label %sdhci_readl.exit81

if.else.i79:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ioaddr.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i77, align 16
  %add.ptr.i78 = getelementptr i8, ptr %33, i32 576
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #6, !srcloc !96
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  br label %sdhci_readl.exit81

sdhci_readl.exit81:                               ; preds = %if.else.i79, %if.then.i76
  %retval.0.i80 = phi i32 [ %call.i75, %if.then.i76 ], [ %35, %if.else.i79 ]
  %and23 = and i32 %retval.0.i80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %sdhci_readl.exit81.for.end_crit_edge, label %land.lhs.true28

sdhci_readl.exit81.for.end_crit_edge:             ; preds = %sdhci_readl.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true28:                                  ; preds = %sdhci_readl.exit81
  %call29 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %if.then33, label %if.then37

if.then33:                                        ; preds = %land.lhs.true28
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.not.i84 = icmp eq ptr %39, null
  br i1 %tobool.not.i84, label %if.else.i89, label %if.then.i86, !prof !111

if.then.i86:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i85 = tail call i32 %39(ptr noundef %host, i32 noundef 576) #6
  br label %for.end

if.else.i89:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %ioaddr.i77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i77, align 16
  %add.ptr.i88 = getelementptr i8, ptr %41, i32 576
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #6, !srcloc !96
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  br label %for.end

if.then37:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  br label %for.cond

for.end:                                          ; preds = %if.else.i89, %if.then.i86, %sdhci_readl.exit81.for.end_crit_edge
  %tmp.0 = phi i32 [ %call.i85, %if.then.i86 ], [ %43, %if.else.i89 ], [ %retval.0.i80, %sdhci_readl.exit81.for.end_crit_edge ]
  %and40 = and i32 %tmp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.end.if.end49_crit_edge, label %do.end46

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmc, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.21) #9
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %for.end.if.end49_crit_edge, %if.end.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_at91_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %timing)
  %cmp = icmp eq i32 %timing, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !111

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %host, i8 noundef zeroext 8, i32 noundef 516) #6
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #6, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %entry.if.end_crit_edge
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #6
  %restore_needed = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %2 = ptrtoint ptr %restore_needed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %restore_needed, align 4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #6
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %private.i9 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %gck = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %9 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gck, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %hclock = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %11 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hclock, align 4
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  %mainck = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i9, i32 0, i32 3
  %13 = ptrtoint ptr %mainck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mainck, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_at91_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %restore_needed = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %2 = ptrtoint ptr %restore_needed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %restore_needed, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sdhci_at91_set_clks_presets(ptr noundef %dev)
  %4 = ptrtoint ptr %restore_needed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %restore_needed, align 4
  br label %out

if.end7:                                          ; preds = %entry
  %private.i46 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %mainck = getelementptr inbounds %struct.sdhci_at91_priv, ptr %private.i46, i32 0, i32 3
  %5 = ptrtoint ptr %mainck to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mainck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end7.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end7.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %hclock = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %7 = ptrtoint ptr %hclock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hclock, align 4
  %call.i47 = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i51, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.end.i51:                                       ; preds = %if.end11
  %call1.i49 = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool2.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool2.not.i50, label %if.end18, label %if.then3.i52

if.then3.i52:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i52, %if.end11.do.end17_crit_edge
  %retval.0.i53.ph = phi i32 [ %call1.i49, %if.then3.i52 ], [ %call.i47, %if.end11.do.end17_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end.i51
  %gck = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %9 = ptrtoint ptr %gck to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gck, align 4
  %call.i55 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end.i59:                                       ; preds = %if.end18
  %call1.i57 = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool2.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool2.not.i58, label %if.end.i59.out_crit_edge, label %if.then3.i60

if.end.i59.out_crit_edge:                         ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i60, %if.end18.do.end24_crit_edge
  %retval.0.i61.ph = phi i32 [ %call1.i57, %if.then3.i60 ], [ %call.i55, %if.end18.do.end24_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %cleanup

out:                                              ; preds = %if.end.i59.out_crit_edge, %if.then
  %call26 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end24, %do.end17, %do.end
  %retval.0 = phi i32 [ %call26, %out ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i53.ph, %do.end17 ], [ %retval.0.i61.ph, %do.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_sdhci_of_at91__283_476_sdhci_at91_driver_init6, !1, !"__initcall__kmod_sdhci_of_at91__283_476_sdhci_at91_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 476, i32 1}
!2 = !{ptr @__exitcall_sdhci_at91_driver_exit, !1, !"__exitcall_sdhci_at91_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description284, !4, !"__UNIQUE_ID_description284", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 478, i32 1}
!5 = !{ptr @__UNIQUE_ID_author285, !6, !"__UNIQUE_ID_author285", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 479, i32 1}
!7 = !{ptr @__UNIQUE_ID_file286, !8, !"__UNIQUE_ID_file286", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 480, i32 1}
!9 = !{ptr @__UNIQUE_ID_license287, !8, !"__UNIQUE_ID_license287", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 467, i32 11}
!12 = !{ptr @sdhci_at91_driver, !13, !"sdhci_at91_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 465, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 331, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 336, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_at91_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_at91_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 342, i32 42}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 344, i32 3}
!28 = !{ptr @sdhci_at91_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sdhci_at91_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 349, i32 39}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 351, i32 3}
!34 = !{ptr @sdhci_at91_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sdhci_at91_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 368, i32 8}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 196, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sdhci_at91_set_clks_presets.__UNIQUE_ID_ddebug282, !39, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!43 = !{ptr @sdhci_at91_dt_match, !44, !"sdhci_at91_dt_match", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 155, i32 34}
!45 = !{ptr @soc_data_sama5d2, !46, !"soc_data_sama5d2", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 144, i32 41}
!47 = !{ptr @sdhci_sama5d2_pdata, !48, !"sdhci_sama5d2_pdata", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 140, i32 38}
!49 = !{ptr @sdhci_at91_sama5d2_ops, !50, !"sdhci_at91_sama5d2_ops", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 132, i32 31}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 91, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sdhci_at91_set_clock._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sdhci_at91_set_clock._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 128, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sdhci_at91_reset._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @sdhci_at91_reset._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @soc_data_sam9x60, !62, !"soc_data_sam9x60", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 149, i32 41}
!63 = !{ptr @sdhci_at91_dev_pm_ops, !64, !"sdhci_at91_dev_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 302, i32 32}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 281, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sdhci_at91_runtime_resume._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sdhci_at91_runtime_resume._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 287, i32 3}
!72 = !{ptr @sdhci_at91_runtime_resume._entry.25, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sdhci_at91_runtime_resume._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/sdhci-of-at91.c", i32 293, i32 3}
!76 = !{ptr @sdhci_at91_runtime_resume._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sdhci_at91_runtime_resume._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{i64 2148310812, i64 2148310838, i64 2148310867, i64 2148310901, i64 2148310932, i64 2148310955}
!89 = !{i64 3113085}
!90 = !{i64 2154830173}
!91 = !{i64 2154830479}
!92 = !{i64 3112690}
!93 = !{i64 2148310231}
!94 = !{i64 795054, i64 795079, i64 795101, i64 795117, i64 795129, i64 795149, i64 795173, i64 795189, i64 795201}
!95 = !{i64 2148310419}
!96 = !{i64 3113305}
!97 = !{i64 2154836586}
!98 = !{i64 2154837085}
!99 = !{i64 2154923008}
!100 = !{i64 3112887}
!101 = !{i64 2154923523}
!102 = !{i64 2154923929}
!103 = !{i64 2154924333}
!104 = !{i64 2148765297, i64 2148765302, i64 2148765315, i64 2148765359, i64 2148765393, i64 2148765414}
!105 = !{i64 2154927562}
!106 = !{i64 3112267}
!107 = !{i64 2154928099}
!108 = !{i64 2154928638}
!109 = !{i64 2154929177}
!110 = !{i64 2154929714}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 3112467}
!113 = !{i64 2154828658}
!114 = !{i64 2154826590}
!115 = !{i64 2154827954}
!116 = !{i64 2154825984}
!117 = !{i64 2154827196}
