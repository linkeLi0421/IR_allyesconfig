; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-xenon.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-xenon.c"
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.xenon_priv = type { i8, i8, i32, i8, i8, i32, ptr, i32, ptr, ptr, i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }

@__initcall__kmod_sdhci_xenon_driver__272_721_sdhci_xenon_driver_init6 = internal global ptr @sdhci_xenon_driver_init, section ".initcall6.init", align 4
@sdhci_xenon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xenon_probe, ptr @xenon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_xenon_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_xenon_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_xenon_driver_exit = internal global ptr @sdhci_xenon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [76 x i8] c"sdhci_xenon_driver.description=SDHCI platform driver for Marvell Xenon SDHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [55 x i8] c"sdhci_xenon_driver.author=Hu Ziji <huziji@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [60 x i8] c"sdhci_xenon_driver.file=drivers/mmc/host/sdhci-xenon-driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [34 x i8] c"sdhci_xenon_driver.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xenon-sdhci\00", [20 x i8] zeroinitializer }, align 32
@sdhci_xenon_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-ap806-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-ap807-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-cp110-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sdhci_xenon_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xenon_suspend, ptr @pm_runtime_force_resume, ptr @xenon_suspend, ptr @pm_runtime_force_resume, ptr @xenon_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xenon_runtime_suspend, ptr @xenon_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_xenon_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_xenon_ops, i32 100665344, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@xenon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to setup input clk: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xenon_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci-xenon.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xenon_probe._entry_ptr = internal global ptr @xenon_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@sdhci_xenon_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @xenon_set_power, ptr null, ptr null, ptr null, ptr @xenon_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @xenon_reset, ptr null, ptr @xenon_set_uhs_signaling, ptr null, ptr null, ptr null, ptr @xenon_voltage_switch, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xenon_enable_internal_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 42, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Internal clock never stabilised.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xenon_enable_internal_clk\00", [38 x i8] zeroinitializer }, align 32
@xenon_enable_internal_clk._entry_ptr = internal global ptr @xenon_enable_internal_clk._entry, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,xenon-sdhc-id\00", [42 x i8] zeroinitializer }, align 32
@xenon_probe_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SDHC Index %d exceeds Number of SDHCs %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xenon_probe_params\00", [45 x i8] zeroinitializer }, align 32
@xenon_probe_params._entry_ptr = internal global ptr @xenon_probe_params._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,xenon-tun-count\00", [40 x i8] zeroinitializer }, align 32
@xenon_probe_params._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Wrong Re-tuning Count. Set default value %d\0A\00", [51 x i8] zeroinitializer }, align 32
@xenon_probe_params._entry_ptr.16 = internal global ptr @xenon_probe_params._entry.14, section ".printk_index", align 4
@xenon_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 661, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't enable mainck\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xenon_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@xenon_runtime_resume._entry_ptr = internal global ptr @xenon_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 9, i64 10]
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"sdhci_xenon_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 709, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 711, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"sdhci_xenon_dt_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 690, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"sdhci_xenon_dev_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 682, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"sdhci_xenon_pdata\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 276, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 524, i32 46 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 527, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 534, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"sdhci_xenon_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 266, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 42, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 441, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 445, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 453, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 456, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [34 x i8] c"../drivers/mmc/host/sdhci-xenon.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 661, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_sdhci_xenon_driver_exit, ptr @__initcall__kmod_sdhci_xenon_driver__272_721_sdhci_xenon_driver_init6, ptr @sdhci_xenon_driver_exit, ptr @xenon_enable_internal_clk._entry, ptr @xenon_enable_internal_clk._entry_ptr, ptr @xenon_probe._entry, ptr @xenon_probe._entry_ptr, ptr @xenon_probe_params._entry, ptr @xenon_probe_params._entry.14, ptr @xenon_probe_params._entry_ptr, ptr @xenon_probe_params._entry_ptr.16, ptr @xenon_runtime_resume._entry, ptr @xenon_runtime_resume._entry_ptr, ptr @sdhci_xenon_driver, ptr @.str, ptr @sdhci_xenon_dt_ids, ptr @sdhci_xenon_dev_pm_ops, ptr @sdhci_xenon_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sdhci_xenon_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_xenon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_xenon_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_xenon_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_xenon_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_xenon_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_enable_internal_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_probe_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_probe_params._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_xenon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_xenon_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_xenon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_xenon_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sdhc_id.i = alloca i32, align 4
  %tuning_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_xenon_pdata, i32 noundef 40) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %call7 = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %1 = ptrtoint ptr %call7 to i32
  %hw_version = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 3
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %hw_version, align 4
  %set_ios.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xenon_set_ios, ptr %set_ios.i, align 4
  %start_signal_voltage_switch.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 10
  %4 = ptrtoint ptr %start_signal_voltage_switch.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xenon_start_signal_voltage_switch, ptr %start_signal_voltage_switch.i, align 4
  %init_card.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 9
  %5 = ptrtoint ptr %init_card.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xenon_init_card, ptr %init_card.i, align 4
  %execute_tuning.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 12
  %6 = ptrtoint ptr %execute_tuning.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xenon_execute_tuning, ptr %execute_tuning.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xenon_enable_sdio_irq, ptr %enable_sdio_irq.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end38_crit_edge, label %if.then8

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then8:                                         ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %private.i, align 128
  %cmp.i116 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %11) #11
  br label %free_pltfm

if.end17:                                         ; preds = %if.then8
  %call.i = tail call i32 @clk_prepare(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.free_pltfm_crit_edge

if.end17.free_pltfm_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pltfm

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call10) #8
  br label %free_pltfm

if.end22:                                         ; preds = %if.end.i
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %axi_clk = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 12
  %12 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %axi_clk, align 4
  %cmp.i117 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end22
  %cmp = icmp eq ptr %call24, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then27.err_clk_crit_edge, label %if.then27.if.end38_crit_edge

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then27.err_clk_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

