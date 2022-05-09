; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-sprd.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-sprd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_sprd_phy_cfg = type { ptr, i8 }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.sdhci_sprd_host = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [12 x i32] }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_sdhci_sprd__304_809_sdhci_sprd_driver_init6 = internal global ptr @sdhci_sprd_driver_init, section ".initcall6.init", align 4
@sdhci_sprd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_sprd_probe, ptr @sdhci_sprd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_sprd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_sprd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_sprd_driver_exit = internal global ptr @sdhci_sprd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description305 = internal constant [66 x i8] c"sdhci_sprd.description=Spreadtrum sdio host controller r11 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [44 x i8] c"sdhci_sprd.file=drivers/mmc/host/sdhci-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [26 x i8] c"sdhci_sprd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [41 x i8] c"sdhci_sprd.alias=platform:sdhci-sprd-r11\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhci_sprd_r11\00", [17 x i8] zeroinitializer }, align 32
@sdhci_sprd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sdhci-r11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sdhci_sprd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_sprd_runtime_suspend, ptr @sdhci_sprd_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_sprd_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_sprd_ops, i32 151027712, i32 262216 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_uhs\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2x_enable\00", [22 x i8] zeroinitializer }, align 32
@sdhci_sprd_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @sdhci_sprd_readl, ptr null, ptr null, ptr @sdhci_sprd_writel, ptr @sdhci_sprd_writew, ptr @sdhci_sprd_writeb, ptr @sdhci_sprd_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_sprd_get_max_clock, ptr @sdhci_sprd_get_min_clock, ptr null, ptr @sdhci_sprd_get_max_timeout_count, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr @sdhci_sprd_get_ro, ptr @sdhci_reset, ptr null, ptr @sdhci_sprd_set_uhs_signaling, ptr @sdhci_sprd_hw_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_sprd_request_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/sdhci-sprd.c\00", [34 x i8] zeroinitializer }, align 32
@sdhci_sprd_enable_phy_dll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: DLL locked fail!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_sprd_enable_phy_dll\00", [38 x i8] zeroinitializer }, align 32
@sdhci_sprd_enable_phy_dll._entry_ptr = internal global ptr @sdhci_sprd_enable_phy_dll._entry, section ".printk_index", align 4
@sdhci_sprd_enable_phy_dll._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: DLL_STS0 : 0x%x, DLL_CFG : 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@sdhci_sprd_enable_phy_dll._entry_ptr.11 = internal global ptr @sdhci_sprd_enable_phy_dll._entry.9, section ".printk_index", align 4
@sdhci_sprd_voltage_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Switching signalling voltage failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_sprd_voltage_switch\00", [38 x i8] zeroinitializer }, align 32
@sdhci_sprd_voltage_switch._entry_ptr = internal global ptr @sdhci_sprd_voltage_switch._entry, section ".printk_index", align 4
@sdhci_sprd_voltage_switch._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.6, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to select uhs pin state\0A\00", [58 x i8] zeroinitializer }, align 32
@sdhci_sprd_voltage_switch._entry_ptr.16 = internal global ptr @sdhci_sprd_voltage_switch._entry.14, section ".printk_index", align 4
@sdhci_sprd_voltage_switch._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.6, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to select default pin state\0A\00", [54 x i8] zeroinitializer }, align 32
@sdhci_sprd_voltage_switch._entry_ptr.19 = internal global ptr @sdhci_sprd_voltage_switch._entry.17, section ".printk_index", align 4
@sdhci_sprd_phy_cfgs = internal constant { [9 x %struct.sdhci_sprd_phy_cfg], [56 x i8] } { [9 x %struct.sdhci_sprd_phy_cfg] [%struct.sdhci_sprd_phy_cfg { ptr @.str.20, i8 0 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.21, i8 2 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.22, i8 5 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.23, i8 6 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.24, i8 1 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.25, i8 8 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.26, i8 9 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.27, i8 10 }, %struct.sdhci_sprd_phy_cfg { ptr @.str.28, i8 11 }], [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd,phy-delay-legacy\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sprd,phy-delay-sd-highspeed\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sprd,phy-delay-sd-uhs-sdr50\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sprd,phy-delay-sd-uhs-sdr104\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sprd,phy-delay-mmc-highspeed\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd,phy-delay-mmc-ddr52\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd,phy-delay-mmc-hs200\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd,phy-delay-mmc-hs400\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sprd,phy-delay-mmc-hs400es\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 52, i64 56, i64 72]
@__sancov_gen_cov_switch_values.29 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"sdhci_sprd_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 799, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 803, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"sdhci_sprd_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 737, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"sdhci_sprd_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 792, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"sdhci_sprd_pdata\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 550, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 604, i32 45 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 611, i32 45 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 618, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 628, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 635, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"sdhci_sprd_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 406, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 264, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 266, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 267, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 466, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 480, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 492, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"sdhci_sprd_phy_cfgs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 94, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 95, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 96, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 97, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 98, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 100, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 101, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 102, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [33 x i8] c"../drivers/mmc/host/sdhci-sprd.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 103, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_sdhci_sprd_driver_exit, ptr @__initcall__kmod_sdhci_sprd__304_809_sdhci_sprd_driver_init6, ptr @sdhci_sprd_driver_exit, ptr @sdhci_sprd_enable_phy_dll._entry, ptr @sdhci_sprd_enable_phy_dll._entry.9, ptr @sdhci_sprd_enable_phy_dll._entry_ptr, ptr @sdhci_sprd_enable_phy_dll._entry_ptr.11, ptr @sdhci_sprd_voltage_switch._entry, ptr @sdhci_sprd_voltage_switch._entry.14, ptr @sdhci_sprd_voltage_switch._entry.17, ptr @sdhci_sprd_voltage_switch._entry_ptr, ptr @sdhci_sprd_voltage_switch._entry_ptr.16, ptr @sdhci_sprd_voltage_switch._entry_ptr.19, ptr @sdhci_sprd_driver, ptr @.str, ptr @sdhci_sprd_of_match, ptr @sdhci_sprd_pm_ops, ptr @sdhci_sprd_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sdhci_sprd_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @sdhci_sprd_phy_cfgs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_enable_phy_dll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_enable_phy_dll._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_voltage_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_voltage_switch._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_voltage_switch._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sprd_phy_cfgs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_sprd_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_sprd_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_sprd_pdata, i32 noundef 84) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %dma_mask, align 16
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dma_mask4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %dma_mask4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dma_mask, ptr %dma_mask4, align 8
  %request = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sdhci_sprd_request, ptr %request, align 4
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 18
  %4 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sdhci_sprd_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 10
  %5 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sdhci_sprd_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 518, ptr %caps, align 32
  %9 = load ptr, ptr %mmc, align 8
  %call8 = tail call i32 @mmc_of_parse(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.pltfm_free_crit_edge

if.end.pltfm_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps.i, align 32
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not.not = icmp eq i32 %14, 0
  br i1 %tobool13.not.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %request_atomic = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 3
  %15 = ptrtoint ptr %request_atomic to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sdhci_sprd_request_atomic, ptr %request_atomic, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %always_defer_done = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 31
  %16 = ptrtoint ptr %always_defer_done to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %always_defer_done, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %phy_delay.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val.i) #9
  %19 = getelementptr inbounds [4 x i32], ptr %val.i, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], ptr %val.i, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i32], ptr %val.i, i32 0, i32 3
  %22 = call ptr @memset(ptr %val.i, i32 255, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.015.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.sdhci_sprd_phy_cfg], ptr @sdhci_sprd_phy_cfgs, i32 0, i32 %i.015.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef %24, ptr noundef nonnull %val.i, i32 noundef 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %timing.i = getelementptr [9 x %struct.sdhci_sprd_phy_cfg], ptr @sdhci_sprd_phy_cfgs, i32 0, i32 %i.015.i, i32 1
  %25 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %timing.i, align 4
  %conv.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %19, align 4
  %shl.i = shl i32 %30, 8
  %or.i = or i32 %shl.i, %28
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %20, align 4
  %shl6.i = shl i32 %32, 16
  %or7.i = or i32 %or.i, %shl6.i
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %21, align 4
  %shl9.i = shl i32 %34, 24
  %or10.i = or i32 %or7.i, %shl9.i
  %arrayidx11.i = getelementptr i32, ptr %phy_delay.i, i32 %conv.i
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or10.i, ptr %arrayidx11.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %sdhci_sprd_phy_param_parse.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sdhci_sprd_phy_param_parse.exit:                  ; preds = %for.inc.i
  %private.i215 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val.i) #9
  %call21 = call ptr @devm_pinctrl_get(ptr noundef %dev) #9
  %pinctrl = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 12
  %36 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call21, ptr %pinctrl, align 4
  %cmp.i216 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %sdhci_sprd_phy_param_parse.exit.if.end41_crit_edge, label %if.then24

