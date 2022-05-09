; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-cadence.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-cadence.c"
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
%struct.sdhci_cdns_phy_cfg = type { ptr, i8 }
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
%struct.sdhci_cdns_priv = type { ptr, i8, i32, [0 x %struct.sdhci_cdns_phy_param] }
%struct.sdhci_cdns_phy_param = type { i8, i8 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@__initcall__kmod_sdhci_cadence__301_473_sdhci_cdns_driver_init6 = internal global ptr @sdhci_cdns_driver_init, section ".initcall6.init", align 4
@sdhci_cdns_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_cdns_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_cdns_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_cdns_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_cdns_driver_exit = internal global ptr @sdhci_cdns_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [69 x i8] c"sdhci_cadence.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [70 x i8] c"sdhci_cadence.description=Cadence SD/SDIO/eMMC Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [50 x i8] c"sdhci_cadence.file=drivers/mmc/host/sdhci-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [26 x i8] c"sdhci_cadence.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhci-cdns\00", [21 x i8] zeroinitializer }, align 32
@sdhci_cdns_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd4hc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_cdns_uniphier_pltfm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,sd4hc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sdhci_cdns_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_pltfm_suspend, ptr @sdhci_cdns_resume, ptr @sdhci_pltfm_suspend, ptr @sdhci_cdns_resume, ptr @sdhci_pltfm_suspend, ptr @sdhci_cdns_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_cdns_probe.version = internal constant { i16, [30 x i8] } { i16 3, [30 x i8] zeroinitializer }, align 32
@sdhci_cdns_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_cdns_ops, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_cdns_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_cdns_get_timeout_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr @sdhci_cdns_execute_tuning, ptr @sdhci_cdns_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_cdns_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no tuning point found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_cdns_execute_tuning\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/sdhci-cadence.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_cdns_execute_tuning._entry_ptr = internal global ptr @sdhci_cdns_execute_tuning._entry, section ".printk_index", align 4
@sdhci_cdns_phy_cfgs = internal constant { [11 x %struct.sdhci_cdns_phy_cfg], [40 x i8] } { [11 x %struct.sdhci_cdns_phy_cfg] [%struct.sdhci_cdns_phy_cfg { ptr @.str.6, i8 0 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.7, i8 1 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.8, i8 2 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.9, i8 3 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.10, i8 4 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.11, i8 5 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.12, i8 7 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.13, i8 8 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.14, i8 11 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.15, i8 12 }, %struct.sdhci_cdns_phy_cfg { ptr @.str.16, i8 13 }], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns,phy-input-delay-sd-highspeed\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cdns,phy-input-delay-legacy\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns,phy-input-delay-sd-uhs-sdr12\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns,phy-input-delay-sd-uhs-sdr25\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns,phy-input-delay-sd-uhs-sdr50\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cdns,phy-input-delay-sd-uhs-ddr50\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cdns,phy-input-delay-mmc-highspeed\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns,phy-input-delay-mmc-ddr\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns,phy-dll-delay-sdclk\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cdns,phy-dll-delay-sdclk-hsmmc\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns,phy-dll-delay-strobe\00", [38 x i8] zeroinitializer }, align 32
@sdhci_cdns_uniphier_pltfm_data = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_cdns_ops, i32 0, i32 8 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 9]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 9, i64 10]
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"sdhci_cdns_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 463, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 465, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"sdhci_cdns_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 453, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"sdhci_cdns_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 449, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 360, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"sdhci_cdns_pltfm_data\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 326, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"sdhci_cdns_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 312, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 271, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"sdhci_cdns_phy_cfgs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 79, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 80, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 81, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 82, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 83, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 84, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 85, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 86, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 88, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 89, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 90, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"sdhci_cdns_uniphier_pltfm_data\00", align 1
@___asan_gen_.95 = private constant [36 x i8] c"../drivers/mmc/host/sdhci-cadence.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 321, i32 38 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_sdhci_cdns_driver_exit, ptr @__initcall__kmod_sdhci_cadence__301_473_sdhci_cdns_driver_init6, ptr @sdhci_cdns_driver_exit, ptr @sdhci_cdns_execute_tuning._entry, ptr @sdhci_cdns_execute_tuning._entry_ptr, ptr @sdhci_cdns_driver, ptr @.str, ptr @sdhci_cdns_match, ptr @sdhci_cdns_pm_ops, ptr @sdhci_cdns_probe.version, ptr @sdhci_cdns_pltfm_data, ptr @sdhci_cdns_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sdhci_cdns_phy_cfgs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sdhci_cdns_uniphier_pltfm_data], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_probe.version to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_phy_cfgs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_cdns_uniphier_pltfm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cdns_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_cdns_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_cdns_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_cdns_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cdns_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool8.not = icmp eq ptr %call7, null
  %spec.store.select = select i1 %tobool8.not, ptr @sdhci_cdns_pltfm_data, ptr %call7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not.i = icmp ne ptr %call.i.i, null
  %inc.i = zext i1 %tobool.i.not.i to i32
  %call.i.1.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i.not.1.i = icmp ne ptr %call.i.1.i, null
  %inc.1.i = zext i1 %tobool.i.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %call.i.2.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool.i.not.2.i = icmp ne ptr %call.i.2.i, null
  %inc.2.i = zext i1 %tobool.i.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %call.i.3.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool.i.not.3.i = icmp ne ptr %call.i.3.i, null
  %inc.3.i = zext i1 %tobool.i.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %call.i.4.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool.i.not.4.i = icmp ne ptr %call.i.4.i, null
  %inc.4.i = zext i1 %tobool.i.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %call.i.5.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %tobool.i.not.5.i = icmp ne ptr %call.i.5.i, null
  %inc.5.i = zext i1 %tobool.i.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %inc.5.i
  %call.i.6.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.i.not.6.i = icmp ne ptr %call.i.6.i, null
  %inc.6.i = zext i1 %tobool.i.not.6.i to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %inc.6.i
  %call.i.7.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i.not.7.i = icmp ne ptr %call.i.7.i, null
  %inc.7.i = zext i1 %tobool.i.not.7.i to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %inc.7.i
  %call.i.8.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i.not.8.i = icmp ne ptr %call.i.8.i, null
  %inc.8.i = zext i1 %tobool.i.not.8.i to i32
  %spec.select.8.i = add nuw nsw i32 %spec.select.7.i, %inc.8.i
  %call.i.9.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %tobool.i.not.9.i = icmp ne ptr %call.i.9.i, null
  %inc.9.i = zext i1 %tobool.i.not.9.i to i32
  %spec.select.9.i = add nuw nsw i32 %spec.select.8.i, %inc.9.i
  %call.i.10.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.not.10.i = icmp ne ptr %call.i.10.i, null
  %inc.10.i = zext i1 %tobool.i.not.10.i to i32
  %spec.select.10.i = add nuw nsw i32 %spec.select.9.i, %inc.10.i
  %3 = shl nuw nsw i32 %spec.select.10.i, 1
  %spec.select.i82 = add nuw nsw i32 %3, 12
  %call13 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %spec.store.select, i32 noundef %spec.select.i82) #7
  %cmp.i75 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call13 to i32
  br label %disable_clk