if.else:                                          ; preds = %if.end22
  %call.i118 = tail call i32 @clk_prepare(ptr noundef %call24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %if.end.i122, label %if.else.err_clk_crit_edge

if.else.err_clk_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

if.end.i122:                                      ; preds = %if.else
  %call1.i120 = tail call i32 @clk_enable(ptr noundef %call24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool2.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool2.not.i121, label %if.end.i122.if.end38_crit_edge, label %if.then3.i123

if.end.i122.if.end38_crit_edge:                   ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then3.i123:                                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call24) #8
  br label %err_clk

if.end38:                                         ; preds = %if.end.i122.if.end38_crit_edge, %if.then27.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %call39 = tail call i32 @mmc_of_parse(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_clk_axi_crit_edge

if.end38.err_clk_axi_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_axi

if.end42:                                         ; preds = %if.end38
  tail call void @sdhci_get_property(ptr noundef %pdev) #8
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %18(ptr noundef %call, i32 noundef 264) #8
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 264
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !67
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %22, %if.else.i.i ]
  %reg.0.i = or i32 %retval.0.i.i, 1048576
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %26, null
  br i1 %tobool.not.i5.i, label %do.body.i.i, label %if.then.i6.i, !prof !66

if.then.i6.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %call, i32 noundef %reg.0.i, i32 noundef 264) #8
  br label %xenon_set_acg.exit

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #8
  %ioaddr.i7.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %27) #8, !srcloc !70
  br label %xenon_set_acg.exit

xenon_set_acg.exit:                               ; preds = %do.body.i.i, %if.then.i6.i
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %mmc2.i = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %mmc2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc2.i, align 8
  %private.i55.i = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 1, i32 11, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdhc_id.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuning_count.i) #8
  %hw_version.i = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 1, i32 13, i32 3
  %34 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i126 = icmp eq i32 %35, 1
  br i1 %cmp.i126, label %if.then.i, label %xenon_set_acg.exit.if.end.i129_crit_edge

xenon_set_acg.exit.if.end.i129_crit_edge:         ; preds = %xenon_set_acg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i129

if.then.i:                                        ; preds = %xenon_set_acg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %quirks2.i = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %quirks2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks2.i, align 8
  %or.i = or i32 %37, 64
  store i32 %or.i, ptr %quirks2.i, align 8
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then.i, %xenon_set_acg.exit.if.end.i129_crit_edge
  %38 = ptrtoint ptr %sdhc_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %sdhc_id.i, align 4
  %call.i.i127 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %sdhc_id.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool.not.i128 = icmp eq i32 %call.i.i127, 0
  br i1 %tobool.not.i128, label %if.then6.i, label %if.end.i129.if.end13.i_crit_edge

if.end.i129.if.end13.i_crit_edge:                 ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i129
  %ops.i.i130 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 9
  %39 = ptrtoint ptr %ops.i.i130 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i130, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i.i131 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i131, label %if.else.i.i135, label %if.then.i.i132, !prof !66

if.then.i.i132:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i56.i = call i32 %42(ptr noundef %31, i32 noundef 260) #8
  br label %sdhci_readl.exit.i138

if.else.i.i135:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i133 = getelementptr inbounds %struct.sdhci_host, ptr %31, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i.i133 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i.i133, align 16
  %add.ptr.i.i134 = getelementptr i8, ptr %44, i32 260
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i134) #8, !srcloc !67
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i138

sdhci_readl.exit.i138:                            ; preds = %if.else.i.i135, %if.then.i.i132
  %retval.0.i.i136 = phi i32 [ %call.i56.i, %if.then.i.i132 ], [ %46, %if.else.i.i135 ]
  %and.i137 = and i32 %retval.0.i.i136, 7
  %47 = ptrtoint ptr %sdhc_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sdhc_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and.i137)
  %cmp8.i = icmp ugt i32 %48, %and.i137
  br i1 %cmp8.i, label %xenon_probe_params.exit.thread, label %sdhci_readl.exit.i138.if.end13.i_crit_edge, !prof !71

sdhci_readl.exit.i138.if.end13.i_crit_edge:       ; preds = %sdhci_readl.exit.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

xenon_probe_params.exit.thread:                   ; preds = %sdhci_readl.exit.i138
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %33, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.11, i32 noundef %48, i32 noundef %and.i137) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuning_count.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdhc_id.i) #8
  br label %err_clk_axi

if.end13.i:                                       ; preds = %sdhci_readl.exit.i138.if.end13.i_crit_edge, %if.end.i129.if.end13.i_crit_edge
  %51 = ptrtoint ptr %sdhc_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sdhc_id.i, align 4
  %conv.i = trunc i32 %52 to i8
  %sdhc_id14.i = getelementptr inbounds %struct.xenon_priv, ptr %private.i55.i, i32 0, i32 1
  %53 = ptrtoint ptr %sdhc_id14.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i, ptr %sdhc_id14.i, align 1
  %54 = ptrtoint ptr %tuning_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 9, ptr %tuning_count.i, align 4
  %call.i57.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %tuning_count.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool16.not.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end13.i.xenon_probe_params.exit_crit_edge

if.end13.i.xenon_probe_params.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xenon_probe_params.exit

if.then17.i:                                      ; preds = %if.end13.i
  %55 = ptrtoint ptr %tuning_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tuning_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %56)
  %cmp18.i = icmp ugt i32 %56, 14
  br i1 %cmp18.i, label %do.end29.i, label %if.then17.i.xenon_probe_params.exit_crit_edge, !prof !71

if.then17.i.xenon_probe_params.exit_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xenon_probe_params.exit

do.end29.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %33, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.15, i32 noundef 9) #11
  %59 = ptrtoint ptr %tuning_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 9, ptr %tuning_count.i, align 4
  br label %xenon_probe_params.exit