sdhci_sprd_phy_param_parse.exit.if.end41_crit_edge: ; preds = %sdhci_sprd_phy_param_parse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then24:                                        ; preds = %sdhci_sprd_phy_param_parse.exit
  %call26 = call ptr @pinctrl_lookup_state(ptr noundef %call21, ptr noundef nonnull @.str.1) #9
  %pins_uhs = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i215, i32 0, i32 5
  %37 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call26, ptr %pins_uhs, align 4
  %cmp.i217 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call26 to i32
  br label %pltfm_free

if.end32:                                         ; preds = %if.then24
  %39 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pinctrl, align 4
  %call34 = call ptr @pinctrl_lookup_state(ptr noundef %40, ptr noundef nonnull @.str.2) #9
  %pins_default = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13
  %41 = ptrtoint ptr %pins_default to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call34, ptr %pins_default, align 4
  %cmp.i218 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then37, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call34 to i32
  br label %pltfm_free

if.end41:                                         ; preds = %if.end32.if.end41_crit_edge, %sdhci_sprd_phy_param_parse.exit.if.end41_crit_edge
  %call43 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %cmp.i219 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call43 to i32
  br label %pltfm_free

if.end47:                                         ; preds = %if.end41
  %clk_sdio = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 22
  %44 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call43, ptr %clk_sdio, align 4
  %call49 = call i32 @clk_get_rate(ptr noundef %call43) #9
  %base_rate = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool51.not = icmp eq i32 %call49, 0
  %spec.select = select i1 %tobool51.not, i32 26000000, i32 %call49
  %45 = ptrtoint ptr %base_rate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select, ptr %base_rate, align 4
  %call56 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %cmp.i220 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call56 to i32
  br label %pltfm_free

if.end60:                                         ; preds = %if.end47
  %clk_enable = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 23
  %47 = ptrtoint ptr %clk_enable to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call56, ptr %clk_enable, align 4
  %call62 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %cmp.i221 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.end60.if.end65_crit_edge, label %if.then64

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %clk_2x_enable = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i215, i32 0, i32 3
  %48 = ptrtoint ptr %clk_2x_enable to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call62, ptr %clk_2x_enable, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60.if.end65_crit_edge
  %49 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_sdio, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i222 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i222, label %if.end.i223, label %if.end65.pltfm_free_crit_edge

if.end65.pltfm_free_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.end.i223:                                      ; preds = %if.end65
  %call1.i = call i32 @clk_enable(ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end70, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %50) #9
  br label %pltfm_free