if.end17:                                         ; preds = %if.end6
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 0, i32 81
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %private.i, align 128
  %private.i76 = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 1, i32 11, i32 21
  %nr_phy_params21 = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 1, i32 11, i32 23
  %6 = ptrtoint ptr %nr_phy_params21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.10.i, ptr %nr_phy_params21, align 4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %9 = ptrtoint ptr %private.i76 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %private.i76, align 4
  %enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 1, i32 11, i32 22
  %10 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enhanced_strobe, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 512
  store ptr %add.ptr, ptr %ioaddr, align 16
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 0, i32 11, i32 18
  %11 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sdhci_cdns_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  tail call void @sdhci_enable_v4_mode(ptr noundef %call13) #7
  tail call void @__sdhci_read_caps(ptr noundef %call13, ptr noundef nonnull @sdhci_cdns_probe.version, ptr noundef null, ptr noundef null) #7
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call13, i32 0, i32 10
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 8
  %call23 = tail call i32 @mmc_of_parse(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end17.free_crit_edge

if.end17.free_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end26:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %phy_params.i = getelementptr inbounds %struct.sdhci_cdns_priv, ptr %private.i76, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !67
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26
  %i.09.i = phi i32 [ 0, %if.end26 ], [ %inc.i79, %for.inc.i.for.body.i_crit_edge ]
  %p.08.i = phi ptr [ %phy_params.i, %if.end26 ], [ %p.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.sdhci_cdns_phy_cfg], ptr @sdhci_cdns_phy_cfgs, i32 0, i32 %i.09.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef %18, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i77 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i77, label %if.end.i78, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i78:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr [11 x %struct.sdhci_cdns_phy_cfg], ptr @sdhci_cdns_phy_cfgs, i32 0, i32 %i.09.i, i32 1
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr.i, align 4
  %21 = ptrtoint ptr %p.08.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %p.08.i, align 1
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %23 to i8
  %data.i = getelementptr inbounds %struct.sdhci_cdns_phy_param, ptr %p.08.i, i32 0, i32 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %data.i, align 1
  %incdec.ptr.i = getelementptr %struct.sdhci_cdns_phy_param, ptr %p.08.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i78, %for.body.i.for.inc.i_crit_edge
  %p.1.i = phi ptr [ %p.08.i, %for.body.i.for.inc.i_crit_edge ], [ %incdec.ptr.i, %if.end.i78 ]
  %inc.i79 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i79, 11
  br i1 %exitcond.not.i, label %sdhci_cdns_phy_param_parse.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sdhci_cdns_phy_param_parse.exit:                  ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call28 = call fastcc i32 @sdhci_cdns_phy_init(ptr noundef %private.i76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %sdhci_cdns_phy_param_parse.exit.free_crit_edge

sdhci_cdns_phy_param_parse.exit.free_crit_edge:   ; preds = %sdhci_cdns_phy_param_parse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end31:                                         ; preds = %sdhci_cdns_phy_param_parse.exit
  %call32 = call i32 @sdhci_add_host(ptr noundef %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end31.free_crit_edge

if.end31.free_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free:                                             ; preds = %if.end31.free_crit_edge, %sdhci_cdns_phy_param_parse.exit.free_crit_edge, %if.end17.free_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end17.free_crit_edge ], [ %call28, %sdhci_cdns_phy_param_parse.exit.free_crit_edge ], [ %call32, %if.end31.free_crit_edge ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  br label %disable_clk

disable_clk:                                      ; preds = %free, %if.then15
  %ret.1 = phi i32 [ %4, %if.then15 ], [ %ret.0, %free ]
  call void @clk_disable(ptr noundef %call) #7
  call void @clk_unprepare(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end31.cleanup_crit_edge, %if.then3.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.1, %disable_clk ], [ 0, %if.end31.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_cdns_hs400_enhanced_strobe(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i2.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %0 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enhanced_strobe, align 1, !range !68
  %enhanced_strobe2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %2 = ptrtoint ptr %enhanced_strobe2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %enhanced_strobe2, align 4
  %3 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %and.i = and i32 %6, 7
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %entry.if.end11_crit_edge [
    i32 5, label %land.lhs.true
    i32 6, label %land.lhs.true7
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhanced_strobe, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i2.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %13 = and i32 %12, -117440513
  %14 = or i32 %13, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i2.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %14) #7, !srcloc !73
  br label %if.end11

land.lhs.true7:                                   ; preds = %entry
  %17 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enhanced_strobe, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i2.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %22 = and i32 %21, -117440513
  %23 = or i32 %22, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i2.i, align 4
  %add.ptr22.i21 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i21, i32 %23) #7, !srcloc !73
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true7.if.end11_crit_edge, %if.then, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_v4_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_read_caps(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_cdns_phy_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_phy_params = getelementptr inbounds %struct.sdhci_cdns_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %nr_phy_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_phy_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdhci_cdns_priv, ptr %priv, i32 0, i32 3, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %data = getelementptr %struct.sdhci_cdns_priv, ptr %priv, i32 0, i32 3, i32 %i.017, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %for.body
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %and.i = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i.for.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call14.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then17.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  br label %for.end.i

for.end.i:                                        ; preds = %if.then17.i, %for.cond.i.for.end.i_crit_edge
  %tmp.0.i = phi i32 [ %11, %if.then17.i ], [ %9, %for.cond.i.for.end.i_crit_edge ]
  %and28.i = and i32 %tmp.0.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.end76.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end76.i:                                       ; preds = %for.end.i
  %conv53.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv53.i, 8
  %12 = and i8 %3, 63
  %and80.i = zext i8 %12 to i32
  %or.i = or i32 %shl.i, %and80.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !73
  %or84.i = or i32 %or.i, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or84.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !73
  %call91.i = tail call i64 @ktime_get() #7
  %add.i238.i = add i64 %call91.i, 10000
  br label %for.cond106.i

for.cond106.i:                                    ; preds = %land.lhs.true117.i.for.cond106.i_crit_edge, %do.end76.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and112.i = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %land.lhs.true117.i, label %for.cond106.i.if.end141.i_crit_edge

for.cond106.i.if.end141.i_crit_edge:              ; preds = %for.cond106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

land.lhs.true117.i:                               ; preds = %for.cond106.i
  %call118.i = tail call i64 @ktime_get() #7
  %cmp3.i240.i = icmp sgt i64 %call118.i, %add.i238.i
  br i1 %cmp3.i240.i, label %for.end134.i, label %land.lhs.true117.i.for.cond106.i_crit_edge

land.lhs.true117.i.for.cond106.i_crit_edge:       ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond106.i

for.end134.i:                                     ; preds = %land.lhs.true117.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %.pre.i = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %for.end134.i.cleanup_crit_edge, label %for.end134.i.if.end141.i_crit_edge

for.end134.i.if.end141.i_crit_edge:               ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i

for.end134.i.cleanup_crit_edge:                   ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end141.i:                                      ; preds = %for.end134.i.if.end141.i_crit_edge, %for.cond106.i.if.end141.i_crit_edge
  %tmp.1262.i = phi i32 [ %18, %for.end134.i.if.end141.i_crit_edge ], [ %16, %for.cond106.i.if.end141.i_crit_edge ]
  %and142.i = and i32 %tmp.1262.i, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %and142.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !73
  %call149.i = tail call i64 @ktime_get() #7
  %add.i243.i = add i64 %call149.i, 10000
  br label %for.cond164.i

for.cond164.i:                                    ; preds = %land.lhs.true175.i.for.cond164.i_crit_edge, %if.end141.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool171.not.i = icmp eq i32 %21, 0
  br i1 %tobool171.not.i, label %for.cond164.i.for.inc_crit_edge, label %land.lhs.true175.i

for.cond164.i.for.inc_crit_edge:                  ; preds = %for.cond164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true175.i:                               ; preds = %for.cond164.i
  %call176.i = tail call i64 @ktime_get() #7
  %cmp3.i245.i = icmp sgt i64 %call176.i, %add.i243.i
  br i1 %cmp3.i245.i, label %if.then180.i, label %land.lhs.true175.i.for.cond164.i_crit_edge

land.lhs.true175.i.for.cond164.i_crit_edge:       ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond164.i

if.then180.i:                                     ; preds = %land.lhs.true175.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %phi.cmp259.i = icmp eq i32 %23, 0
  br i1 %phi.cmp259.i, label %if.then180.i.for.inc_crit_edge, label %if.then180.i.cleanup_crit_edge

if.then180.i.cleanup_crit_edge:                   ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then180.i.for.inc_crit_edge:                   ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then180.i.for.inc_crit_edge, %for.cond164.i.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %24 = ptrtoint ptr %nr_phy_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_phy_params, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then180.i.cleanup_crit_edge, %for.end134.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %if.then180.i.cleanup_crit_edge ], [ -110, %for.end134.i.cleanup_crit_edge ], [ -110, %for.end.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_cdns_get_timeout_clock(ptr nocapture noundef readonly %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_clk, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cdns_execute_tuning(ptr nocapture noundef readonly %host, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 9, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge38
  ]

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge38
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.036 = phi i32 [ 0, %if.end ], [ %inc11, %for.inc.for.body_crit_edge ]
  %end_of_streak.035 = phi i32 [ 0, %if.end ], [ %end_of_streak.1, %for.inc.for.body_crit_edge ]
  %max_streak.034 = phi i32 [ 0, %if.end ], [ %max_streak.1, %for.inc.for.body_crit_edge ]
  %cur_streak.033 = phi i32 [ 0, %if.end ], [ %cur_streak.1, %for.inc.for.body_crit_edge ]
  %call = tail call fastcc i32 @sdhci_cdns_set_tune_val(ptr noundef %host, i32 noundef %i.036)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %3 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc, align 8
  %call4 = tail call i32 @mmc_send_tuning(ptr noundef %4, i32 noundef %opcode, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %cur_streak.033, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_streak.034)
  %cmp7 = icmp sgt i32 %inc, %max_streak.034
  %5 = tail call i32 @llvm.smax.i32(i32 %inc, i32 %max_streak.034)
  %spec.select32 = select i1 %cmp7, i32 %i.036, i32 %end_of_streak.035
  br label %for.inc

for.inc:                                          ; preds = %if.else, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cur_streak.1 = phi i32 [ 0, %lor.lhs.false.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge ], [ %inc, %if.else ]
  %max_streak.1 = phi i32 [ %max_streak.034, %lor.lhs.false.for.inc_crit_edge ], [ %max_streak.034, %for.body.for.inc_crit_edge ], [ %5, %if.else ]
  %end_of_streak.1 = phi i32 [ %end_of_streak.035, %lor.lhs.false.for.inc_crit_edge ], [ %end_of_streak.035, %for.body.for.inc_crit_edge ], [ %spec.select32, %if.else ]
  %inc11 = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc11, 40
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_streak.1)
  %tobool12.not = icmp eq i32 %max_streak.1, 0
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %div.neg = sdiv i32 %max_streak.1, -2
  %sub = add i32 %div.neg, %end_of_streak.1
  %call16 = tail call fastcc i32 @sdhci_cdns_set_tune_val(ptr noundef %host, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_cdns_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %timing, label %if.then4.critedge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
    i32 9, label %sw.bb2
    i32 10, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %1 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enhanced_strobe, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 5, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 4, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ %., %sw.bb3 ]
  %3 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %6 = and i32 %5, -117440513
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %or.i = or i32 %7, %mode.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %9 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i2.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %8) #7, !srcloc !73
  br label %if.end5

if.then4.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i2.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %14 = and i32 %13, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i2.i, align 4
  %add.ptr22.i11 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i11, i32 %14) #7, !srcloc !73
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4.critedge, %sw.epilog
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_cdns_set_tune_val(ptr nocapture noundef readonly %host, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i2.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %shl = shl i32 %val, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %shl)
  %tobool.not = icmp ult i32 %shl, 16384
  br i1 %tobool.not, label %if.end45, label %do.end30, !prof !83

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 212, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end45:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %3 = and i32 %2, -4128769
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and71 = and i32 %shl, 16128
  %or = or i32 %4, %and71
  %or72 = or i32 %or, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or72)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !73
  %call76 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call76, 1000
  br label %for.cond90

for.cond:                                         ; preds = %for.end
  %or72.1 = or i32 %tmp.1, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or72.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !73
  %call76.1 = tail call i64 @ktime_get() #7
  %add.i.1 = add i64 %call76.1, 1000
  br label %for.cond90.1

for.cond90.1:                                     ; preds = %land.lhs.true.1.for.cond90.1_crit_edge, %for.cond
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !69
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %and96.1 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.1)
  %tobool97.not.1 = icmp eq i32 %and96.1, 0
  br i1 %tobool97.not.1, label %for.cond90.1.for.end.1_crit_edge, label %land.lhs.true.1

for.cond90.1.for.end.1_crit_edge:                 ; preds = %for.cond90.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

land.lhs.true.1:                                  ; preds = %for.cond90.1
  %call101.1 = tail call i64 @ktime_get() #7
  %cmp3.i.1 = icmp sgt i64 %call101.1, %add.i.1
  br i1 %cmp3.i.1, label %if.then104.1, label %land.lhs.true.1.for.cond90.1_crit_edge

land.lhs.true.1.for.cond90.1_crit_edge:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond90.1

if.then104.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !69
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %for.end.1

for.end.1:                                        ; preds = %if.then104.1, %for.cond90.1.for.end.1_crit_edge
  %tmp.1.1 = phi i32 [ %10, %if.then104.1 ], [ %8, %for.cond90.1.for.end.1_crit_edge ]
  %and115.1 = and i32 %tmp.1.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.1)
  %tobool116.not.1 = icmp eq i32 %and115.1, 0
  %spec.select = select i1 %tobool116.not.1, i32 0, i32 -110
  br label %cleanup