xenon_probe_params.exit:                          ; preds = %do.end29.i, %if.then17.i.xenon_probe_params.exit_crit_edge, %if.end13.i.xenon_probe_params.exit_crit_edge
  %60 = ptrtoint ptr %tuning_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tuning_count.i, align 4
  %conv33.i = trunc i32 %61 to i8
  %62 = ptrtoint ptr %private.i55.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv33.i, ptr %private.i55.i, align 4
  %call35.i = call i32 @xenon_phy_parse_params(ptr noundef %dev1, ptr noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuning_count.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdhc_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool44.not = icmp eq i32 %call35.i, 0
  br i1 %tobool44.not, label %if.end46, label %xenon_probe_params.exit.err_clk_axi_crit_edge

xenon_probe_params.exit.err_clk_axi_crit_edge:    ; preds = %xenon_probe_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_axi

if.end46:                                         ; preds = %xenon_probe_params.exit
  call fastcc void @xenon_sdhc_prepare(ptr noundef %call)
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !72
  %call.i140 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %64 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %call58 = call i32 @sdhci_add_host(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %remove_sdhc

if.end61:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call.i141 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  br label %cleanup

remove_sdhc:                                      ; preds = %if.end46
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !74
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %remove_sdhc.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

remove_sdhc.pm_runtime_put_noidle.exit_crit_edge: ; preds = %remove_sdhc
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %remove_sdhc
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %remove_sdhc.pm_runtime_put_noidle.exit_crit_edge
  %private.i4.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  %sdhc_id2.i = getelementptr inbounds %struct.xenon_priv, ptr %private.i4.i, i32 0, i32 1
  %66 = ptrtoint ptr %sdhc_id2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sdhc_id2.i, align 1
  %68 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !66

if.then.i.i.i:                                    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i144 = call i32 %71(ptr noundef %call, i32 noundef 264) #8
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %72 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %73, i32 264
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !67
  %75 = call i32 @llvm.bswap.i32(i32 %74) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i144, %if.then.i.i.i ], [ %75, %if.else.i.i.i ]
  %conv.i.i = zext i8 %67 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %76 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i5.i.i, label %do.body.i.i.i, label %if.then.i6.i.i, !prof !66

if.then.i6.i.i:                                   ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %79(ptr noundef %call, i32 noundef %and.i.i, i32 noundef 264) #8
  br label %err_clk_axi

do.body.i.i.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @arm_heavy_mb() #8
  %80 = call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %ioaddr.i7.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %81 = ptrtoint ptr %ioaddr.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr.i7.i.i, align 16
  %add.ptr.i8.i.i = getelementptr i8, ptr %82, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %80) #8, !srcloc !70
  br label %err_clk_axi

err_clk_axi:                                      ; preds = %do.body.i.i.i, %if.then.i6.i.i, %xenon_probe_params.exit.err_clk_axi_crit_edge, %xenon_probe_params.exit.thread, %if.end38.err_clk_axi_crit_edge
  %err.0 = phi i32 [ %call39, %if.end38.err_clk_axi_crit_edge ], [ %call35.i, %xenon_probe_params.exit.err_clk_axi_crit_edge ], [ -22, %xenon_probe_params.exit.thread ], [ %call58, %if.then.i6.i.i ], [ %call58, %do.body.i.i.i ]
  %axi_clk66 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 12
  %83 = ptrtoint ptr %axi_clk66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %axi_clk66, align 4
  call void @clk_disable(ptr noundef %84) #8
  call void @clk_unprepare(ptr noundef %84) #8
  br label %err_clk

err_clk:                                          ; preds = %err_clk_axi, %if.then3.i123, %if.else.err_clk_crit_edge, %if.then27.err_clk_crit_edge
  %err.1 = phi i32 [ -517, %if.then27.err_clk_crit_edge ], [ %err.0, %err_clk_axi ], [ %call1.i120, %if.then3.i123 ], [ %call.i118, %if.else.err_clk_crit_edge ]
  %85 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %private.i, align 128
  call void @clk_disable(ptr noundef %86) #8
  call void @clk_unprepare(ptr noundef %86) #8
  br label %free_pltfm

free_pltfm:                                       ; preds = %err_clk, %if.then3.i, %if.end17.free_pltfm_crit_edge, %if.then13
  %err.2 = phi i32 [ %11, %if.then13 ], [ %err.1, %err_clk ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end17.free_pltfm_crit_edge ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %free_pltfm, %if.end61, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.2, %free_pltfm ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !74
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 0) #8
  %private.i4.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %sdhc_id2.i = getelementptr inbounds %struct.xenon_priv, ptr %private.i4.i, i32 0, i32 1
  %3 = ptrtoint ptr %sdhc_id2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sdhc_id2.i, align 1
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !66

if.then.i.i.i:                                    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i14 = tail call i32 %8(ptr noundef %1, i32 noundef 264) #8
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 264
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !67
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i14, %if.then.i.i.i ], [ %12, %if.else.i.i.i ]
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %13 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i5.i.i, label %do.body.i.i.i, label %if.then.i6.i.i, !prof !66

if.then.i6.i.i:                                   ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %1, i32 noundef %and.i.i, i32 noundef 264) #8
  br label %xenon_sdhc_unprepare.exit

do.body.i.i.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %ioaddr.i7.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ioaddr.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i7.i.i, align 16
  %add.ptr.i8.i.i = getelementptr i8, ptr %19, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %17) #8, !srcloc !70
  br label %xenon_sdhc_unprepare.exit

xenon_sdhc_unprepare.exit:                        ; preds = %do.body.i.i.i, %if.then.i6.i.i
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %axi_clk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %20 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xenon_sdhc_prepare(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %sdhc_id2 = getelementptr inbounds %struct.xenon_priv, ptr %private.i1, i32 0, i32 1
  %0 = ptrtoint ptr %sdhc_id2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sdhc_id2, align 1
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %5(ptr noundef %host, i32 noundef 264) #8
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !67
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %9, %if.else.i.i ]
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %retval.0.i.i, %shl.i
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i10.i = icmp eq ptr %13, null
  br i1 %tobool.not.i10.i, label %do.body.i.i, label %if.then.i11.i, !prof !66

if.then.i11.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %host, i32 noundef %or.i, i32 noundef 264) #8
  br label %xenon_enable_sdhc.exit

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %ioaddr.i12.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i12.i, align 16
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %14) #8, !srcloc !70
  br label %xenon_enable_sdhc.exit