if.end70:                                         ; preds = %if.end.i223
  %51 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_enable, align 4
  %call72 = call fastcc i32 @clk_prepare_enable(ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.clk_disable_crit_edge

if.end70.clk_disable_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable

if.end75:                                         ; preds = %if.end70
  %clk_2x_enable76 = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i215, i32 0, i32 3
  %53 = ptrtoint ptr %clk_2x_enable76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_2x_enable76, align 4
  %call77 = call fastcc i32 @clk_prepare_enable(ptr noundef %54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.clk_disable2_crit_edge

if.end75.clk_disable2_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable2

if.end80:                                         ; preds = %if.end75
  call fastcc void @sdhci_sprd_init_config(ptr noundef %call)
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i224 = icmp eq ptr %58, null
  br i1 %tobool.not.i224, label %if.else.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call.i225 = call zeroext i16 %58(ptr noundef %call, i32 noundef 254) #9
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %60, i32 254
  %61 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i226 = phi i16 [ %call.i225, %if.then.i ], [ %62, %if.else.i ]
  %conv = zext i16 %retval.0.i226 to i32
  %version = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 17
  %63 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv, ptr %version, align 8
  %shr = lshr i32 %conv, 8
  %64 = ptrtoint ptr %private.i215 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr, ptr %private.i215, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %65 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !88
  %call.i227 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %66 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  call void @sdhci_enable_v4_mode(ptr noundef %call) #9
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool.not.i229 = icmp eq ptr %70, null
  br i1 %tobool.not.i229, label %if.else.i234, label %if.then.i231, !prof !85

if.then.i231:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i230 = call i32 %70(ptr noundef %call, i32 noundef 64) #9
  br label %sdhci_readl.exit

if.else.i234:                                     ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i232 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %71 = ptrtoint ptr %ioaddr.i232 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr.i232, align 16
  %add.ptr.i233 = getelementptr i8, ptr %72, i32 64
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #9, !srcloc !89
  %74 = call i32 @llvm.bswap.i32(i32 %73) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i234, %if.then.i231
  %retval.0.i235 = phi i32 [ %call.i230, %if.then.i231 ], [ %74, %if.else.i234 ]
  %caps92 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 56
  %75 = ptrtoint ptr %caps92 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i235, ptr %caps92, align 8
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %tobool.not.i237 = icmp eq ptr %79, null
  br i1 %tobool.not.i237, label %if.else.i242, label %if.then.i239, !prof !85

if.then.i239:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i238 = call i32 %79(ptr noundef %call, i32 noundef 68) #9
  br label %sdhci_readl.exit244

if.else.i242:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i240 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %80 = ptrtoint ptr %ioaddr.i240 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr.i240, align 16
  %add.ptr.i241 = getelementptr i8, ptr %81, i32 68
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #9, !srcloc !89
  %83 = call i32 @llvm.bswap.i32(i32 %82) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit244

sdhci_readl.exit244:                              ; preds = %if.else.i242, %if.then.i239
  %retval.0.i243 = phi i32 [ %call.i238, %if.then.i239 ], [ %83, %if.else.i242 ]
  %caps1 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 57
  %and95 = and i32 %retval.0.i243, -8
  %84 = ptrtoint ptr %caps1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and95, ptr %caps1, align 4
  %call96 = call i32 @sdhci_setup_host(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %sdhci_readl.exit244.pm_runtime_disable_crit_edge

sdhci_readl.exit244.pm_runtime_disable_crit_edge: ; preds = %sdhci_readl.exit244
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_disable

if.end99:                                         ; preds = %sdhci_readl.exit244
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 16
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %flags100 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 2
  %87 = ptrtoint ptr %flags100 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %flags100, align 4
  %call.i245 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #9
  %tobool103.not = icmp eq ptr %call.i245, null
  br i1 %tobool103.not, label %if.end99.err_cleanup_host_crit_edge, label %if.end105

if.end99.err_cleanup_host_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end105:                                        ; preds = %if.end99
  %88 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmc, align 8
  %call107 = call i32 @mmc_hsq_init(ptr noundef nonnull %call.i245, ptr noundef %89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end105.err_cleanup_host_crit_edge

if.end105.err_cleanup_host_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end110:                                        ; preds = %if.end105
  %call111 = call i32 @__sdhci_add_host(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.err_cleanup_host_crit_edge

if.end110.err_cleanup_host_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_host

if.end114:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %call.i246 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %90 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store volatile i64 %call.i246, ptr %last_busy.i, align 8
  %call.i247 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

err_cleanup_host:                                 ; preds = %if.end110.err_cleanup_host_crit_edge, %if.end105.err_cleanup_host_crit_edge, %if.end99.err_cleanup_host_crit_edge
  %ret.0 = phi i32 [ %call107, %if.end105.err_cleanup_host_crit_edge ], [ %call111, %if.end110.err_cleanup_host_crit_edge ], [ -12, %if.end99.err_cleanup_host_crit_edge ]
  call void @sdhci_cleanup_host(ptr noundef %call) #9
  br label %pm_runtime_disable

pm_runtime_disable:                               ; preds = %err_cleanup_host, %sdhci_readl.exit244.pm_runtime_disable_crit_edge
  %ret.1 = phi i32 [ %call96, %sdhci_readl.exit244.pm_runtime_disable_crit_edge ], [ %ret.0, %err_cleanup_host ]
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i248 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  %91 = ptrtoint ptr %clk_2x_enable76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk_2x_enable76, align 4
  call void @clk_disable(ptr noundef %92) #9
  call void @clk_unprepare(ptr noundef %92) #9
  br label %clk_disable2

clk_disable2:                                     ; preds = %pm_runtime_disable, %if.end75.clk_disable2_crit_edge
  %ret.2 = phi i32 [ %call77, %if.end75.clk_disable2_crit_edge ], [ %ret.1, %pm_runtime_disable ]
  %93 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_enable, align 4
  call void @clk_disable(ptr noundef %94) #9
  call void @clk_unprepare(ptr noundef %94) #9
  br label %clk_disable

clk_disable:                                      ; preds = %clk_disable2, %if.end70.clk_disable_crit_edge
  %ret.3 = phi i32 [ %call72, %if.end70.clk_disable_crit_edge ], [ %ret.2, %clk_disable2 ]
  %95 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk_sdio, align 4
  call void @clk_disable(ptr noundef %96) #9
  call void @clk_unprepare(ptr noundef %96) #9
  br label %pltfm_free

pltfm_free:                                       ; preds = %clk_disable, %if.then3.i, %if.end65.pltfm_free_crit_edge, %if.then58, %if.then45, %if.then37, %if.then29, %if.end.pltfm_free_crit_edge
  %ret.4 = phi i32 [ %call8, %if.end.pltfm_free_crit_edge ], [ %43, %if.then45 ], [ %46, %if.then58 ], [ %ret.3, %clk_disable ], [ %38, %if.then29 ], [ %42, %if.then37 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end65.pltfm_free_crit_edge ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %pltfm_free, %if.end114, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.4, %pltfm_free ], [ 0, %if.end114 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i7 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 0) #9
  %clk_sdio = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_sdio, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %clk_enable = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %4 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_enable, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %clk_2x_enable = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i7, i32 0, i32 3
  %6 = ptrtoint ptr %clk_2x_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_2x_enable, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 128
  %flags3.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3.i, align 4
  %or.i = or i32 %3, %and.i
  store i32 %or.i, ptr %flags3.i, align 4
  %version.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp ugt i32 %5, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge

entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool7.not.i = icmp ult i32 %9, 65536
  %and10.i = and i32 %or.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, label %if.then.i

land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  %and13.i = and i32 %3, -129
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and13.i, ptr %flags3.i, align 4
  br label %sdhci_sprd_check_auto_cmd23.exit

sdhci_sprd_check_auto_cmd23.exit:                 ; preds = %if.then.i, %land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, %land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, %entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge
  tail call void @sdhci_request(ptr noundef %mmc, ptr noundef %mrq) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %0 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enhanced_strobe, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i16 %5(ptr noundef %private.i, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !86
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %9, %if.else.i.i ]
  %10 = and i16 %retval.0.i.i, -5
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %14, null
  br i1 %tobool.not.i5.i, label %do.body.i.i, label %if.then.i6.i, !prof !85

if.then.i6.i:                                     ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %private.i, i16 noundef zeroext %10, i32 noundef 44) #9
  br label %sdhci_sprd_sd_clk_off.exit

do.body.i.i:                                      ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %15 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %ioaddr.i7.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %15) #9, !srcloc !93
  br label %sdhci_sprd_sd_clk_off.exit

sdhci_sprd_sd_clk_off.exit:                       ; preds = %do.body.i.i, %if.then.i6.i
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %sdhci_sprd_sd_clk_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i16 %21(ptr noundef %private.i, i32 noundef 62) #9
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %sdhci_sprd_sd_clk_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %23, i32 62
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %25, %if.else.i ]
  %26 = or i16 %retval.0.i, 7
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i20 = icmp eq ptr %30, null
  br i1 %tobool.not.i20, label %do.body.i, label %if.then.i21, !prof !85

if.then.i21:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %30(ptr noundef %private.i, i16 noundef zeroext %26, i32 noundef 62) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %31 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %ioaddr.i22 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %ioaddr.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i22, align 16
  %add.ptr.i23 = getelementptr i8, ptr %33, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 %31) #9, !srcloc !93
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i21
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i25 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %read_w.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_w.i.i25, align 4
  %tobool.not.i.i26 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i26, label %if.else.i.i31, label %if.then.i.i28, !prof !85

if.then.i.i28:                                    ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i27 = tail call zeroext i16 %37(ptr noundef %private.i, i32 noundef 44) #9
  br label %sdhci_readw.exit.i35

if.else.i.i31:                                    ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %ioaddr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i.i29, align 16
  %add.ptr.i.i30 = getelementptr i8, ptr %39, i32 44
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i30) #9, !srcloc !86
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit.i35