for.cond90:                                       ; preds = %land.lhs.true.for.cond90_crit_edge, %if.end45
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !69
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %and96 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %for.cond90.for.end_crit_edge, label %land.lhs.true

for.cond90.for.end_crit_edge:                     ; preds = %for.cond90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond90
  %call101 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call101, %add.i
  br i1 %cmp3.i, label %if.then104, label %land.lhs.true.for.cond90_crit_edge

land.lhs.true.for.cond90_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond90

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !69
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %for.end

for.end:                                          ; preds = %if.then104, %for.cond90.for.end_crit_edge
  %tmp.1 = phi i32 [ %14, %if.then104 ], [ %12, %for.cond90.for.end_crit_edge ]
  %and115 = and i32 %tmp.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %for.cond, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.end.1, %do.end30
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -110, %for.end.cleanup_crit_edge ], [ %spec.select, %for.end.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_cdns_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i23 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %call4 = tail call fastcc i32 @sdhci_cdns_phy_init(ptr noundef %private.i23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.disable_clk_crit_edge

if.end.disable_clk_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @sdhci_resume_host(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end7.disable_clk_crit_edge

if.end7.disable_clk_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

disable_clk:                                      ; preds = %if.end7.disable_clk_crit_edge, %if.end.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.disable_clk_crit_edge ], [ %call8, %if.end7.disable_clk_crit_edge ]
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %5) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %disable_clk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %disable_clk ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %disable_clk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_sdhci_cadence__301_473_sdhci_cdns_driver_init6, !1, !"__initcall__kmod_sdhci_cadence__301_473_sdhci_cdns_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 473, i32 1}
!2 = !{ptr @__exitcall_sdhci_cdns_driver_exit, !1, !"__exitcall_sdhci_cdns_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 475, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 476, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 477, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 465, i32 11}
!12 = !{ptr @sdhci_cdns_driver, !13, !"sdhci_cdns_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 463, i32 31}
!14 = !{ptr @sdhci_cdns_probe.version, !15, !"version", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 360, i32 19}
!16 = !{ptr @sdhci_cdns_pltfm_data, !17, !"sdhci_cdns_pltfm_data", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 326, i32 38}
!18 = !{ptr @sdhci_cdns_ops, !19, !"sdhci_cdns_ops", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 312, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 271, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sdhci_cdns_execute_tuning._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sdhci_cdns_execute_tuning._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 80, i32 4}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 81, i32 4}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 82, i32 4}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 83, i32 4}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 84, i32 4}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 85, i32 4}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 86, i32 4}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 87, i32 4}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 88, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 89, i32 4}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 90, i32 4}
!50 = !{ptr @sdhci_cdns_phy_cfgs, !51, !"sdhci_cdns_phy_cfgs", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 79, i32 40}
!52 = !{ptr @sdhci_cdns_match, !53, !"sdhci_cdns_match", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 453, i32 34}
!54 = !{ptr @sdhci_cdns_uniphier_pltfm_data, !55, !"sdhci_cdns_uniphier_pltfm_data", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 321, i32 38}
!56 = !{ptr @sdhci_cdns_pm_ops, !57, !"sdhci_cdns_pm_ops", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-cadence.c", i32 449, i32 32}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i8 0, i8 2}
!69 = !{i64 3025805}
!70 = !{i64 2154950657}
!71 = !{i64 2154909491}
!72 = !{i64 2154949971}
!73 = !{i64 3025387}
!74 = !{i64 2154818770}
!75 = !{i64 2154819200}
!76 = !{i64 2154902925}
!77 = !{i64 2154903370}
!78 = !{i64 2154905144}
!79 = !{i64 2154905574}
!80 = !{i64 2154905862}
!81 = !{i64 2154907652}
!82 = !{i64 2154908082}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2155042540}
!85 = !{i64 2155083372}
!86 = !{i64 2155085159}
!87 = !{i64 2155085589}