xenon_enable_sdhc.exit:                           ; preds = %do.body.i.i, %if.then.i11.i
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %17 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc.i, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %caps.i, align 32
  %or2.i = or i32 %20, 512
  store i32 %or2.i, ptr %caps.i, align 32
  %21 = load ptr, ptr %mmc.i, align 8
  %caps4.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %caps4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps4.i, align 32
  %and.i = and i32 %23, -32769
  store i32 %and.i, ptr %caps4.i, align 32
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i.i3 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i3, label %if.else.i.i8, label %if.then.i.i5, !prof !66

if.then.i.i5:                                     ; preds = %xenon_enable_sdhc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i4 = tail call i32 %27(ptr noundef %host, i32 noundef 264) #8
  br label %sdhci_readl.exit.i12

if.else.i.i8:                                     ; preds = %xenon_enable_sdhc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i6 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i.i6, align 16
  %add.ptr.i.i7 = getelementptr i8, ptr %29, i32 264
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #8, !srcloc !67
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i12

sdhci_readl.exit.i12:                             ; preds = %if.else.i.i8, %if.then.i.i5
  %retval.0.i.i9 = phi i32 [ %call.i.i4, %if.then.i.i5 ], [ %31, %if.else.i.i8 ]
  %and.i10 = and i32 %retval.0.i.i9, -1048577
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i11 = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_l.i.i11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_l.i.i11, align 4
  %tobool.not.i5.i = icmp eq ptr %35, null
  br i1 %tobool.not.i5.i, label %do.body.i.i13, label %if.then.i6.i, !prof !66

if.then.i6.i:                                     ; preds = %sdhci_readl.exit.i12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %35(ptr noundef %host, i32 noundef %and.i10, i32 noundef 264) #8
  br label %xenon_set_acg.exit

do.body.i.i13:                                    ; preds = %sdhci_readl.exit.i12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #8
  %ioaddr.i7.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %38, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %36) #8, !srcloc !70
  br label %xenon_set_acg.exit

xenon_set_acg.exit:                               ; preds = %do.body.i.i13, %if.then.i6.i
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i.i15 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i15, label %if.else.i.i20, label %if.then.i.i17, !prof !66

if.then.i.i17:                                    ; preds = %xenon_set_acg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i16 = tail call i32 %42(ptr noundef %host, i32 noundef 268) #8
  br label %sdhci_readl.exit.i26

if.else.i.i20:                                    ; preds = %xenon_set_acg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i.i18, align 16
  %add.ptr.i.i19 = getelementptr i8, ptr %44, i32 268
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #8, !srcloc !67
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i26

sdhci_readl.exit.i26:                             ; preds = %if.else.i.i20, %if.then.i.i17
  %retval.0.i.i21 = phi i32 [ %call.i.i16, %if.then.i.i17 ], [ %46, %if.else.i.i20 ]
  %or.i24 = or i32 %retval.0.i.i21, %shl.i
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i25 = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_l.i.i25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_l.i.i25, align 4
  %tobool.not.i4.i = icmp eq ptr %50, null
  br i1 %tobool.not.i4.i, label %do.body.i.i27, label %if.then.i5.i, !prof !66

if.then.i5.i:                                     ; preds = %sdhci_readl.exit.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %50(ptr noundef %host, i32 noundef %or.i24, i32 noundef 268) #8
  br label %xenon_enable_sdhc_parallel_tran.exit

do.body.i.i27:                                    ; preds = %sdhci_readl.exit.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i24) #8
  %ioaddr.i6.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i6.i, align 16
  %add.ptr.i7.i = getelementptr i8, ptr %53, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %51) #8, !srcloc !70
  br label %xenon_enable_sdhc_parallel_tran.exit

xenon_enable_sdhc_parallel_tran.exit:             ; preds = %do.body.i.i27, %if.then.i5.i
  %54 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool.not.i.i29 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i29, label %if.else.i.i34, label %if.then.i.i31, !prof !66

if.then.i.i31:                                    ; preds = %xenon_enable_sdhc_parallel_tran.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i30 = tail call i32 %57(ptr noundef %host, i32 noundef 264) #8
  br label %sdhci_readl.exit.i41

if.else.i.i34:                                    ; preds = %xenon_enable_sdhc_parallel_tran.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i32 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %58 = ptrtoint ptr %ioaddr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i.i32, align 16
  %add.ptr.i.i33 = getelementptr i8, ptr %59, i32 264
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #8, !srcloc !67
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i41

sdhci_readl.exit.i41:                             ; preds = %if.else.i.i34, %if.then.i.i31
  %retval.0.i.i35 = phi i32 [ %call.i.i30, %if.then.i.i31 ], [ %61, %if.else.i.i34 ]
  %shl.i37 = shl i32 256, %conv.i
  %neg.i = xor i32 %shl.i37, -1
  %and.i39 = and i32 %retval.0.i.i35, %neg.i
  %62 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i40 = getelementptr inbounds %struct.sdhci_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write_l.i.i40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_l.i.i40, align 4
  %tobool.not.i6.i = icmp eq ptr %65, null
  br i1 %tobool.not.i6.i, label %do.body.i.i42, label %if.then.i7.i, !prof !66

if.then.i7.i:                                     ; preds = %sdhci_readl.exit.i41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %65(ptr noundef %host, i32 noundef %and.i39, i32 noundef 264) #8
  br label %xenon_set_sdclk_off_idle.exit

do.body.i.i42:                                    ; preds = %sdhci_readl.exit.i41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i39) #8
  %ioaddr.i8.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %67 = ptrtoint ptr %ioaddr.i8.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr.i8.i, align 16
  %add.ptr.i9.i = getelementptr i8, ptr %68, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %66) #8, !srcloc !70
  br label %xenon_set_sdclk_off_idle.exit

xenon_set_sdclk_off_idle.exit:                    ; preds = %do.body.i.i42, %if.then.i7.i
  %69 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool.not.i.i44 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i44, label %if.else.i.i49, label %if.then.i.i46, !prof !66

if.then.i.i46:                                    ; preds = %xenon_set_sdclk_off_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i45 = tail call i32 %72(ptr noundef %host, i32 noundef 268) #8
  br label %sdhci_readl.exit.i54