sdhci_readw.exit.i35:                             ; preds = %if.else.i.i31, %if.then.i.i28
  %retval.0.i.i32 = phi i16 [ %call.i.i27, %if.then.i.i28 ], [ %41, %if.else.i.i31 ]
  %42 = or i16 %retval.0.i.i32, 4
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i33 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %write_w.i.i33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_w.i.i33, align 4
  %tobool.not.i5.i34 = icmp eq ptr %46, null
  br i1 %tobool.not.i5.i34, label %do.body.i.i39, label %if.then.i6.i36, !prof !85

if.then.i6.i36:                                   ; preds = %sdhci_readw.exit.i35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %46(ptr noundef %private.i, i16 noundef zeroext %42, i32 noundef 44) #9
  br label %sdhci_sprd_sd_clk_on.exit

do.body.i.i39:                                    ; preds = %sdhci_readw.exit.i35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %47 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %ioaddr.i7.i37 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %ioaddr.i7.i37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i7.i37, align 16
  %add.ptr.i8.i38 = getelementptr i8, ptr %49, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i38, i16 %47) #9, !srcloc !93
  br label %sdhci_sprd_sd_clk_on.exit

sdhci_sprd_sd_clk_on.exit:                        ; preds = %do.body.i.i39, %if.then.i6.i36
  %arrayidx = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 46
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i41 = icmp eq ptr %55, null
  br i1 %tobool.not.i41, label %do.body.i45, label %if.then.i42, !prof !85

if.then.i42:                                      ; preds = %sdhci_sprd_sd_clk_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %55(ptr noundef %private.i, i32 noundef %51, i32 noundef 516) #9
  br label %cleanup

do.body.i45:                                      ; preds = %sdhci_sprd_sd_clk_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %ioaddr.i43 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %ioaddr.i43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i43, align 16
  %add.ptr.i44 = getelementptr i8, ptr %58, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %56) #9, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %do.body.i45, %if.then.i42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_voltage_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %if.then
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.end.dev_name.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 2
  %6 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinctrl, align 4
  %cmp.i56 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %8 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cond = icmp eq i8 %9, 1
  br i1 %cond, label %sw.bb, label %sw.bb23

sw.bb:                                            ; preds = %if.end11
  %pins_uhs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 3
  %10 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins_uhs, align 4
  %call13 = tail call i32 @pinctrl_select_state(ptr noundef %7, ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.end17

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end17:                                         ; preds = %sw.bb
  %init_name.i57 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i57, align 8
  %tobool.not.i58 = icmp eq ptr %13, null
  br i1 %tobool.not.i58, label %if.end.i59, label %do.end17.dev_name.exit61_crit_edge

do.end17.dev_name.exit61_crit_edge:               ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit61

if.end.i59:                                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev19, align 4
  br label %dev_name.exit61

dev_name.exit61:                                  ; preds = %if.end.i59, %do.end17.dev_name.exit61_crit_edge
  %retval.0.i60 = phi ptr [ %15, %if.end.i59 ], [ %13, %do.end17.dev_name.exit61_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i60) #12
  br label %cleanup

sw.bb23:                                          ; preds = %if.end11
  %pins_default = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4
  %16 = ptrtoint ptr %pins_default to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins_default, align 4
  %call25 = tail call i32 @pinctrl_select_state(ptr noundef %7, ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sw.bb23.sw.epilog_crit_edge, label %do.end30

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end30:                                         ; preds = %sw.bb23
  %init_name.i62 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i62, align 8
  %tobool.not.i63 = icmp eq ptr %19, null
  br i1 %tobool.not.i63, label %if.end.i64, label %do.end30.dev_name.exit66_crit_edge

do.end30.dev_name.exit66_crit_edge:               ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit66

if.end.i64:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev32 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev32, align 4
  br label %dev_name.exit66

dev_name.exit66:                                  ; preds = %if.end.i64, %do.end30.dev_name.exit66_crit_edge
  %retval.0.i65 = phi ptr [ %21, %if.end.i64 ], [ %19, %do.end30.dev_name.exit66_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i65) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb23.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #9
  tail call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 6) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %dev_name.exit66, %dev_name.exit61, %if.end8.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ %call13, %dev_name.exit61 ], [ 0, %sw.epilog ], [ %call25, %dev_name.exit66 ], [ %call4, %dev_name.exit ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_request_atomic(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 128
  %flags3.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3.i, align 4
  %or.i = or i32 %3, %and.i
  store i32 %or.i, ptr %flags3.i, align 4
  %version.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp ugt i32 %5, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge

entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool7.not.i = icmp ult i32 %9, 65536
  %and10.i = and i32 %or.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, label %if.then.i

land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_check_auto_cmd23.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  %and13.i = and i32 %3, -129
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and13.i, ptr %flags3.i, align 4
  br label %sdhci_sprd_check_auto_cmd23.exit

sdhci_sprd_check_auto_cmd23.exit:                 ; preds = %if.then.i, %land.lhs.true4.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, %land.lhs.true.i.sdhci_sprd_check_auto_cmd23.exit_crit_edge, %entry.sdhci_sprd_check_auto_cmd23.exit_crit_edge
  %call = tail call i32 @sdhci_request_atomic(ptr noundef %mmc, ptr noundef %mrq) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_sprd_init_config(ptr noundef %host) unnamed_addr #2 align 64 {
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
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 652) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 652
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !89
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %conv2 = and i32 %retval.0.i, 65532
  %conv3 = or i32 %conv2, 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i7 = icmp eq ptr %11, null
  br i1 %tobool.not.i7, label %do.body.i, label %if.then.i8, !prof !85

if.then.i8:                                       ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %host, i32 noundef %conv3, i32 noundef 652) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3) #9
  %ioaddr.i9 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i9, align 16
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %12) #9, !srcloc !95
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_v4_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hsq_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !97
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %reg)
  %cmp = icmp eq i32 %reg, 72
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !99

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !89
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 16777215, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_writel(ptr nocapture noundef readonly %host, i32 noundef %val, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %entry.if.end11_crit_edge [
    i32 72, label %entry.return_crit_edge
    i32 56, label %entry.if.then10_crit_edge
    i32 52, label %entry.if.then10_crit_edge16
  ], !prof !100

entry.if.then10_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge16
  %and = and i32 %val, 461324555
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  %val.addr.0 = phi i32 [ %and, %if.then10 ], [ %val, %entry.if.end11_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #9, !srcloc !95
  br label %return

return:                                           ; preds = %if.end11, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_writew(ptr nocapture noundef readonly %host, i16 noundef zeroext %val, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %cmp = icmp eq i32 %reg, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !99

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !93
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_writeb(ptr nocapture noundef readonly %host, i8 noundef zeroext %val, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %reg)
  %cmp = icmp eq i32 %reg, 47
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge, !prof !99

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 47
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !101
  %3 = and i8 %2, 8
  %4 = or i8 %3, %val
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %val.addr.0 = phi i8 [ %val, %entry.if.end6_crit_edge ], [ %4, %if.then ]
  %ioaddr7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr7, align 16
  %add.ptr8 = getelementptr i8, ptr %6, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %val.addr.0) #9, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #9
  br label %if.end12

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !93
  br label %if.end12

if.else:                                          ; preds = %entry
  %clock1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %6 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp2.not = icmp eq i32 %7, %clock
  br i1 %cmp2.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.else
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i16 %11(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 44
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !86
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i.i ], [ %15, %if.else.i.i ]
  %16 = and i16 %retval.0.i.i, -5
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %20, null
  br i1 %tobool.not.i5.i, label %do.body.i.i, label %if.then.i6.i, !prof !85

if.then.i6.i:                                     ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %20(ptr noundef %host, i16 noundef zeroext %16, i32 noundef 44) #9
  br label %sdhci_sprd_sd_clk_off.exit

do.body.i.i:                                      ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %21 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %ioaddr.i7.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i7.i, align 16
  %add.ptr.i8.i = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %21) #9, !srcloc !93
  br label %sdhci_sprd_sd_clk_off.exit

sdhci_sprd_sd_clk_off.exit:                       ; preds = %do.body.i.i, %if.then.i6.i
  tail call fastcc void @_sdhci_sprd_set_clock(ptr noundef %host, i32 noundef %clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %clock)
  %cmp4 = icmp ult i32 %clock, 400001
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i.i25 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i25, label %if.else.i.i30, label %if.then.i.i27, !prof !85

if.then.i.i27:                                    ; preds = %sdhci_sprd_sd_clk_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i26 = tail call i32 %27(ptr noundef %host, i32 noundef 520) #9
  br label %sdhci_readl.exit.i

if.else.i.i30:                                    ; preds = %sdhci_sprd_sd_clk_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i28 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i.i28, align 16
  %add.ptr.i.i29 = getelementptr i8, ptr %29, i32 520
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #9, !srcloc !89
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i30, %if.then.i.i27
  %retval.0.i.i31 = phi i32 [ %call.i.i26, %if.then.i.i27 ], [ %31, %if.else.i.i30 ]
  %and.i = and i32 %retval.0.i.i31, -2105345
  %masksel.i = select i1 %cmp4, i32 2105344, i32 0
  %dll_dly_offset.0.i = or i32 %and.i, %masksel.i
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %35, null
  br i1 %tobool.not.i2.i, label %do.body.i.i32, label %if.then.i3.i, !prof !85

if.then.i3.i:                                     ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %35(ptr noundef %host, i32 noundef %dll_dly_offset.0.i, i32 noundef 520) #9
  br label %sdhci_sprd_set_dll_invert.exit

do.body.i.i32:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %dll_dly_offset.0.i) #9
  %ioaddr.i4.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i4.i, align 16
  %add.ptr.i5.i = getelementptr i8, ptr %38, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %36) #9, !srcloc !95
  br label %sdhci_sprd_set_dll_invert.exit