if.else.i.i49:                                    ; preds = %xenon_set_sdclk_off_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i47 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %73 = ptrtoint ptr %ioaddr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr.i.i47, align 16
  %add.ptr.i.i48 = getelementptr i8, ptr %74, i32 268
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #8, !srcloc !67
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i54

sdhci_readl.exit.i54:                             ; preds = %if.else.i.i49, %if.then.i.i46
  %retval.0.i.i50 = phi i32 [ %call.i.i45, %if.then.i.i46 ], [ %76, %if.else.i.i49 ]
  %or.i51 = or i32 %retval.0.i.i50, 256
  %77 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i52 = getelementptr inbounds %struct.sdhci_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %write_l.i.i52 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_l.i.i52, align 4
  %tobool.not.i4.i53 = icmp eq ptr %80, null
  br i1 %tobool.not.i4.i53, label %do.body.i.i58, label %if.then.i5.i55, !prof !66

if.then.i5.i55:                                   ; preds = %sdhci_readl.exit.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %80(ptr noundef %host, i32 noundef %or.i51, i32 noundef 268) #8
  br label %xenon_mask_cmd_conflict_err.exit

do.body.i.i58:                                    ; preds = %sdhci_readl.exit.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i51) #8
  %ioaddr.i6.i56 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %82 = ptrtoint ptr %ioaddr.i6.i56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr.i6.i56, align 16
  %add.ptr.i7.i57 = getelementptr i8, ptr %83, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i57, i32 %81) #8, !srcloc !70
  br label %xenon_mask_cmd_conflict_err.exit

xenon_mask_cmd_conflict_err.exit:                 ; preds = %do.body.i.i58, %if.then.i5.i55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_set_power(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %pwr2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 23
  %2 = ptrtoint ptr %pwr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr2, align 16
  tail call void @sdhci_set_power_noreg(ptr noundef %host, i8 noundef zeroext %mode, i16 noundef zeroext %vdd) #8
  %4 = ptrtoint ptr %pwr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwr2, align 16
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp = icmp eq i8 %5, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp8 = icmp eq i8 %5, 0
  %spec.select = select i1 %cmp8, i16 0, i16 %vdd
  %call15 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %7, i16 noundef zeroext %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_get_max_clock(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef %host) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i5 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #8
  %sdhc_id = getelementptr inbounds %struct.xenon_priv, ptr %private.i5, i32 0, i32 1
  %0 = ptrtoint ptr %sdhc_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sdhc_id, align 1
  %2 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.xenon_reset_exit.exit_crit_edge, label %if.end.i

entry.xenon_reset_exit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xenon_reset_exit.exit

if.end.i:                                         ; preds = %entry
  tail call fastcc void @xenon_retune_setup(ptr noundef %host) #8
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !66

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 %6(ptr noundef %host, i32 noundef 264) #8
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 264
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !67
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %10, %if.else.i.i.i ]
  %reg.0.i.i = or i32 %retval.0.i.i.i, 1048576
  %11 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i5.i.i, label %do.body.i.i.i, label %if.then.i6.i.i, !prof !66

if.then.i6.i.i:                                   ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef %host, i32 noundef %reg.0.i.i, i32 noundef 264) #8
  br label %xenon_set_acg.exit.i

do.body.i.i.i:                                    ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #8
  %ioaddr.i7.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i7.i.i, align 16
  %add.ptr.i8.i.i = getelementptr i8, ptr %17, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %15) #8, !srcloc !70
  br label %xenon_set_acg.exit.i

xenon_set_acg.exit.i:                             ; preds = %do.body.i.i.i, %if.then.i6.i.i
  %18 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i.i5.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i5.i, label %if.else.i.i10.i, label %if.then.i.i7.i, !prof !66

if.then.i.i7.i:                                   ; preds = %xenon_set_acg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i6.i = tail call i32 %21(ptr noundef %host, i32 noundef 264) #8
  br label %sdhci_readl.exit.i14.i

if.else.i.i10.i:                                  ; preds = %xenon_set_acg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i8.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i.i8.i, align 16
  %add.ptr.i.i9.i = getelementptr i8, ptr %23, i32 264
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #8, !srcloc !67
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i14.i

sdhci_readl.exit.i14.i:                           ; preds = %if.else.i.i10.i, %if.then.i.i7.i
  %retval.0.i.i11.i = phi i32 [ %call.i.i6.i, %if.then.i.i7.i ], [ %25, %if.else.i.i10.i ]
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl i32 256, %conv.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i12.i = and i32 %retval.0.i.i11.i, %neg.i.i
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i13.i = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_l.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_l.i.i13.i, align 4
  %tobool.not.i6.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i6.i.i, label %do.body.i.i15.i, label %if.then.i7.i.i, !prof !66

if.then.i7.i.i:                                   ; preds = %sdhci_readl.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %host, i32 noundef %and.i12.i, i32 noundef 264) #8
  br label %xenon_set_sdclk_off_idle.exit.i

do.body.i.i15.i:                                  ; preds = %sdhci_readl.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i12.i) #8
  %ioaddr.i8.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %31 = ptrtoint ptr %ioaddr.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i8.i.i, align 16
  %add.ptr.i9.i.i = getelementptr i8, ptr %32, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %30) #8, !srcloc !70
  br label %xenon_set_sdclk_off_idle.exit.i

xenon_set_sdclk_off_idle.exit.i:                  ; preds = %do.body.i.i15.i, %if.then.i7.i.i
  %33 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i.i17.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i17.i, label %if.else.i.i22.i, label %if.then.i.i19.i, !prof !66

if.then.i.i19.i:                                  ; preds = %xenon_set_sdclk_off_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i18.i = tail call i32 %36(ptr noundef %host, i32 noundef 268) #8
  br label %sdhci_readl.exit.i26.i

if.else.i.i22.i:                                  ; preds = %xenon_set_sdclk_off_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i20.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i.i20.i, align 16
  %add.ptr.i.i21.i = getelementptr i8, ptr %38, i32 268
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i) #8, !srcloc !67
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i26.i

sdhci_readl.exit.i26.i:                           ; preds = %if.else.i.i22.i, %if.then.i.i19.i
  %retval.0.i.i23.i = phi i32 [ %call.i.i18.i, %if.then.i.i19.i ], [ %40, %if.else.i.i22.i ]
  %or.i24.i = or i32 %retval.0.i.i23.i, 256
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i25.i = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %write_l.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_l.i.i25.i, align 4
  %tobool.not.i4.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i4.i.i, label %do.body.i.i27.i, label %if.then.i5.i.i, !prof !66

if.then.i5.i.i:                                   ; preds = %sdhci_readl.exit.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %44(ptr noundef %host, i32 noundef %or.i24.i, i32 noundef 268) #8
  br label %xenon_reset_exit.exit

do.body.i.i27.i:                                  ; preds = %sdhci_readl.exit.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i24.i) #8
  %ioaddr.i6.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %46 = ptrtoint ptr %ioaddr.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i6.i.i, align 16
  %add.ptr.i7.i.i = getelementptr i8, ptr %47, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %45) #8, !srcloc !70
  br label %xenon_reset_exit.exit

xenon_reset_exit.exit:                            ; preds = %do.body.i.i27.i, %if.then.i5.i.i, %entry.xenon_reset_exit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !76
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, -8
  %9 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timing, label %sdhci_readw.exit.if.end53_crit_edge [
    i32 9, label %if.then
    i32 6, label %if.then7
    i32 10, label %if.then44
    i32 4, label %if.then21
    i32 5, label %if.then28
    i32 7, label %sdhci_readw.exit.if.then37_crit_edge
    i32 8, label %sdhci_readw.exit.if.then37_crit_edge75
  ]

sdhci_readw.exit.if.then37_crit_edge75:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

sdhci_readw.exit.if.then37_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

sdhci_readw.exit.if.end53_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = or i16 %8, 5
  br label %if.end53

if.then7:                                         ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i16 %8, 3
  br label %if.end53

if.then21:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = or i16 %8, 1
  br label %if.end53

if.then28:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = or i16 %8, 2
  br label %if.end53

if.then37:                                        ; preds = %sdhci_readw.exit.if.then37_crit_edge, %sdhci_readw.exit.if.then37_crit_edge75
  %14 = or i16 %8, 4
  br label %if.end53

if.then44:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = or i16 %8, 6
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.then37, %if.then28, %if.then21, %if.then7, %if.then, %sdhci_readw.exit.if.end53_crit_edge
  %ctrl_2.0 = phi i16 [ %10, %if.then ], [ %11, %if.then7 ], [ %12, %if.then21 ], [ %13, %if.then28 ], [ %14, %if.then37 ], [ %15, %if.then44 ], [ %8, %sdhci_readw.exit.if.end53_crit_edge ]
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i71 = icmp eq ptr %19, null
  br i1 %tobool.not.i71, label %do.body.i, label %if.then.i72, !prof !66

if.then.i72:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %19(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #8
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %20 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #8
  %ioaddr.i73 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i73, align 16
  %add.ptr.i74 = getelementptr i8, ptr %22, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i74, i16 %20) #8, !srcloc !79
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_voltage_switch(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_noreg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xenon_retune_setup(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 324) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !67
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and = and i32 %retval.0.i, -2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i23 = icmp eq ptr %11, null
  br i1 %tobool.not.i23, label %do.body.i, label %if.then.i24, !prof !66

if.then.i24:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %host, i32 noundef %and, i32 noundef 324) #8
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %ioaddr.i25 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i25, align 16
  %add.ptr.i26 = getelementptr i8, ptr %14, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %12) #8, !srcloc !70
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i24
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i28 = icmp eq ptr %18, null
  br i1 %tobool.not.i28, label %if.else.i33, label %if.then.i30, !prof !66

if.then.i30:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i29 = tail call i32 %18(ptr noundef %host, i32 noundef 56) #8
  br label %sdhci_readl.exit35

if.else.i33:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i31 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i31, align 16
  %add.ptr.i32 = getelementptr i8, ptr %20, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !67
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit35

sdhci_readl.exit35:                               ; preds = %if.else.i33, %if.then.i30
  %retval.0.i34 = phi i32 [ %call.i29, %if.then.i30 ], [ %22, %if.else.i33 ]
  %and4 = and i32 %retval.0.i34, -4097
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %write_l.i37 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i37, align 4
  %tobool.not.i38 = icmp eq ptr %26, null
  br i1 %tobool.not.i38, label %do.body.i42, label %if.then.i39, !prof !66

if.then.i39:                                      ; preds = %sdhci_readl.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %host, i32 noundef %and4, i32 noundef 56) #8
  br label %sdhci_writel.exit43

do.body.i42:                                      ; preds = %sdhci_readl.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %and4) #8
  %ioaddr.i40 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i40, align 16
  %add.ptr.i41 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %27) #8, !srcloc !70
  br label %sdhci_writel.exit43

sdhci_writel.exit43:                              ; preds = %do.body.i42, %if.then.i39
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i45 = icmp eq ptr %33, null
  br i1 %tobool.not.i45, label %if.else.i50, label %if.then.i47, !prof !66

if.then.i47:                                      ; preds = %sdhci_writel.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i46 = tail call i32 %33(ptr noundef %host, i32 noundef 52) #8
  br label %sdhci_readl.exit52

if.else.i50:                                      ; preds = %sdhci_writel.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i48 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %34 = ptrtoint ptr %ioaddr.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i48, align 16
  %add.ptr.i49 = getelementptr i8, ptr %35, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !67
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit52

sdhci_readl.exit52:                               ; preds = %if.else.i50, %if.then.i47
  %retval.0.i51 = phi i32 [ %call.i46, %if.then.i47 ], [ %37, %if.else.i50 ]
  %and6 = and i32 %retval.0.i51, -4097
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %write_l.i54 = getelementptr inbounds %struct.sdhci_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_l.i54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_l.i54, align 4
  %tobool.not.i55 = icmp eq ptr %41, null
  br i1 %tobool.not.i55, label %do.body.i59, label %if.then.i56, !prof !66