sdhci_sprd_set_dll_invert.exit:                   ; preds = %do.body.i.i32, %if.then.i3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000000, i32 %clock)
  %cmp10 = icmp ugt i32 %clock, 52000000
  br i1 %cmp10, label %if.then11, label %sdhci_sprd_set_dll_invert.exit.if.end12_crit_edge

sdhci_sprd_set_dll_invert.exit.if.end12_crit_edge: ; preds = %sdhci_sprd_set_dll_invert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_sdhci_sprd_set_clock(ptr noundef %host, i32 noundef %clock)
  br label %if.end12

if.then11:                                        ; preds = %sdhci_sprd_set_dll_invert.exit
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i.i34 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i34, label %if.else.i.i39, label %if.then.i.i36, !prof !85

if.then.i.i36:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i35 = tail call i32 %42(ptr noundef %host, i32 noundef 512) #9
  br label %sdhci_readl.exit.i43

if.else.i.i39:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i.i37 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i.i37, align 16
  %add.ptr.i.i38 = getelementptr i8, ptr %44, i32 512
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #9, !srcloc !89
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit.i43

sdhci_readl.exit.i43:                             ; preds = %if.else.i.i39, %if.then.i.i36
  %retval.0.i.i40 = phi i32 [ %call.i.i35, %if.then.i.i36 ], [ %46, %if.else.i.i39 ]
  %and.i41 = and i32 %retval.0.i.i40, -254017537
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i42 = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_l.i.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_l.i.i42, align 4
  %tobool.not.i71.i = icmp eq ptr %50, null
  br i1 %tobool.not.i71.i, label %do.body.i.i44, label %if.then.i72.i, !prof !85

if.then.i72.i:                                    ; preds = %sdhci_readl.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %50(ptr noundef %host, i32 noundef %and.i41, i32 noundef 512) #9
  br label %sdhci_writel.exit.i

do.body.i.i44:                                    ; preds = %sdhci_readl.exit.i43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %and.i41) #9
  %ioaddr.i73.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i73.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i73.i, align 16
  %add.ptr.i74.i = getelementptr i8, ptr %53, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %51) #9, !srcloc !95
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i44, %if.then.i72.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #9
  %54 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool.not.i76.i = icmp eq ptr %57, null
  br i1 %tobool.not.i76.i, label %if.else.i81.i, label %if.then.i78.i, !prof !85

if.then.i78.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i77.i = tail call i32 %57(ptr noundef %host, i32 noundef 512) #9
  br label %sdhci_readl.exit83.i

if.else.i81.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i79.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %58 = ptrtoint ptr %ioaddr.i79.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i79.i, align 16
  %add.ptr.i80.i = getelementptr i8, ptr %59, i32 512
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #9, !srcloc !89
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit83.i

sdhci_readl.exit83.i:                             ; preds = %if.else.i81.i, %if.then.i78.i
  %retval.0.i82.i = phi i32 [ %call.i77.i, %if.then.i78.i ], [ %61, %if.else.i81.i ]
  %or.i = or i32 %retval.0.i82.i, 251988995
  %62 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i, align 4
  %write_l.i85.i = getelementptr inbounds %struct.sdhci_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write_l.i85.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_l.i85.i, align 4
  %tobool.not.i86.i = icmp eq ptr %65, null
  br i1 %tobool.not.i86.i, label %do.body.i90.i, label %if.then.i87.i, !prof !85

if.then.i87.i:                                    ; preds = %sdhci_readl.exit83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %65(ptr noundef %host, i32 noundef %or.i, i32 noundef 512) #9
  br label %sdhci_writel.exit91.i

do.body.i90.i:                                    ; preds = %sdhci_readl.exit83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %ioaddr.i88.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %67 = ptrtoint ptr %ioaddr.i88.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr.i88.i, align 16
  %add.ptr.i89.i = getelementptr i8, ptr %68, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %66) #9, !srcloc !95
  br label %sdhci_writel.exit91.i

sdhci_writel.exit91.i:                            ; preds = %do.body.i90.i, %if.then.i87.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #9
  %69 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool.not.i93.i = icmp eq ptr %72, null
  br i1 %tobool.not.i93.i, label %if.else.i98.i, label %if.then.i95.i, !prof !85

if.then.i95.i:                                    ; preds = %sdhci_writel.exit91.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i94.i = tail call i32 %72(ptr noundef %host, i32 noundef 512) #9
  br label %sdhci_readl.exit100.i

if.else.i98.i:                                    ; preds = %sdhci_writel.exit91.i
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i96.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %73 = ptrtoint ptr %ioaddr.i96.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr.i96.i, align 16
  %add.ptr.i97.i = getelementptr i8, ptr %74, i32 512
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #9, !srcloc !89
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit100.i

sdhci_readl.exit100.i:                            ; preds = %if.else.i98.i, %if.then.i95.i
  %retval.0.i99.i = phi i32 [ %call.i94.i, %if.then.i95.i ], [ %76, %if.else.i98.i ]
  %or3.i = or i32 %retval.0.i99.i, 2097152
  %77 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i, align 4
  %write_l.i102.i = getelementptr inbounds %struct.sdhci_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %write_l.i102.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_l.i102.i, align 4
  %tobool.not.i103.i = icmp eq ptr %80, null
  br i1 %tobool.not.i103.i, label %do.body.i107.i, label %if.then.i104.i, !prof !85

if.then.i104.i:                                   ; preds = %sdhci_readl.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %80(ptr noundef %host, i32 noundef %or3.i, i32 noundef 512) #9
  br label %sdhci_writel.exit108.i

do.body.i107.i:                                   ; preds = %sdhci_readl.exit100.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  %ioaddr.i105.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %82 = ptrtoint ptr %ioaddr.i105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr.i105.i, align 16
  %add.ptr.i106.i = getelementptr i8, ptr %83, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %81) #9, !srcloc !95
  br label %sdhci_writel.exit108.i

sdhci_writel.exit108.i:                           ; preds = %do.body.i107.i, %if.then.i104.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #9
  %call4.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call4.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 265) #9
  %ioaddr.i113.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then24.i, %sdhci_writel.exit108.i
  %84 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool.not.i110.i = icmp eq ptr %87, null
  br i1 %tobool.not.i110.i, label %if.else.i115.i, label %if.then.i112.i, !prof !85

if.then.i112.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i111.i = tail call i32 %87(ptr noundef %host, i32 noundef 528) #9
  br label %sdhci_readl.exit117.i

if.else.i115.i:                                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %ioaddr.i113.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr.i113.i, align 16
  %add.ptr.i114.i = getelementptr i8, ptr %89, i32 528
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #9, !srcloc !89
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit117.i

sdhci_readl.exit117.i:                            ; preds = %if.else.i115.i, %if.then.i112.i
  %retval.0.i116.i = phi i32 [ %call.i111.i, %if.then.i112.i ], [ %91, %if.else.i115.i ]
  %and13.i = and i32 %retval.0.i116.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i45 = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i, label %sdhci_readl.exit117.i.for.end.i_crit_edge

sdhci_readl.exit117.i.for.end.i_crit_edge:        ; preds = %sdhci_readl.exit117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %sdhci_readl.exit117.i
  %call17.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then20.i, label %if.then24.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %92 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %tobool.not.i120.i = icmp eq ptr %95, null
  br i1 %tobool.not.i120.i, label %if.else.i125.i, label %if.then.i122.i, !prof !85

if.then.i122.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i121.i = tail call i32 %95(ptr noundef %host, i32 noundef 528) #9
  br label %for.end.i

if.else.i125.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %ioaddr.i113.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ioaddr.i113.i, align 16
  %add.ptr.i124.i = getelementptr i8, ptr %97, i32 528
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124.i) #9, !srcloc !89
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %for.end.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #9
  br label %for.cond.i

for.end.i:                                        ; preds = %if.else.i125.i, %if.then.i122.i, %sdhci_readl.exit117.i.for.end.i_crit_edge
  %tmp.0.i = phi i32 [ %call.i121.i, %if.then.i122.i ], [ %99, %if.else.i125.i ], [ %retval.0.i116.i, %sdhci_readl.exit117.i.for.end.i_crit_edge ]
  %and27.i = and i32 %tmp.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.end33.i, label %for.end.i.if.end12_crit_edge

for.end.i.if.end12_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end33.i:                                       ; preds = %for.end.i
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %100 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i128.i = icmp eq ptr %103, null
  br i1 %tobool.not.i128.i, label %if.end.i.i, label %do.end33.i.dev_name.exit.i_crit_edge

do.end33.i.dev_name.exit.i_crit_edge:             ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %101, i32 0, i32 1
  %104 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end33.i.dev_name.exit.i_crit_edge
  %retval.0.i129.i = phi ptr [ %105, %if.end.i.i ], [ %103, %do.end33.i.dev_name.exit.i_crit_edge ]
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i129.i) #12
  %106 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmc.i, align 8
  %init_name.i130.i = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %init_name.i130.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i130.i, align 8
  %tobool.not.i131.i = icmp eq ptr %109, null
  br i1 %tobool.not.i131.i, label %if.end.i132.i, label %dev_name.exit.i.dev_name.exit134.i_crit_edge

dev_name.exit.i.dev_name.exit134.i_crit_edge:     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit134.i

if.end.i132.i:                                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev42.i = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %class_dev42.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %class_dev42.i, align 4
  br label %dev_name.exit134.i

dev_name.exit134.i:                               ; preds = %if.end.i132.i, %dev_name.exit.i.dev_name.exit134.i_crit_edge
  %retval.0.i133.i = phi ptr [ %111, %if.end.i132.i ], [ %109, %dev_name.exit.i.dev_name.exit134.i_crit_edge ]
  %112 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %tobool.not.i136.i = icmp eq ptr %115, null
  br i1 %tobool.not.i136.i, label %if.else.i141.i, label %if.then.i138.i, !prof !85

if.then.i138.i:                                   ; preds = %dev_name.exit134.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i137.i = tail call i32 %115(ptr noundef %host, i32 noundef 528) #9
  br label %sdhci_readl.exit143.i

if.else.i141.i:                                   ; preds = %dev_name.exit134.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %ioaddr.i113.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr.i113.i, align 16
  %add.ptr.i140.i = getelementptr i8, ptr %117, i32 528
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #9, !srcloc !89
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit143.i

sdhci_readl.exit143.i:                            ; preds = %if.else.i141.i, %if.then.i138.i
  %retval.0.i142.i = phi i32 [ %call.i137.i, %if.then.i138.i ], [ %119, %if.else.i141.i ]
  %120 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %tobool.not.i145.i = icmp eq ptr %123, null
  br i1 %tobool.not.i145.i, label %if.else.i150.i, label %if.then.i147.i, !prof !85

if.then.i147.i:                                   ; preds = %sdhci_readl.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i146.i = tail call i32 %123(ptr noundef %host, i32 noundef 512) #9
  br label %sdhci_readl.exit152.i

if.else.i150.i:                                   ; preds = %sdhci_readl.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %ioaddr.i113.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ioaddr.i113.i, align 16
  %add.ptr.i149.i = getelementptr i8, ptr %125, i32 512
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149.i) #9, !srcloc !89
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit152.i