if.then.i56:                                      ; preds = %sdhci_readl.exit52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %41(ptr noundef %host, i32 noundef %and6, i32 noundef 52) #8
  br label %sdhci_writel.exit60

do.body.i59:                                      ; preds = %sdhci_readl.exit52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %and6) #8
  %ioaddr.i57 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i57, align 16
  %add.ptr.i58 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %42) #8, !srcloc !70
  br label %sdhci_writel.exit60

sdhci_writel.exit60:                              ; preds = %do.body.i59, %if.then.i56
  %private.i21 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 73
  %45 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tuning_mode, align 8
  %46 = ptrtoint ptr %private.i21 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %private.i21, align 4
  %conv = zext i8 %47 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %tuning_count7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 72
  %48 = ptrtoint ptr %tuning_count7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl, ptr %tuning_count7, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_set_ios(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i40 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timing, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %1, label %if.else [
    i8 10, label %entry.if.then_crit_edge
    i8 9, label %entry.if.then_crit_edge46
    i8 1, label %entry.if.then_crit_edge47
  ]

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge46, %entry.if.then_crit_edge47
  %preset_enabled = getelementptr inbounds %struct.sdhci_host, ptr %private.i, i32 0, i32 26
  %3 = ptrtoint ptr %preset_enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %preset_enabled, align 1
  %quirks2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %4 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks2, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %quirks2, align 8
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -257
  store i32 %and, ptr %flags, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %11(ptr noundef %private.i, i32 noundef 62) #8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !76
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %15, %if.else.i ]
  %16 = and i16 %retval.0.i, 32767
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i42 = icmp eq ptr %20, null
  br i1 %tobool.not.i42, label %do.body.i, label %if.then.i43, !prof !66

if.then.i43:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %private.i, i16 noundef zeroext %16, i32 noundef 62) #8
  br label %if.end

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %21 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  %ioaddr.i44 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45, i16 %21) #8, !srcloc !79
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %quirks217 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %24 = ptrtoint ptr %quirks217 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks217, align 8
  %and18 = and i32 %25, -9
  store i32 %and18, ptr %quirks217, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i, %if.then.i43
  tail call void @sdhci_set_ios(ptr noundef %mmc, ptr noundef %ios) #8
  %call19 = tail call i32 @xenon_phy_adj(ptr noundef %private.i, ptr noundef %ios) #8
  %clock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %27)
  %cmp20 = icmp ugt i32 %27, 400000
  br i1 %cmp20, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end
  %sdhc_id = getelementptr inbounds %struct.xenon_priv, ptr %private.i40, i32 0, i32 1
  %28 = ptrtoint ptr %sdhc_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sdhc_id, align 1
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %33(ptr noundef %private.i, i32 noundef 264) #8
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 264
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !67
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %37, %if.else.i.i ]
  %conv.i = zext i8 %29 to i32
  %shl.i = shl i32 256, %conv.i
  %or.i = or i32 %retval.0.i.i, %shl.i
  %38 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %41, null
  br i1 %tobool.not.i6.i, label %do.body.i.i, label %if.then.i7.i, !prof !66

if.then.i7.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %41(ptr noundef %private.i, i32 noundef %or.i, i32 noundef 264) #8
  br label %if.end23

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %ioaddr.i8.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %ioaddr.i8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i8.i, align 16
  %add.ptr.i9.i = getelementptr i8, ptr %44, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %42) #8, !srcloc !70
  br label %if.end23

if.end23:                                         ; preds = %do.body.i.i, %if.then.i7.i, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 44) #8
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !67
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %7, %if.else.i.i ]
  %or.i = or i32 %retval.0.i.i, 1
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %11, null
  br i1 %tobool.not.i2.i, label %do.body.i.i, label %if.then.i3.i, !prof !66

if.then.i3.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %private.i, i32 noundef %or.i, i32 noundef 44) #8
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %ioaddr.i4.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %ioaddr.i4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i4.i, align 16
  %add.ptr.i5.i = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %12) #8, !srcloc !70
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i3.i
  %call1.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call1.i, 20000000
  %ioaddr.i10.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %sdhci_writel.exit.i
  %call3.i = tail call i64 @ktime_get() #8
  %cmp3.i.i.i = icmp sgt i64 %call3.i, %add.i.i
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %18, null
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.then.i9.i, !prof !66

if.then.i9.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i8.i = tail call zeroext i16 %18(ptr noundef %private.i, i32 noundef 44) #8
  br label %sdhci_readw.exit.i

if.else.i12.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ioaddr.i10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i10.i, align 16
  %add.ptr.i11.i = getelementptr i8, ptr %20, i32 44
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11.i) #8, !srcloc !76
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i12.i, %if.then.i9.i
  %retval.0.i13.i = phi i16 [ %call.i8.i, %if.then.i9.i ], [ %22, %if.else.i12.i ]
  %23 = and i16 %retval.0.i13.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %sdhci_readw.exit.i.xenon_enable_internal_clk.exit_crit_edge

sdhci_readw.exit.i.xenon_enable_internal_clk.exit_crit_edge: ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xenon_enable_internal_clk.exit

if.end.i:                                         ; preds = %sdhci_readw.exit.i
  br i1 %cmp3.i.i.i, label %do.end.i, label %cleanup.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %24 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8) #11
  br label %xenon_enable_internal_clk.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 900, i32 noundef 1100, i32 noundef 2) #8
  br label %while.cond.i

xenon_enable_internal_clk.exit:                   ; preds = %do.end.i, %sdhci_readw.exit.i.xenon_enable_internal_clk.exit_crit_edge
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %28 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %signal_voltage, align 1
  tail call void @xenon_soc_pad_ctrl(ptr noundef %private.i, i8 noundef zeroext %29) #8
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %30 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vqmmc, align 4
  %cmp = icmp eq ptr %31, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %xenon_enable_internal_clk.exit.cleanup_crit_edge, label %if.end