sdhci_readl.exit152.i:                            ; preds = %if.else.i150.i, %if.then.i147.i
  %retval.0.i151.i = phi i32 [ %call.i146.i, %if.then.i147.i ], [ %127, %if.else.i150.i ]
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i133.i, i32 noundef %retval.0.i142.i, i32 noundef %retval.0.i151.i) #12
  br label %if.end12

if.end12:                                         ; preds = %sdhci_readl.exit152.i, %for.end.i.if.end12_crit_edge, %if.else6, %sdhci_sprd_set_dll_invert.exit.if.end12_crit_edge, %do.body.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_get_max_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_sdio = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_sdio, align 4
  %call2 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef -1) #9
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_sprd_get_min_clock(ptr nocapture noundef readnone %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 400000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_sprd_get_max_timeout_count(ptr nocapture noundef readnone %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -2147483648
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_sprd_get_ro(ptr nocapture noundef readnone %host) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc2, align 8
  %phy_delay = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 3
  %timing3 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %2 = ptrtoint ptr %timing3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %timing)
  %cmp = icmp eq i32 %3, %timing
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i16 %7(ptr noundef %host, i32 noundef 62) #9
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 62
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !86
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %11, %if.else.i ]
  %12 = and i16 %retval.0.i, -8
  %13 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %timing, label %sdhci_readw.exit.sw.epilog_crit_edge [
    i32 10, label %sw.bb28
    i32 1, label %sdhci_readw.exit.sw.bb8_crit_edge
    i32 2, label %sdhci_readw.exit.sw.bb8_crit_edge64
    i32 4, label %sdhci_readw.exit.sw.bb8_crit_edge65
    i32 5, label %sw.bb12
    i32 6, label %sw.bb16
    i32 7, label %sdhci_readw.exit.sw.bb20_crit_edge
    i32 8, label %sdhci_readw.exit.sw.bb20_crit_edge66
    i32 9, label %sw.bb24
  ]

sdhci_readw.exit.sw.bb20_crit_edge66:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

sdhci_readw.exit.sw.bb20_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

sdhci_readw.exit.sw.bb8_crit_edge65:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

sdhci_readw.exit.sw.bb8_crit_edge64:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

sdhci_readw.exit.sw.bb8_crit_edge:                ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

sdhci_readw.exit.sw.epilog_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %sdhci_readw.exit.sw.bb8_crit_edge, %sdhci_readw.exit.sw.bb8_crit_edge64, %sdhci_readw.exit.sw.bb8_crit_edge65
  %14 = or i16 %12, 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = or i16 %12, 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = or i16 %12, 3
  br label %sw.epilog

sw.bb20:                                          ; preds = %sdhci_readw.exit.sw.bb20_crit_edge, %sdhci_readw.exit.sw.bb20_crit_edge66
  %17 = or i16 %12, 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = or i16 %12, 5
  br label %sw.epilog

sw.bb28:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = or i16 %12, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sdhci_readw.exit.sw.epilog_crit_edge
  %ctrl_2.0 = phi i16 [ %19, %sw.bb28 ], [ %18, %sw.bb24 ], [ %17, %sw.bb20 ], [ %16, %sw.bb16 ], [ %15, %sw.bb12 ], [ %14, %sw.bb8 ], [ %12, %sdhci_readw.exit.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i54 = icmp eq ptr %23, null
  br i1 %tobool.not.i54, label %do.body.i, label %if.then.i55, !prof !85

if.then.i55:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %24 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #9
  %ioaddr.i56 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i56, align 16
  %add.ptr.i57 = getelementptr i8, ptr %26, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i57, i16 %24) #9, !srcloc !93
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i55
  %enhanced_strobe = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 10
  %27 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enhanced_strobe, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.then32, label %sdhci_writew.exit.cleanup_crit_edge

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %sdhci_writew.exit
  %arrayidx = getelementptr i32, ptr %phy_delay, i32 %timing
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i59 = icmp eq ptr %34, null
  br i1 %tobool.not.i59, label %do.body.i63, label %if.then.i60, !prof !85

if.then.i60:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %34(ptr noundef %host, i32 noundef %30, i32 noundef 516) #9
  br label %cleanup

do.body.i63:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %ioaddr.i61 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i61, align 16
  %add.ptr.i62 = getelementptr i8, ptr %37, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %35) #9, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %do.body.i63, %if.then.i60, %sdhci_writew.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_hw_reset(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 47
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !101
  %3 = and i8 %2, -9
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 16
  %add.ptr3 = getelementptr i8, ptr %5, i32 47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 %3) #9, !srcloc !102
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %6 = or i8 %2, 8
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %8, i32 47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %6) #9, !srcloc !102
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sprd_request_done(ptr nocapture noundef readonly %host, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call = tail call zeroext i1 @mmc_hsq_finalize_request(ptr noundef %1, ptr noundef %mrq) #9
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef %mrq) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_sdhci_sprd_set_clock(ptr noundef %host, i32 noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !93
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  %base_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %6 = ptrtoint ptr %base_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_rate, align 4
  %mul.i = shl i32 %clk, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %7)
  %cmp.not.i = icmp ult i32 %mul.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %sdhci_writew.exit.sdhci_sprd_calc_div.exit_crit_edge

sdhci_writew.exit.sdhci_sprd_calc_div.exit_crit_edge: ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_sprd_calc_div.exit

if.end.i:                                         ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div2.i = udiv i32 %7, %mul.i
  %div3.i = udiv i32 %7, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %mul.i)
  %cmp5.i = icmp ugt i32 %div3.i, %mul.i
  %inc.i = zext i1 %cmp5.i to i32
  %spec.select.i = add i32 %div2.i, %inc.i
  %8 = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 1023) #9
  %rem.i = and i32 %8, 1
  %div.1.in.i = add nuw nsw i32 %rem.i, %8
  %div.1.i = lshr i32 %div.1.in.i, 1
  br label %sdhci_sprd_calc_div.exit

sdhci_sprd_calc_div.exit:                         ; preds = %if.end.i, %sdhci_writew.exit.sdhci_sprd_calc_div.exit_crit_edge
  %retval.0.i = phi i32 [ %div.1.i, %if.end.i ], [ 0, %sdhci_writew.exit.sdhci_sprd_calc_div.exit_crit_edge ]
  %and = lshr i32 %retval.0.i, 2
  %shr = and i32 %and, 192
  %and3 = shl nuw nsw i32 %retval.0.i, 8
  %or = or i32 %shr, %and3
  %conv = trunc i32 %or to i16
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %conv) #9
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i20 = icmp eq ptr %12, null
  br i1 %tobool.not.i20, label %if.else.i, label %if.then.i21, !prof !85

if.then.i21:                                      ; preds = %sdhci_sprd_calc_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %12(ptr noundef %host, i32 noundef 592) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %sdhci_sprd_calc_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i22 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i22, align 16
  %add.ptr.i23 = getelementptr i8, ptr %14, i32 592
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #9, !srcloc !89
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i21
  %retval.0.i24 = phi i32 [ %call.i, %if.then.i21 ], [ %16, %if.else.i ]
  %and5 = and i32 %retval.0.i24, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %and5)
  %cmp.not = icmp eq i32 %and5, 50331648
  br i1 %cmp.not, label %sdhci_readl.exit.if.end_crit_edge, label %if.then