xenon_enable_internal_clk.exit.cleanup_crit_edge: ; preds = %xenon_enable_internal_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %xenon_enable_internal_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @sdhci_start_signal_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xenon_enable_internal_clk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %xenon_enable_internal_clk.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xenon_init_card(ptr nocapture noundef writeonly %mmc, ptr nocapture noundef readonly %card) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %init_card_type = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %2 = ptrtoint ptr %init_card_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %init_card_type, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 9
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  %.off = add i32 %1, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuning_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 27, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not = icmp eq i32 %3, 0
  br i1 %cmp3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xenon_retune_setup(ptr noundef %private.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xenon_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i20 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %sdhc_id3 = getelementptr inbounds %struct.xenon_priv, ptr %private.i20, i32 0, i32 1
  %0 = ptrtoint ptr %sdhc_id3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sdhc_id3, align 1
  tail call void @sdhci_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %ops.i26 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i26, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i27 = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i27, label %if.else.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %private.i, i32 noundef 260) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !67
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %conv = zext i8 %1 to i32
  %shl = shl i32 16777216, %conv
  %or = or i32 %retval.0.i, %shl
  %10 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i26, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i22 = icmp eq ptr %13, null
  br i1 %tobool.not.i22, label %do.body.i, label %if.then.i23, !prof !66

if.then.i23:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %private.i, i32 noundef %or, i32 noundef 260) #8
  br label %if.end

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %ioaddr.i24 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ioaddr.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i24, align 16
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %14) #8, !srcloc !70
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i27, label %if.else.i32, label %if.then.i29, !prof !66

if.then.i29:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i28 = tail call i32 %5(ptr noundef %private.i, i32 noundef 260) #8
  br label %sdhci_readl.exit34

if.else.i32:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i30 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %ioaddr.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i30, align 16
  %add.ptr.i31 = getelementptr i8, ptr %18, i32 260
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #8, !srcloc !67
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  br label %sdhci_readl.exit34

sdhci_readl.exit34:                               ; preds = %if.else.i32, %if.then.i29
  %retval.0.i33 = phi i32 [ %call.i28, %if.then.i29 ], [ %20, %if.else.i32 ]
  %conv6 = zext i8 %1 to i32
  %shl8 = shl i32 16777216, %conv6
  %neg = xor i32 %shl8, -1
  %and = and i32 %retval.0.i33, %neg
  %21 = ptrtoint ptr %ops.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i26, align 4
  %write_l.i36 = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %write_l.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_l.i36, align 4
  %tobool.not.i37 = icmp eq ptr %24, null
  br i1 %tobool.not.i37, label %do.body.i41, label %if.then.i38, !prof !66

if.then.i38:                                      ; preds = %sdhci_readl.exit34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %private.i, i32 noundef %and, i32 noundef 260) #8
  br label %if.end

do.body.i41:                                      ; preds = %sdhci_readl.exit34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %ioaddr.i39 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %ioaddr.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i39, align 16
  %add.ptr.i40 = getelementptr i8, ptr %27, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %25) #8, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %do.body.i41, %if.then.i38, %do.body.i, %if.then.i23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_ios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xenon_phy_adj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xenon_soc_pad_ctrl(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_start_signal_voltage_switch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_sdio_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xenon_phy_parse_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

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
define internal i32 @xenon_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  %restore_needed = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 2
  %2 = ptrtoint ptr %restore_needed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %restore_needed, align 4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i14 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %call3 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  %clock = getelementptr inbounds %struct.xenon_priv, ptr %private.i14, i32 0, i32 5
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xenon_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %restore_needed = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 2
  %4 = ptrtoint ptr %restore_needed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %restore_needed, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @xenon_sdhc_prepare(ptr noundef %1)
  %6 = ptrtoint ptr %restore_needed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %restore_needed, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %out

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out:                                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call12, %out ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_sdhci_xenon_driver__272_721_sdhci_xenon_driver_init6, !1, !"__initcall__kmod_sdhci_xenon_driver__272_721_sdhci_xenon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 721, i32 1}
!2 = !{ptr @__exitcall_sdhci_xenon_driver_exit, !1, !"__exitcall_sdhci_xenon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description273, !4, !"__UNIQUE_ID_description273", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 723, i32 1}
!5 = !{ptr @__UNIQUE_ID_author274, !6, !"__UNIQUE_ID_author274", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 724, i32 1}
!7 = !{ptr @__UNIQUE_ID_file275, !8, !"__UNIQUE_ID_file275", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 725, i32 1}
!9 = !{ptr @__UNIQUE_ID_license276, !8, !"__UNIQUE_ID_license276", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 711, i32 11}
!12 = !{ptr @sdhci_xenon_driver, !13, !"sdhci_xenon_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 709, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 524, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 527, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xenon_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xenon_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 534, i32 44}
!26 = !{ptr @sdhci_xenon_pdata, !27, !"sdhci_xenon_pdata", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 276, i32 38}
!28 = !{ptr @sdhci_xenon_ops, !29, !"sdhci_xenon_ops", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 266, i32 31}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 42, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xenon_enable_internal_clk._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @xenon_enable_internal_clk._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 441, i32 37}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 445, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xenon_probe_params._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @xenon_probe_params._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 453, i32 37}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 456, i32 4}
!46 = !{ptr @xenon_probe_params._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xenon_probe_params._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sdhci_xenon_dt_ids, !49, !"sdhci_xenon_dt_ids", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 690, i32 34}
!50 = !{ptr @sdhci_xenon_dev_pm_ops, !51, !"sdhci_xenon_dev_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 682, i32 32}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-xenon.c", i32 661, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @xenon_runtime_resume._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @xenon_runtime_resume._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 6981099}
!68 = !{i64 2155251987}
!69 = !{i64 2155250017}
!70 = !{i64 6980681}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2148320981, i64 2148321007, i64 2148321036, i64 2148321070, i64 2148321101, i64 2148321124}
!73 = !{i64 2148320400}
!74 = !{i64 805223, i64 805248, i64 805270, i64 805286, i64 805298, i64 805318, i64 805342, i64 805358, i64 805370}
!75 = !{i64 2148320588}
!76 = !{i64 6980261}
!77 = !{i64 2155252691}
!78 = !{i64 2155250623}
!79 = !{i64 6980061}
!80 = !{i8 0, i8 2}