sdhci_readl.exit.if.end_crit_edge:                ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sdhci_readl.exit
  %or7 = or i32 %retval.0.i24, 50331648
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i26 = icmp eq ptr %20, null
  br i1 %tobool.not.i26, label %do.body.i30, label %if.then.i27, !prof !85

if.then.i27:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %20(ptr noundef %host, i32 noundef %or7, i32 noundef 592) #9
  br label %if.end

do.body.i30:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or7) #9
  %ioaddr.i28 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %22 = ptrtoint ptr %ioaddr.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i28, align 16
  %add.ptr.i29 = getelementptr i8, ptr %23, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %21) #9, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %do.body.i30, %if.then.i27, %sdhci_readl.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_hsq_finalize_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_request_atomic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i8 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  tail call void @mmc_hsq_suspend(ptr noundef %3) #9
  %call3 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #9
  %clk_sdio = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %4 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_sdio, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %clk_enable = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %6 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_enable, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %clk_2x_enable = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i8, i32 0, i32 3
  %8 = ptrtoint ptr %clk_2x_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_2x_enable, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sprd_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i28 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %clk_2x_enable = getelementptr inbounds %struct.sdhci_sprd_host, ptr %private.i28, i32 0, i32 3
  %2 = ptrtoint ptr %clk_2x_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_2x_enable, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_enable = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %4 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_enable, align 4
  %call.i29 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %if.end.clk_2x_disable_crit_edge

if.end.clk_2x_disable_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_2x_disable

if.end.i33:                                       ; preds = %if.end
  %call1.i31 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool2.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool2.not.i32, label %if.end7, label %if.end.i33.clk_2x_disable.sink.split_crit_edge

if.end.i33.clk_2x_disable.sink.split_crit_edge:   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_2x_disable.sink.split

if.end7:                                          ; preds = %if.end.i33
  %clk_sdio = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %6 = ptrtoint ptr %clk_sdio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_sdio, align 4
  %call.i37 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i41, label %if.end7.clk_disable_crit_edge

if.end7.clk_disable_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable

if.end.i41:                                       ; preds = %if.end7
  %call1.i39 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool2.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool2.not.i40, label %if.end11, label %if.then3.i42

if.then3.i42:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %clk_disable

if.end11:                                         ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 1) #9
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %call13 = tail call i32 @mmc_hsq_resume(ptr noundef %9) #9
  br label %cleanup

clk_disable:                                      ; preds = %if.then3.i42, %if.end7.clk_disable_crit_edge
  %retval.0.i43.ph = phi i32 [ %call1.i39, %if.then3.i42 ], [ %call.i37, %if.end7.clk_disable_crit_edge ]
  %10 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_enable, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  br label %clk_2x_disable.sink.split

clk_2x_disable.sink.split:                        ; preds = %clk_disable, %if.end.i33.clk_2x_disable.sink.split_crit_edge
  %.sink = phi ptr [ %11, %clk_disable ], [ %5, %if.end.i33.clk_2x_disable.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i43.ph, %clk_disable ], [ %call1.i31, %if.end.i33.clk_2x_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %clk_2x_disable

clk_2x_disable:                                   ; preds = %clk_2x_disable.sink.split, %if.end.clk_2x_disable_crit_edge
  %ret.0 = phi i32 [ %call.i29, %if.end.clk_2x_disable_crit_edge ], [ %ret.0.ph, %clk_2x_disable.sink.split ]
  %12 = ptrtoint ptr %clk_2x_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_2x_enable, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %clk_2x_disable, %if.end11, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %clk_2x_disable ], [ 0, %if.end11 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_hsq_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hsq_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_sdhci_sprd__304_809_sdhci_sprd_driver_init6, !1, !"__initcall__kmod_sdhci_sprd__304_809_sdhci_sprd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 809, i32 1}
!2 = !{ptr @__exitcall_sdhci_sprd_driver_exit, !1, !"__exitcall_sdhci_sprd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description305, !4, !"__UNIQUE_ID_description305", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 811, i32 1}
!5 = !{ptr @__UNIQUE_ID_file306, !6, !"__UNIQUE_ID_file306", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 812, i32 1}
!7 = !{ptr @__UNIQUE_ID_license307, !6, !"__UNIQUE_ID_license307", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias308, !9, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 813, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 803, i32 11}
!12 = !{ptr @sdhci_sprd_driver, !13, !"sdhci_sprd_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 799, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 604, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 611, i32 45}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 618, i32 33}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 628, i32 33}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 635, i32 33}
!24 = !{ptr @sdhci_sprd_pdata, !25, !"sdhci_sprd_pdata", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 550, i32 38}
!26 = !{ptr @sdhci_sprd_ops, !27, !"sdhci_sprd_ops", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 406, i32 25}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 264, i32 6}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 266, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sdhci_sprd_enable_phy_dll._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sdhci_sprd_enable_phy_dll._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 267, i32 3}
!37 = !{ptr @sdhci_sprd_enable_phy_dll._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sdhci_sprd_enable_phy_dll._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 466, i32 4}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sdhci_sprd_voltage_switch._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sdhci_sprd_voltage_switch._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 480, i32 4}
!46 = !{ptr @sdhci_sprd_voltage_switch._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sdhci_sprd_voltage_switch._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 492, i32 4}
!50 = !{ptr @sdhci_sprd_voltage_switch._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sdhci_sprd_voltage_switch._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 95, i32 4}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 96, i32 4}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 97, i32 4}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 98, i32 4}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 99, i32 4}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 100, i32 4}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 101, i32 4}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 102, i32 4}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 103, i32 4}
!70 = !{ptr @sdhci_sprd_phy_cfgs, !71, !"sdhci_sprd_phy_cfgs", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 94, i32 40}
!72 = !{ptr @sdhci_sprd_of_match, !73, !"sdhci_sprd_of_match", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 737, i32 34}
!74 = !{ptr @sdhci_sprd_pm_ops, !75, !"sdhci_sprd_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/sdhci-sprd.c", i32 792, i32 32}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 6243900}
!87 = !{i64 2155544593}
!88 = !{i64 2148208859, i64 2148208885, i64 2148208914, i64 2148208948, i64 2148208979, i64 2148209002}
!89 = !{i64 6244738}
!90 = !{i64 2155543889}
!91 = !{i8 0, i8 2}
!92 = !{i64 2155542525}
!93 = !{i64 6243700}
!94 = !{i64 2155541919}
!95 = !{i64 6244320}
!96 = !{i64 2148208278}
!97 = !{i64 693101, i64 693126, i64 693148, i64 693164, i64 693176, i64 693196, i64 693220, i64 693236, i64 693248}
!98 = !{i64 2148208466}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"branch_weights", i32 2000000, i32 2001, i32 2000, i32 2000000}
!101 = !{i64 6244518}
!102 = !{i64 6244123}
